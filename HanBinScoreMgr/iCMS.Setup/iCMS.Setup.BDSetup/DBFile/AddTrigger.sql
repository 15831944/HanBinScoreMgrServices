USE [iCMSDB]
GO


CREATE TRIGGER TGR_DEICE_INSERTORUPDATE ON dbo.T_SYS_DEVICE
    AFTER INSERT, UPDATE
AS
    BEGIN

        DECLARE @DeviceId INT;

        SELECT  @DeviceId = s.DevID
        FROM    inserted s;
        UPDATE  dbo.T_SYS_DEVICE
        SET     LastUpdateTime = GETDATE()
        WHERE   DevID = @DeviceId;

    END;
GO


/****** Object:  Trigger [dbo].[TGR_SYS_DEV_ALMRECORD_INSERT_ALARMREMIND]    Script Date: 2017/11/27 14:06:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TGR_SYS_DEV_ALMRECORD_INSERT_ALARMREMIND]
ON [dbo].[T_SYS_DEV_ALMRECORD]
FOR INSERT
AS
BEGIN
    IF (EXISTS (SELECT TOP 1 1 FROM inserted))
    BEGIN
        SET NOCOUNT ON;

        --����ID
        DECLARE @ID INT;
        --�豸ID
        DECLARE @DeviceID INT;
        --������¼���ʱ��ID
        DECLARE @DeviceAlmTime DATETIME;
        --�ò���Ӱ�������
        DECLARE @count INT;
        --ѭ������
        DECLARE @index INT;
        --��������
        DECLARE @AlmStatus INT;

		DECLARE @BJTXBJSZ INT;
        DECLARE @BJTXSJSZ INT;
        DECLARE @indexUserID INT;
        DECLARE @totalUserID INT;
        DECLARE @userID INT;
        --�û�ID��
        DECLARE @TEMPUSERID TABLE (UserID INT);

        --��������ֵ
        SELECT @count = COUNT(1) FROM inserted;
        SET @index = 0;

		SELECT @BJTXBJSZ = Value FROM T_DICT_CONFIG WHERE Code = 'CONFIG_151_BJTXBJSZ';
        SELECT @BJTXSJSZ = Value FROM T_DICT_CONFIG WHERE Code = 'CONFIG_150_BJTXSJSZ';
        --ɾ��������������Ĺ�����¼
        DELETE FROM T_SYS_USER_RELATION_DEV_ALMRECORD
			WHERE DeviceAlmTime < DATEADD(hh, -@BJTXSJSZ, GETDATE());

        WHILE (@index < @count)
        BEGIN
            SET @index = @index + 1;
            --��������ȡ������
            SELECT @ID = sourceData.AlmRecordID,
                   @DeviceID = sourceData.DevID,
                   @AlmStatus = AlmStatus,
                   @DeviceAlmTime = sourceData.AddDate
            FROM
            (
                SELECT ROW_NUMBER() OVER (ORDER BY AlmRecordID) AS number,
                       AlmRecordID,
                       DevID,
                       AlmStatus,
                       AddDate
                FROM inserted
            ) sourceData
            WHERE sourceData.number = @index;

            --��ӵ� �û�����δ�豸�������ѱ�
            --д�������ѷ�Χ�ڵı�����¼��1���߱�+�߸߱���    2���߱���    3���߸߱���
            IF (
                   (@AlmStatus = @BJTXBJSZ)
                   OR (
                          @BJTXBJSZ = 1
                          AND (
                                  @AlmStatus = 2
                                  OR @AlmStatus = 3
                              )
                      )
               )
            BEGIN
                INSERT INTO @TEMPUSERID
					SELECT DISTINCT UserID FROM T_SYS_USER_RELATION_DEVICE WHERE DevId = @DeviceID;
                WHILE ((SELECT COUNT(1) FROM @TEMPUSERID) > 0)
                BEGIN
                    SELECT TOP 1 @userID = UserID FROM @TEMPUSERID;

                    INSERT INTO T_SYS_USER_RELATION_DEV_ALMRECORD
                    (
                        UserID,
                        DeviceID,
                        DeviceAlmRecordID,
                        DeviceAlmTime,
                        AlmStatus,
                        AddDate
                    )
                    VALUES
                    (@userID, @DeviceID, @ID, @DeviceAlmTime, @AlmStatus, GETDATE());

                    DELETE FROM @TEMPUSERID WHERE UserID = @userID;
                END;
            END;
        END;

        SET NOCOUNT OFF;
    END;
END;
GO


/****** Object:  Trigger [dbo].[TGR_SYS_DEV_ALMRECORD_UPDATE_ALARMREMIND]    Script Date: 2017/11/27 14:07:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[TGR_SYS_DEV_ALMRECORD_UPDATE_ALARMREMIND]
ON [dbo].[T_SYS_DEV_ALMRECORD] FOR UPDATE
AS
BEGIN
	IF(EXISTS (SELECT TOP 1 1 FROM inserted))
	BEGIN
		set nocount on

		--����ID
		declare @ID int
		--�ò���Ӱ�������
		declare @count int
		--ѭ������
		declare @index int
		--�豸ID
		declare @deviceID int
		--����λ��ID
		declare @measureSiteID int
		--���ź�ID
		declare @signalID int
		--������¼������ʼʱ��
		declare @startTime datetime
		--������¼��������ʱ��
		declare @endTime datetime
		--��󱨾�ʱ��
		declare @LatestStartTime datetime
		--���ź�����
		declare @singalType int
		--���źŲɼ���ʽ
		declare @daqStyle int
		--��������
		declare @msAlmID int
		--��������
		declare @AlmStatus int
		--������Ϣ
		declare @extraMessage nvarchar(500)

		declare @BJTXBJSZ int
		declare @indexUserID int
		declare @totalUserID int
		declare @userID int
		declare @TEMPUSERID table (UserID int)
		declare @delLatestStartTime datetime
		declare @c int
		select @BJTXBJSZ=Value from T_DICT_CONFIG where Code='CONFIG_151_BJTXBJSZ'

		--��������ֵ
		select @count = count(1) from inserted
		set @index = 0

		WHILE(@index < @count)
		BEGIN
			set @extraMessage = null
			set @index = @index + 1
			--��������ȡ������
			SELECT @ID = sourceData.AlmRecordID,
				@deviceID = sourceData.DevID,
				@measureSiteID = sourceData.MSiteID,
				@signalID = sourceData.SingalID,
				@startTime = sourceData.BDate,
				@endTime = sourceData.EDate,
				@msAlmID = sourceData.MSAlmID,
				@AlmStatus=sourceData.AlmStatus,
				@LatestStartTime = sourceData.LatestStartTime
			FROM (
				SELECT ROW_NUMBER() OVER (ORDER BY AlmRecordID) AS number,
					AlmRecordID,
					DevID,
					MSiteID,
					SingalID,
					BDate,
					EDate,
					MSAlmID,
					AlmStatus,
					LatestStartTime
				FROM inserted
			) sourceData
			WHERE sourceData.number = @index
	

            --�ж��Ƿ����������������������û������豸�������ѱ�
			SELECT @delLatestStartTime=LatestStartTime FROM Deleted WHERE AlmRecordID=@ID;
			IF((@startTime = @endTime) AND (@LatestStartTime>@delLatestStartTime))
			BEGIN
				--�жϱ���״̬�Ƿ���ϱ���������������
				IF((@AlmStatus=@BJTXBJSZ) OR (@BJTXBJSZ=1 AND (@AlmStatus=2 OR @AlmStatus=3)))
				BEGIN
					DELETE FROM T_SYS_USER_RELATION_DEV_ALMRECORD WHERE DeviceAlmRecordID=@ID
					DELETE FROM @TEMPUSERID
					INSERT INTO @TEMPUSERID 
						SELECT DISTINCT userid FROM T_SYS_USER_RELATION_DEVICE WHERE DevId=@DeviceID
					WHILE((SELECT COUNT(1) FROM @TEMPUSERID)>0)
					BEGIN
						SELECT TOP 1 @userID = UserID FROM @TEMPUSERID
						INSERT INTO T_SYS_USER_RELATION_DEV_ALMRECORD
							   		 (UserID,DeviceID,DeviceAlmRecordID,DeviceAlmTime,AlmStatus,AddDate)
							   VALUES(@userID,@DeviceID,@ID,@LatestStartTime,@AlmStatus,GETDATE())

						DELETE FROM @TEMPUSERID WHERE UserID=@userID
					END
				END
			END

		END
		SET NOCOUNT OFF
	END
END


GO



/****** Object:  Trigger [dbo].[TGR_SYS_WSN_ALMRECORD_INSERT_ALARMREMIND]    Script Date: 2017/11/27 14:07:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create TRIGGER [dbo].[TGR_SYS_WSN_ALMRECORD_INSERT_ALARMREMIND]
ON [dbo].[T_SYS_WSN_ALMRECORD] FOR INSERT
AS
BEGIN
	IF(EXISTS (SELECT TOP 1 1 FROM inserted))
	BEGIN
		set nocount on

		--����ID
		declare @ID int
		--�ò���Ӱ�������
		declare @count int
		--ѭ������
		declare @index int
		--����ID
		declare @WGID int
		--������ID
		declare @WSID int
		--������¼���ʱ��ID
		declare @DeviceAlmTime datetime
		--��������
		declare @MSAlmID int
		--��������
		declare @AlmStatus int

		--��������ֵ
		select @count = count(1) from inserted
		set @index = 0

		declare @BJTXBJSZ int
		declare @BJTXSJSZ int
		declare @indexUserID int
		declare @totalUserID int
		declare @userID int
		--�û�ID��
		declare @TEMPUSERID table 
		(UserID int)
		select @BJTXBJSZ=Value from T_DICT_CONFIG where Code='CONFIG_151_BJTXBJSZ'
		select @BJTXSJSZ=Value from T_DICT_CONFIG where Code='CONFIG_150_BJTXSJSZ'
		--ɾ��������������Ĺ�����¼
		delete from T_SYS_USER_RELATION_WS_ALMRECORD where WSNAlmTime<dateadd(hh,-@BJTXSJSZ,getdate())

		WHILE(@index < @count)
		BEGIN
			set @index = @index + 1
			--��������ȡ������
			SELECT @ID = sourceData.AlmRecordID,
					@WGID=sourceData.wgid,
					@WSID=sourceData.wsid,
					@DeviceAlmTime=sourceData.LatestStartTime,
					@MSAlmID=sourceData.MSAlmID,
					@AlmStatus=AlmStatus FROM (
				SELECT ROW_NUMBER() OVER (ORDER BY AlmRecordID) AS number, AlmRecordID,wgid,wsid,MSAlmID,AlmStatus,LatestStartTime
				FROM inserted
			) sourceData
			WHERE sourceData.number = @index

		
--��ӵ� �û�����δ�豸�������ѱ�			
			--д�������ѷ�Χ�ڵı�����¼��1���߱�+�߸߱���    2���߱���    3���߸߱���
			IF((@AlmStatus=@BJTXBJSZ) OR (@BJTXBJSZ=1 AND (@AlmStatus=2 OR @AlmStatus=3)))
			BEGIN
				--���ر���
				IF(@MSAlmID = 6)
				BEGIN
					DELETE FROM @TEMPUSERID
					INSERT INTO @TEMPUSERID 
						SELECT DISTINCT userid FROM T_SYS_USER_RELATION_WS WHERE 
						WSID IN(SELECT DISTINCT wsid FROM T_SYS_WS WHERE WGID=@WGID)
					WHILE((SELECT COUNT(1) FROM @TEMPUSERID)>0)
					BEGIN
					SELECT TOP 1 @userID = UserID FROM @TEMPUSERID

					INSERT INTO T_SYS_USER_RELATION_WS_ALMRECORD
						   		 (UserID,MonitorDeviceType,MonitorDeviceID,WSNAlmRecordID,WSNAlmTime,AlmStatus,AddDate)
						   VALUES(@userID,1,@WGID,@ID,@DeviceAlmTime,@AlmStatus,GETDATE())

					DELETE FROM @TEMPUSERID WHERE UserID=@userID
				END
				END

				--����������
				IF(@MSAlmID = 3 OR @MSAlmID = 4 OR @MSAlmID = 5)
				BEGIN
					DELETE FROM @TEMPUSERID
					INSERT INTO @TEMPUSERID 
						SELECT DISTINCT userid FROM T_SYS_USER_RELATION_WS WHERE WSID=@WSID
					WHILE((SELECT COUNT(1) FROM @TEMPUSERID)>0)
					BEGIN
						SELECT TOP 1 @userID = UserID FROM @TEMPUSERID
						INSERT INTO T_SYS_USER_RELATION_WS_ALMRECORD
							   		 (UserID,MonitorDeviceType,MonitorDeviceID,WSNAlmRecordID,WSNAlmTime,AlmStatus,AddDate)
							   VALUES(@userID,2,@WSID,@ID,@DeviceAlmTime,@AlmStatus,GETDATE())

						DELETE FROM @TEMPUSERID WHERE UserID=@userID
					END
				END
			END

		END

		SET NOCOUNT OFF
	END
END


GO
/****** Object:  Trigger [dbo].[TGR_SYS_WSN_ALMRECORD_UPDATE_ALARMREMIND]    Script Date: 2017/11/27 14:07:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[TGR_SYS_WSN_ALMRECORD_UPDATE_ALARMREMIND]
ON [dbo].[T_SYS_WSN_ALMRECORD] FOR UPDATE
AS
BEGIN
	IF(EXISTS (SELECT TOP 1 1 FROM inserted))
	BEGIN
		set nocount on

		--����ID
		declare @ID int
		--�ò���Ӱ�������
		declare @count int
		--ѭ������
		declare @index int
		--���ID
		declare @mSiteID int
		--��������ID
		declare @wgID int
		--���ߴ�����ID
		declare @wsID int
		--������¼������ʼʱ��
		declare @startTime datetime
		--������¼��������ʱ��
		declare @endTime datetime
		--��������
		declare @MSAlmID int

		--��������ֵ
		select @count = count(1) from inserted
		set @index = 0

		declare @WSNAlmTime datetime
		declare @AlmStatus int
		declare @BJTXBJSZ int
		declare @BJTXSJSZ int
		declare @indexUserID int
		declare @totalUserID int
		declare @userID int
		--�û�ID��
		declare @TEMPUSERID table (UserID int)
		declare @delLatestStartTime datetime
		declare @c int
		select @BJTXBJSZ=Value from T_DICT_CONFIG where Code='CONFIG_151_BJTXBJSZ'
		select @BJTXSJSZ=Value from T_DICT_CONFIG where Code='CONFIG_150_BJTXSJSZ'

		WHILE(@index < @count)
		BEGIN
			set @index = @index + 1
			--��������ȡ������
			select @ID = sourceData.AlmRecordID,
				@mSiteID = sourceData.MSiteID,
				@wgID = sourceData.WGID,
				@wsID = sourceData.WSID,
				@startTime = sourceData.BDate,
				@endTime = sourceData.EDate,
				@WSNAlmTime=sourceData.LatestStartTime,
				@MSAlmID = sourceData.MSAlmID,
				@AlmStatus=AlmStatus
			from (
				select row_number() over (order by AlmRecordID) as number,
					AlmRecordID,
					MSiteID,
					WGID,
					WSID,
					BDate,
					EDate,
					LatestStartTime,
					MSAlmID,
					AlmStatus
				from inserted
			) sourceData
			where sourceData.number = @index
			if(isnull(@mSiteID, 0) < 1)
			begin
				continue
			end

--�ж��Ƿ����������������������û������豸�������ѱ�
			SELECT @delLatestStartTime=LatestStartTime FROM Deleted WHERE AlmRecordID=@ID;
			IF((@startTime = @endTime) AND (@WSNAlmTime>@delLatestStartTime))
			BEGIN
				--�жϱ���״̬�Ƿ���ϱ���������������
				IF((@AlmStatus=@BJTXBJSZ) OR (@BJTXBJSZ=1 AND (@AlmStatus=2 OR @AlmStatus=3)))
				BEGIN
					DELETE FROM T_SYS_USER_RELATION_WS_ALMRECORD WHERE WSNAlmRecordID=@ID
					--���ر���
					IF(@MSAlmID = 6)
					BEGIN
						DELETE FROM @TEMPUSERID
						INSERT INTO @TEMPUSERID 
						SELECT DISTINCT userid FROM T_SYS_USER_RELATION_WS WHERE 
						WSID IN(SELECT DISTINCT wsid FROM T_SYS_WS WHERE WGID=@WGID)
						WHILE((SELECT COUNT(1) FROM @TEMPUSERID)>0)
						BEGIN
							SELECT TOP 1 @userID = UserID FROM @TEMPUSERID
							INSERT INTO T_SYS_USER_RELATION_WS_ALMRECORD
					   		(UserID,MonitorDeviceType,MonitorDeviceID,WSNAlmRecordID,WSNAlmTime,AlmStatus,AddDate)
							VALUES(@userID,1,@WGID,@ID,@WSNAlmTime,@AlmStatus,GETDATE())

							DELETE FROM @TEMPUSERID WHERE UserID=@userID
						END
					END
					--����������
					IF(@MSAlmID = 3 OR @MSAlmID = 4 OR @MSAlmID = 5)
					BEGIN
						DELETE FROM @TEMPUSERID
						INSERT INTO @TEMPUSERID 
						SELECT DISTINCT userid FROM T_SYS_USER_RELATION_WS WHERE WSID=@WSID
						WHILE((SELECT COUNT(1) FROM @TEMPUSERID)>0)
						BEGIN
							SELECT TOP 1 @userID = UserID FROM @TEMPUSERID
							INSERT INTO T_SYS_USER_RELATION_WS_ALMRECORD
								   		 (UserID,MonitorDeviceType,MonitorDeviceID,WSNAlmRecordID,WSNAlmTime,AlmStatus,AddDate)
								   VALUES(@userID,2,@WSID,@ID,@WSNAlmTime,@AlmStatus,GETDATE())

							DELETE FROM @TEMPUSERID WHERE UserID=@userID
						END
					END
				END
			END
		END

		SET NOCOUNT OFF
	END
END


GO




