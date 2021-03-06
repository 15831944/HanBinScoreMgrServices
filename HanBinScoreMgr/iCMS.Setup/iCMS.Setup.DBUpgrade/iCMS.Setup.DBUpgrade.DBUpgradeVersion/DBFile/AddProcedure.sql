USE [iCMSDB]
GO
DROP PROCEDURE GetDevAlarmRemindDataByUserId;
GO
DROP PROCEDURE GetDeviceCount;
GO
DROP PROCEDURE SP_ClearCloudLog;
GO
DROP PROCEDURE SP_DeleteDevice;
GO
DROP PROCEDURE SP_DeleteMeasureSite;
GO
DROP PROCEDURE SP_DeleteVibSingal;
GO
DROP PROCEDURE SP_GetDevHistoryTotal;
GO
DROP PROCEDURE SP_GetDeviceTotal;
GO
DROP PROCEDURE SP_GetWSStatsInfoByWGNO;
GO
DROP PROCEDURE SP_GetWsStatusInfoByDeviceID;
GO
DROP PROCEDURE SP_GetWsStatusInfoByKey;
GO
DROP PROCEDURE SP_GetWsStatusInfoByMAC;
GO
DROP PROCEDURE SP_GetWsStatusInfoByMSiteID;
GO
DROP PROCEDURE SP_GetWsStatusInfoByWSID;
GO
DROP PROCEDURE SP_ModifyHistoryView;
GO
DROP PROCEDURE SP_Paging;
GO
/****** Object:  StoredProcedure [dbo].[EditMeasureSite]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditMeasureSite]
    @MeasurementListParameter TEXT
AS
    BEGIN
	   
	    --测量位置索引
        DECLARE @MeasureSiteIndex INT;
		--测量位置数量
        DECLARE @MeasureSiteCount INT;
		--每一个测量位置
        DECLARE @MeasureSite NVARCHAR(MAX);
		--具体测量位置信息
        DECLARE @MeasureSiteInfo NVARCHAR(MAX);

		--测量位置ID
		DECLARE @MeasureSiteID INT;
	    --测量位置名称
		DECLARE @MeasureSiteName INT;

	  	--获取测量位置数量
        SET @MeasureSiteCount = dbo.SF_Get_StrArrayLength(@MeasurementListParameter,
                                                          N'#');

		--设置测量位置起始值
        SET @MeasureSiteIndex = 0;

		--循环
        WHILE ( @MeasureSiteIndex < @MeasureSiteCount )
            BEGIN
			   
			    --累加
                SET @MeasureSiteIndex = @MeasureSiteIndex + 1;

				--获取测量位置列表信息
                SET @MeasureSite = dbo.SF_Get_StrArrayStrOfIndex(@MeasurementListParameter,
                                                              N'#',
                                                              @MeasureSiteIndex);
                --测量位置信息 
			    SET @MeasureSiteInfo=dbo.SF_Get_StrArrayStrOfIndex(@MeasureSite,
                                                              N'$',
                                                              1);
			    --测量位置ID
				SET @MeasureSiteID=dbo.SF_Get_StrArrayStrOfIndex(@MeasureSiteInfo,
                                                              N',',
                                                              1);
			    --测量位置名称
				SET @MeasureSiteName=dbo.SF_Get_StrArrayStrOfIndex(@MeasureSiteInfo,
                                                              N',',
                                                              2);


            END;

    END;


GO
/****** Object:  StoredProcedure [dbo].[GetDevAlarmRemindDataByUserId]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/********************************************
*创建人：张辽阔
*创建时间：2016-08-17
*创建记录：报警提醒
********************************************/
CREATE procedure [dbo].[GetDevAlarmRemindDataByUserId]
(
	@userId int,
	@devAlmStat int,
	@bDate varchar(50),
	@eDate varchar(50),
	@devIDLastAlarmTime xml,
	@sort varchar(50),
	@order varchar(50),
	@page int,
	@pageSize int,
	@count int output
)
as
begin
	declare @SQLStr nvarchar(max)

	set @SQLStr = N'select devAlm.DevID,
		dev.DevName,
		devType.ID as DevTypeID,
		devType.Name as DevTypeName,
		devAlm.AlmStatus,
		devAlm.BDate,
		devAlm.EDate,
		devAlm.LatestStartTime,
		devAlm.MonitorTreeID into #DevIDLastAlarmTimeList
	from T_SYS_DEV_ALMRECORD devAlm
	inner join T_SYS_DEVICE dev on devAlm.DevID = dev.DevID
	inner join T_SYS_USER_RELATION_DEVICE userRalationDev on dev.DevID = userRalationDev.DevId
	inner join T_DICT_DEVICE_TYPE devType on dev.DevType = devType.ID
	where userRalationDev.UserID = @userid and dev.UseType = 0 '
	if(@devAlmStat > 0)
	begin
		set @SQLStr = @SQLStr + ' and devAlm.AlmStatus = @devAlmStat '
	end
	set @SQLStr = @SQLStr + ' and devAlm.AlmStatus = @devAlmStat
	and ((devAlm.BDate >= @bDate and devAlm.BDate <= @eDate)
		or (devAlm.EDate >= @bDate and devAlm.EDate <= @eDate)
		or (devAlm.LatestStartTime >= @bDate and devAlm.LatestStartTime <= @eDate))

	select DevAlarmRecodeResult.DevID,
		DevAlarmRecodeResult.DevName,
		DevAlarmRecodeResult.DevTypeName as DevType,
		DevAlarmRecodeResult.AlmStatus as AlarmStat,
		convert(varchar(50), DevAlarmRecodeResult.LatestStartTime, 21) as LastAlarmTime,
		DevAlarmRecodeResult.MonitorTreeID as MTIds into #DevIDLastAlarmTimeResultList
	from (
	select row_number() over(partition by 
		devAlm.DevID,
		devAlm.DevTypeID
		order by devAlm.AlmStatus desc,
		devAlm.LatestStartTime desc) as GroupRowNumber,
		devAlm.DevID,
		devAlm.DevName,
		devAlm.DevTypeName,
		devAlm.AlmStatus,
		devAlm.LatestStartTime,
		devAlm.MonitorTreeID
	from #DevIDLastAlarmTimeList as devAlm) as DevAlarmRecodeResult
	where DevAlarmRecodeResult.GroupRowNumber = 1
	and not exists (select * from (select
		Dev.value(''@DevID[1]'',''int'') AS DevID,
		Dev.value(''@LastAlarmTime[1]'',''datetime'') AS LastAlarmTime
	from @devIDLastAlarmTime.nodes(''devIDLastAlarmTimeList/devIDLastAlarmTime'') as Dev(Dev)) as devIDList
	where devIDList.DevID = DevAlarmRecodeResult.DevID
	and devIDList.LastAlarmTime = DevAlarmRecodeResult.LatestStartTime)

	select @count = count(1) from #DevIDLastAlarmTimeResultList
	select DevID,
		DevName,
		DevType,
		AlarmStat,
		LastAlarmTime,
		MTIds
	from (
		select row_number() over(order by ' + @sort + ' ' + @order + ') as number, * from #DevIDLastAlarmTimeResultList
	) t '
	if(@page > -1)
	begin
		set @SQLStr = @SQLStr + ' where number between (@page - 1) * @pageSize and @pageSize'
	end

	execute sp_executesql @SQLStr, 
		N'@userid int, @devAlmStat int, @bDate varchar(50), @eDate varchar(50), @devIDLastAlarmTime xml, @page int, @pageSize int, @count int output',
		@userid, @devAlmStat, @bDate, @eDate, @devIDLastAlarmTime, @page, @pageSize, @count output
end











GO
/****** Object:  StoredProcedure [dbo].[GetDeviceCount]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * from View_DevHistoryCollectDataQuery where DATATYPE =6 and MsiteID =114
--select * from T_DATA_TEMPE_DEVICE_MSITEDATA_3 where MsiteID = 114
--SELECT * FROM T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL WHERE MsiteID = 114

CREATE PROCEDURE [dbo].[GetDeviceCount] AS
BEGIN
    DECLARE  @SQL NVARCHAR (200);
    declare  @count INT

    SET @SQL = 'select @ct= count(1) from T_SYS_DEVICE' 
    exec sp_executesql @SQL,N'@ct   int   output ',@count   output 
    select @count

END














GO
/****** Object:  StoredProcedure [dbo].[GetDeviceId]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetDeviceId]
(
@MonitorTreeID INT
)
AS

BEGIN
WITH    uCte
          AS ( SELECT   a.*,a.PID temp1
               FROM     dbo.Tree  a
               WHERE    MonitorTreeID = @MonitorTreeID
			   --当前节点
               UNION ALL
               SELECT   k.*, c.PID temp1
               FROM     dbo.Tree k
                        INNER JOIN uCte c ON c.MonitorTreeID = k.PID
             )
    SELECT  uCte.MonitorTreeID ID
    FROM    uCte WHERE uCte.Level=5
	END


GO
/****** Object:  StoredProcedure [dbo].[GetDeviceTree]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetDeviceTree] ( @userId INT, @level INT )
AS
    WITH    tree1
              AS ( SELECT   a.MonitorTreeID TreeId ,
                            a.Name TreeName,
                            a.PID ParentId,
                            a.TrueId ,
                            a.Level
                   FROM     Tree a
                   WHERE    a.TrueId IN (
                            SELECT  TSURD.DevId
                            FROM    dbo.T_SYS_USER_RELATION_DEVICE AS TSURD
                            WHERE   TSURD.UserID = @userId )
                            AND a.Level = @level
                   UNION ALL
                   SELECT   k.MonitorTreeID TreeId,
                            k.Name TreeName,
                            k.PID ParentId,
                            k.TrueId ,
                            k.Level
                   FROM     Tree k
                            INNER JOIN tree1 c ON c.ParentId = k.MonitorTreeID
                 )
        SELECT DISTINCT
                *
        FROM    tree1
        ORDER BY tree1.TreeId;






GO
/****** Object:  StoredProcedure [dbo].[GetServerTree]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetServerTree]
(
    @userId INT,
    @level INT
)
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    DECLARE @table TABLE
    (
        TreeID INT,
        Name VARCHAR(50),
        ParentID INT,
        Level INT,
        TrueId INT,
        DeviceId INT
    ); --定义表变量来存放存储过程返回的内容

    INSERT INTO @table
    EXEC SetServerTree; --将存储过程执行的结果放入表变量中

    WITH tree1
    AS (SELECT a.TreeID,
               a.Name TreeName,
               a.ParentID,
               a.TrueId,
               a.Level
        FROM @table a
        WHERE a.TrueId IN
              (
                  SELECT TSURW.WSID
                  FROM dbo.T_SYS_USER_RELATION_WS AS TSURW 
                  WHERE TSURW.UserID = @userId
              )
              AND a.Level = @level
        UNION ALL
        SELECT k.TreeID,
               k.Name TreeName,
               k.ParentID,
               k.TrueId,
               k.Level
        FROM @table k
            INNER JOIN tree1 c
                ON c.ParentID = k.TreeID
       )
    SELECT DISTINCT
        *
    FROM tree1
    ORDER BY tree1.TreeID;

END;















GO
/****** Object:  StoredProcedure [dbo].[SetMonitorTree]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SetMonitorTree]
AS
    BEGIN
	    --监测树最大ID
        DECLARE @MonitorMaxTreeId INT;
		--设备树最大ID
        DECLARE @DeviceMaxId INT;
		--测量位置最大ID
        DECLARE @MeasureSiteMaxId INT;
		--设备温度最大ID
	    DECLARE @DeviceTemperatureMaxId INT;
		--振动最大ID
        DECLARE @VibSignalMaxId INT;

		--监测树最大ID
        SET @MonitorMaxTreeId = (SELECT ISNULL( MAX(TSMT.MonitorTreeID),1) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT);

		--设备树最大ID，不显示备用设备
        SET @DeviceMaxId      = (SELECT ISNULL( @MonitorMaxTreeId + MAX(TSD.DevID),@MonitorMaxTreeId+1) FROM dbo.T_SYS_DEVICE AS TSD where TSD.USETYPE=0) ;

		--测量位置最大ID
        SET @MeasureSiteMaxId = (SELECT ISNULL( @DeviceMaxId + MAX(TSM.MSiteID),@DeviceMaxId+1) FROM dbo.T_SYS_MEASURESITE AS TSM );

	    --设备温度最大ID
		SET @DeviceTemperatureMaxId=(SELECT ISNULL( @MeasureSiteMaxId+MAX(TSTDSM.MsiteAlmID),@MeasureSiteMaxId+1) FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM)

		--振动最大ID
		SET @VibSignalMaxId=(SELECT ISNULL(@DeviceTemperatureMaxId+MAX(TSV.SingalID),@DeviceTemperatureMaxId+1) FROM dbo.T_SYS_VIBSINGAL AS TSV)

		--设备ID临时表
		DECLARE @tableDeviceId TABLE
        (
          DeviceId INT
        );
		--测量位置ID临时表
		DECLARE @tableMSiteID TABLE
        (
          MSiteID INT
        );
		--振动信号ID临时表
		DECLARE @tableSingalID TABLE
        (
          SingalID INT
        );

		INSERT INTO @tableDeviceId 
		--过滤备用设备
		SELECT DISTINCT DevId FROM dbo.T_SYS_DEVICE 
		--WHERE USETYPE=0 

		INSERT INTO @tableMSiteID 
		SELECT DISTINCT MSiteID FROM dbo.T_SYS_MEASURESITE AS TSM WHERE TSM.DevID IN (SELECT DeviceId FROM @tableDeviceId);

		INSERT INTO @tableSingalID 
		SELECT DISTINCT SingalID FROM dbo.T_SYS_VIBSINGAL AS TSV WHERE TSV.MSiteID IN (SELECT MSiteID FROM @tableMSiteID) AND DAQStyle=1;

		PRINT '监测树最大ID'
		PRINT @MonitorMaxTreeId

		PRINT '设备树最大ID'
		PRINT @DeviceMaxId

		PRINT '测量位置最大ID'
		PRINT @MeasureSiteMaxId

		PRINT '设备温度最大ID'
		PRINT @DeviceTemperatureMaxId

		PRINT '振动最大ID'
		PRINT @VibSignalMaxId;

	--监测树集合
	--SELECT TSMT.PID MTPid,
	--	       TSMT.MonitorTreeID MTId,
	--		   TSMT.Name MTName,
	--		   0 MTStatus,
	--		   (SELECT TDMT.Code FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.ID=TSMT.Type) MTType,
	--		   TSMT.Name Remark,
	--		   TSMT.MonitorTreeID RecordID,
	--		   1 IsMonitorTree
	--		    FROM dbo.T_SYS_MONITOR_TREE AS TSMT
	WITH tree1 AS (SELECT a.MonitorTreeID TreeId , a.PID ParentId, a.TrueId , a.Level
	FROM Tree a WHERE a.TrueId IN (SELECT DeviceId FROM @tableDeviceId) AND a.Level = 5
    UNION ALL SELECT k.MonitorTreeID TreeId, k.PID ParentId, k.TrueId , k.Level FROM Tree k INNER JOIN tree1 c ON c.ParentId = k.MonitorTreeID)
	SELECT TSMT.PID MTPid,TSMT.MonitorTreeID MTId,TSMT.Name MTName,1 MTStatus,
	(SELECT TDMT.Code FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.ID=TSMT.Type) MTType,
	TSMT.Name Remark,TSMT.MonitorTreeID RecordID,1 IsMonitorTree FROM dbo.T_SYS_MONITOR_TREE AS TSMT
	where TSMT.MonitorTreeID in (SELECT DISTINCT TrueId FROM tree1 where Level<5)
	UNION
	--设备树集合
	SELECT MonitorTreeID MTPid,DevID+@MonitorMaxTreeId MTId,CASE RunStatus WHEN 3 THEN DevName+N'(stop)' ELSE DevName END MTName,
	CASE RunStatus WHEN 3 THEN 4 ELSE AlmStatus END MTStatus, 'DEVICE' MTType, DevName Remark, DevID RecordID,0 IsMonitorTree FROM dbo.T_SYS_DEVICE
	where DevID in (SELECT DeviceId FROM @tableDeviceId)
	UNION
	--测量位置集合
	SELECT TSM.DevID + @MonitorMaxTreeId MTPid,TSM.MSiteID +@DeviceMaxId MTId,
		      (SELECT TDMST.Name FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST WHERE TDMST.ID =TSM.MSiteName) MTName,
			  TSM.MSiteStatus MTStatus,'MEASURESITE' MTType,
			  (SELECT TSW.WSName FROM dbo.T_SYS_WS AS TSW WHERE TSW.WSID=TSM.WSID) Remark,
			  TSM.MSiteID RecordID,0 IsMonitorTree FROM dbo.T_SYS_MEASURESITE AS TSM
			  where TSM.DevID in (SELECT DeviceId FROM @tableDeviceId)
	--设备温度集合
	UNION
	SELECT TSTWSM.MsiteID+@DeviceMaxId MTPid,TSTWSM.MsiteAlmID+@MeasureSiteMaxId MTId,'设备温度' MTName,TSTWSM.Status MTStatus,
		'TEMPE_DEVICE' MTType,'设备温度' Remark,TSTWSM.MsiteAlmID RecordID,0 IsMonitorTree
		FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTWSM
		WHERE TSTWSM.MsiteID IN (SELECT MSiteID FROM @tableMSiteID)
	--振动信号集合
	UNION
	SELECT TSV.MSiteID+@DeviceMaxId MTPid,TSV.SingalID+@DeviceTemperatureMaxId  MTId,
		(SELECT TDVST.Name FROM dbo.T_DICT_VIBRATING_SIGNAL_TYPE AS TDVST WHERE TDVST.ID=TSV.SingalType) MTName,TSV.SingalStatus MTStatus,
		'VIBSINGAL' MTType,
	   (SELECT TDVST.Name FROM dbo.T_DICT_VIBRATING_SIGNAL_TYPE AS TDVST WHERE TDVST.ID=TSV.SingalType) Remark,TSV.SingalID RecordID,0 IsMonitorTree
	    FROM dbo.T_SYS_VIBSINGAL AS TSV
		WHERE TSV.MSiteID IN (SELECT MSiteID FROM @tableMSiteID) AND DAQStyle=1
	--特征值集合
	UNION
	SELECT TSVSS.SingalID+@DeviceTemperatureMaxId,TSVSS.SingalAlmID+@VibSignalMaxId,
		(SELECT TDEVT.Name FROM dbo.T_DICT_EIGEN_VALUE_TYPE AS TDEVT WHERE TDEVT.ID=TSVSS.ValueType) MTName,
		TSVSS.Status MTStatus,'EIGEN_VALUE' MTType,
        (SELECT TDEVT.Name FROM dbo.T_DICT_EIGEN_VALUE_TYPE AS TDEVT WHERE TDEVT.ID=TSVSS.ValueType) Remark,
		TSVSS.SingalAlmID RecordID,0 IsMonitorTree
		FROM dbo.T_SYS_VIBRATING_SET_SIGNALALM AS TSVSS
		WHERE TSVSS.SingalID IN (SELECT SingalID FROM @tableSingalID)
		order by MTId
END




GO
/****** Object:  StoredProcedure [dbo].[SetMonitorTreeByUserID]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetMonitorTreeByUserID]
	@userID int
AS
BEGIN
		DECLARE @SQL varchar(200);
		DECLARE @TEPTSQL varchar(200);
		--监测树最大ID
        DECLARE @MonitorMaxTreeId INT;
		--设备树最大ID
        DECLARE @DeviceMaxId INT;
		--测量位置最大ID
        DECLARE @MeasureSiteMaxId INT;
		--设备温度最大ID
	    DECLARE @DeviceTemperatureMaxId INT;
		--振动最大ID
        DECLARE @VibSignalMaxId INT;
		--设备ID临时表
		DECLARE @tableDeviceId TABLE
        (
          DeviceId INT
        );
		--设备ID临时表，除去备用设备
		DECLARE @tableDeviceIdNoBY TABLE
        (
          DeviceId INT
        );
		--测量位置ID临时表
		DECLARE @tableMSiteID TABLE
        (
          MSiteID INT
        );
		--振动信号ID临时表
		DECLARE @tableSingalID TABLE
        (
          SingalID INT
        );

		--监测树最大ID
        SET @MonitorMaxTreeId = (SELECT ISNULL( MAX(TSMT.MonitorTreeID),1) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT);

		--设备树最大ID，不显示备用设备
        SET @DeviceMaxId      = (SELECT ISNULL( @MonitorMaxTreeId + MAX(TSD.DevID),@MonitorMaxTreeId+1) FROM dbo.T_SYS_DEVICE AS TSD where TSD.USETYPE=0) ;

		--测量位置最大ID
        SET @MeasureSiteMaxId = (SELECT ISNULL( @DeviceMaxId + MAX(TSM.MSiteID),@DeviceMaxId+1) FROM dbo.T_SYS_MEASURESITE AS TSM );

	    --设备温度最大ID
		SET @DeviceTemperatureMaxId=(SELECT ISNULL( @MeasureSiteMaxId+MAX(TSTDSM.MsiteAlmID),@MeasureSiteMaxId+1) FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM)

		--振动最大ID
		SET @VibSignalMaxId=(SELECT ISNULL(@DeviceTemperatureMaxId+MAX(TSV.SingalID),@DeviceTemperatureMaxId+1) FROM dbo.T_SYS_VIBSINGAL AS TSV)


	INSERT INTO @tableDeviceId 
		SELECT DISTINCT DevId FROM dbo.T_SYS_USER_RELATION_DEVICE WHERE UserID = @userID;

	INSERT INTO @tableDeviceIdNoBY
		SELECT DISTINCT DevId FROM dbo.T_SYS_USER_RELATION_DEVICE WHERE UserID = @userID
		--过滤备用设备
		AND UserID NOT IN (SELECT DevId FROM dbo.T_SYS_DEVICE WHERE USETYPE=1);

   

	INSERT INTO @tableMSiteID 
		SELECT DISTINCT MSiteID FROM dbo.T_SYS_MEASURESITE AS TSM WHERE TSM.DevID IN (SELECT DeviceId FROM @tableDeviceIdNoBY);

	INSERT INTO @tableSingalID 
		SELECT DISTINCT SingalID FROM dbo.T_SYS_VIBSINGAL AS TSV WHERE TSV.MSiteID IN (SELECT MSiteID FROM @tableMSiteID);
		
	--监测树集合
	WITH tree1 AS (SELECT a.MonitorTreeID TreeId , a.PID ParentId, a.TrueId , a.Level
		FROM Tree a WHERE a.TrueId IN (SELECT DeviceId FROM @tableDeviceId) AND a.Level = 5
    UNION ALL SELECT k.MonitorTreeID TreeId, k.PID ParentId, k.TrueId , k.Level FROM Tree k INNER JOIN tree1 c ON c.ParentId = k.MonitorTreeID)
	SELECT TSMT.PID MTPid,TSMT.MonitorTreeID MTId,TSMT.Name MTName,1 MTStatus,
	(SELECT TDMT.Code FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.ID=TSMT.Type) MTType,
	TSMT.Name Remark,TSMT.MonitorTreeID RecordID,1 IsMonitorTree FROM dbo.T_SYS_MONITOR_TREE AS TSMT
	where TSMT.MonitorTreeID in (SELECT DISTINCT TrueId FROM tree1 where Level<5)

	UNION
	--设备树集合
	SELECT MonitorTreeID MTPid,DevID+@MonitorMaxTreeId MTId,CASE RunStatus WHEN 3 THEN DevName+N'(stop)' ELSE DevName END MTName,
	CASE RunStatus WHEN 3 THEN 4 ELSE AlmStatus END MTStatus, 'DEVICE' MTType, DevName Remark, DevID RecordID,0 IsMonitorTree FROM dbo.T_SYS_DEVICE
	where DevID in (SELECT DeviceId FROM @tableDeviceIdNoBY)
  
	UNION
	--测量位置集合
	SELECT TSM.DevID + @MonitorMaxTreeId MTPid,TSM.MSiteID +@DeviceMaxId MTId,
		      (SELECT TDMST.Name FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST WHERE TDMST.ID =TSM.MSiteName) MTName,
			  TSM.MSiteStatus MTStatus,'MEASURESITE' MTType,
			  (SELECT TSW.WSName FROM dbo.T_SYS_WS AS TSW WHERE TSW.WSID=TSM.WSID) Remark,
			  TSM.MSiteID RecordID ,0 IsMonitorTree FROM dbo.T_SYS_MEASURESITE AS TSM
			  where TSM.DevID in (SELECT DeviceId FROM @tableDeviceIdNoBY)
	--设备温度集合
	UNION
	SELECT TSTWSM.MsiteID+@DeviceMaxId MTPid,TSTWSM.MsiteAlmID+@MeasureSiteMaxId MTId,'设备温度' MTName,TSTWSM.Status MTStatus,'TEMPE_DEVICE' MTType,
		'设备温度' Remark,TSTWSM.MsiteAlmID RecordID,0 IsMonitorTree
		FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTWSM
		WHERE TSTWSM.MsiteID IN (SELECT MSiteID FROM @tableMSiteID)
	--振动信号集合
	UNION
	SELECT TSV.MSiteID+@DeviceMaxId MTPid,TSV.SingalID+@DeviceTemperatureMaxId  MTId,
		(SELECT TDVST.Name FROM dbo.T_DICT_VIBRATING_SIGNAL_TYPE AS TDVST WHERE TDVST.ID=TSV.SingalType) MTName,TSV.SingalStatus MTStatus,'VIBSINGAL' MTType,
	   (SELECT TDVST.Name FROM dbo.T_DICT_VIBRATING_SIGNAL_TYPE AS TDVST WHERE TDVST.ID=TSV.SingalType) Remark,TSV.SingalID RecordID,0 IsMonitorTree
	    FROM dbo.T_SYS_VIBSINGAL AS TSV
		WHERE TSV.MSiteID IN (SELECT MSiteID FROM @tableMSiteID) AND DAQStyle=1
	--特征值集合
	UNION
	SELECT TSVSS.SingalID+@DeviceTemperatureMaxId,TSVSS.SingalAlmID+@VibSignalMaxId,
		(SELECT TDEVT.Name FROM dbo.T_DICT_EIGEN_VALUE_TYPE AS TDEVT WHERE TDEVT.ID=TSVSS.ValueType) MTName,
		TSVSS.Status MTStatus,'EIGEN_VALUE' MTType,
        (SELECT TDEVT.Name FROM dbo.T_DICT_EIGEN_VALUE_TYPE AS TDEVT WHERE TDEVT.ID=TSVSS.ValueType) Remark,
		TSVSS.SingalAlmID RecordID,0 IsMonitorTree
		FROM dbo.T_SYS_VIBRATING_SET_SIGNALALM AS TSVSS
		WHERE TSVSS.SingalID IN (SELECT SingalID FROM @tableSingalID)
		order by MTId
END




GO
/****** Object:  StoredProcedure [dbo].[SetServerTree]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetServerTree]
AS
    BEGIN

        DECLARE @wgMaxId INT;
        DECLARE @wsMaxId INT;


        SET @wgMaxId = ( SELECT MAX(TSW.WGID)
                         FROM   dbo.T_SYS_WG AS TSW
                       );
        SET @wsMaxId = ( SELECT @wgMaxId + MAX(TSW2.WSID)
                         FROM   dbo.T_SYS_WS AS TSW2
                       );
        SELECT  WG.WGID TreeID ,
                WG.WGName Name ,
                0 ParentID ,
                1 [Level] ,
                WG.WGID TrueId ,
                -1 DeviceId
        FROM    dbo.T_SYS_WG AS WG
        UNION
        SELECT  @wgMaxId + WS.WSID TreeID ,
                WS.WSName Name ,
                WS.WGID ParentID ,
                2 [Level] ,
                WS.WSID TrueId ,
                -2 DeviceId
        FROM    dbo.T_SYS_WS AS WS;

    END;


GO
/****** Object:  StoredProcedure [dbo].[SP_ClearCloudLog]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ClearCloudLog]
as
begin
	if(exists (select top 1 PlatformId from T_DATA_CLOUDLOG))
	begin
		declare @platformId int

		--统计出日志表中目前有几个平台的数据
		select PlatformId into #tempPlatformId from T_DATA_CLOUDLOG
		group by PlatformId

		while(0 = 0)
		begin
			if(exists (select 1 from #tempPlatformId))
			begin
				select top 1 @platformId = PlatformId
				from #tempPlatformId
				delete from #tempPlatformId
				where PlatformId = @platformId

				--如果该平台的日志数据多于10万条，则删除多余出来的数据
				delete from T_DATA_CLOUDLOG
				where PlatformId = @platformId
					and exists (
						select souceLog.ID from (
							select row_number() over(order by ID) as rownumber, ID
							from T_DATA_CLOUDLOG
							where PlatformId = @platformId
						) as souceLog
						where souceLog.rownumber > 100000
							and souceLog.ID = ID
					)
			
				--删除该平台一年前的数据
				delete from T_DATA_CLOUDLOG
				where PlatformId = @platformId
					and AddDate <= dateadd(year, -1, getdate())
			end
			else
			begin
				break
			end
		end
	end
end










GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteDevice]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		LF
-- Create date: 2016/07/28
-- Description:	删除设备
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteDevice]
(@DevId   INT)
    
AS
BEGIN
  Set NOCOUNT    ON; -- 不返回计数
  Set XACT_ABORT ON; -- 出现系统错误 则回滚事务
    
    BEGIN TRAN --TRANSACTION
	
	DECLARE  @tempMsiteID TABLE
        (
          MsiteID INT
        );
	INSERT INTO @tempMsiteID
		SELECT [MSiteID] FROM [dbo].[T_SYS_MEASURESITE]  where [DevID]=@DevId;

-- 结束掉设备温度报警记录，振动信号报警记录
	UPDATE [dbo].[T_SYS_DEV_ALMRECORD] SET EDate=getdate() WHERE BDate=EDate and [DevID]=@DevId;

-- 结束掉WS电池电压报警，WSLink报警 
	UPDATE [dbo].[T_SYS_WSN_ALMRECORD] SET EDate=getdate() WHERE BDate=EDate and [DevID]=@DevId;

	DELETE FROM [dbo].[T_DATA_REALTIME_COLLECT_INFO] where  [DevID]=@DevId ;
	DELETE FROM [dbo].[T_SYS_TEMPE_DEVICE_SET_MSITEALM] where [MsiteID] in (SELECT [MSiteID] FROM @tempMsiteID) ;
    DELETE FROM [dbo].[T_SYS_TEMPE_WS_SET_MSITEALM] where [MsiteID] in (SELECT [MSiteID] FROM @tempMsiteID) ;
	DELETE FROM [dbo].[T_SYS_VOLTAGE_SET_MSITEALM] where [MsiteID] in (SELECT [MSiteID] FROM @tempMsiteID) ;
	DELETE FROM [dbo].[T_SYS_VIBRATING_SET_SIGNALALM] where [SingalID] in (select [SingalID] From [dbo].[T_SYS_VIBSINGAL] where  [MSiteID] in (SELECT [MSiteID] FROM @tempMsiteID));
	DELETE FROM [dbo].[T_SYS_VIBSINGAL]  where  [MSiteID] in  (SELECT [MSiteID] FROM @tempMsiteID);
     
-- SET USESTATUS == 0 WHEN DELET MS
    UPDATE [dbo].[T_SYS_WS] set UseStatus = 0 where  WSID in 
    (select WSID from [dbo].[T_SYS_MEASURESITE] where DevID = @DevId);

    DELETE FROM  [dbo].[T_SYS_MEASURESITE]  where  [MSiteID] in (SELECT [MSiteID] FROM @tempMsiteID);
    DELETE FROM  [dbo].[T_SYS_DEVICE]   where  [DevID]=@DevId;

--删除用户关联表
	DELETE FROM dbo.T_SYS_USER_RELATION_DEVICE WHERE DevId=@DevId ;

--删除设备诊断报告（逻辑删除）
	update T_SYS_DIAGNOSE_REPORT set IsDeleted=1 where DeviceID=@DevId;

--删除设备维修报告（逻辑删除）
	update T_SYS_MAINTAIN_REPORT set IsDeleted=1 where DeviceID=@DevId;

--删除诊断关联报告表
	DELETE FROM dbo.T_SYS_USER_RELATION_DIAGNOSE_REPORT WHERE DeviceID=@DevId  ;

--删除维修关联日志表
	DELETE FROM dbo.T_SYS_USER_RELATION_MAINTAIN_REPORT WHERE DeviceID=@DevId AND ReportType=1;

--删除用户关联设备报警记录
	DELETE FROM dbo.T_SYS_USER_RELATION_DEV_ALMRECORD WHERE DeviceID=@DevId;

    COMMIT TRAN

END













GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteMeasureSite]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		LF
-- Create date: 2016/07/28
-- Description:	删除设备
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteMeasureSite]
    @MSiteID   int
AS
BEGIN
   Set NOCOUNT    ON;
   Set XACT_ABORT ON;
    
   BEGIN TRAN --TRANSACTION 

--结果测点报警记录，设备温度报警记录
	UPDATE [dbo].[T_SYS_DEV_ALMRECORD] SET EDate=getdate() WHERE BDate=EDate AND [MSiteID]=@MSiteID;
--结束掉WS电池电压报警，WSLink报警
	UPDATE [dbo].[T_SYS_WSN_ALMRECORD] SET EDate=getdate() WHERE BDate=EDate AND [MSiteID]=@MSiteID;

    DELETE FROM [dbo].[T_DATA_REALTIME_COLLECT_INFO] where  [MSID]=@MSiteID ;
	DELETE FROM [dbo].[T_SYS_TEMPE_DEVICE_SET_MSITEALM] where [MsiteID] =@MSiteID;
    DELETE FROM [dbo].[T_SYS_TEMPE_WS_SET_MSITEALM] where [MsiteID] =@MSiteID ;
	DELETE FROM [dbo].[T_SYS_VOLTAGE_SET_MSITEALM] where [MsiteID]=@MSiteID ;
	DELETE FROM [dbo].[T_SYS_VIBRATING_SET_SIGNALALM] where [SingalID] in (select [SingalID] From [dbo].[T_SYS_VIBSINGAL] where  [MSiteID] = @MSiteID);
	DELETE FROM [dbo].[T_SYS_VIBSINGAL]  where  [MSiteID]  = @MSiteID;

-- SET USESTATUS == 0 WHEN DELET MS
    UPDATE [dbo].[T_SYS_WS] set UseStatus = 0 where  WSID in 
		(select WSID from [dbo].[T_SYS_MEASURESITE] where MSiteID = @MSiteID);
--删除测点时候，删除形貌图
    DELETE FROM  [dbo].[T_SYS_MEASURESITE]  where  [MSiteID]  = @MSiteID;

--删除用户未确认设备报警记录关联
	DELETE FROM dbo.T_SYS_USER_RELATION_DEV_ALMRECORD WHERE DeviceAlmRecordID in (
		select AlmRecordID from T_SYS_DEV_ALMRECORD where MSiteID=@MSiteID);

   COMMIT TRAN

END













GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteMonitorTree]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DeleteMonitorTree] ( @MonitorTreeID INT )
AS
    BEGIN

		--临时表
        DECLARE @Tab TABLE ( MonitorTreeId INT );

		--递归树
        WITH    uCte
                  AS ( SELECT   a.*
                       FROM     dbo.Tree a
                       WHERE    MonitorTreeID = @MonitorTreeID
			   --当前节点
                       UNION ALL
                       SELECT   k.*
                       FROM     dbo.Tree k
                                INNER JOIN uCte c ON c.MonitorTreeID = k.PID
                     )
            --插入临时表
	    INSERT  INTO @Tab
                SELECT  uCte.TrueId
                FROM    uCte;



        --删除属性表
        DELETE  FROM [dbo].[T_SYS_MONITOR_TREE_PROPERTY]
        WHERE   MonitorTreePropertyID IN ( SELECT   MonitorTreePropertyID
                                           FROM     [dbo].[T_SYS_MONITOR_TREE]
                                           WHERE    MonitorTreeID IN ( SELECT
                                                              MonitorTreeId
                                                              FROM
                                                              @Tab ) );


	    --删除监测树表
        DELETE  FROM dbo.T_SYS_MONITOR_TREE
        WHERE   MonitorTreeID IN ( SELECT   MonitorTreeId
                                   FROM     @Tab );
    END;


GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteVibSingal]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- =============================================
-- Author:		LF
-- Create date: 2016/07/28
-- Description:	删除设备
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteVibSingal]
    @SingalID   int
AS
BEGIN
   Set NOCOUNT    ON;
   Set XACT_ABORT ON;
    
    BEGIN TRAN --TRANSACTION 
	 --结束报警记录
	  UPDATE [dbo].[T_SYS_DEV_ALMRECORD] SET EDate=getdate() WHERE BDate = EDate and MSAlmID =1 AND [SingalID]=@SingalID;
	  DELETE FROM [dbo].[T_SYS_VIBRATING_SET_SIGNALALM] where [SingalID]=@SingalID;
	  DELETE FROM  [dbo].[T_SYS_VIBSINGAL]  where [SingalID]=@SingalID;
	  
--删除用户未确认设备报警记录关联
	DELETE FROM dbo.T_SYS_USER_RELATION_DEV_ALMRECORD WHERE DeviceAlmRecordID in (
		select AlmRecordID from T_SYS_DEV_ALMRECORD where SingalID=@SingalID);

   COMMIT TRAN

END













GO
/****** Object:  StoredProcedure [dbo].[SP_GetDevHistoryTotal]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetDevHistoryTotal]
   (
      @MSIds VARCHAR(500) ,
      @BDate VARCHAR(100) ,
      @EDate VARCHAR(100) ,
      @DataStat INT,
      @DataType INT
   )
AS
BEGIN 
 DECLARE @NEXT INT;
    DECLARE @WHERE VARCHAR(100);
    DECLARE @SQL NVARCHAR(4000);
    DECLARE @SQL2 NVARCHAR(4000);
    SET @WHERE = '';
    SET @NEXT = 1;
    WHILE @NEXT <= dbo.SF_Get_StrArrayLength(@MSIds, ',')
        BEGIN
            PRINT dbo.SF_Get_StrArrayStrOfIndex(@MSIds, ',', @NEXT); ----输出数组中的值
            SET @WHERE = @WHERE + ''''
                + CONVERT (VARCHAR(5), dbo.SF_Get_StrArrayStrOfIndex(@MSIds,
                                                              ',', @NEXT))
                + +'''' + ',';
            SET @NEXT = @NEXT + 1;
        END;
    SET @WHERE = LEFT(@WHERE, LEN(@WHERE) - 1); --设备条件 not in (@where)
    --PRINT @DataStat;


    declare @cou int

    DECLARE @DATATYPE_CONDITION VARCHAR(200)
    IF(@DataType!=0)
       BEGIN
          SET @DATATYPE_CONDITION = 'DATATYPE = CAST('+ CAST (@DataType AS NVARCHAR(8)) +  ' AS int)  AND'
       END
      ELSE
  
         SET @DATATYPE_CONDITION = ' ';

 IF ( @DataStat = -1 )
        BEGIN
           set @SQL ='SELECT @count =COUNT(1) FROM View_DevHistoryCollectDataQuery                                   
                      WHERE '+
                    @DATATYPE_CONDITION+' CollectitTime BETWEEN ''' + @BDate + '''
                      AND     ''' + @EDate + '''
											And MsiteID in (' + @WHERE + ')';

exec sp_executesql @sql, N'@count int out', @cou out
PRINT @SQL

print @cou 
SELECT @cou
            
        END;
 ELSE
        BEGIN 
             SET @SQL2  = 'SELECT @count =COUNT(1) FROM View_DevHistoryCollectDataQuery                                   
                      WHERE '+
                      @DATATYPE_CONDITION+'
                      CollectitTime BETWEEN ''' + @BDate + '''
                      AND     ''' + @EDate + '''
											And MsiteID in (' + @WHERE + ') 
AND (  TempStat = CAST(' +CAST(@DataStat AS NVARCHAR(8))  + ' AS int) 
                                      OR (SpeedVirtualValueStat= CAST('
        + CAST(@DataStat AS NVARCHAR(8)) + ' AS int) )
                                      OR (ACCPEAKValueStat = CAST('
        + CAST(@DataStat AS NVARCHAR(8)) + ' AS int) )     OR (LQStat = CAST('
        + CAST(@DataStat AS NVARCHAR(8)) + ' AS int)  ))';

       
        exec sp_executesql @SQL2, N'@count int out', @cou out;
        PRINT @SQL2;
        --PRINT @cou;
        PRINT 'hah';
        PRINT @cou
        SELECT @cou
          
        END;
 
END 













GO
/****** Object:  StoredProcedure [dbo].[SP_GetDeviceTotal]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetDeviceTotal]
  
AS
BEGIN 
declare @sql nvarchar(2000)
declare @cou int

set @sql='select @count=count(*) from T_SYS_DEVICE'
exec sp_executesql @sql, N'@count int out', @cou out

print @cou 
SELECT @cou
END 













GO
/****** Object:  StoredProcedure [dbo].[SP_GetMeasureSiteLevel]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_GetMeasureSiteLevel]
AS
    BEGIN
	    --监测树最大ID
        DECLARE @MonitorMaxTreeId INT;
		--设备树最大ID
        DECLARE @DeviceMaxId INT;
		--测量位置最大ID
        DECLARE @MeasureSiteMaxId INT;
		--设备温度最大ID
	    DECLARE @DeviceTemperatureMaxId INT;
		--振动最大ID
        DECLARE @VibSignalMaxId INT;

		--监测树最大ID
        SET @MonitorMaxTreeId = (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT);

		--设备树最大ID
        SET @DeviceMaxId      = (SELECT  @MonitorMaxTreeId + MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD);

		--测量位置最大ID
        SET @MeasureSiteMaxId = (SELECT @DeviceMaxId + MAX(TSM.MSiteID) FROM dbo.T_SYS_MEASURESITE AS TSM );

		PRINT '监测树最大ID'
		PRINT @MonitorMaxTreeId

		PRINT '设备树最大ID'
		PRINT @DeviceMaxId

		PRINT '测量位置最大ID'
		PRINT @MeasureSiteMaxId

		--监测树
		SELECT TSMT.PID MTPid,
		       TSMT.MonitorTreeID MTId,
			   TSMT.Name MTName,
			   1 MTStatus,
			   (SELECT TDMT.Describe FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.ID=TSMT.Type) MTType,
			   TSMT.Name Remark,
			   TSMT.MonitorTreeID RecordID
			    FROM dbo.T_SYS_MONITOR_TREE AS TSMT
	   UNION

	   --设备树
	   SELECT TSD.MonitorTreeID MTPid,
	         TSD.DevID+@MonitorMaxTreeId MTId,
		 	 CASE TSD.RunStatus WHEN 3 THEN
				CASE TSD.UseType WHEN 1 THEN
					TSD.DevName+N'<span style="color:#808080">(备用设备)</span>'
					ELSE TSD.DevName+N'(stop)'
				END
			 ELSE
			 TSD.DevName
			 END MTName,
			 CASE TSD.RunStatus WHEN 3 THEN
			 4
			 ELSE
			 TSD.AlmStatus
			 END MTStatus,
			 5 MTType,
			 TSD.DevName Remark,
             TSD.DevID RecordID
			 FROM dbo.T_SYS_DEVICE AS TSD
	   UNION

		--测量位置
		SELECT TSM.DevID + @MonitorMaxTreeId MTPid,
		      TSM.MSiteID +@DeviceMaxId MTId,
		      (SELECT TDMST.Name FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST WHERE TDMST.ID =TSM.MSiteName) MTName,
			  TSM.MSiteStatus MTStatus,
			  6 MTType,
			  (SELECT TSW.WSName FROM dbo.T_SYS_WS AS TSW WHERE TSW.WSID=TSM.WSID) Remark,
			  TSM.MSiteID RecordID
		      FROM dbo.T_SYS_MEASURESITE AS TSM

    END;






GO
/****** Object:  StoredProcedure [dbo].[SP_GetMeasureSiteLevelByUserID]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_GetMeasureSiteLevelByUserID]
	@userID int
AS
BEGIN
		DECLARE @SQL varchar(200);
		DECLARE @TEPTSQL varchar(200);
		--监测树最大ID
        DECLARE @MonitorMaxTreeId INT;
		--设备树最大ID
        DECLARE @DeviceMaxId INT;
		--测量位置最大ID
        DECLARE @MeasureSiteMaxId INT;

		--设备ID临时表
		DECLARE @tableDeviceId TABLE
        (
          DeviceId INT
        );

		DECLARE @DeviceLevel INT;

		DECLARE @MeasureSiteLevel INT;

		--设置设备级别
		SET @DeviceLevel=(SELECT COUNT(1)+1 FROM [dbo].[T_DICT_MONITORTREE_TYPE] WHERE IsUsable=1);

		--设置测量位置级别
		SET @MeasureSiteLevel=@DeviceLevel+1;

		--监测树最大ID
        SET @MonitorMaxTreeId = (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT);

		--设备树最大ID
        SET @DeviceMaxId      = (SELECT  @MonitorMaxTreeId + MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD);

		--测量位置最大ID
        SET @MeasureSiteMaxId = (SELECT @DeviceMaxId + MAX(TSM.MSiteID) FROM dbo.T_SYS_MEASURESITE AS TSM );

	INSERT INTO @tableDeviceId 
		SELECT DISTINCT DevId FROM dbo.T_SYS_USER_RELATION_DEVICE WHERE UserID = @userID;
		
	--监测树集合
	WITH tree1 AS (SELECT a.MonitorTreeID TreeId , a.PID ParentId, a.TrueId , a.Level
		FROM Tree a WHERE a.TrueId IN (SELECT DeviceId FROM @tableDeviceId) AND a.Level = @DeviceLevel
    UNION ALL SELECT k.MonitorTreeID TreeId, k.PID ParentId, k.TrueId , k.Level FROM Tree k INNER JOIN tree1 c ON c.ParentId = k.MonitorTreeID)
	SELECT TSMT.PID MTPid,TSMT.MonitorTreeID MTId,TSMT.Name MTName,1 MTStatus,
	(SELECT TDMT.Describe FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.ID=TSMT.Type) MTType,
	TSMT.Name Remark,TSMT.MonitorTreeID RecordID FROM dbo.T_SYS_MONITOR_TREE AS TSMT
	where TSMT.MonitorTreeID in (SELECT DISTINCT TrueId FROM tree1 where Level<@DeviceLevel)
	UNION
	--设备树集合
	SELECT MonitorTreeID MTPid,DevID+@MonitorMaxTreeId MTId,
	 CASE RunStatus WHEN 3 THEN
				CASE UseType WHEN 1 THEN
					DevName+N'<span style="color:#808080">(备用设备)</span>'
					ELSE DevName+N'(stop)'
				END
			 ELSE
			 DevName
			 END MTName,
	CASE RunStatus WHEN 3 THEN 4 ELSE AlmStatus END MTStatus, @DeviceLevel MTType, DevName Remark, DevID RecordID FROM dbo.T_SYS_DEVICE
	where DevID in (SELECT DeviceId FROM @tableDeviceId)
	UNION
	--测量位置集合
	SELECT TSM.DevID + @MonitorMaxTreeId MTPid,TSM.MSiteID +@DeviceMaxId MTId,
		      (SELECT TDMST.Name FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST WHERE TDMST.ID =TSM.MSiteName) MTName,
			  TSM.MSiteStatus MTStatus,@MeasureSiteLevel MTType,
			  (SELECT TSW.WSName FROM dbo.T_SYS_WS AS TSW WHERE TSW.WSID=TSM.WSID) Remark,
			  TSM.MSiteID RecordID FROM dbo.T_SYS_MEASURESITE AS TSM
			  where TSM.DevID in (SELECT DeviceId FROM @tableDeviceId)
END






GO
/****** Object:  StoredProcedure [dbo].[SP_GetWSStatsInfoByWGNO]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





--====================================================
--  作    者：马 夙
--  创建时间：2016年8月2日11:19:41
--  功能简述：获取某一网关下的无线传感器的状态信息
--  参数描述：WGID传入参数网关ID
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE PROCEDURE [dbo].[SP_GetWSStatsInfoByWGNO]
(
	@WGNO		INT,					--网关ID
	@CMDType	NVARCHAR(10)			--采集方式1：定时采集；2：临时采集
)
AS
	BEGIN
	IF (@CMDType is null or @CMDType = '')
		BEGIN
			SELECT MAX(CASE WHEN OperationType = 1 THEN OperationResult END) AS ConfigStatu,
				   MAX(CASE WHEN OperationType = 1 THEN EDate END) AS EdateForConfig,
				   MAX(CASE WHEN OperationType = 2 THEN OperationResult END) AS UpdateStatu,
				   MAX(CASE WHEN OperationType = 2 THEN EDate END) AS EdateForUpdate,
				   FirmwareVersion AS FirmwareVersion,WSID,MACADDR AS MAC,MSID,Name AS MSName,LinkStatus AS LinkStatu,WSName,CAST(DAQStyle AS NVARCHAR(8)) AS CMDType
            FROM (
				   SELECT d.OperationResult,d.EDate, b.FirmwareVersion,b.WSID,b.MACADDR,d.MSID,e.Name,b.LinkStatus,d.OperationType,b.WSName,d.DAQStyle
				   FROM 
						T_SYS_WG a,T_SYS_WS b,T_SYS_MEASURESITE c,T_SYS_OPERATION d,T_DICT_MEASURE_SITE_TYPE e WHERE a.WGID = b.WGID AND b.WSID = c.WSID AND c.MSiteName = e.ID
						AND c.MSiteID = d.MSID AND d.id in (SELECT MAX(id) FROM T_SYS_OPERATION WHERE OperationType = 1 AND  DAQStyle in (1,2) GROUP BY MSID,DAQStyle) AND d.OperationType = 1
						AND a.WGNO = @WGNO
				   UNION ALL
				   SELECT d.OperationResult,d.EDate, b.FirmwareVersion,b.WSID,b.MACADDR,d.MSID,e.Name,b.LinkStatus,d.OperationType,b.WSName,d.DAQStyle
                   FROM 
						T_SYS_WG a,T_SYS_WS b,T_SYS_MEASURESITE c,T_SYS_OPERATION d,T_DICT_MEASURE_SITE_TYPE e WHERE a.WGID = b.WGID AND b.WSID = c.WSID AND c.MSiteName = e.ID
						AND c.MSiteID = d.MSID AND d.id in (SELECT MAX(id) FROM T_SYS_OPERATION WHERE OperationType = 2 AND DAQStyle in (1,2) GROUP BY MSID,DAQStyle) AND d.OperationType = 2
					    AND a.WGNO = @WGNO
					) Z
					GROUP BY FirmwareVersion,WSID,MACADDR,MSID,Name,LinkStatus,WSName,DAQStyle
		END
	ELSE
		BEGIN
			SELECT MAX(CASE WHEN OperationType = 1 THEN OperationResult END) AS ConfigStatu,
			       MAX(CASE WHEN OperationType = 1 THEN EDate END) AS EdateForConfig,
					MAX(CASE WHEN OperationType = 2 THEN OperationResult END) AS UpdateStatu,
					MAX(CASE WHEN OperationType = 2 THEN EDate END) AS EdateForUpdate,
					FirmwareVersion AS FirmwareVersion,WSID,MACADDR AS MAC,MSID,Name AS MSName,LinkStatus AS LinkStatu,WSName,CAST(DAQStyle AS NVARCHAR(8)) AS CMDType
			FROM (
					SELECT d.OperationResult,d.EDate, b.FirmwareVersion,b.WSID,b.MACADDR,d.MSID,e.Name,b.LinkStatus,d.OperationType,b.WSName,d.DAQStyle
					FROM 
						T_SYS_WG a,T_SYS_WS b,T_SYS_MEASURESITE c,T_SYS_OPERATION d,T_DICT_MEASURE_SITE_TYPE e WHERE a.WGID = b.WGID AND b.WSID = c.WSID AND c.MSiteName = e.ID
						AND c.MSiteID = d.MSID AND d.id in (SELECT MAX(id) FROM T_SYS_OPERATION WHERE OperationType = 1 AND DAQStyle = @CMDType GROUP BY MSID,DAQStyle)
						AND d.OperationType = 1 AND a.WGNO = @WGNO
					UNION ALL
					SELECT d.OperationResult,d.EDate, b.FirmwareVersion,b.WSID,b.MACADDR,d.MSID,e.Name,b.LinkStatus,d.OperationType,b.WSName,d.DAQStyle
					FROM 
						T_SYS_WG a,T_SYS_WS b,T_SYS_MEASURESITE c,T_SYS_OPERATION d,T_DICT_MEASURE_SITE_TYPE e WHERE a.WGID = b.WGID AND b.WSID = c.WSID AND c.MSiteName = e.ID
						AND c.MSiteID = d.MSID AND d.id in (SELECT MAX(id) FROM T_SYS_OPERATION WHERE OperationType = 2 AND DAQStyle = @CMDType GROUP BY MSID,DAQStyle)
						AND d.OperationType = 2 AND a.WGNO = @WGNO
					) Z
           GROUP BY FirmwareVersion,WSID,MACADDR,MSID,Name,LinkStatus,WSName,DAQStyle
		END
	END

















GO
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByDeviceID]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






--====================================================
--  作    者：马 夙
--  创建时间：2016年8月4日09:21:54
--  功能简述：获取多个设备下的无线传感器的状态信息
--  参数描述：DeviceID传入参数设备ID、CMDType采集方式
--  修改历史：
--  修 改 人：王颖辉
--  修改时间：2016-08-25
--  修改原因：查询数据为空时，返回相应设备信息
--====================================================
CREATE PROCEDURE [dbo].[SP_GetWsStatusInfoByDeviceID]
    (
      @DeviceID NVARCHAR(MAX) ,					--设备ID
      @CMDType NVARCHAR(10)					--采集方式1：定时采集；2：临时采集
    )
AS
    DECLARE @SQL NVARCHAR(MAX);
    BEGIN
                SET @SQL = 'SELECT  Ws.FirmwareVersion ,
        Ws.WSID ,
        Ws.MACADDR MAC ,
        MeasureSiteType.Name MSiteName ,
        Ws.LinkStatus LinkStatus ,
        Ws.WSName ,
        Ws.UseStatus ,
	    WS.TriggerStatus TriggerUseStatus,
        Deivce.DevID ,
	    MeasureSite.MSiteID MSiteID,
        CAST(' + CAST(@CMDType AS NVARCHAR(8))+ ' AS INT)  CMDType ,
        ( SELECT TOP 1
                    CAST(OperationResult AS INT)
          FROM      T_SYS_OPERATION
          WHERE     MSID = MeasureSite.MSiteID
                    AND OperationType = 1
					AND DAQStyle=CAST(' + CAST(@CMDType AS NVARCHAR(8))
                    + ' AS INT)
          ORDER BY  id DESC
        ) ConfigStatus ,
        ( SELECT TOP 1
                    CAST(OperationResult AS INT)
          FROM      T_SYS_OPERATION
          WHERE     MSID = MeasureSite.MSiteID
                    AND OperationType = 2
          ORDER BY  id DESC
        ) UpdateStatus ,
        ( SELECT TOP 1
                    CAST(OperationResult AS INT)
          FROM      T_SYS_OPERATION
          WHERE     MSID = MeasureSite.MSiteID
                    AND OperationType = 3

          ORDER BY  id DESC
        ) TriggerStatus ,
        ( SELECT TOP 1
                    EDate
          FROM      T_SYS_OPERATION
          WHERE     MSID = MeasureSite.MSiteID
                    AND OperationType = 1
					AND DAQStyle=CAST(' + CAST(@CMDType AS NVARCHAR(8))
                    + ' AS INT)
          ORDER BY  id DESC
        ) EdateForConfig ,
        ( SELECT TOP 1
                    EDate
          FROM      T_SYS_OPERATION
          WHERE     MSID = MeasureSite.MSiteID
                    AND OperationType = 2

          ORDER BY  id DESC
        ) EdateForUpdate,
		(SELECT TOP 1
                    EDate
          FROM      T_SYS_OPERATION
          WHERE     MSID = MeasureSite.MSiteID
                    AND OperationType = 3
		
          ORDER BY  id DESC
        ) EdateForTrigger
FROM    dbo.T_SYS_DEVICE Deivce
        LEFT JOIN dbo.T_SYS_MEASURESITE AS MeasureSite ON MeasureSite.DevID = Deivce.DevID
        LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS MeasureSiteType ON MeasureSiteType.ID = MeasureSite.MSiteName
        LEFT JOIN dbo.T_SYS_WS Ws ON Ws.WSID = MeasureSite.WSID
WHERE   Ws.WSID IS NOT NULL
        AND Deivce.DevID IN (' + @DeviceID + ')';
    END;
    EXEC(@SQL);


















GO
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByKey]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--====================================================
--  作    者：马 夙
--  创建时间：2016年8月4日09:53:34
--  功能简述：获取同一操作标识Key值下的无线传感器的状态信息
--  参数描述：Key传入参数操作标识Key、CMDType采集方式
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE PROCEDURE [dbo].[SP_GetWsStatusInfoByKey]
    (
      @Key NVARCHAR(MAX) ,					--操作标识Key
      @CMDType NVARCHAR(10)						--采集方式1：定时采集；2：临时采集
    )
AS
    BEGIN
        SELECT  Ws.FirmwareVersion ,
                Ws.WSID ,
                Ws.MACADDR MAC ,
                MeasureSiteType.Name MSiteName ,
                Ws.LinkStatus LinkStatus ,
				   WS.TriggerStatus TriggerUseStatus,
                Ws.WSName ,
                Ws.UseStatus ,
                MeasureSite.MSiteID MSiteID ,
                CAST(@CMDType AS INT)  CMDType ,
                ( SELECT TOP 1
							CAST(OperationResult AS INT)
                  FROM      T_SYS_OPERATION
                  WHERE     WSID = Ws.WSID
                            AND OperationType = 1
                            AND DAQStyle = @CMDType
                            AND OperatorKey = @Key
                  ORDER BY  id DESC
                ) ConfigStatus ,
                ( SELECT TOP 1
                         	CAST(OperationResult AS INT)
                  FROM      T_SYS_OPERATION
                  WHERE     WSID = Ws.WSID
                            AND OperationType = 2
                            AND OperatorKey = @Key
                  ORDER BY  id DESC
                ) UpdateStatus ,
				 ( SELECT TOP 1
                           CAST(OperationResult AS INT)
                  FROM      T_SYS_OPERATION
                  WHERE     WSID = Ws.WSID
                            AND OperationType = 3
                            AND OperatorKey = @Key
                  ORDER BY  id DESC
                ) TriggerStatus,
                ( SELECT TOP 1
                            EDate
                  FROM      T_SYS_OPERATION
                  WHERE     WSID = Ws.WSID
                            AND OperationType = 1
                            AND DAQStyle = @CMDType
                            AND OperatorKey = @Key
                  ORDER BY  id DESC
                ) EdateForConfig ,
                ( SELECT TOP 1
                            EDate
                  FROM      T_SYS_OPERATION
                  WHERE     WSID = Ws.WSID
                            AND OperationType = 2
                            AND OperatorKey = @Key
                  ORDER BY  id DESC
                ) EdateForUpdate,
				( SELECT TOP 1
                            EDate
                  FROM      T_SYS_OPERATION
                  WHERE     WSID = Ws.WSID
                            AND OperationType = 3
                            AND OperatorKey = @Key
                  ORDER BY  id DESC
                ) EdateForTrigger
        FROM    dbo.T_SYS_WS Ws
                LEFT JOIN dbo.T_SYS_MEASURESITE AS MeasureSite ON MeasureSite.WSID = Ws.WSID
                LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS MeasureSiteType ON MeasureSiteType.ID = MeasureSite.MSiteName
                LEFT JOIN dbo.T_SYS_OPERATION AS TSO ON TSO.WSID = Ws.WSID
        WHERE   TSO.OperatorKey = @Key;
    END;
















GO
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByMAC]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











--====================================================
--  作    者：马 夙
--  创建时间：2016年8月4日09:53:34
--  功能简述：获取MAC地址下的无线传感器的状态信息
--  参数描述：MAC传入参数WS的MAC地址、CMDType采集方式
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE PROCEDURE [dbo].[SP_GetWsStatusInfoByMAC]
    (
      @MAC NVARCHAR(MAX) ,					--WS的MAC地址
      @CMDType NVARCHAR(10)					--采集方式1：定时采集；2：临时采集
    )
AS
    DECLARE @SQL NVARCHAR(MAX);
	
    BEGIN
        SET @SQL = 'SELECT  Ws.FirmwareVersion ,
							Ws.WSID ,
							Ws.MACADDR MAC ,
							MeasureSiteType.Name MSiteName ,
							Ws.LinkStatus LinkStatus ,
							Ws.WSName ,
							Ws.UseStatus ,
							   WS.TriggerStatus TriggerUseStatus,
							MeasureSite.MSiteID MSiteID ,
						   CAST(' + CAST(@CMDType AS NVARCHAR(8))+ ' AS INT)  CMDType ,
							( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE    WSID = Ws.WSID
										AND OperationType = 1
										AND DAQStyle = CAST('
            + CAST(@CMDType AS NVARCHAR(8)) + ' AS INT)
							  ORDER BY  id DESC
							) ConfigStatus ,
							( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 2
							  ORDER BY  id DESC
							) UpdateStatus ,
									( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 3
							  ORDER BY  id DESC
							) TriggerStatus ,
							( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 1
										AND DAQStyle = CAST('
            + CAST(@CMDType AS NVARCHAR(8)) + ' AS INT)
							  ORDER BY  id DESC
							) EdateForConfig ,
							( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 2
							  ORDER BY  id DESC
							) EdateForUpdate,
								( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 3
							  ORDER BY  id DESC
							) EdateForTrigger
					FROM    dbo.T_SYS_WS Ws
							LEFT JOIN dbo.T_SYS_MEASURESITE AS MeasureSite ON MeasureSite.WSID = Ws.WSID
							LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS MeasureSiteType ON MeasureSiteType.ID = MeasureSite.MSiteName
						WHERE Ws.MACADDR IN (' + @MAC + ')';
    END;
	
    EXEC(@SQL);























GO
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByMSiteID]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





--====================================================
--  作    者：马 夙
--  创建时间：2016年8月4日09:37:14
--  功能简述：获取测点下的无线传感器的状态信息
--  参数描述：MSiteID传入参数设备ID、CMDType采集方式
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE PROCEDURE [dbo].[SP_GetWsStatusInfoByMSiteID]
    (
      @MSiteID NVARCHAR(MAX) ,					--测量位置ID
      @CMDType NVARCHAR(10)					--采集方式1：定时采集；2：临时采集
    )
AS
    DECLARE @SQL NVARCHAR(MAX);
	
     BEGIN
        SET @SQL = 'SELECT  Ws.FirmwareVersion ,
							Ws.WSID ,
							Ws.MACADDR MAC ,
							MeasureSiteType.Name MSiteName ,
							Ws.LinkStatus LinkStatus ,
							   WS.TriggerStatus TriggerUseStatus,
							Ws.WSName ,
							Ws.UseStatus ,
							MeasureSite.MSiteID MSiteID ,
						   CAST(' + CAST(@CMDType AS NVARCHAR(8))+ ' AS INT)  CMDType ,
							( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE    WSID = Ws.WSID
										AND OperationType = 1
										AND DAQStyle = CAST('
            + CAST(@CMDType AS NVARCHAR(8)) + ' AS INT)
							  ORDER BY  id DESC
							) ConfigStatus ,
							( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 2

							) UpdateStatus ,
									( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 3
		
							) TriggerStatus ,
							( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 1
										AND DAQStyle = CAST('
            + CAST(@CMDType AS NVARCHAR(8)) + ' AS INT)
							  ORDER BY  id DESC
							) EdateForConfig ,
							( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 2

							  ORDER BY  id DESC
							) EdateForUpdate,
								( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 3

							  ORDER BY  id DESC
							) EdateForTrigger
					FROM    dbo.T_SYS_WS Ws
							LEFT JOIN dbo.T_SYS_MEASURESITE AS MeasureSite ON MeasureSite.WSID = Ws.WSID
							LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS MeasureSiteType ON MeasureSiteType.ID = MeasureSite.MSiteName
						WHERE MeasureSite.MSiteID IN (' + @MSiteID + ')';
    END;
	
    EXEC(@SQL);

















GO
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByWSID]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






--====================================================
--  作    者：马 夙
--  创建时间：2016年8月4日09:53:34
--  功能简述：根据无线传感器ID获取无线传感器的状态信息
--  参数描述：WSID传入参数无线传感器ID、CMDType采集方式
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE PROCEDURE [dbo].[SP_GetWsStatusInfoByWSID]
    (
      @WSID NVARCHAR(MAX) ,					--无线传感器ID
      @CMDType NVARCHAR(10)					--采集方式1：定时采集；2：临时采集
    )
AS
    DECLARE @SQL NVARCHAR(MAX);

    BEGIN
        SET @SQL = 'SELECT  Ws.FirmwareVersion ,
							Ws.WSID ,
							Ws.MACADDR MAC ,
							MeasureSiteType.Name MSName ,
							Ws.LinkStatus LinkStatus ,
							Ws.WSName ,
							   WS.TriggerStatus TriggerUseStatus,
							Ws.UseStatus ,
							MeasureSite.MSiteID MSID ,
							   CAST(' + CAST(@CMDType AS NVARCHAR(8))+ ' AS INT)  CMDType ,
							( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE    WSID = Ws.WSID
										AND OperationType = 1
										AND DAQStyle = CAST('
            + CAST(@CMDType AS NVARCHAR(8)) + ' AS INT)
							  ORDER BY  id DESC
							) ConfigStatus ,
							( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE    WSID = Ws.WSID
										AND OperationType = 2
							  ORDER BY  id DESC
							) UpdateStatus ,
								( SELECT TOP 1
										CAST(OperationResult AS INT)
							  FROM      T_SYS_OPERATION
							  WHERE    WSID = Ws.WSID
										AND OperationType = 3
							  ORDER BY  id DESC
							) TriggerStatus ,
							( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 1
										AND DAQStyle = CAST('
            + CAST(@CMDType AS NVARCHAR(8)) + ' AS INT)
							  ORDER BY  id DESC
							) EdateForConfig ,
							( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 2
							  ORDER BY  id DESC
							) EdateForUpdate,
										( SELECT TOP 1
										EDate
							  FROM      T_SYS_OPERATION
							  WHERE     WSID = Ws.WSID
										AND OperationType = 3
							  ORDER BY  id DESC
							) EdateForTrigger
					FROM    dbo.T_SYS_WS Ws
							LEFT JOIN dbo.T_SYS_MEASURESITE AS MeasureSite ON MeasureSite.WSID = Ws.WSID
							LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS MeasureSiteType ON MeasureSiteType.ID = MeasureSite.MSiteName
						WHERE Ws.WSID IN (' + @WSID + ')';
    END;
  

    EXEC(@SQL);	


















GO
/****** Object:  StoredProcedure [dbo].[SP_ModifyHistoryView]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ModifyHistoryView] (
@isTemp INT,
 @isLq INT,
 @isVel INT,
 @isAcc INT,
 @isDisp INT,
 @isEnvl INT)
 AS
BEGIN


 DECLARE @DROPSQL VARCHAR(200) 
DECLARE @SQL VARCHAR(1000)

SET @SQL = 'create view View_DevHistoryData as';


IF (@isTemp=1)
BEGIN
   SET @SQL = @SQL  + ' select * from View_DeviceTempHistortyData UNION ALL';
END


IF (@isLq=1)
BEGIN
  SET  @SQL = @sql+ ' select * from View_LQHistoryData union ALL'
END

IF (@isVel=1)
BEGIN
  SET  @SQL = @SQL+ ' select * from View_VELHistoryData union all';
END

IF (@isAcc=1)
BEGIN
   SET @SQL = @SQL+ ' select * from View_ACCHistoryData union all';
END

IF (@isDisp=1)
BEGIN
  SET  @SQL =@SQL+ ' select * from View_DISPHistoryData union all';
END

IF (@isEnvl=1)
BEGIN
  SET  @SQL = @SQL+ ' select * from View_ENVLHistoryData UNION ALL';
END

IF EXISTS(Select Name From Sysobjects Where Name='View_DevHistoryData' And Xtype='V')
  BEGIN 
    DROP VIEW View_DevHistoryData
  END

SET @SQL = SUBSTRING(@SQL, 0,LEN(@SQL)-9)

exec (@SQL)
print @sql

END












GO
/****** Object:  StoredProcedure [dbo].[SP_Paging]    Script Date: 2017/12/13 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Paging]
@Tables VARCHAR(1000), --表名,多红表是请使用 tA a inner join tB b On a.AID = b.AID
@PK VARCHAR(100),    --主键，可以带表头 a.AID
@Sort VARCHAR(200) = '', --排序字段
@PageNumber INT = 1,    --开始页码
@PageSize INT = 10,        --页大小
@Fields VARCHAR(1000) = '*',--读取字段
@Filter VARCHAR(1000) = NULL,--Where条件
@Group VARCHAR(1000) = NULL,  --分组
@isCount BIT = 0     --1    --是否获得总记录数
AS
--
--select * from GL_NEWS order by GN_UPDATE_DATE DESC
--exec Pg_Paging @Tables = 'tb_NewsInfo', @PK = 'News_ID', @Sort = 'News_ID DESC', @PageNumber = 2, @PageSize = 15,@Fields = '*', @Group = '', @isCount = 0
DECLARE @strFilter VARCHAR(2000)
DECLARE @sql VARCHAR(8000)
IF @Filter IS NOT NULL AND @Filter != ''
  BEGIN
   SET @strFilter = ' WHERE ' + @Filter + ' '
  END
ELSE
  BEGIN
   SET @strFilter = ''
  END

IF @isCount = 1 --只获得记录条数
    BEGIN
        SET @sql = 'SELECT  Count(*) FROM ' + @Tables + @strFilter  
    END
ELSE
BEGIN
IF @Sort = ''
  SET @Sort = @PK + ' DESC '

IF @PageNumber < 1
  SET @PageNumber = 1

IF @PageNumber = 1 --第一页提高性能
BEGIN 
  SET @sql = 'select top ' + STR(@PageSize) +' '+@Fields+ '  from ' + @Tables + ' ' + @strFilter + ' ORDER BY  '+ @Sort
END 
ELSE
  BEGIN
  /**//*Execute dynamic query*/    
   DECLARE @START_ID VARCHAR(50)
DECLARE @END_ID VARCHAR(50)
SET @START_ID = CONVERT(VARCHAR(50),(@PageNumber - 1) * @PageSize + 1)
SET @END_ID = CONVERT(VARCHAR(50),@PageNumber * @PageSize)
    SET @sql =  ' SELECT '+@Fields+ '
   FROM (SELECT ROW_NUMBER() OVER(ORDER BY '+@Sort+') AS rownum, 
     '+@Fields+ '
      FROM '+@Tables+' ' +@strFilter+') AS D
   WHERE rownum BETWEEN '+@START_ID+' AND ' +@END_ID +' ORDER BY '+@Sort
  END

END
print @sql

EXEC(@sql)

GO
