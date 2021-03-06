USE [iCMSDB]

GO
/****** Object:  Table [dbo].[T_DATA_REALTIME_ALARMTHRESHOLD]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_REALTIME_ALARMTHRESHOLD](
	[RealTimeAlarmThresholdID] [int] IDENTITY(1,1) NOT NULL,
	[MeasureSiteID] [int] NOT NULL,
	[MeasureSiteThresholdType] [int] NOT NULL,
	[AlarmThresholdValue] [real] NOT NULL,
	[DangerThresholdValue] [real] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[EigenValueType] [int] NULL,
	[SamplingDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_DATA_REALTIME_ALARMTHRESHOLD] PRIMARY KEY CLUSTERED 
(
	[RealTimeAlarmThresholdID] ASC,
	[MeasureSiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_POWERSUPPLYMODE_TYPE]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_POWERSUPPLYMODE_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK__T_DICT_P__3214EC278C99B624] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_DIAGNOSE_REPORT]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SYS_DIAGNOSE_REPORT](
	[DiagnoseReportID] [int] IDENTITY(1,1) NOT NULL,
	[DiagnoseReportName] [varchar](100) NOT NULL,
	[DeviceID] [int] NOT NULL,
	[AddUserID] [int] NULL,
	[AddDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[Content] [text] NULL,
	[IsTemplate] [bit] NOT NULL,
 CONSTRAINT [PK_T_SYS_DIAGNOSE_REPORT] PRIMARY KEY CLUSTERED 
(
	[DiagnoseReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SYS_HELP_DOCUMENT]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SYS_HELP_DOCUMENT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Substance] [text] NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_HELP_DOCUMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SYS_MAINTAIN_REPORT]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_MAINTAIN_REPORT](
	[MaintainReportID] [int] IDENTITY(1,1) NOT NULL,
	[MaintainReportName] [nvarchar](100) NOT NULL,
	[ReportType] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[AddUserID] [int] NULL,
	[AddDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[Content] [text] NULL,
	[IsTemplate] [bit] NOT NULL,
 CONSTRAINT [PK_T_SYS_MAINTAIN_REPORT] PRIMARY KEY CLUSTERED 
(
	[MaintainReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_MEASURESITE_BEARING]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_MEASURESITE_BEARING](
	[MeasureSiteBearingID] [int] IDENTITY(1,1) NOT NULL,
	[MeasureSiteID] [int] NOT NULL,
	[BearingID] [int] NOT NULL,
	[BearingType] [nvarchar](100) NULL,
	[BearingNum] [nvarchar](100) NULL,
	[LubricatingForm] [nvarchar](100) NULL,
	[AddDate] [datetime] NULL,
 CONSTRAINT [PK_T_SYS_MEASURESITE_BEARING] PRIMARY KEY CLUSTERED 
(
	[MeasureSiteBearingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_DEV_ALMRECORD]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_USER_RELATION_DEV_ALMRECORD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[DeviceAlmRecordID] [int] NOT NULL,
	[DeviceAlmTime] [datetime] NOT NULL,
	[AlmStatus] [int] NULL,
	[AddDate] [datetime] NULL,
 CONSTRAINT [PK_T_SYS_USER_RALATION_DEV_ALMRECORD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_DIAGNOSE_REPORT]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_USER_RELATION_DIAGNOSE_REPORT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[DiangoseReportID] [int] NOT NULL,
	[DiangoseReportAddDate] [datetime] NOT NULL,
	[AddDate] [datetime] NULL,
 CONSTRAINT [PK_T_SYS_USER_RALATION_DIAGNOSE_REPORT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_MAINTAIN_REPORT]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_USER_RELATION_MAINTAIN_REPORT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ReportType] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[MaintainReportID] [int] NOT NULL,
	[MaintainReportAddDate] [datetime] NOT NULL,
	[AddDate] [datetime] NULL,
 CONSTRAINT [PK_T_SYS_USER_RALATION_MAINTAIN_REPORT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_WS]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_USER_RELATION_WS](
	[UserRalationWSID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[AddDate] [datetime] NULL,
 CONSTRAINT [PK_T_SYS_USER_RALATION_WS] PRIMARY KEY CLUSTERED 
(
	[UserRalationWSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_WS_ALMRECORD]    Script Date: 2017/11/29 14:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_USER_RELATION_WS_ALMRECORD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[MonitorDeviceType] [int] NOT NULL,
	[MonitorDeviceID] [int] NOT NULL,
	[WSNAlmRecordID] [int] NOT NULL,
	[WSNAlmTime] [datetime] NOT NULL,
	[AlmStatus] [int] NULL,
	[AddDate] [datetime] NULL,
 CONSTRAINT [PK_T_SYS_USER_RALATION_WS_ALMRECORD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_ALARMTHRESHOLD', @level2type=N'COLUMN',@level2name=N'RealTimeAlarmThresholdID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_ALARMTHRESHOLD', @level2type=N'COLUMN',@level2name=N'MeasureSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置类型 1:加速度 2:速度 3:位移 4:包络 5:设备状态 6:设备温度 7:WS温度 8:WS电池电压' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_ALARMTHRESHOLD', @level2type=N'COLUMN',@level2name=N'MeasureSiteThresholdType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_ALARMTHRESHOLD', @level2type=N'COLUMN',@level2name=N'AlarmThresholdValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'危险阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_ALARMTHRESHOLD', @level2type=N'COLUMN',@level2name=N'DangerThresholdValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特征值类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_ALARMTHRESHOLD', @level2type=N'COLUMN',@level2name=N'EigenValueType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_ALARMTHRESHOLD', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时实阈值关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_ALARMTHRESHOLD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'DiagnoseReportID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊断报告名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'DiagnoseReportName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'AddUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊断报告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是模板(0：非模板 1：是模板)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'IsTemplate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'MaintainReportID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修日志名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'MaintainReportName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修日志类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'ReportType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'AddUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修日志内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是模板(0：非模板 1：是模板)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'IsTemplate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE_BEARING', @level2type=N'COLUMN',@level2name=N'MeasureSiteBearingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE_BEARING', @level2type=N'COLUMN',@level2name=N'MeasureSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴承ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE_BEARING', @level2type=N'COLUMN',@level2name=N'BearingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴承形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE_BEARING', @level2type=N'COLUMN',@level2name=N'BearingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴承型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE_BEARING', @level2type=N'COLUMN',@level2name=N'BearingNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'润滑形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE_BEARING', @level2type=N'COLUMN',@level2name=N'LubricatingForm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测点和轴承关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE_BEARING'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备报警记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DeviceAlmRecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DeviceAlmTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态（2：高报； 3：高高报）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊断报告ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'DiangoseReportID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊断报告创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'DiangoseReportAddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DIAGNOSE_REPORT', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修日志类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'ReportType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'DeviceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修日志ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'MaintainReportID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修日志创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'MaintainReportAddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_MAINTAIN_REPORT', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS', @level2type=N'COLUMN',@level2name=N'UserRalationWSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS_ALMRECORD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS_ALMRECORD', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MonitorDeviceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MonitorDeviceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS_ALMRECORD', @level2type=N'COLUMN',@level2name=N'WSNAlmRecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS_ALMRECORD', @level2type=N'COLUMN',@level2name=N'WSNAlmTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态（2：高报； 3：高高报）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_WS_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
/****** Object:  Table [dbo].[T_DICT_CONFIG]    Script Date: 2017/12/12 17:47:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_CONFIG_TEMP](
	[ID] [INT] IDENTITY(1,1) NOT NULL,
	[Name] [NVARCHAR](100) NOT NULL,
	[IsUsed] [INT] NOT NULL,
	[Value] [NVARCHAR](MAX) NULL,
	[IsDefault] [INT] NOT NULL,
	[AddDate] [DATETIME] NOT NULL,
	[ParentId] [INT] NULL,
	[Describe] [NVARCHAR](100) NULL,
 CONSTRAINT [PK_T_DICT_CONFIG_TEMP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG_TEMP', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG_TEMP', @level2type=N'COLUMN',@level2name=N'IsUsed'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG_TEMP', @level2type=N'COLUMN',@level2name=N'Value'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'键名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG_TEMP', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统配置文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG_TEMP'
GO


