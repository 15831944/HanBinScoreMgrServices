USE [iCMSDB]
GO
/****** Object:  Table [dbo].[T_DATA_CLOUDLOG]    Script Date: 2018/5/21 19:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_CLOUDLOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlatformId] [int] NOT NULL,
	[PushData] [nvarchar](4000) NOT NULL,
	[PushResult] [nvarchar](200) NULL,
	[PushTime] [datetime] NOT NULL,
	[PushStatus] [int] NOT NULL,
	[DataType] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DATA_CLOUDPUSH]    Script Date: 2018/5/21 19:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_CLOUDPUSH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](200) NOT NULL,
	[TableNameId] [int] NOT NULL,
	[OperationStatus] [int] NOT NULL,
	[PlatformId] [int] NOT NULL,
	[DataStatus] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[ExtraMessage] [nvarchar](500) NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK__T_DATA_C__3214EC2797A67730] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DATA_REALTIME_ALARMTHRESHOLD]    Script Date: 2018/5/21 19:53:45 ******/
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
/****** Object:  Table [dbo].[T_DATA_REALTIME_COLLECT_INFO]    Script Date: 2018/5/21 19:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_REALTIME_COLLECT_INFO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DevID] [int] NULL,
	[MSID] [int] NULL,
	[MSName] [nvarchar](50) NULL,
	[MSStatus] [int] NULL,
	[MSDesInfo] [nvarchar](200) NULL,
	[MSDataStatus] [int] NULL,
	[MSSpeedSingalID] [int] NULL,
	[MSSpeedUnit] [nvarchar](50) NULL,
	[MSSpeedVirtualValue] [real] NULL,
	[MSSpeedPeakValue] [real] NULL,
	[MSSpeedPeakPeakValue] [real] NULL,
	[MSSpeedHPEValue] [real] NULL,
	[MSSpeedMPEValue] [real] NULL,
	[MSSpeedLPEValue] [real] NULL,
	[MSSpeedVirtualStatus] [int] NULL,
	[MSSpeedPeakStatus] [int] NULL,
	[MSSpeedPeakPeakStatus] [int] NULL,
	[MSSpeedHPEStatus] [int] NULL,
	[MSSpeedMPEStatus] [int] NULL,
	[MSSpeedLPEStatus] [int] NULL,
	[MSSpeedVirtualTime] [datetime] NULL,
	[MSSpeedPeakTime] [datetime] NULL,
	[MSSpeedPeakPeakTime] [datetime] NULL,
	[MSSpeedHPETime] [datetime] NULL,
	[MSSpeedMPETime] [datetime] NULL,
	[MSSpeedLPETime] [datetime] NULL,
	[MSACCSingalID] [int] NULL,
	[MSACCUnit] [nvarchar](50) NULL,
	[MSACCVirtualValue] [real] NULL,
	[MSACCPeakValue] [real] NULL,
	[MSACCPeakPeakValue] [real] NULL,
	[MSACCVirtualStatus] [int] NULL,
	[MSACCPeakStatus] [int] NULL,
	[MSACCPeakPeakStatus] [int] NULL,
	[MSACCVirtualTime] [datetime] NULL,
	[MSACCPeakTime] [datetime] NULL,
	[MSACCPeakPeakTime] [datetime] NULL,
	[MSDispSingalID] [int] NULL,
	[MSDispUnit] [nvarchar](50) NULL,
	[MSDispVirtualValue] [real] NULL,
	[MSDispPeakValue] [real] NULL,
	[MSDispPeakPeakValue] [real] NULL,
	[MSDispVirtualStatus] [int] NULL,
	[MSDispPeakStatus] [int] NULL,
	[MSDispPeakPeakStatus] [int] NULL,
	[MSDispVirtualTime] [datetime] NULL,
	[MSDispPeakTime] [datetime] NULL,
	[MSDispPeakPeakTime] [datetime] NULL,
	[MSEnvelSingalID] [int] NULL,
	[MSEnvelopingPEAKValue] [real] NULL,
	[MSEnvelopingCarpetValue] [real] NULL,
	[MSEnvelopingMEANValue] [real] NULL,
	[MSEnvelopingUnit] [nvarchar](50) NULL,
	[MSEnvelopingPEAKStatus] [int] NULL,
	[MSEnvelopingCarpetStatus] [int] NULL,
	[MSEnvelopingMEANStatus] [int] NULL,
	[MSEnvelopingPEAKTime] [datetime] NULL,
	[MSEnvelopingCarpetTime] [datetime] NULL,
	[MSEnvelopingMEANTime] [datetime] NULL,
	[MSLQSingalID] [int] NULL,
	[MSLQValue] [real] NULL,
	[MSLQStatus] [int] NULL,
	[MSLQUnit] [nvarchar](50) NULL,
	[MSLQTime] [datetime] NULL,
	[MSDevTemperatureStatus] [int] NULL,
	[MSDevTemperatureValue] [real] NULL,
	[MSDevTemperatureUnit] [nvarchar](50) NULL,
	[MSDevTemperatureTime] [datetime] NULL,
	[MSWSTemperatureStatus] [int] NULL,
	[MSWSTemperatureValue] [real] NULL,
	[MSWSTemperatureUnit] [nvarchar](50) NULL,
	[MSWSTemperatureTime] [datetime] NULL,
	[MSWSBatteryVolatageValue] [real] NULL,
	[MSWSBatteryVolatageUnit] [nvarchar](50) NULL,
	[MSWSBatteryVolatageStatus] [int] NULL,
	[MSWSBatteryVolatageTime] [datetime] NULL,
	[MSWGLinkStatus] [int] NULL,
	[MSRealTimeSpeedValue] [int] NULL,
	[MSRealTimeSpeedTime] [datetime] NULL,
	[AddDate] [datetime] NULL,
 CONSTRAINT [PK_T_DATA_REALTIME_COLLECT_INFO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DATA_SPEED_DEVICE_MSITEDATA_1]    Script Date: 2018/5/21 19:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DATA_SPEED_DEVICE_MSITEDATA_1](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [varchar](100) NULL,
	[MsDataValue] [real] NOT NULL,
	[LineCnt] [int] NOT NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL,
 CONSTRAINT [PK_T_DATA_SPEED_DEVICE_MSITEDATA_1] PRIMARY KEY CLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DATA_SPEED_DEVICE_MSITEDATA_2]    Script Date: 2018/5/21 19:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DATA_SPEED_DEVICE_MSITEDATA_2](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [varchar](100) NULL,
	[MsDataValue] [real] NOT NULL,
	[LineCnt] [int] NOT NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL,
 CONSTRAINT [PK_T_DATA_SPEED_DEVICE_MSITEDATA_2] PRIMARY KEY CLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DATA_SPEED_DEVICE_MSITEDATA_3]    Script Date: 2018/5/21 19:53:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DATA_SPEED_DEVICE_MSITEDATA_3](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [varchar](100) NULL,
	[MsDataValue] [real] NOT NULL,
	[LineCnt] [int] NOT NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL,
 CONSTRAINT [PK_T_DATA_SPEED_DEVICE_MSITEDATA_3] PRIMARY KEY CLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DATA_SPEED_DEVICE_MSITEDATA_4]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_DATA_SPEED_DEVICE_MSITEDATA_4](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [varchar](100) NULL,
	[MsDataValue] [real] NOT NULL,
	[LineCnt] [int] NOT NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL,
 CONSTRAINT [PK_T_DATA_SPEED_DEVICE_MSITEDATA_4] PRIMARY KEY CLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_1]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_1](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_TEMPE_DEVICE_MSITEDATA_1]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_2]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_2](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_TEMPE_DEVICE_MSITEDATA_2]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_3]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_3](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_TEMPE_DEVICE_MSITEDATA_3]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_4]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_4](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_TEMPE_DEVICE_MSITEDATA_4]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_TEMPE_WS_MSITEDATA_1]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_1](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_TEMPE_WS_MSITEDATA_1]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_TEMPE_WS_MSITEDATA_2]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_2](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_TEMPE_WS_MSITEDATA_2]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_TEMPE_WS_MSITEDATA_3]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_3](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_TEMPE_WS_MSITEDATA_3]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_TEMPE_WS_MSITEDATA_4]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_4](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_TEMPE_WS_MSITEDATA_4]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC](
	[HisDataID] [int] IDENTITY(1,1) NOT NULL,
	[SingalID] [int] NOT NULL,
	[MsiteID] [int] NOT NULL,
	[DevID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [nvarchar](100) NULL,
	[Rotate] [nvarchar](50) NOT NULL,
	[TransformCofe] [real] NOT NULL,
	[RealSamplingFrequency] [real] NOT NULL,
	[SamplingPointData] [int] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[DAQStyle] [int] NULL,
	[PeakValue] [real] NULL,
	[PeakPeakValue] [real] NULL,
	[EffValue] [real] NULL,
	[PeakWarnValue] [real] NULL,
	[PeakAlmValue] [real] NULL,
	[PeakPeakWarnValue] [real] NULL,
	[PeakPeakAlmValue] [real] NULL,
	[EffWarnValue] [real] NULL,
	[EffAlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP](
	[HisDataID] [int] IDENTITY(1,1) NOT NULL,
	[SingalID] [int] NOT NULL,
	[MsiteID] [int] NOT NULL,
	[DevID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [nvarchar](100) NULL,
	[Rotate] [nvarchar](50) NOT NULL,
	[TransformCofe] [real] NOT NULL,
	[RealSamplingFrequency] [real] NOT NULL,
	[SamplingPointData] [int] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[DAQStyle] [int] NULL,
	[PeakValue] [real] NULL,
	[PeakPeakValue] [real] NULL,
	[EffValue] [real] NULL,
	[PeakWarnValue] [real] NULL,
	[PeakAlmValue] [real] NULL,
	[PeakPeakWarnValue] [real] NULL,
	[PeakPeakAlmValue] [real] NULL,
	[EffWarnValue] [real] NULL,
	[EffAlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL](
	[HisDataID] [int] IDENTITY(1,1) NOT NULL,
	[SingalID] [int] NOT NULL,
	[MsiteID] [int] NOT NULL,
	[DevID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [nvarchar](100) NULL,
	[Rotate] [nvarchar](50) NOT NULL,
	[TransformCofe] [real] NOT NULL,
	[RealSamplingFrequency] [real] NOT NULL,
	[SamplingPointData] [int] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[DAQStyle] [int] NULL,
	[PeakValue] [real] NULL,
	[CarpetValue] [real] NULL,
	[MEANValue] [real] NULL,
	[PeakWarnValue] [real] NULL,
	[PeakAlmValue] [real] NULL,
	[CarpetWarnValue] [real] NULL,
	[CarpetAlmValue] [real] NULL,
	[MEANWarnValue] [real] NULL,
	[MEANAlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ](
	[HisDataID] [int] IDENTITY(1,1) NOT NULL,
	[SingalID] [int] NOT NULL,
	[MSITEID] [int] NOT NULL,
	[DevID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [nvarchar](100) NULL,
	[Rotate] [nvarchar](50) NOT NULL,
	[TransformCofe] [real] NOT NULL,
	[RealSamplingFrequency] [real] NOT NULL,
	[SamplingPointData] [int] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[DAQStyle] [int] NULL,
	[LQValue] [real] NULL,
	[LQWarnValue] [real] NULL,
	[LQAlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL](
	[HisDataID] [int] IDENTITY(1,1) NOT NULL,
	[SingalID] [int] NOT NULL,
	[MsiteID] [int] NOT NULL,
	[DevID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[WaveDataPath] [nvarchar](100) NULL,
	[Rotate] [nvarchar](50) NOT NULL,
	[TransformCofe] [real] NOT NULL,
	[RealSamplingFrequency] [real] NOT NULL,
	[SamplingPointData] [int] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[DAQStyle] [int] NULL,
	[PeakValue] [real] NULL,
	[PeakPeakValue] [real] NULL,
	[EffValue] [real] NULL,
	[LPEValue] [real] NULL,
	[MPEValue] [real] NULL,
	[HPEValue] [real] NULL,
	[PeakWarnValue] [real] NULL,
	[PeakAlmValue] [real] NULL,
	[PeakPeakWarnValue] [real] NULL,
	[PeakPeakAlmValue] [real] NULL,
	[EffWarnValue] [real] NULL,
	[EffAlmValue] [real] NULL,
	[LPEWarnValue] [real] NULL,
	[LPEAlmValue] [real] NULL,
	[MPEWarnValue] [real] NULL,
	[MPEAlmValue] [real] NULL,
	[HPEWarnValue] [real] NULL,
	[HPEAlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL
) ON [PART_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VIBSINGAL_RT]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VIBSINGAL_RT](
	[RTDataID] [int] IDENTITY(1,1) NOT NULL,
	[DAQStyle] [int] NULL,
	[SingalID] [int] NOT NULL,
	[MSID] [int] NOT NULL,
	[DevID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[Rotate] [nvarchar](100) NOT NULL,
	[WaveDataPath] [nvarchar](100) NULL,
	[TransformCofe] [real] NOT NULL,
	[RealSamplingFrequency] [real] NOT NULL,
	[SamplingPointData] [int] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[E1] [real] NULL,
	[E2] [real] NULL,
	[E3] [real] NULL,
	[E4] [real] NULL,
	[E5] [real] NULL,
	[E6] [real] NULL,
	[AddDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_1]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_1](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL
) ON [PART_T_DATA_VOLTAGE_WS_MSITEDATA_1]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_2]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_2](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL
) ON [PART_T_DATA_VOLTAGE_WS_MSITEDATA_2]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_3]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_3](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL
) ON [PART_T_DATA_VOLTAGE_WS_MSITEDATA_3]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_4]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_4](
	[MsiteDataID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[SamplingDate] [datetime] NOT NULL,
	[MsDataValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[WSID] [int] NOT NULL,
	[WarnValue] [real] NULL,
	[AlmValue] [real] NULL,
	[MonthDate] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL
) ON [PART_T_DATA_VOLTAGE_WS_MSITEDATA_4]([MonthDate])

GO
/****** Object:  Table [dbo].[T_DICT_CONFIG]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_CONFIG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsUsed] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
	[AddDate] [datetime] NOT NULL,
	[ParentId] [int] NULL,
	[Describe] [nvarchar](100) NULL,
	[OrderNo] [int] NULL,
	[CommonDataType] [int] NULL,
	[CommonDataCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_DICT_CONFIG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_CONNECT_STATUS_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_CONNECT_STATUS_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK_T_DICT_CONNECT_STATUS_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_DEVICE_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_DEVICE_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK_T_DICT_DEVICE_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_EIGEN_VALUE_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_EIGEN_VALUE_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[VibratingSignalTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK_T_DICT_EIGEN_VALUE_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_MEASURE_SITE_MONITOR_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_MEASURE_SITE_MONITOR_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK_T_DICT_MEASURE_SITE_MONITOR_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_MEASURE_SITE_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_MEASURE_SITE_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[COde] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[DeviceTypeID] [int] NOT NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK_T_DICT_MEASURE_SITE_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_MONITORTREE_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_MONITORTREE_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK_T_DICT_MONITORTREE_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_POWERSUPPLYMODE_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_DICT_SENSOR_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_SENSOR_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK_T_DICT_SENSOR_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_VIBRATING_SIGNAL_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_VIBRATING_SIGNAL_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
 CONSTRAINT [PK_T_DICT_VIBRATING_SIGNAL_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_WAVE_LENGTH_VALUE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_WAVE_LENGTH_VALUE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VibratingSignalTypeID] [int] NOT NULL,
	[WaveLengthValue] [int] NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_DICT_WAVE_LENGTH_VALUE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_WAVE_LOWERLIMIT_VALUE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_WAVE_LOWERLIMIT_VALUE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VibratingSignalTypeID] [int] NOT NULL,
	[WaveLowerLimitValue] [int] NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[Code] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_DICT_WAVE_LOWERLIMIT_VALUE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_WAVE_UPPERLIMIT_VALUE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_WAVE_UPPERLIMIT_VALUE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VibratingSignalTypeID] [int] NOT NULL,
	[WaveUpperLimitValue] [int] NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[Code] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_DICT_WAVE_UPPERLIMIT_VALUE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DICT_WIRELESS_GATEWAY_TYPE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DICT_WIRELESS_GATEWAY_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[IsUsable] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[Code] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_DICT_WIRELESS_GATEWAY_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_BEARING]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_BEARING](
	[BearingID] [int] IDENTITY(1,1) NOT NULL,
	[FactoryName] [nvarchar](100) NOT NULL,
	[FactoryID] [nvarchar](200) NULL,
	[BearingNum] [nvarchar](100) NULL,
	[BearingDescribe] [nvarchar](150) NULL,
	[BPFO] [real] NOT NULL,
	[BPFI] [real] NOT NULL,
	[BSF] [real] NOT NULL,
	[FTF] [real] NOT NULL,
	[BallsNumber] [int] NULL,
	[BallDiameter] [real] NULL,
	[PitchDiameter] [real] NULL,
	[ContactAngle] [real] NULL,
	[AddDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_CLOUDCONFIG]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_CLOUDCONFIG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ParentId] [int] NULL,
	[Type] [int] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Value] [nvarchar](200) NULL,
	[IsUse] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_DEV_ALMRECORD]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_DEV_ALMRECORD](
	[AlmRecordID] [int] IDENTITY(1,2) NOT NULL,
	[DevID] [int] NOT NULL,
	[DevName] [nvarchar](100) NULL,
	[DevNO] [nvarchar](100) NULL,
	[MSiteID] [int] NOT NULL,
	[MSiteName] [nvarchar](100) NULL,
	[SingalID] [int] NOT NULL,
	[SingalName] [nvarchar](100) NULL,
	[SingalAlmID] [int] NOT NULL,
	[SingalValue] [nvarchar](100) NULL,
	[MonitorTreeID] [nvarchar](100) NULL,
	[MSAlmID] [int] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[SamplingValue] [real] NULL,
	[WarningValue] [real] NULL,
	[DangerValue] [real] NULL,
	[BDate] [datetime] NOT NULL,
	[EDate] [datetime] NOT NULL,
	[LatestStartTime] [datetime] NOT NULL,
	[Content] [nvarchar](100) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.T_SYS_DEV_ALMRECORD] PRIMARY KEY CLUSTERED 
(
	[AlmRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_DEVICE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_DEVICE](
	[DevID] [int] IDENTITY(1,1) NOT NULL,
	[MonitorTreeID] [int] NOT NULL,
	[DevName] [nvarchar](100) NOT NULL,
	[DevNO] [int] NULL,
	[Rotate] [real] NOT NULL,
	[DevType] [int] NOT NULL,
	[DevManufacturer] [nvarchar](100) NULL,
	[LastCheckDate] [datetime] NULL,
	[DevManager] [nvarchar](20) NULL,
	[DevPic] [nvarchar](100) NULL,
	[DevMadeDate] [datetime] NULL,
	[DevMark] [nvarchar](200) NULL,
	[Longitude] [real] NULL,
	[Latitude] [real] NULL,
	[AlmStatus] [int] NOT NULL,
	[DevSDate] [datetime] NOT NULL,
	[Length] [real] NULL,
	[Width] [real] NULL,
	[Height] [real] NULL,
	[outputVolume] [real] NULL,
	[Position] [nvarchar](100) NULL,
	[SensorSize] [int] NOT NULL,
	[Power] [real] NULL,
	[RatedCurrent] [real] NULL,
	[RatedVoltage] [real] NULL,
	[Media] [nvarchar](100) NULL,
	[OutputMaxPressure] [real] NULL,
	[HeadOfDelivery] [real] NULL,
	[CouplingType] [nvarchar](100) NULL,
	[UseType] [int] NOT NULL,
	[RunStatus] [int] NOT NULL,
	[ImageID] [int] NOT NULL,
	[PersonInCharge] [nvarchar](50) NULL,
	[PersonInChargeTel] [nvarchar](50) NULL,
	[DevModel] [nvarchar](100) NULL,
	[StatusCriticalValue] [real] NULL,
	[AddDate] [datetime] NOT NULL,
	[OperationDate] [datetime] NULL,
	[LastUpdateTime] [datetime] NOT NULL,
	[DeviceStopDate] [datetime] NULL,
 CONSTRAINT [PK_T_SYS_DEVICE] PRIMARY KEY CLUSTERED 
(
	[DevID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_DEVICE_RELATION_WG]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_DEVICE_RELATION_WG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DevId] [int] NOT NULL,
	[WGID] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_DEVICE_RELATION_WG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_DIAGNOSE_REPORT]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_SYS_FACTORY]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_FACTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FactoryID] [nvarchar](200) NOT NULL,
	[FactoryName] [nvarchar](200) NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_FACTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_HELP_DOCUMENT]    Script Date: 2018/5/21 19:53:46 ******/
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
	[IsShow] [bit] NULL,
 CONSTRAINT [PK_T_SYS_HELP_DOCUMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SYS_IMAGE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_IMAGE](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) NOT NULL,
	[ImageURL] [nvarchar](100) NULL,
	[ImagePath] [nvarchar](200) NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_MAINTAIN_REPORT]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_SYS_MEASURESITE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_MEASURESITE](
	[MSiteID] [int] IDENTITY(1,1) NOT NULL,
	[MSiteName] [int] NOT NULL,
	[DevID] [int] NOT NULL,
	[WSID] [int] NULL,
	[MeasureSiteType] [int] NOT NULL,
	[SensorCosA] [real] NOT NULL,
	[SensorCosB] [real] NOT NULL,
	[MSiteStatus] [int] NOT NULL,
	[MSiteSDate] [datetime] NOT NULL,
	[WaveTime] [nvarchar](50) NULL,
	[FlagTime] [nvarchar](50) NULL,
	[TemperatureTime] [nvarchar](50) NULL,
	[Remark] [nvarchar](100) NULL,
	[Position] [nvarchar](100) NULL,
	[SerialNo] [int] NOT NULL,
	[BearingID] [int] NULL,
	[BearingType] [nvarchar](100) NULL,
	[BearingModel] [nvarchar](100) NULL,
	[LubricatingForm] [nvarchar](100) NULL,
	[AddDate] [datetime] NOT NULL,
	[RelationMSiteID] [int] NULL,
	[SensorCoefficient] [real] NULL,
 CONSTRAINT [PK_T_SYS_MEASURESITE] PRIMARY KEY CLUSTERED 
(
	[MSiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_MEASURESITE_BEARING]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_SYS_ModBusRegisterAddress]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SYS_ModBusRegisterAddress](
	[ModBusRegisterID] [int] IDENTITY(1,1) NOT NULL,
	[MDFID] [int] NOT NULL,
	[MDFResourceTable] [varchar](200) NOT NULL,
	[RegisterAddress] [int] NOT NULL,
	[StrEnumRegisterStorageMode] [int] NOT NULL,
	[StrEnumRegisterStorageSequenceMode] [int] NOT NULL,
	[StrEnumRegisterType] [int] NOT NULL,
	[StrEnumRegisterInformation] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_ModBusRegisterAddress] PRIMARY KEY CLUSTERED 
(
	[ModBusRegisterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SYS_MODULE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_MODULE](
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [nvarchar](50) NOT NULL,
	[ParID] [int] NOT NULL,
	[IsUsed] [int] NOT NULL,
	[IsDeault] [int] NOT NULL,
	[OID] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[CommonDataType] [int] NULL,
	[CommonDataCode] [nvarchar](50) NULL,
	[Describe] [nvarchar](200) NULL,
 CONSTRAINT [PK_SYS_MODULE] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_MONITOR_TREE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_MONITOR_TREE](
	[MonitorTreeID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[OID] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Des] [nvarchar](200) NULL,
	[Type] [int] NOT NULL,
	[ImageID] [int] NULL,
	[MonitorTreePropertyID] [int] NULL,
	[Status] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_MONITOR_TREE] PRIMARY KEY CLUSTERED 
(
	[MonitorTreeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_MONITOR_TREE_PROPERTY]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_MONITOR_TREE_PROPERTY](
	[MonitorTreePropertyID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[URL] [nvarchar](100) NULL,
	[TelphoneNO] [nvarchar](100) NULL,
	[FaxNO] [nvarchar](100) NULL,
	[Latitude] [real] NULL,
	[Longtitude] [real] NULL,
	[ChildCount] [int] NOT NULL,
	[Length] [real] NULL,
	[Width] [real] NULL,
	[Area] [real] NULL,
	[PersonInCharge] [nvarchar](50) NULL,
	[PersonInChargeTel] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_MONITOR_TREE_PROPERTY] PRIMARY KEY CLUSTERED 
(
	[MonitorTreePropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_OPERATION]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SYS_OPERATION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OperatorKey] [varchar](50) NOT NULL,
	[MSID] [int] NOT NULL,
	[OperationType] [int] NOT NULL,
	[Bdate] [datetime] NOT NULL,
	[EDate] [datetime] NULL,
	[OperationResult] [varchar](max) NOT NULL,
	[OperationReson] [nvarchar](max) NULL,
	[AddDate] [datetime] NOT NULL,
	[DAQStyle] [int] NULL,
	[WSID] [int] NULL,
 CONSTRAINT [PK_T_SYS_OPERATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SYS_ROLE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_ROLE](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[IsShow] [int] NOT NULL,
	[IsDeault] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_ROLEMODULE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_ROLEMODULE](
	[RMID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[ModuleCode] [nvarchar](50) NOT NULL,
	[AddDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_SpeedConversionCoeff]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_SpeedConversionCoeff](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SpeedMDFID] [int] NOT NULL,
	[LowSpdTermnalPulsNumPerCircle] [real] NOT NULL,
	[TransmissionRatio] [real] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_SpeedConversionCoeff] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_SpeedMDFExtend]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SYS_SpeedMDFExtend](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SpeedMDFID] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Value] [varchar](100) NOT NULL,
	[Type] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_SpeedMDFExtend] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SYS_SpeedSamplingMDF]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_SpeedSamplingMDF](
	[SpeedMDFID] [int] IDENTITY(1,1) NOT NULL,
	[MSiteID] [int] NOT NULL,
	[PulsNumPerP] [real] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_SpeedSamplingChannelMDF] PRIMARY KEY CLUSTERED 
(
	[SpeedMDFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_SYSLOG]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_SYSLOG](
	[SysLogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Record] [nvarchar](500) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[IPAddress] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_TEMPE_DEVICE_SET_MSITEALM]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_TEMPE_DEVICE_SET_MSITEALM](
	[MsiteAlmID] [int] IDENTITY(2,3) NOT NULL,
	[WGID] [int] NULL,
	[MsiteID] [int] NOT NULL,
	[WarnValue] [real] NOT NULL,
	[AlmValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_TEMPE_DEVICE_SET_MSITEALM] PRIMARY KEY CLUSTERED 
(
	[MsiteAlmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_TEMPE_WS_SET_MSITEALM]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_TEMPE_WS_SET_MSITEALM](
	[MsiteAlmID] [int] IDENTITY(1,1) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[WarnValue] [real] NOT NULL,
	[AlmValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_TEMPE_WS_SET_MSITEALM] PRIMARY KEY CLUSTERED 
(
	[MsiteAlmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_USER]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_USER](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[IsShow] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PSW] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[LockPSW] [nvarchar](50) NULL,
	[LoginCount] [int] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[Phone] [nvarchar](20) NULL,
	[AddDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[AccountName] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_DEV_ALMRECORD]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_DEVICE]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_USER_RELATION_DEVICE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DevId] [int] NULL,
	[MTIds] [nvarchar](500) NULL,
	[AddDate] [datetime] NULL,
 CONSTRAINT [PK_T_SYS_USER_RALATION_DEVICE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_DIAGNOSE_REPORT]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_MAINTAIN_REPORT]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_WS]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_SYS_USER_RELATION_WS_ALMRECORD]    Script Date: 2018/5/21 19:53:46 ******/
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
/****** Object:  Table [dbo].[T_SYS_USERLOG]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_USERLOG](
	[UserLogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Record] [nvarchar](500) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[IPAddress] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_VIBRATING_SET_SIGNALALM]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_VIBRATING_SET_SIGNALALM](
	[SingalAlmID] [int] IDENTITY(3,3) NOT NULL,
	[SingalID] [int] NOT NULL,
	[ValueType] [int] NOT NULL,
	[WarnValue] [real] NOT NULL,
	[AlmValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[UploadTrigger] [real] NULL,
	[ThrendAlarmPrvalue] [real] NULL,
	[EnergyUpLimit] [int] NULL,
	[EnergyLowLimit] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_VIBSINGAL]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_VIBSINGAL](
	[SingalID] [int] IDENTITY(1,1) NOT NULL,
	[DAQStyle] [int] NULL,
	[MSiteID] [int] NOT NULL,
	[UpLimitFrequency] [int] NULL,
	[LowLimitFrequency] [int] NULL,
	[StorageTrighters] [real] NULL,
	[EnlvpBandW] [int] NULL,
	[EnlvpFilter] [int] NULL,
	[SingalType] [int] NOT NULL,
	[SingalStatus] [int] NOT NULL,
	[SingalSDate] [datetime] NOT NULL,
	[WaveDataLength] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[Remark] [nvarchar](100) NULL,
	[SamplingTimePeriod] [int] NULL,
	[EnvelopeFilterUpLimitFreq] [int] NULL,
	[EnvelopeFilterLowLimitFreq] [int] NULL,
	[EigenValueWaveLength] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_VOLTAGE_SET_MSITEALM]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_VOLTAGE_SET_MSITEALM](
	[MsiteAlmID] [int] IDENTITY(1,3) NOT NULL,
	[MsiteID] [int] NOT NULL,
	[WarnValue] [real] NOT NULL,
	[AlmValue] [real] NOT NULL,
	[Status] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SYS_VOLTAGE_SET_MSITEALM] PRIMARY KEY CLUSTERED 
(
	[MsiteAlmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_WG]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_WG](
	[WGID] [int] IDENTITY(1,1) NOT NULL,
	[WGName] [nvarchar](100) NOT NULL,
	[WGNO] [int] NOT NULL,
	[NetWorkID] [int] NULL,
	[WGType] [int] NULL,
	[LinkStatus] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[WGModel] [nvarchar](50) NULL,
	[SoftwareVersion] [nvarchar](50) NULL,
	[RunStatus] [int] NULL,
	[ImageID] [int] NOT NULL,
	[Remark] [nvarchar](100) NULL,
	[PersonInCharge] [nvarchar](50) NULL,
	[PersonInChargeTel] [nvarchar](50) NULL,
	[MonitorTreeID] [int] NULL,
	[AgentAddress] [nvarchar](100) NOT NULL,
	[PowerSupplyModeTypeID] [int] NULL,
	[GateWayMAC] [nvarchar](50) NULL,
	[LastSleepTime] [datetime] NULL,
	[Duration] [real] NULL,
	[IsOnLine] [bit] NULL,
	[DevFormType] [int] NOT NULL,
	[SerizeCode] [nvarchar](50) NULL,
	[MainBoardSerizeCode] [nvarchar](50) NULL,
	[BESPSerizeCode] [nvarchar](50) NULL,
	[ProductInfoSerizeCode] [nvarchar](50) NULL,
	[PowerSupplySerizeCode] [nvarchar](50) NULL,
	[CoreBoardSerizeCode] [nvarchar](50) NULL,
	[CurrentDAUStates] [int] NULL,
	[MinibootVersion] [nvarchar](50) NULL,
	[SndbootVersion] [nvarchar](50) NULL,
	[FirmwareVersion] [nvarchar](50) NULL,
	[FPGAVersion] [nvarchar](50) NULL,
	[WGIP] [nvarchar](50) NULL,
	[WGPort] [int] NULL,
	[SubNetMask] [nvarchar](50) NULL,
	[GateWay] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_WS]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_WS](
	[WSID] [int] IDENTITY(1,1) NOT NULL,
	[WGID] [int] NOT NULL,
	[WSName] [nvarchar](200) NOT NULL,
	[WSNO] [int] NOT NULL,
	[BatteryVolatage] [real] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[MACADDR] [nvarchar](50) NULL,
	[SensorType] [int] NOT NULL,
	[UseStatus] [int] NOT NULL,
	[LinkStatus] [int] NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[Vendor] [nvarchar](50) NULL,
	[WSModel] [nvarchar](50) NULL,
	[SetupTime] [datetime] NULL,
	[SetupPersonInCharge] [nvarchar](50) NULL,
	[SNCode] [nvarchar](60) NULL,
	[FirmwareVersion] [nvarchar](50) NULL,
	[AntiExplosionSerialNo] [nvarchar](50) NULL,
	[RunStatus] [int] NOT NULL,
	[ImageID] [int] NOT NULL,
	[PersonInCharge] [nvarchar](50) NULL,
	[PersonInChargeTel] [nvarchar](50) NULL,
	[Remark] [nvarchar](100) NULL,
	[TriggerStatus] [int] NULL,
	[TriggerTempOperationStatus] [int] NULL,
	[DevFormType] [int] NOT NULL,
	[Axis] [int] NULL,
	[AxisName] [nvarchar](30) NULL,
	[ChannelId] [int] NULL,
	[SensorCollectType] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SYS_WSN_ALMRECORD]    Script Date: 2018/5/21 19:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SYS_WSN_ALMRECORD](
	[AlmRecordID] [int] IDENTITY(2,2) NOT NULL,
	[DevID] [int] NOT NULL,
	[DevName] [nvarchar](100) NULL,
	[DevNO] [nvarchar](100) NULL,
	[MSiteID] [int] NOT NULL,
	[MSiteName] [nvarchar](100) NULL,
	[WGID] [int] NOT NULL,
	[WGName] [nvarchar](100) NULL,
	[WSID] [int] NOT NULL,
	[WSName] [nvarchar](100) NULL,
	[MonitorTreeID] [nvarchar](100) NULL,
	[MSAlmID] [int] NOT NULL,
	[AlmStatus] [int] NOT NULL,
	[SamplingValue] [real] NULL,
	[WarningValue] [real] NULL,
	[DangerValue] [real] NULL,
	[BDate] [datetime] NOT NULL,
	[EDate] [datetime] NOT NULL,
	[LatestStartTime] [datetime] NOT NULL,
	[Content] [nvarchar](100) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[SamplingDataType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.T_SYS_WSN_ALMRECORD] PRIMARY KEY CLUSTERED 
(
	[AlmRecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Index [PK_T_DATA_TEMPE_DEVICE_MSITEDATA_1]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_1] ADD  CONSTRAINT [PK_T_DATA_TEMPE_DEVICE_MSITEDATA_1] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_MSDATA_1]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_1] ADD  CONSTRAINT [UNI_MSDATA_1] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_TEMPE_DEVICE_MSITEDATA_2]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_2] ADD  CONSTRAINT [PK_T_DATA_TEMPE_DEVICE_MSITEDATA_2] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_MSDATA_2]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_2] ADD  CONSTRAINT [UNI_MSDATA_2] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_TEMPE_DEVICE_MSITEDATA_3]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_3] ADD  CONSTRAINT [PK_T_DATA_TEMPE_DEVICE_MSITEDATA_3] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_MSDATA_3]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_3] ADD  CONSTRAINT [UNI_MSDATA_3] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_TEMPE_DEVICE_MSITEDATA_4]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_4] ADD  CONSTRAINT [PK_T_DATA_TEMPE_DEVICE_MSITEDATA_4] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_MSDATA_4]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_DEVICE_MSITEDATA_4] ADD  CONSTRAINT [UNI_MSDATA_4] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_TEMPE_WS_MSITEDATA_1]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_1] ADD  CONSTRAINT [PK_T_DATA_TEMPE_WS_MSITEDATA_1] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_WS_1]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_1] ADD  CONSTRAINT [UNI_WS_1] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_TEMPE_WS_MSITEDATA_2]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_2] ADD  CONSTRAINT [PK_T_DATA_TEMPE_WS_MSITEDATA_2] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_WS_2]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_2] ADD  CONSTRAINT [UNI_WS_2] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_TEMPE_WS_MSITEDATA_3]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_3] ADD  CONSTRAINT [PK_T_DATA_TEMPE_WS_MSITEDATA_3] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_WS_3]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_3] ADD  CONSTRAINT [UNI_WS_3] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_TEMPE_WS_MSITEDATA_4]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_4] ADD  CONSTRAINT [PK_T_DATA_TEMPE_WS_MSITEDATA_4] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_WS_4]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_TEMPE_WS_MSITEDATA_4] ADD  CONSTRAINT [UNI_WS_4] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC] ADD  CONSTRAINT [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC] PRIMARY KEY NONCLUSTERED 
(
	[HisDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_ACC]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC] ADD  CONSTRAINT [UNI_ACC] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP] ADD  CONSTRAINT [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP] PRIMARY KEY NONCLUSTERED 
(
	[HisDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_DISP]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP] ADD  CONSTRAINT [UNI_DISP] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL] ADD  CONSTRAINT [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL] PRIMARY KEY NONCLUSTERED 
(
	[HisDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_ENVL]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL] ADD  CONSTRAINT [UNI_ENVL] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ] ADD  CONSTRAINT [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ] PRIMARY KEY NONCLUSTERED 
(
	[HisDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_LQ]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ] ADD  CONSTRAINT [UNI_LQ] UNIQUE NONCLUSTERED 
(
	[MSITEID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL] ADD  CONSTRAINT [PK_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL] PRIMARY KEY NONCLUSTERED 
(
	[HisDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UNI_VEL]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL] ADD  CONSTRAINT [UNI_VEL] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VIBSINGAL_RT]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VIBSINGAL_RT] ADD  CONSTRAINT [PK_T_DATA_VIBSINGAL_RT] PRIMARY KEY NONCLUSTERED 
(
	[RTDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VOLTAGE_WS_MSITEDATA_1]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_1] ADD  CONSTRAINT [PK_T_DATA_VOLTAGE_WS_MSITEDATA_1] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VOL_1]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_1] ADD  CONSTRAINT [VOL_1] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VOLTAGE_WS_MSITEDATA_2]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_2] ADD  CONSTRAINT [PK_T_DATA_VOLTAGE_WS_MSITEDATA_2] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VOL_2]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_2] ADD  CONSTRAINT [VOL_2] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VOLTAGE_WS_MSITEDATA_3]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_3] ADD  CONSTRAINT [PK_T_DATA_VOLTAGE_WS_MSITEDATA_3] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VOL_3]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_3] ADD  CONSTRAINT [VOL_3] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_DATA_VOLTAGE_WS_MSITEDATA_4]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_4] ADD  CONSTRAINT [PK_T_DATA_VOLTAGE_WS_MSITEDATA_4] PRIMARY KEY NONCLUSTERED 
(
	[MsiteDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VOL_4]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_DATA_VOLTAGE_WS_MSITEDATA_4] ADD  CONSTRAINT [VOL_4] UNIQUE NONCLUSTERED 
(
	[MsiteID] ASC,
	[SamplingDate] ASC,
	[MonthDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_BEARING]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_BEARING] ADD  CONSTRAINT [PK_T_SYS_BEARING] PRIMARY KEY NONCLUSTERED 
(
	[BearingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Unique]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_BEARING] ADD  CONSTRAINT [Unique] UNIQUE NONCLUSTERED 
(
	[FactoryID] ASC,
	[BearingNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Unique_FactoryID]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_FACTORY] ADD  CONSTRAINT [Unique_FactoryID] UNIQUE NONCLUSTERED 
(
	[FactoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_Image]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_IMAGE] ADD  CONSTRAINT [PK_T_SYS_Image] PRIMARY KEY NONCLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SYS_ROLE]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_ROLE] ADD  CONSTRAINT [PK_SYS_ROLE] PRIMARY KEY NONCLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_ROLEMODULE]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_ROLEMODULE] ADD  CONSTRAINT [PK_T_SYS_ROLEMODULE] PRIMARY KEY NONCLUSTERED 
(
	[RMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_SYSLOG]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_SYSLOG] ADD  CONSTRAINT [PK_T_SYS_SYSLOG] PRIMARY KEY NONCLUSTERED 
(
	[SysLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_USER]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_USER] ADD  CONSTRAINT [PK_T_SYS_USER] PRIMARY KEY NONCLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_USERLOG]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_USERLOG] ADD  CONSTRAINT [PK_T_SYS_USERLOG] PRIMARY KEY NONCLUSTERED 
(
	[UserLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_VIBSINGAL]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_VIBSINGAL] ADD  CONSTRAINT [PK_T_SYS_VIBSINGAL] PRIMARY KEY NONCLUSTERED 
(
	[SingalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_WG]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_WG] ADD  CONSTRAINT [PK_T_SYS_WG] PRIMARY KEY NONCLUSTERED 
(
	[WGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_SYS_WS]    Script Date: 2018/5/21 19:53:47 ******/
ALTER TABLE [dbo].[T_SYS_WS] ADD  CONSTRAINT [PK_T_SYS_WS] PRIMARY KEY NONCLUSTERED 
(
	[WSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC] ADD  CONSTRAINT [DF_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC_DAQStyle]  DEFAULT ((1)) FOR [DAQStyle]
GO
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP] ADD  CONSTRAINT [DF_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP_DAQStyle]  DEFAULT ((1)) FOR [DAQStyle]
GO
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL] ADD  CONSTRAINT [DF_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL_DAQStyle]  DEFAULT ((1)) FOR [DAQStyle]
GO
ALTER TABLE [dbo].[T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ] ADD  CONSTRAINT [DF_T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ_DAQStyle]  DEFAULT ((1)) FOR [DAQStyle]
GO
ALTER TABLE [dbo].[T_DATA_VIBSINGAL_RT] ADD  CONSTRAINT [DF_T_DATA_VIBSINGAL_RT_DAQStyle]  DEFAULT ((1)) FOR [DAQStyle]
GO
ALTER TABLE [dbo].[T_SYS_MONITOR_TREE] ADD  CONSTRAINT [DF_T_SYS_MONITOR_TREE_IsDefault]  DEFAULT ((1)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[T_SYS_USER] ADD  CONSTRAINT [DF_T_SYS_USER_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[T_SYS_VIBSINGAL] ADD  CONSTRAINT [DF_T_SYS_VIBSINGAL_DAQStyle]  DEFAULT ((1)) FOR [DAQStyle]
GO
ALTER TABLE [dbo].[T_SYS_VIBSINGAL] ADD  CONSTRAINT [DF__T_VibSing__Remar__2F10007B]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[T_SYS_WG] ADD  CONSTRAINT [DF__T_SYS_WG__RunSta__5FB337D6]  DEFAULT ((0)) FOR [RunStatus]
GO
ALTER TABLE [dbo].[T_SYS_WG] ADD  CONSTRAINT [DF__T_SYS_WG__ImageI__60A75C0F]  DEFAULT ((0)) FOR [ImageID]
GO
ALTER TABLE [dbo].[T_SYS_WS] ADD  CONSTRAINT [DF__T_SYS_WS__RunSta__690797E6]  DEFAULT ((0)) FOR [RunStatus]
GO
ALTER TABLE [dbo].[T_SYS_WS] ADD  CONSTRAINT [DF__T_SYS_WS__ImageI__69FBBC1F]  DEFAULT ((0)) FOR [ImageID]
GO
ALTER TABLE [dbo].[T_SYS_WS] ADD  CONSTRAINT [DF_T_SYS_WS_TriggerStatus]  DEFAULT ((0)) FOR [TriggerStatus]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送平台Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDLOG', @level2type=N'COLUMN',@level2name=N'PlatformId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDLOG', @level2type=N'COLUMN',@level2name=N'PushData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDLOG', @level2type=N'COLUMN',@level2name=N'PushResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDLOG', @level2type=N'COLUMN',@level2name=N'PushTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDLOG', @level2type=N'COLUMN',@level2name=N'PushStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDLOG', @level2type=N'COLUMN',@level2name=N'DataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDLOG', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源表表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDPUSH', @level2type=N'COLUMN',@level2name=N'TableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDPUSH', @level2type=N'COLUMN',@level2name=N'TableNameId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDPUSH', @level2type=N'COLUMN',@level2name=N'OperationStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推送平台Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDPUSH', @level2type=N'COLUMN',@level2name=N'PlatformId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDPUSH', @level2type=N'COLUMN',@level2name=N'DataStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDPUSH', @level2type=N'COLUMN',@level2name=N'Priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_CLOUDPUSH', @level2type=N'COLUMN',@level2name=N'AddDate'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态0未采集，1正常，2高报，3高高报' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDesInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置当前数据更新状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDataStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'速度信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedSingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'速度单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度有效值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedVirtualValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度峰峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedPeakPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度高频能量值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedHPEValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度中频能量值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedMPEValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度低频能量值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedLPEValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度有效值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedVirtualStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度峰值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedPeakStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度峰峰值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedPeakPeakStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度高频能量值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedHPEStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度中频能量值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedMPEStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度低频能量值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedLPEStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度有效值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedVirtualTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度峰值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedPeakTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的速度峰峰值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedPeakPeakTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度高频能量值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedHPETime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度中频能量值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedMPETime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的速度低频能量值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSSpeedLPETime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加速度信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCSingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加速度单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度有效值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCVirtualValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度峰峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCPeakPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度有效值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCVirtualStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度峰值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCPeakStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度峰峰值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCPeakPeakStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度有效值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCVirtualTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度峰值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCPeakTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的加速度峰峰值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSACCPeakPeakTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位移信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispSingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位移单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移有效值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispVirtualValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移峰峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispPeakPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移有效值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispVirtualStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移峰值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispPeakStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移峰峰值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispPeakPeakStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移有效值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispVirtualTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移峰值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispPeakTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量最新的位移峰峰值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDispPeakPeakTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包络信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelSingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingPEAKValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络地毯值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingCarpetValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络均值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingMEANValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包络单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络峰值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingPEAKStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络地毯值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingCarpetStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络均值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingMEANStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络峰值采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingPEAKTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络地毯值采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingCarpetTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的包络均值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSEnvelopingMEANTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LQ信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSLQSingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的LQ值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSLQValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的LQ值的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSLQStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LQ值单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSLQUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的LQ值采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSLQTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的设备温度的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDevTemperatureStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的设备温度值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDevTemperatureValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备温度单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDevTemperatureUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的设备温度值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSDevTemperatureTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的传感器温度的状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWSTemperatureStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的传感器温度值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWSTemperatureValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器温度单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWSTemperatureUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的传感器温度值的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWSTemperatureTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线传感器最新的电池电压值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWSBatteryVolatageValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电池电压单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWSBatteryVolatageUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线传感器最新的电池电压状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWSBatteryVolatageStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线传感器电池电压采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWSBatteryVolatageTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WG连接状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSWGLinkStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的实时转速值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSRealTimeSpeedValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置最新的实时转速的采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'MSRealTimeSpeedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实时数据汇总表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_REALTIME_COLLECT_INFO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速数据表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速波形文件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'WaveDataPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'LineCnt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_SPEED_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置设备温度表1（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置设备温度表2（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置设备温度表3（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置设备温度表4（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_DEVICE_MSITEDATA_4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置WS温度表1（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置WS温度表2（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置WS温度表3（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置WS温度表4（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_TEMPE_WS_MSITEDATA_4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'HisDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形数据路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'WaveDataPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'Rotate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压缩因子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'TransformCofe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际采样频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'RealSamplingFrequency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'SamplingPointData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'DAQStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'PeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'PeakPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'EffValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'PeakWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'PeakAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'PeakPeakWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'PeakPeakAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'EffWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'EffAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加速度振动信号历史数据表（加速度振动信号ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'HisDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形数据路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'WaveDataPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'Rotate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压缩因子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'TransformCofe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际采样频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'RealSamplingFrequency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'SamplingPointData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'DAQStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'PeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'PeakPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'EffValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'PeakWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'PeakAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'PeakPeakWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'PeakPeakAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'EffWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'EffAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位移振动信号历史数据表（位移振动信号ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'HisDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形数据路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'WaveDataPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'Rotate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压缩因子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'TransformCofe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际采样频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'RealSamplingFrequency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'SamplingPointData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'DAQStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'PeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地毯值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'CarpetValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'均值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'MEANValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'PeakWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'PeakAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地毯值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'CarpetWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地毯值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'CarpetAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'均值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'MEANWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'均值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'MEANAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包络振动信号历史数据表（包络振动信号ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'HisDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'MSITEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形数据路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'WaveDataPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'Rotate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压缩因子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'TransformCofe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际采样频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'RealSamplingFrequency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'SamplingPointData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'DAQStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LQ值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'LQValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LQ警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'LQWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LQ告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'LQAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LQ振动信号历史数据表（LQ振动信号ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'HisDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形数据路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'WaveDataPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'Rotate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压缩因子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'TransformCofe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际采样频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'RealSamplingFrequency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'SamplingPointData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'DAQStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'PeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'PeakPeakValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'EffValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'低频能量值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'LPEValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中频能量值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'MPEValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高频能量值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'HPEValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'PeakWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'PeakAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'PeakPeakWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'峰峰值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'PeakPeakAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'EffWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'EffAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'低频能量值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'LPEWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'低频能量值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'LPEAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中频能量值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'MPEWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中频能量值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'MPEAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高频能量值警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'HPEWarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高频能量值告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'HPEAlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'速度振动信号历史数据表（速度振动信号ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'RTDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1或空为定时；2为临时。' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'DAQStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'MSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'Rotate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形数据路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'WaveDataPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'压缩因子' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'TransformCofe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际采样频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'RealSamplingFrequency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'SamplingPointData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动信号的特征值实时数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VIBSINGAL_RT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WS电池电压表1（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WS电池电压表2（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WS电池电压表3（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsiteDataID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'SamplingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MsDataValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'MonthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WS电池电压表4（以测量位置ID和采集时间创建索引）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DATA_VOLTAGE_WS_MSITEDATA_4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG', @level2type=N'COLUMN',@level2name=N'IsUsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统配置文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONNECT_STATUS_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接状态类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONNECT_STATUS_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONNECT_STATUS_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONNECT_STATUS_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONNECT_STATUS_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONNECT_STATUS_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接状态类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_CONNECT_STATUS_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_DEVICE_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_DEVICE_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_DEVICE_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_DEVICE_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_DEVICE_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_DEVICE_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_DEVICE_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特征值类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_EIGEN_VALUE_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键振动信号类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_EIGEN_VALUE_TYPE', @level2type=N'COLUMN',@level2name=N'VibratingSignalTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特征值类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_EIGEN_VALUE_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_EIGEN_VALUE_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_EIGEN_VALUE_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_EIGEN_VALUE_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_EIGEN_VALUE_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特征值类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_EIGEN_VALUE_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置监测类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_MONITOR_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置监测类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_MONITOR_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_MONITOR_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_MONITOR_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_MONITOR_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_MONITOR_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置监测类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_MONITOR_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_TYPE', @level2type=N'COLUMN',@level2name=N'DeviceTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置类型字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MEASURE_SITE_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MONITORTREE_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测树类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MONITORTREE_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MONITORTREE_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MONITORTREE_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MONITORTREE_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MONITORTREE_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测树类型字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_MONITORTREE_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_SENSOR_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_SENSOR_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_SENSOR_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_SENSOR_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_SENSOR_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_SENSOR_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_SENSOR_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动信号类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_VIBRATING_SIGNAL_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动信号类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_VIBRATING_SIGNAL_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_VIBRATING_SIGNAL_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_VIBRATING_SIGNAL_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_VIBRATING_SIGNAL_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_VIBRATING_SIGNAL_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动信号类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_VIBRATING_SIGNAL_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LENGTH_VALUE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键振动信号类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LENGTH_VALUE', @level2type=N'COLUMN',@level2name=N'VibratingSignalTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形数据值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LENGTH_VALUE', @level2type=N'COLUMN',@level2name=N'WaveLengthValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LENGTH_VALUE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LENGTH_VALUE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LENGTH_VALUE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LENGTH_VALUE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形长度数值设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LENGTH_VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LOWERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键振动信号类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LOWERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'VibratingSignalTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形下限频率值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LOWERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'WaveLowerLimitValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LOWERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LOWERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LOWERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LOWERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形下限频率值设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_LOWERLIMIT_VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_UPPERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键振动信号类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_UPPERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'VibratingSignalTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形上限频率值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_UPPERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'WaveUpperLimitValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_UPPERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_UPPERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_UPPERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_UPPERLIMIT_VALUE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形上限频率值设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WAVE_UPPERLIMIT_VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WIRELESS_GATEWAY_TYPE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线网关类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WIRELESS_GATEWAY_TYPE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WIRELESS_GATEWAY_TYPE', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0不可用，1可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WIRELESS_GATEWAY_TYPE', @level2type=N'COLUMN',@level2name=N'IsUsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0系统初始状态，1其它状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WIRELESS_GATEWAY_TYPE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WIRELESS_GATEWAY_TYPE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线网关类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_DICT_WIRELESS_GATEWAY_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'BearingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'FactoryName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂商ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'FactoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴承编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'BearingNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'BearingDescribe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'滚球/柱数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'BallsNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'滚球/柱直径 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'BallDiameter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节圆直径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'PitchDiameter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接触角' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'ContactAngle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴承库信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_BEARING'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_CLOUDCONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_CLOUDCONFIG', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_CLOUDCONFIG', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点类型 1、基础数据 2、云平台 3、配置数据 4、日志是否记录 5、数据推送量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_CLOUDCONFIG', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_CLOUDCONFIG', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Value值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_CLOUDCONFIG', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_CLOUDCONFIG', @level2type=N'COLUMN',@level2name=N'IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_CLOUDCONFIG', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AlmRecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DevName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DevNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MSiteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动信号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'SingalName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动特征值阈值设置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'SingalAlmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动特征值类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'SingalValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测树ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MonitorTreeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型 振动：1；设备温度：2；传感器温度：3；传感器电池电压：4；传感器连接：5；网关连接：6；停机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MSAlmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'SamplingValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高报阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'WarningValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高高报阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DangerValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'BDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'EDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近发生时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'LatestStartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备的报警记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEV_ALMRECORD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测树节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'MonitorTreeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转速' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Rotate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevManufacturer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近检查时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'LastCheckDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevManager'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备图片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevMadeDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备报警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备状态更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevSDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'outputVolume'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车间位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'SensorSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Power'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'额定电流' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'RatedCurrent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'额定电压' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'RatedVoltage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'介质' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'Media'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排出最大压力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'OutputMaxPressure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扬程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'HeadOfDelivery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴连器形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'CouplingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用类型0主要设备，1备用设备' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'UseType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行状态3停机，1运行，2检修' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'RunStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'ImageID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'PersonInCharge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'PersonInChargeTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DevModel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'启停机阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'StatusCriticalValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备停机时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE', @level2type=N'COLUMN',@level2name=N'DeviceStopDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_DEVICE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_HELP_DOCUMENT', @level2type=N'COLUMN',@level2name=N'IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE', @level2type=N'COLUMN',@level2name=N'ImageID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE', @level2type=N'COLUMN',@level2name=N'ImageName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE', @level2type=N'COLUMN',@level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE', @level2type=N'COLUMN',@level2name=N'ImagePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE', @level2type=N'COLUMN',@level2name=N'Height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_IMAGE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'MSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储测量位置类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'MSiteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置类型0无线，1有线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'MeasureSiteType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器灵敏度系数A' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'SensorCosA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器灵敏度系数B' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'SensorCosB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'MSiteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置状态更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'MSiteSDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波形采集时间间隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'WaveTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特征值采集时间间隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'FlagTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'温度、电池电压采集时间间隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'TemperatureTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'Position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测点序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'SerialNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴承ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'BearingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴承形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'BearingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴承型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'BearingModel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'润滑形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'LubricatingForm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系测点ID（该字段来表示转速挂靠的测点ID）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'RelationMSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器灵敏度系数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE', @level2type=N'COLUMN',@level2name=N'SensorCoefficient'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录测量位置信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MEASURESITE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ModBusRegisterAddress', @level2type=N'COLUMN',@level2name=N'ModBusRegisterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'寄存器的地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ModBusRegisterAddress', @level2type=N'COLUMN',@level2name=N'RegisterAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'寄存器存储方式（默认：2）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ModBusRegisterAddress', @level2type=N'COLUMN',@level2name=N'StrEnumRegisterStorageMode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'寄存器存储字节序列模式（默认：2）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ModBusRegisterAddress', @level2type=N'COLUMN',@level2name=N'StrEnumRegisterStorageSequenceMode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'寄存器类型（默认：1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ModBusRegisterAddress', @level2type=N'COLUMN',@level2name=N'StrEnumRegisterType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'寄存器的描述信息（默认：0）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ModBusRegisterAddress', @level2type=N'COLUMN',@level2name=N'StrEnumRegisterInformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ModBusRegisterAddress', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ModuleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ModuleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父模块ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MODULE', @level2type=N'COLUMN',@level2name=N'ParID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是必选功能0否，1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MODULE', @level2type=N'COLUMN',@level2name=N'IsDeault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'祖ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MODULE', @level2type=N'COLUMN',@level2name=N'OID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MODULE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MODULE', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'MonitorTreeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'OID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'Des'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'树类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应图片ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'ImageID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'MonitorTreePropertyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测树表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'MonitorTreePropertyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'TelphoneNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'FaxNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'Longtitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子节点个数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'ChildCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'Length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'Area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'PersonInCharge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'PersonInChargeTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测树属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_MONITOR_TREE_PROPERTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'OperatorKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'MSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型，1=下发测量定义；2=升级;3=触发式上传' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'OperationType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'Bdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'EDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作返回信息，1=成功、2=失败、3=进行中' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'OperationResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'失败原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'OperationReson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'DAQStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WSID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录对于WS的操作记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_OPERATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLE', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLE', @level2type=N'COLUMN',@level2name=N'RoleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示在前台0否，1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLE', @level2type=N'COLUMN',@level2name=N'IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是默认0否，1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLE', @level2type=N'COLUMN',@level2name=N'IsDeault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLE', @level2type=N'COLUMN',@level2name=N'RoleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLEMODULE', @level2type=N'COLUMN',@level2name=N'RMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLEMODULE', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_ROLEMODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_SYSLOG', @level2type=N'COLUMN',@level2name=N'SysLogID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_SYSLOG', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_SYSLOG', @level2type=N'COLUMN',@level2name=N'Record'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_SYSLOG', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_SYSLOG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_DEVICE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'MsiteAlmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_DEVICE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_DEVICE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_DEVICE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_DEVICE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_DEVICE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置温度告警设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_DEVICE_SET_MSITEALM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_WS_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'MsiteAlmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_WS_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_WS_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_WS_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_WS_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_WS_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置WS温度设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_TEMPE_WS_SET_MSITEALM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID（外键）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示在前台0否，1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'PSW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'LoginCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'LastLoginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除0否，1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEVICE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEVICE', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEVICE', @level2type=N'COLUMN',@level2name=N'DevId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'以#间隔并正序显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEVICE', @level2type=N'COLUMN',@level2name=N'MTIds'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户查看范围关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USER_RELATION_DEVICE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USERLOG', @level2type=N'COLUMN',@level2name=N'UserLogID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USERLOG', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录内容 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USERLOG', @level2type=N'COLUMN',@level2name=N'Record'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USERLOG', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登陆IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USERLOG', @level2type=N'COLUMN',@level2name=N'IPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作记录日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_USERLOG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'SingalAlmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键信号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特征值类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'ValueType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高报阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高高报阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传触发值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'UploadTrigger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'趋势报警预值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'ThrendAlarmPrvalue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'能量值上限频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'EnergyUpLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'能量值下限频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM', @level2type=N'COLUMN',@level2name=N'EnergyLowLimit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'振动信号报警阈值设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBRATING_SET_SIGNALALM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'SingalID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1或空为定时；2为临时。' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'DAQStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'MSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上限频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'UpLimitFrequency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下限频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'LowLimitFrequency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'StorageTrighters'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包络带宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'EnlvpBandW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包络滤波器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'EnlvpFilter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信号类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'SingalType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'SingalStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'SingalSDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'WaveDataLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集周期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'SamplingTimePeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包络滤波器上限频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'EnvelopeFilterUpLimitFreq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包络滤波器下限频率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'EnvelopeFilterLowLimitFreq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特征值波长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL', @level2type=N'COLUMN',@level2name=N'EigenValueWaveLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录振动信号信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VIBSINGAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VOLTAGE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'MsiteAlmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VOLTAGE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'MsiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VOLTAGE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'WarnValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VOLTAGE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'AlmValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'告警状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VOLTAGE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VOLTAGE_SET_MSITEALM', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置WS电池电压设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_VOLTAGE_SET_MSITEALM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网关ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'WGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'WGName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'WGNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NetWorkID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'NetWorkID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'WGType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'LinkStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'WGModel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'软件版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'SoftwareVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'RunStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'ImageID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'PersonInCharge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'PersonInChargeTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测树ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'MonitorTreeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网关MAC地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'GateWayMAC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上一次睡眠时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'LastSleepTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'睡眠持续秒' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'Duration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否在线：1在线，0离线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'IsOnLine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'串码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'SerizeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主板串码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'MainBoardSerizeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'防雷板串码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'BESPSerizeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品信息串码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'ProductInfoSerizeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电源串码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'PowerSupplySerizeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核心板串码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'CoreBoardSerizeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集单元当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'CurrentDAUStates'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'一级bootloader版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'MinibootVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二级bootloader版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'SndbootVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固件版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'FirmwareVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FPGA版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG', @level2type=N'COLUMN',@level2name=N'FPGAVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线网关信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网关ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'WGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'WSName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'WSNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电池电压' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'BatteryVolatage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警状态0未采集，1正常，2高报，3高高报' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MAC地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'MACADDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'SensorType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用状态0未使用，1使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'UseStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接状态0断开，1连接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'LinkStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'Vendor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'WSModel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安装时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'SetupTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安装负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'SetupPersonInCharge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SN码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'SNCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固件版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'FirmwareVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'防爆认证编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'AntiExplosionSerialNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行状态1:正常运行2:在修3:停机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'RunStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'ImageID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'PersonInCharge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'PersonInChargeTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'触发状态0:停用，1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'TriggerStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作触发上传操作状态:1，启用,0为停止' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'TriggerTempOperationStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器形态类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'DevFormType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴向' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'Axis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'轴向名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'AxisName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通道号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'ChannelId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1：振动传感器，2：转速传感器，3：油液传感器，4：过程量传感器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS', @level2type=N'COLUMN',@level2name=N'SensorCollectType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线传感器信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AlmRecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DevID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DevName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DevNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MSiteID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量位置名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MSiteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网关ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'WGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网关名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'WGName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'WSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传感器名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'WSName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监测树ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MonitorTreeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'MSAlmID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AlmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采集值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'SamplingValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高报阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'WarningValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高高报阈值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'DangerValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'BDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'EDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近发生时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'LatestStartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报警内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'AddDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.有线、2.无线、3.三轴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD', @level2type=N'COLUMN',@level2name=N'SamplingDataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'无线网络报警记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'T_SYS_WSN_ALMRECORD'
GO

/****** Object:  View [dbo].[View_DeviceSpeedHistortyData]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[View_DeviceSpeedHistortyData]
AS
SELECT   0 AS DAQStyle, TEMP.MsiteID, mst.Name AS MSiteName, ms.DevID, dev.DevName, TEMP.MsDataValue AS TempValue, 
                1 AS TempWarnSet, 1 AS TempAlarmSet, 1 AS TempStat, NULL 
                AS SpeedVirtualValue, NULL AS SpeedVirtualValueWarnSet, NULL AS SpeedVirtualValueAlarmSet, NULL 
                AS SpeedVirtualValueStat, NULL AS ACCPEAKValue, NULL AS ACCPEAKValueWarnSet, NULL 
                AS ACCPEAKValueAlarmSet, NULL AS ACCPEAKValueStat, NULL AS LQValue, NULL AS LQWarnSet, NULL 
                AS LQAlarmSet, NULL AS LQStat, NULL AS DisplacementDPEAKValue, NULL 
                AS DisplacementDPEAKValueWarnSet, NULL AS DisplacementDPEAKValueAlarmSet, NULL 
                AS DisplacementDPEAKValueStat, NULL AS EnvelopPEAKValue, NULL AS EnvelopPEAKValueWarnSet, NULL 
                AS EnvelopPEAKValueAlmSet, NULL AS EnvelopPEAKValueStat, TEMP.SamplingDate AS CollectitTime, 
                7 AS DataType,temp.MsDataValue AS SpeedData
FROM      (SELECT * FROM dbo.T_DATA_SPEED_DEVICE_MSITEDATA_1 a1 WHERE EXISTS(SELECT 1 FROM dbo.T_SYS_MEASURESITE WHERE a1.MsiteID = T_SYS_MEASURESITE.MsiteID)
UNION ALL 
SELECT * FROM dbo.T_DATA_SPEED_DEVICE_MSITEDATA_2 a2 WHERE EXISTS(SELECT 1 FROM dbo.T_SYS_MEASURESITE WHERE a2.MsiteID =T_SYS_MEASURESITE.MsiteID)

UNION ALL

SELECT * FROM dbo.T_DATA_SPEED_DEVICE_MSITEDATA_3 a3 WHERE EXISTS(SELECT 1 FROM dbo.T_SYS_MEASURESITE WHERE a3.MsiteID =T_SYS_MEASURESITE.MsiteID)

UNION ALL 
SELECT * FROM dbo.T_DATA_SPEED_DEVICE_MSITEDATA_4 a4 WHERE EXISTS(SELECT 1 FROM dbo.T_SYS_MEASURESITE WHERE a4.MsiteID =T_SYS_MEASURESITE.MsiteID)

) AS TEMP LEFT OUTER JOIN
                dbo.T_SYS_MEASURESITE AS ms ON TEMP.MsiteID = ms.MSiteID LEFT OUTER JOIN
                dbo.T_DICT_MEASURE_SITE_TYPE AS mst ON ms.MSiteName = mst.ID LEFT OUTER JOIN
                dbo.T_SYS_DEVICE AS dev ON ms.DevID = dev.DevID
WHERE   EXISTS
                    (SELECT   MSiteID
                     FROM      dbo.T_SYS_MEASURESITE AS T_SYS_MEASURESITE_1
                     WHERE   (MSiteID = TEMP.MsiteID))







GO
/****** Object:  View [dbo].[View_DeviceTempHistortyData]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[View_DeviceTempHistortyData]
AS
SELECT 0 AS DAQStyle,
       TEMP.MsiteID,
       (
           SELECT TDMST.Name
           FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST
           WHERE TDMST.ID =
           (
               SELECT TSM.MSiteName
               FROM dbo.T_SYS_MEASURESITE AS TSM
               WHERE TSM.MSiteID = TEMP.[MsiteID]
           )
       ) [MSiteName],
       (
           SELECT TSM.DevID
           FROM dbo.T_SYS_MEASURESITE AS TSM
           WHERE TSM.MSiteID = TEMP.MsiteID
       ) DevID,
       (
           SELECT TSD.DevName
           FROM dbo.T_SYS_DEVICE AS TSD
           WHERE TSD.DevID =
           (
               SELECT TSM.DevID
               FROM dbo.T_SYS_MEASURESITE AS TSM
               WHERE TSM.MSiteID = TEMP.MsiteID
           )
       ) [DevName],
       TEMP.MsDataValue AS TempValue,
       TEMP.WarnValue AS TempWarnSet,
       TEMP.AlmValue AS TempAlarmSet,
       TEMP.Status AS TempStat,
       NULL AS SpeedVirtualValue,
       NULL AS SpeedVirtualValueWarnSet,
       NULL AS SpeedVirtualValueAlarmSet,
       NULL AS SpeedVirtualValueStat,
       NULL AS ACCPEAKValue,
       NULL AS ACCPEAKValueWarnSet,
       NULL AS ACCPEAKValueAlarmSet,
       NULL AS ACCPEAKValueStat,
       NULL AS LQValue,
       NULL AS LQWarnSet,
       NULL AS LQAlarmSet,
       NULL AS LQStat,
       NULL AS DisplacementDPEAKValue,
       NULL AS DisplacementDPEAKValueWarnSet,
       NULL AS DisplacementDPEAKValueAlarmSet,
       NULL AS DisplacementDPEAKValueStat,
       NULL AS EnvelopPEAKValue,
       NULL AS EnvelopPEAKValueWarnSet,
       NULL AS EnvelopPEAKValueAlmSet,
       NULL AS EnvelopPEAKValueStat,
       TEMP.SamplingDate AS CollectitTime,
       6 AS DataType,
	   NULL AS SpeedData
FROM
(
    SELECT MsiteDataID,
           MsiteID,
           SamplingDate,
           MsDataValue,
           Status,
           WarnValue,
           AlmValue,
           MonthDate,
           AddDate
    FROM dbo.T_DATA_TEMPE_DEVICE_MSITEDATA_1
    UNION ALL
    SELECT MsiteDataID,
           MsiteID,
           SamplingDate,
           MsDataValue,
           Status,
           WarnValue,
           AlmValue,
           MonthDate,
           AddDate
    FROM dbo.T_DATA_TEMPE_DEVICE_MSITEDATA_2
    UNION ALL
    SELECT MsiteDataID,
           MsiteID,
           SamplingDate,
           MsDataValue,
           Status,
           WarnValue,
           AlmValue,
           MonthDate,
           AddDate
    FROM dbo.T_DATA_TEMPE_DEVICE_MSITEDATA_3
    UNION ALL
    SELECT MsiteDataID,
           MsiteID,
           SamplingDate,
           MsDataValue,
           Status,
           WarnValue,
           AlmValue,
           MonthDate,
           AddDate
    FROM dbo.T_DATA_TEMPE_DEVICE_MSITEDATA_4
) AS TEMP;














GO
/****** Object:  View [dbo].[View_DISPHistoryData]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[View_DISPHistoryData]
AS
SELECT disp.DAQStyle,
       disp.MsiteID,
       (
           SELECT TDMST.Name
           FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST
           WHERE TDMST.ID =
           (
               SELECT TSM.MSiteName
               FROM dbo.T_SYS_MEASURESITE AS TSM
               WHERE TSM.MSiteID = disp.[MSiteID]
           )
       ) [MSiteName],
       disp.DevID,
       (
           SELECT TSD.DevName
           FROM dbo.T_SYS_DEVICE AS TSD
           WHERE TSD.DevID = disp.DevID
       ) [DevName],
       NULL AS TempValue,
       NULL AS TempWarnSet,
       NULL AS TempAlarmSet,
       NULL AS TempStat,
       NULL AS SpeedVirtualValue,
       NULL AS SpeedVirtualValueWarnSet,
       NULL AS SpeedVirtualValueAlarmSet,
       NULL AS SpeedVirtualValueStat,
       NULL AS ACCPEAKValue,
       NULL AS ACCPEAKValueWarnSet,
       NULL AS ACCPEAKValueAlarmSet,
       NULL AS ACCPEAKValueStat,
       NULL AS LQValue,
       NULL AS LQWarnSet,
       NULL AS LQAlarmSet,
       NULL AS LQStat,
       disp.PeakPeakValue AS DisplacementDPEAKValue,
       disp.PeakPeakWarnValue AS DisplacementDPEAKValueWarnSet,
       disp.PeakPeakAlmValue AS DisplacementDPEAKValueAlarmSet,
       (CASE
            WHEN disp.PeakPeakValue IS NULL
                 OR disp.PeakPeakValue <= disp.PeakPeakWarnValue THEN
                1
            WHEN disp.PeakPeakValue > disp.PeakPeakWarnValue
                 AND disp.PeakPeakValue <= disp.PeakPeakAlmValue THEN
                2
            ELSE
                3
        END
       ) AS DisplacementDPEAKValueStat,
       NULL AS EnvelopPEAKValue,
       NULL AS EnvelopPEAKValueWarnSet,
       NULL AS EnvelopPEAKValueAlmSet,
       NULL AS EnvelopPEAKValueStat,
       disp.SamplingDate AS CollectitTime,
       4 AS DataType,
	   NULL AS SpeedData
FROM dbo.T_DATA_VIBRATING_SIGNAL_CHAR_HIS_DISP AS disp;


















GO
/****** Object:  View [dbo].[View_ENVLHistoryData]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[View_ENVLHistoryData]
AS
SELECT envp.DAQStyle,
       envp.MsiteID,
       (
           SELECT TDMST.Name
           FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST
           WHERE TDMST.ID =
           (
               SELECT TSM.MSiteName
               FROM dbo.T_SYS_MEASURESITE AS TSM
               WHERE TSM.MSiteID = envp.[MSiteID]
           )
       ) [MSiteName],
       envp.DevID,
       (
           SELECT TSD.DevName
           FROM dbo.T_SYS_DEVICE AS TSD
           WHERE TSD.DevID = envp.DevID
       ) [DevName],
       NULL AS TempValue,
       NULL AS TempWarnSet,
       NULL AS TempAlarmSet,
       NULL AS TempStat,
       NULL AS SpeedVirtualValue,
       NULL AS SpeedVirtualValueWarnSet,
       NULL AS SpeedVirtualValueAlarmSet,
       NULL AS SpeedVirtualValueStat,
       NULL AS ACCPEAKValue,
       NULL AS ACCPEAKValueWarnSet,
       NULL AS ACCPEAKValueAlarmSet,
       NULL AS ACCPEAKValueStat,
       NULL AS LQValue,
       NULL AS LQWarnSet,
       NULL AS LQAlarmSet,
       NULL AS LQStat,
       NULL AS DisplacementDPEAKValue,
       NULL AS DisplacementDPEAKValueWarnSet,
       NULL AS DisplacementDPEAKValueAlarmSet,
       NULL AS DisplacementDPEAKValueStat,
       envp.PeakValue AS EnvelopPEAKValue,
       envp.PeakWarnValue AS EnvelopPEAKValueWarnSet,
       envp.PeakAlmValue AS EnvelopPEAKValueAlmSet,
       (CASE
            WHEN envp.PeakValue IS NULL
                 OR envp.PeakValue <= envp.PeakWarnValue THEN
                1
            WHEN envp.PeakValue > envp.PeakWarnValue
                 AND envp.PeakValue <= envp.PeakAlmValue THEN
                2
            ELSE
                3
        END
       ) AS EnvelopPEAKValueStat,
       envp.SamplingDate AS CollectitTime,
       3 AS DataType,
	   NULL AS SpeedData
FROM dbo.T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ENVL AS envp;


















GO
/****** Object:  View [dbo].[View_LQHistoryData]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[View_LQHistoryData]
AS
SELECT lq.DAQStyle,
       lq.MSITEID,
       (
           SELECT TDMST.Name
           FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST
           WHERE TDMST.ID =
           (
               SELECT TSM.MSiteName
               FROM dbo.T_SYS_MEASURESITE AS TSM
               WHERE TSM.MSiteID = lq.[MSiteID]
           )
       ) [MSiteName],
       lq.DevID,
       (
           SELECT TSD.DevName
           FROM dbo.T_SYS_DEVICE AS TSD
           WHERE TSD.DevID = lq.DevID
       ) [DevName],
       NULL AS TempValue,
       NULL AS TempWarnSet,
       NULL AS TempAlarmSet,
       NULL AS TempStat,
       NULL AS SpeedVirtualValue,
       NULL AS SpeedVirtualValueWarnSet,
       NULL AS SpeedVirtualValueAlarmSet,
       NULL AS SpeedVirtualValueStat,
       NULL AS ACCPEAKValue,
       NULL AS ACCPEAKValueWarnSet,
       NULL AS ACCPEAKValueAlarmSet,
       NULL AS ACCPEAKValueStat,
       lq.LQValue,
       lq.LQWarnValue AS LQWarnSet,
       lq.LQAlmValue AS LQAlarmSet,
       lq.AlmStatus AS LQStat,
       NULL AS DisplacementDPEAKValue,
       NULL AS DisplacementDPEAKValueWarnSet,
       NULL AS DisplacementDPEAKValueAlarmSet,
       NULL AS DisplacementDPEAKValueStat,
       NULL AS EnvelopPEAKValue,
       NULL AS EnvelopPEAKValueWarnSet,
       NULL AS EnvelopPEAKValueAlmSet,
       NULL AS EnvelopPEAKValueStat,
       lq.SamplingDate AS CollectitTime,
       5 AS DataType,
	   NULL AS SpeedData
FROM dbo.T_DATA_VIBRATING_SIGNAL_CHAR_HIS_LQ AS lq;








GO
/****** Object:  View [dbo].[View_VELHistoryData]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[View_VELHistoryData]
AS
SELECT vel.DAQStyle,
       vel.MsiteID,
         (
           SELECT TDMST.Name
           FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST
           WHERE TDMST.ID =
           (
               SELECT TSM.MSiteName
               FROM dbo.T_SYS_MEASURESITE AS TSM
               WHERE TSM.MSiteID = vel.[MSiteID]
           )
       ) [MSiteName],
       vel.DevID,
       (
           SELECT TSD.DevName
           FROM dbo.T_SYS_DEVICE AS TSD
           WHERE TSD.DevID = vel.DevID
       ) [DevName],
       NULL AS TempValue,
       NULL AS TempWarnSet,
       NULL AS TempAlarmSet,
       NULL AS TempStat,
       vel.EffValue AS SpeedVirtualValue,
       vel.EffWarnValue AS SpeedVirtualValueWarnSet,
       vel.EffAlmValue AS SpeedVirtualValueAlarmSet,
       (CASE
            WHEN
            (
                vel.EffValue IS NULL
                OR vel.EffValue <= vel.EffWarnValue
            ) THEN
                1
            WHEN vel.EffValue > vel.EffWarnValue
                 AND vel.EffValue <= vel.EffAlmValue THEN
                2
            ELSE
                3
        END
       ) AS SpeedVirtualValueStat,
       NULL AS ACCPEAKValue,
       NULL AS ACCPEAKValueWarnSet,
       NULL AS ACCPEAKValueAlarmSet,
       NULL AS ACCPEAKValueStat,
       NULL AS LQValue,
       NULL AS LQWarnSet,
       NULL AS LQAlarmSet,
       NULL AS LQStat,
       NULL AS DisplacementDPEAKValue,
       NULL AS DisplacementDPEAKValueWarnSet,
       NULL AS DisplacementDPEAKValueAlarmSet,
       NULL AS DisplacementDPEAKValueStat,
       NULL AS EnvelopPEAKValue,
       NULL AS EnvelopPEAKValueWarnSet,
       NULL AS EnvelopPEAKValueAlmSet,
       NULL AS EnvelopPEAKValueStat,
       vel.SamplingDate AS CollectitTime,
       1 AS DataType,
	   NULL AS SpeedData
FROM dbo.T_DATA_VIBRATING_SIGNAL_CHAR_HIS_VEL AS vel;






GO
/****** Object:  View [dbo].[View_DevHistoryData]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_DevHistoryData]
AS
    SELECT  *
    FROM    View_DeviceTempHistortyData
    UNION ALL
    SELECT  *
    FROM    View_LQHistoryData
    UNION ALL
    SELECT  *
    FROM    View_VELHistoryData
    UNION ALL
    SELECT  *
    FROM    View_DISPHistoryData
    UNION ALL
    SELECT  *
    FROM    View_ENVLHistoryData
	UNION ALL SELECT * FROM View_DeviceSpeedHistortyData



GO
/****** Object:  View [dbo].[a]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[a]
AS
SELECT * FROM dbo.T_SYS_USER AS TSU





GO
/****** Object:  View [dbo].[GetMeasureSiteInfo]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[GetMeasureSiteInfo]
AS
    SELECT  TSM.MSiteID WID ,
            TSM.MSiteName MSiteTypeId ,
			TDMST.Name MStieTypeName,
            TSM.DevID ,
            ISNULL(TSM.WSID,-1) WSID ,
            TSW.WSName ,
            ISNULL(TSW.LinkStatus,0)  LinkStatus,
            TSM.MeasureSiteType ,
            TSM.SensorCosA ,
            TSM.SensorCosB ,
            TSM.MSiteStatus ,
            TSM.MSiteSDate ,
            TSM.WaveTime ,
            TSM.FlagTime ,
            TSM.TemperatureTime ,
            TSM.Remark ,
            TSM.Position ,
            TSM.SerialNo ,
			ISNULL(TSM.BearingID,-1) BearingID ,
            TSM.BearingType ,
            TSM.LubricatingForm ,
            TSM.AddDate ,
            '' ConfigMSDate ,
            1 Type ,
            '测量位置' TypeName ,
            TSW2.WGName,
		    ISNULL(TSW.TriggerStatus,0) TriggerStatus,
			(SELECT COUNT(1) FROM dbo.T_SYS_VIBSINGAL AS TSV WHERE TSV.MSiteID=TSM.MSiteID)
			+(SELECT COUNT(1) FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM  WHERE TSTDSM.MSiteID=TSM.MSiteID)
			+(SELECT COUNT(1) FROM dbo.T_SYS_VOLTAGE_SET_MSITEALM AS TSVSM  WHERE TSVSM.MSiteID=TSM.MSiteID)
			+(SELECT COUNT(1) FROM dbo.T_SYS_TEMPE_WS_SET_MSITEALM AS TSTWSM  WHERE TSTWSM.MSiteID=TSM.MSiteID)
			AS ChildrenCount,
			TSB.FactoryName,
            TSB.BearingNum,
            TSB.FactoryID,
			0 OperationStatus

			--(SELECT TOP 1 TSO.OperationResult FROM dbo.T_SYS_OPERATION AS TSO WHERE TSO.MSID=tsm.MSiteID ORDER BY TSO.id DESC)  OperationStatus
			--(SELECT TOP 1 TSO.OperationResult FROM dbo.T_SYS_OPERATION AS TSO WHERE TSO.MSID=tsm.MSiteID ORDER BY TSO.id DESC)  OperationStatus
    FROM    dbo.T_SYS_MEASURESITE AS TSM
            LEFT JOIN dbo.T_SYS_WS AS TSW ON TSW.WSID = TSM.WSID
            LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST ON TDMST.ID = TSM.MSiteName
            LEFT JOIN dbo.T_SYS_WG AS TSW2 ON TSW2.WGID = TSW.WGID
			LEFT JOIN dbo.T_SYS_BEARING AS TSB ON TSB.BearingID = TSM.BearingID











GO
/****** Object:  View [dbo].[GetOperationList]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[GetOperationList]
AS
    SELECT  MAX(TSO.id) id ,
            OperationResult ,
            TSO.EDate  ,
            TSO.MSID ,
            TSO.WSID ,
            TSO.DAQStyle ,
            TSO.OperationType,
			TSM.DevID
    FROM    dbo.T_SYS_OPERATION AS TSO
            LEFT JOIN dbo.T_SYS_MEASURESITE AS TSM ON TSO.MSID = TSM.MSiteID
    GROUP BY EDate,OperationResult, TSO.MSID ,
            TSO.WSID ,
            TSO.DAQStyle ,
            TSO.OperationType,
			TSM.DevID









GO
/****** Object:  View [dbo].[ServerTree]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ServerTree]
AS
    SELECT  TSW.WGID TreeID ,
            TSW.WGName Name ,
            0 ParentID ,
            1 [Level] ,
            TSW.WGID TrueId ,
            0 DeviceId
    FROM    dbo.T_SYS_WG AS TSW
    UNION
    SELECT  ( SELECT    MAX(WGID)
              FROM      T_SYS_WG
            ) + TSW2.WSID TreeID ,
            TSW2.WSName Name ,
            TSW2.WGID ParentID ,
            2 [Level] ,
            TSW2.WSID TrueId ,
            0 DeviceId
    FROM    dbo.T_SYS_WS AS TSW2
    UNION
    SELECT  ( SELECT    MAX(TSW.WSID) + ( SELECT    MAX(WGID)
                                          FROM      T_SYS_WG
                                        )
              FROM      dbo.T_SYS_WS AS TSW
            ) + TSM.MSiteID TreeID ,
            TDMST.Name Name ,
            ( SELECT    MAX(TSW.WSID) + ( SELECT    MAX(WGID)
                                          FROM      T_SYS_WG
                                        )
              FROM      dbo.T_SYS_WS AS TSW
            ) ParentID ,
            3 [Level] ,
            TSM.MSiteID TrueId ,
            TSM.DevID DeviceId
    FROM    dbo.T_SYS_MEASURESITE AS TSM
            LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST ON TDMST.ID = TSM.MSiteName;












GO
/****** Object:  View [dbo].[Tree]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Tree]
AS
SELECT TSMT.MonitorTreeID,
       TSMT.Name,
       TSMT.PID,
       (
           SELECT COUNT(1)
           FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT1
           WHERE TDMT1.IsUsable = 1
                 AND TDMT1.OrderNo <= TDMT.OrderNo
       ) [Level],
       TSMT.MonitorTreeID TrueId,
       TSMT.Status AS MTStatus,
       -1 AS UseType
FROM dbo.T_SYS_MONITOR_TREE AS TSMT
    LEFT JOIN dbo.T_DICT_MONITORTREE_TYPE AS TDMT
        ON TDMT.ID = TSMT.Type
WHERE TDMT.IsUsable = 1
UNION
SELECT
    (
        SELECT MAX(MonitorTreeID) FROM dbo.T_SYS_MONITOR_TREE
    ) + 1 + TSD.DevID,
    TSD.DevName,
    TSD.MonitorTreeID,
    (
        SELECT COUNT(1) + 1
        FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT
        WHERE TDMT.IsUsable = 1
    ) [Level],
    TSD.DevID TrueId,
    CASE TSD.RunStatus
        WHEN 3 THEN
            4
        ELSE
            TSD.AlmStatus
    END MTStatus,
    UseType
FROM dbo.T_SYS_DEVICE AS TSD;






GO
/****** Object:  View [dbo].[View_ACCHistoryData]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_ACCHistoryData] 
AS
SELECT acc.DAQStyle,
       acc.MsiteID,
      (
           SELECT TDMST.Name
           FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST
           WHERE TDMST.ID =
           (
               SELECT TSM.MSiteID
               FROM dbo.T_SYS_MEASURESITE AS TSM
               WHERE TSM.MSiteID = acc.[MsiteID]
           )
       ) [MSiteName],
       acc.DevID,
       (
           SELECT TSD.DevName
           FROM dbo.T_SYS_DEVICE AS TSD
           WHERE TSD.DevID = acc.DevID
       ) [DevName],
       NULL AS TempValue,
       NULL AS TempWarnSet,
       NULL AS TempAlarmSet,
       NULL AS TempStat,
       NULL AS SpeedVirtualValue,
       NULL AS SpeedVirtualValueWarnSet,
       NULL AS SpeedVirtualValueAlarmSet,
       NULL AS SpeedVirtualValueStat,
       acc.PeakValue AS ACCPEAKValue,
       acc.PeakWarnValue AS ACCPEAKValueWarnSet,
       acc.PeakAlmValue AS ACCPEAKValueAlarmSet,
       (CASE
            WHEN acc.PeakValue IS NULL
                 OR acc.PeakValue <= acc.PeakWarnValue THEN
                1
            WHEN acc.PeakValue > acc.PeakWarnValue
                 AND acc.PeakValue <= acc.PeakAlmValue THEN
                2
            ELSE
                3
        END
       ) AS ACCPEAKValueStat,
       NULL AS LQValue,
       NULL AS LQWarnSet,
       NULL AS LQAlarmSet,
       NULL AS LQStat,
       NULL AS DisplacementDPEAKValue,
       NULL AS DisplacementDPEAKValueWarnSet,
       NULL AS DisplacementDPEAKValueAlarmSet,
       NULL AS DisplacementDPEAKValueStat,
       NULL AS EnvelopPEAKValue,
       NULL AS EnvelopPEAKValueWarnSet,
       NULL AS EnvelopPEAKValueAlmSet,
       NULL AS EnvelopPEAKValueStat,
       acc.SamplingDate AS CollectitTime,
       2 AS DataType
FROM dbo.T_DATA_VIBRATING_SIGNAL_CHAR_HIS_ACC AS acc









GO
/****** Object:  View [dbo].[View_DeviceTree]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[View_DeviceTree]
AS

SELECT  TSMT.MonitorTreeID ,
        TSMT.Name ,
        TSMT.PID ,
        TDMT.Describe [Level] ,
        TSMT.MonitorTreeID TrueId ,
        1 AS MTStatus ,
        -1 AS UseType,
		TDMT.Code
FROM    dbo.T_SYS_MONITOR_TREE AS TSMT
        LEFT JOIN dbo.T_DICT_MONITORTREE_TYPE AS TDMT ON TDMT.ID = TSMT.Type  
WHERE TDMT.IsUsable=1
UNION
SELECT  ( SELECT    MAX(MonitorTreeID)
          FROM      dbo.T_SYS_MONITOR_TREE
        ) + 1 + TSD.DevID ,
        TSD.DevName ,
        TSD.MonitorTreeID ,
       ( SELECT COUNT(1)+1 FROM T_DICT_MONITORTREE_TYPE WHERE IsUsable=1) [Level] ,
        TSD.DevID TrueId ,
        CASE TSD.RunStatus
          WHEN 3 THEN 4
          ELSE TSD.AlmStatus
        END MTStatus ,
        UseType,
		'DEVICE' Code
FROM    dbo.T_SYS_DEVICE AS TSD;







GO
/****** Object:  View [dbo].[View_Get_WS_Status]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[View_Get_WS_Status] AS
SELECT  Ws.FirmwareVersion ,
        Ws.WSID ,
        Ws.MACADDR MAC ,
        MeasureSiteType.Name MSName ,
        Ws.LinkStatus LinkStatu ,
        Ws.WSName ,
        Ws.UseStatus ,
		Operation.OperationType,
		MeasureSite.MSiteID MSID,
        CAST(Operation.DAQStyle AS NVARCHAR(8)) AS CMDType ,
        CASE Operation.OperationType
          WHEN 1 THEN ( SELECT  TSO.OperationResult
                        FROM    dbo.T_SYS_OPERATION AS TSO
                        WHERE   TSO.id = Operation.maxId
                      )
        END ConfigStatu ,
        CASE Operation.OperationType
          WHEN 2 THEN ( SELECT  TSO.OperationResult
                        FROM    dbo.T_SYS_OPERATION AS TSO
                        WHERE   TSO.id = Operation.maxId
                      )
        END UpdateStatu,
	  CASE Operation.OperationType
          WHEN 3 THEN ( SELECT  TSO.OperationResult
                        FROM    dbo.T_SYS_OPERATION AS TSO
                        WHERE   TSO.id = Operation.maxId
                      )
        END TriggerStatus,
		    CASE Operation.OperationType
          WHEN 1 THEN ( SELECT  TSO.EDate
                        FROM    dbo.T_SYS_OPERATION AS TSO
                        WHERE   TSO.id = Operation.maxId
                      )
        END EdateForConfig ,
        CASE Operation.OperationType
          WHEN 2 THEN ( SELECT  TSO.EDate
                        FROM    dbo.T_SYS_OPERATION AS TSO
                        WHERE   TSO.id = Operation.maxId
                      )
        END EdateForUpdate,
		 CASE Operation.OperationType
          WHEN 3 THEN ( SELECT  TSO.EDate
                        FROM    dbo.T_SYS_OPERATION AS TSO
                        WHERE   TSO.id = Operation.maxId
                      )
        END EdateForTrigger

FROM    dbo.T_SYS_WS Ws
        LEFT JOIN dbo.T_SYS_MEASURESITE AS MeasureSite ON MeasureSite.WSID = Ws.WSID
        LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS MeasureSiteType ON MeasureSiteType.ID = MeasureSite.MSiteName
        LEFT JOIN ( SELECT  DAQStyle ,
                            MSID ,
                            MAX(TSO.id) maxId ,
                            TSO.OperationType
                    FROM    dbo.T_SYS_OPERATION AS TSO
                    GROUP BY DAQStyle ,
                            MSID ,
                            TSO.OperationType
                  ) AS Operation ON Operation.MSID = MeasureSite.MSiteID




















GO
/****** Object:  View [dbo].[View_Get_WS_Status_ForTrigger]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[View_Get_WS_Status_ForTrigger] AS
SELECT  Ws.FirmwareVersion ,
        Ws.WSID ,
        Ws.MACADDR MAC ,
        MeasureSiteType.Name MSName ,
        Ws.LinkStatus LinkStatu ,
        Ws.WSName ,
        Ws.UseStatus ,
		Operation.OperationType,
		MeasureSite.MSiteID MSID,
        CAST(Operation.DAQStyle AS NVARCHAR(8)) AS CMDType ,

	  CASE Operation.OperationType
          WHEN 3 THEN ( SELECT  TSO.OperationResult
                        FROM    dbo.T_SYS_OPERATION AS TSO
                        WHERE   TSO.id = Operation.maxId
                      )
        END TriggerStatus,

		 CASE Operation.OperationType
          WHEN 3 THEN ( SELECT  TSO.EDate
                        FROM    dbo.T_SYS_OPERATION AS TSO
                        WHERE   TSO.id = Operation.maxId
                      )
        END EdateForTrigger

FROM    dbo.T_SYS_WS Ws
        LEFT JOIN dbo.T_SYS_MEASURESITE AS MeasureSite ON MeasureSite.WSID = Ws.WSID
        LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS MeasureSiteType ON MeasureSiteType.ID = MeasureSite.MSiteName
        LEFT JOIN ( SELECT  DAQStyle ,
                            MSID ,
                            MAX(TSO.id) maxId ,
                            TSO.OperationType
                    FROM    dbo.T_SYS_OPERATION AS TSO
                    GROUP BY DAQStyle ,
                            MSID ,
                            TSO.OperationType
                  ) AS Operation ON Operation.MSID = MeasureSite.MSiteID
 WHERE Operation.OperationType=3 OR Operation.OperationType IS NULL






















GO
/****** Object:  View [dbo].[View_GetDeviceAlarmStat]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--====================================================
--  作    者：王颖辉 
--  创建时间：2017年10月17日09:53:34
--  功能简述：获取设备报警状态统计功能
--  参数描述：无
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE VIEW [dbo].[View_GetDeviceAlarmStat]
AS
SELECT  TSMT.MonitorTreeID ,
        TSMT.Name ,
        TSMT.Type ,
        TSD.AlmStatus ,
		TSMT.PID,
        COUNT(1) DeviceCount 
FROM    dbo.T_SYS_MONITOR_TREE AS TSMT
        CROSS APPLY F_GetDeivceByMonitorTreeId(TSMT.MonitorTreeID) F
        LEFT JOIN dbo.T_SYS_DEVICE AS TSD ON TSD.DevID = F.DeviceId
GROUP BY TSMT.MonitorTreeID ,
        TSMT.Name ,
        TSMT.Type ,
        TSD.AlmStatus,
        TSMT.PID





GO
/****** Object:  View [dbo].[View_GetDeviceRunStat]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--====================================================
--  作    者：王颖辉 
--  创建时间：2017年10月17日09:53:34
--  功能简述：获取设备运行状态统计功能
--  参数描述：无
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE VIEW [dbo].[View_GetDeviceRunStat]
AS
SELECT  TSMT.MonitorTreeID ,
        TSMT.Name ,
        TSMT.Type ,
        TSD.RunStatus ,
		TSMT.PID,
        COUNT(1) DeviceCount 
FROM    dbo.T_SYS_MONITOR_TREE AS TSMT
        CROSS APPLY F_GetDeivceByMonitorTreeId(TSMT.MonitorTreeID) F
        LEFT JOIN dbo.T_SYS_DEVICE AS TSD ON TSD.DevID = F.DeviceId
GROUP BY TSMT.MonitorTreeID ,
        TSMT.Name ,
        TSMT.Type ,
        TSD.RunStatus,
        TSMT.PID





GO
/****** Object:  View [dbo].[View_GetLastWSSamplingInfo]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE VIEW [dbo].[View_GetLastWSSamplingInfo]
 AS
    SELECT  a.LatestStartTime ,
            a.MSAlmID ,
            a.WSID ,
            a.SamplingValue,
			a.AlmStatus,
			a.MSiteID
    FROM    T_SYS_WSN_ALMRECORD a
            INNER JOIN ( SELECT MAX(b.LatestStartTime) MaxDate ,
                                b.MSAlmID ,
                                b.WSID
                         FROM   T_SYS_WSN_ALMRECORD b
                         GROUP BY b.MSAlmID ,
                                b.WSID
                       ) c ON c.MaxDate = a.LatestStartTime
                              AND c.MSAlmID = a.MSAlmID







GO
/****** Object:  View [dbo].[View_GetMeasureSiteInfo]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





 CREATE VIEW [dbo].[View_GetMeasureSiteInfo]
 AS
    SELECT  TSD.DevID DeviceID ,
            TSD.DevName DeviceName ,
            TSM.MSiteID MeasureSiteID ,
            TDMST.Name MeasureSite ,
            TSM.LubricatingForm LubricatingForm ,
            TSM.AddDate AddDate ,
            TSTDSM.MsiteAlmID DeviceTemperatureMsiteAlmID ,
            TSTDSM.WarnValue DeviceTemperatureAlarmValue ,
            TSTDSM.AlmValue DeviceTemperatureDangerValue ,
			TSTDSM.AddDate DeviceTemperatureAddDate,
            ( SELECT    Name
              FROM      dbo.T_DICT_MEASURE_SITE_MONITOR_TYPE
              WHERE     Code = 'MEASURESITEMONITORTYPE_1_SBWD'
            ) DeviceTemperatureName ,
            TSTWSM.MsiteAlmID WSTemperatureMsiteAlmID ,
            TSTWSM.WarnValue WSTemperatureAlarmValue ,
            TSTWSM.AlmValue WSTemperatureDangerValue ,
            ( SELECT    Name
              FROM      dbo.T_DICT_MEASURE_SITE_MONITOR_TYPE
              WHERE     Code = 'MEASURESITEMONITORTYPE_3_CGQWD'
            ) WSTemperatureName ,
			TSTWSM.AddDate WSTemperatureAddDate,
            TSVSM.MsiteAlmID VoltageMsiteAlmID ,
            TSVSM.WarnValue VoltageAlarmValue ,
            TSVSM.AlmValue VoltageDangerValue ,
            ( SELECT    Name
              FROM      dbo.T_DICT_MEASURE_SITE_MONITOR_TYPE
              WHERE     Code = 'MEASURESITEMONITORTYPE_2_DCDY'
            ) VoltageName ,
			TSVSM.AddDate VoltageAddDate,
            TSM.WaveTime WaveTime ,
            TSM.FlagTime FlagTime ,
            TSM.TemperatureTime TemperatureTime,
			TSWG.WGID TemeratureDAUID,
			TSWG.WGName TemeratureDAUName,
            ( SELECT    RegisterAddress
              FROM      dbo.T_SYS_ModBusRegisterAddress
              WHERE     MDFID = TSTDSM.MsiteAlmID AND MDFResourceTable = 'T_SYS_TEMPE_DEVICE_SET_MSITEALM'
            ) TemeratureWSID ,
			TSM.SensorCoefficient
    FROM    dbo.T_SYS_MEASURESITE AS TSM
            LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST ON TDMST.ID = TSM.MSiteName
            LEFT JOIN dbo.T_SYS_DEVICE AS TSD ON TSD.DevID = TSM.DevID
            LEFT JOIN dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM ON TSTDSM.MsiteID = TSM.MSiteID
			LEFT JOIN dbo.T_SYS_WG AS TSWG ON TSWG.WGID = TSTDSM.WGID
            LEFT JOIN dbo.T_SYS_TEMPE_WS_SET_MSITEALM AS TSTWSM ON TSTWSM.MsiteID = TSM.MSiteID
            LEFT JOIN dbo.T_SYS_VOLTAGE_SET_MSITEALM AS TSVSM ON TSVSM.MsiteID = TSM.MSiteID










GO
/****** Object:  View [dbo].[View_GetMonitorTree]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_GetMonitorTree] as

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
	         TSD.DevID+(SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT) MTId,
		 	 CASE TSD.RunStatus WHEN 3 THEN
			 TSD.DevName+N'(stop)'
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
		SELECT TSM.DevID + (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT) MTPid,
		      TSM.MSiteID +(SELECT  (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT)+ MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD) MTId,
		      (SELECT TDMST.Name FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST WHERE TDMST.ID =TSM.MSiteName) MTName,
			  TSM.MSiteStatus MTStatus,
			  6 MTType,
			  (SELECT TSW.WSName FROM dbo.T_SYS_WS AS TSW WHERE TSW.WSID=TSM.WSID) Remark,
			  TSM.MSiteID RecordID
		      FROM dbo.T_SYS_MEASURESITE AS TSM
		UNION

		--设备温度
		SELECT TSTWSM.MsiteID+(SELECT  (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT)+ MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD) MTPid,
		TSTWSM.MsiteAlmID+(SELECT (SELECT  (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT)+ MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD) + MAX(TSM.MSiteID) FROM dbo.T_SYS_MEASURESITE AS TSM ) MTId,
		'设备温度' MTName,
		TSTWSM.Status MTStatus,
        9 MTType,
	    '设备温度' Remark,
		TSTWSM.MsiteAlmID RecordID
		FROM dbo.T_SYS_TEMPE_WS_SET_MSITEALM AS TSTWSM

		--振动信号
		UNION
		SELECT TSV.MSiteID+(SELECT  (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT)+ MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD) MTPid,
		TSV.SingalID+(SELECT (SELECT (SELECT  (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT)+ MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD) + MAX(TSM.MSiteID) FROM dbo.T_SYS_MEASURESITE AS TSM )+MAX(TSTDSM.MsiteAlmID) FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM)  MTId,
		(SELECT TDVST.Name FROM dbo.T_DICT_VIBRATING_SIGNAL_TYPE AS TDVST WHERE TDVST.ID=TSV.SingalType) MTName,
		TSV.SingalStatus MTStatus,
		7 MTType,
	   (SELECT TDVST.Name FROM dbo.T_DICT_VIBRATING_SIGNAL_TYPE AS TDVST WHERE TDVST.ID=TSV.SingalType) Remark,
	   	TSV.SingalID RecordID
	    FROM dbo.T_SYS_VIBSINGAL AS TSV

		UNION
		--特征值
		SELECT TSVSS.SingalID+(SELECT (SELECT (SELECT  (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT)+ MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD) + MAX(TSM.MSiteID) FROM dbo.T_SYS_MEASURESITE AS TSM )+MAX(TSTDSM.MsiteAlmID) FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM),
		TSVSS.SingalAlmID+(SELECT (SELECT (SELECT (SELECT  (SELECT MAX(TSMT.MonitorTreeID) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT)+ MAX(TSD.DevID) FROM dbo.T_SYS_DEVICE AS TSD) + MAX(TSM.MSiteID) FROM dbo.T_SYS_MEASURESITE AS TSM )+MAX(TSTDSM.MsiteAlmID) FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM)+MAX(TSV.SingalID) FROM dbo.T_SYS_VIBSINGAL AS TSV),
		(SELECT TDEVT.Name FROM dbo.T_DICT_EIGEN_VALUE_TYPE AS TDEVT WHERE TDEVT.ID=TSVSS.ValueType) MTName,
		TSVSS.Status MTStatus,
		8 MTType,
        (SELECT TDEVT.Name FROM dbo.T_DICT_EIGEN_VALUE_TYPE AS TDEVT WHERE TDEVT.ID=TSVSS.ValueType) Remark,
		TSVSS.SingalAlmID RecordID
		FROM dbo.T_SYS_VIBRATING_SET_SIGNALALM AS TSVSS







GO
/****** Object:  View [dbo].[View_GetOperationList]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[View_GetOperationList]
AS
    SELECT  MAX(TSO.id) id ,
            OperationResult ,
            TSO.EDate  ,
            TSO.MSID ,
            TSO.WSID ,
            TSO.DAQStyle ,
            TSO.OperationType,
			TSM.DevID
    FROM    dbo.T_SYS_OPERATION AS TSO
            LEFT JOIN dbo.T_SYS_MEASURESITE AS TSM ON TSO.MSID = TSM.MSiteID
    GROUP BY EDate,OperationResult, TSO.MSID ,
            TSO.WSID ,
            TSO.DAQStyle ,
            TSO.OperationType,
			TSM.DevID










GO
/****** Object:  View [dbo].[View_GetTimingMeasureSiteInfo]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





--====================================================
--  作    者：王颖辉 
--  创建时间：2017年10月28日
--  功能简述：获取定时测量位置信息
--  参数描述：无
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE VIEW [dbo].[View_GetTimingMeasureSiteInfo]
AS
    SELECT  TSM.MSiteID WID ,
            TSM.MSiteName MSiteTypeId ,
			TDMST.Name MStieTypeName,
			TSW.DevFormType,
            TSM.DevID ,
            ISNULL(TSM.WSID,-1) WSID ,
            TSW.WSName ,
            ISNULL(TSW.LinkStatus,0)  LinkStatus,
            TSM.MeasureSiteType ,
            TSM.SensorCosA ,
            TSM.SensorCosB ,
            TSM.MSiteStatus ,
            TSM.MSiteSDate ,
            TSM.WaveTime ,
            TSM.FlagTime ,
            TSM.TemperatureTime ,
            TSM.Remark ,
            TSM.Position ,
            TSM.SerialNo ,
			ISNULL(TSM.BearingID,-1) BearingID ,
            TSM.BearingType ,
            TSM.LubricatingForm ,
            TSM.AddDate ,
            '' ConfigMSDate ,
            1 Type ,
            '测量位置' TypeName ,
            TSW2.WGName,
		    ISNULL(TSW.TriggerStatus,0) TriggerStatus,
			(SELECT COUNT(1) FROM dbo.T_SYS_VIBSINGAL AS TSV WHERE TSV.MSiteID=TSM.MSiteID AND TSV.DAQStyle=1)
			+(SELECT COUNT(1) FROM dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM  WHERE TSTDSM.MSiteID=TSM.MSiteID)
			+(SELECT COUNT(1) FROM dbo.T_SYS_VOLTAGE_SET_MSITEALM AS TSVSM  WHERE TSVSM.MSiteID=TSM.MSiteID)
			+(SELECT COUNT(1) FROM dbo.T_SYS_TEMPE_WS_SET_MSITEALM AS TSTWSM  WHERE TSTWSM.MSiteID=TSM.MSiteID)
			AS ChildrenCount,
			TSB.FactoryName,
            TSB.BearingNum,
            TSB.FactoryID,
			0 OperationStatus

			--(SELECT TOP 1 TSO.OperationResult FROM dbo.T_SYS_OPERATION AS TSO WHERE TSO.MSID=tsm.MSiteID ORDER BY TSO.id DESC)  OperationStatus
			--(SELECT TOP 1 TSO.OperationResult FROM dbo.T_SYS_OPERATION AS TSO WHERE TSO.MSID=tsm.MSiteID ORDER BY TSO.id DESC)  OperationStatus
    FROM    dbo.T_SYS_MEASURESITE AS TSM
            LEFT JOIN dbo.T_SYS_WS AS TSW ON TSW.WSID = TSM.WSID
            LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST ON TDMST.ID = TSM.MSiteName
            LEFT JOIN dbo.T_SYS_WG AS TSW2 ON TSW2.WGID = TSW.WGID
			LEFT JOIN dbo.T_SYS_BEARING AS TSB ON TSB.BearingID = TSM.BearingID












GO
/****** Object:  View [dbo].[View_GetTimporayMeasureSiteInfo]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





--====================================================
--  作    者：王颖辉 
--  创建时间：2017年10月28日
--  功能简述：获取临时测量位置信息
--  参数描述：无
--  修改历史：
--  修 改 人：
--  修改时间：
--  修改原因：
--====================================================
CREATE VIEW [dbo].[View_GetTimporayMeasureSiteInfo]
AS
    SELECT  TSM.MSiteID WID ,
            TSM.MSiteName MSiteTypeId ,
			TDMST.Name MStieTypeName,
			TSW.DevFormType,
            TSM.DevID ,
            ISNULL(TSM.WSID,-1) WSID ,
            TSW.WSName ,
            ISNULL(TSW.LinkStatus,0)  LinkStatus,
            TSM.MeasureSiteType ,
            TSM.SensorCosA ,
            TSM.SensorCosB ,
            TSM.MSiteStatus ,
            TSM.MSiteSDate ,
            TSM.WaveTime ,
            TSM.FlagTime ,
            TSM.TemperatureTime ,
            TSM.Remark ,
            TSM.Position ,
            TSM.SerialNo ,
			ISNULL(TSM.BearingID,-1) BearingID ,
            TSM.BearingType ,
            TSM.LubricatingForm ,
            TSM.AddDate ,
            '' ConfigMSDate ,
            1 Type ,
            '测量位置' TypeName ,
            TSW2.WGName,
		    ISNULL(TSW.TriggerStatus,0) TriggerStatus,
			(SELECT COUNT(1) FROM dbo.T_SYS_VIBSINGAL AS TSV WHERE TSV.MSiteID=TSM.MSiteID AND TSV.DAQStyle=2)
			AS ChildrenCount,
			TSB.FactoryName,
            TSB.BearingNum,
            TSB.FactoryID,
			0 OperationStatus

			--(SELECT TOP 1 TSO.OperationResult FROM dbo.T_SYS_OPERATION AS TSO WHERE TSO.MSID=tsm.MSiteID ORDER BY TSO.id DESC)  OperationStatus
			--(SELECT TOP 1 TSO.OperationResult FROM dbo.T_SYS_OPERATION AS TSO WHERE TSO.MSID=tsm.MSiteID ORDER BY TSO.id DESC)  OperationStatus
    FROM    dbo.T_SYS_MEASURESITE AS TSM
            LEFT JOIN dbo.T_SYS_WS AS TSW ON TSW.WSID = TSM.WSID
            LEFT JOIN dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST ON TDMST.ID = TSM.MSiteName
            LEFT JOIN dbo.T_SYS_WG AS TSW2 ON TSW2.WGID = TSW.WGID
			LEFT JOIN dbo.T_SYS_BEARING AS TSB ON TSB.BearingID = TSM.BearingID












GO
/****** Object:  View [dbo].[View_GetVibSignalAndEigenValue]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 CREATE VIEW [dbo].[View_GetVibSignalAndEigenValue]
 AS
 
  SELECT    TSV.SingalID,
            TSV.SingalType VibrationSignalTypeID,
            TDVST.Name VibrationSignalName,
            TDVST.AddDate,
            TSV.UpLimitFrequency UpperLimitID,
            ( SELECT    WaveUpperLimitValue
              FROM      dbo.T_DICT_WAVE_UPPERLIMIT_VALUE
              WHERE     ID = TSV.UpLimitFrequency
            ) UpperLimitValue,
            TSV.LowLimitFrequency LowLimitID,
            ( SELECT    WaveLowerLimitValue
              FROM      dbo.T_DICT_WAVE_LOWERLIMIT_VALUE
              WHERE     ID = TSV.LowLimitFrequency
            ) LowLimitValue,
            TSV.WaveDataLength WaveLengthID,
			( SELECT    WaveLengthValue
              FROM      dbo.T_DICT_WAVE_LENGTH_VALUE
              WHERE     ID = TSV.WaveDataLength
            ) WaveLengthValue,
			TSV.SamplingTimePeriod,
			TSV.EigenValueWaveLength EigenValueWaveLengthID,
			( SELECT    WaveLengthValue
              FROM      dbo.T_DICT_WAVE_LENGTH_VALUE
              WHERE     ID = TSV.EigenValueWaveLength
            ) EigenValueWaveLengthValue,
			TSV.EnvelopeFilterUpLimitFreq EnvelopeFilterUpLimitFreqID,
			( SELECT    WaveUpperLimitValue
              FROM      dbo.T_DICT_WAVE_UPPERLIMIT_VALUE
              WHERE     ID = TSV.EnvelopeFilterUpLimitFreq
            ) EnvelopeFilterUpLimitFreqValue,
			TSV.EnvelopeFilterLowLimitFreq EnvelopeFilterLowLimitFreqID,
            ( SELECT    WaveLowerLimitValue
              FROM      dbo.T_DICT_WAVE_LOWERLIMIT_VALUE
              WHERE     ID = TSV.EnvelopeFilterLowLimitFreq
            ) EnvelopeFilterLowLimitFreqValue,
			TSV.MSiteID,
			TSV.DAQStyle
  FROM      dbo.T_SYS_VIBSINGAL AS TSV
            LEFT JOIN dbo.T_DICT_VIBRATING_SIGNAL_TYPE AS TDVST ON TDVST.ID = TSV.SingalType;







GO
/****** Object:  View [dbo].[View_MonitorTree]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_MonitorTree]
AS
WITH MonitorTree AS (SELECT   MonitorTreeID, Name, PID, Type, 0 AS Lvl
                                    FROM      dbo.T_SYS_MONITOR_TREE AS TSMT
                                    WHERE   (PID = 0)
                                    UNION ALL
                                    SELECT   TSMT.MonitorTreeID, TSMT.Name, TSMT.PID, TSMT.Type, P.Lvl + 1 AS Expr1
                                    FROM      MonitorTree AS P INNER JOIN
                                                    dbo.T_SYS_MONITOR_TREE AS TSMT ON TSMT.PID = P.MonitorTreeID)
    SELECT   MonitorTree.MonitorTreeID, MonitorTree.Name, MonitorTree.Lvl, MonitorTree.PID, TDMT.Describe, TSD.DevID, 
                    TSD.DevName, TSD.RunStatus, TSD.AlmStatus, TSD.UseType, TSM.MSiteID, TDMST.Name AS MeasureSiteName, 
                    TSM.MSiteStatus, TSW.WSName, TSTDSM.MsiteAlmID, TSTDSM.Status AS DeviceTemperatureStatus, TSV.SingalID, 
                    TSV.SingalStatus, TDVST.ID AS VibratingTypeId, TDVST.Name AS VibratingTypeName, TSVSS.SingalAlmID, 
                    TSVSS.Status AS EnginStatus, TDEVT.ID AS EigenTypeId, TDEVT.Name AS EigenTypeName
    FROM      MonitorTree LEFT OUTER JOIN
                    dbo.T_DICT_MONITORTREE_TYPE AS TDMT ON TDMT.ID = MonitorTree.Type LEFT OUTER JOIN
                    dbo.T_SYS_DEVICE AS TSD ON TSD.MonitorTreeID = MonitorTree.MonitorTreeID LEFT OUTER JOIN
                    dbo.T_SYS_MEASURESITE AS TSM ON TSM.DevID = TSD.DevID LEFT OUTER JOIN
                    dbo.T_SYS_WS AS TSW ON TSW.WSID = TSM.WSID LEFT OUTER JOIN
                    dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST ON TDMST.ID = TSM.MSiteName LEFT OUTER JOIN
                    dbo.T_SYS_TEMPE_DEVICE_SET_MSITEALM AS TSTDSM ON TSTDSM.MsiteID = TSM.MSiteID LEFT OUTER JOIN
                    dbo.T_SYS_VIBSINGAL AS TSV ON TSV.MSiteID = TSM.MSiteID AND TSV.DAQStyle = 1 LEFT OUTER JOIN
                    dbo.T_SYS_VIBRATING_SET_SIGNALALM AS TSVSS ON TSVSS.SingalID = TSV.SingalID LEFT OUTER JOIN
                    dbo.T_DICT_VIBRATING_SIGNAL_TYPE AS TDVST ON TDVST.ID = TSV.SingalType LEFT OUTER JOIN
                    dbo.T_DICT_EIGEN_VALUE_TYPE AS TDEVT ON TDEVT.VibratingSignalTypeID = TDVST.ID AND 
                    TDEVT.ID = TSVSS.ValueType








GO
/****** Object:  View [dbo].[ViewGetMSInfo]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewGetMSInfo]
AS
SELECT   w.WSID, w.MACADDR, w.LinkStatus, m.MSiteID, m.MSiteName, m.DevID, m.VibScanID, m.ChannelID, 
                m.MeasureSiteType, m.SensorCosA, m.SensorCosB, m.MSiteStatus, m.MSiteSDate, m.WaveTime, m.FlagTime, 
                m.TemperatureTime, m.Remark, m.Position, m.SerialNo, m.BearingID, m.BearingType, m.BearingModel, 
                m.LubricatingForm, m.AddDate, op.id, op.OperatorKey, op.MSID, op.OperationType, op.Bdate, op.EDate, 
                op.OperationResult, op.OperationReson, op.DAQStyle
FROM      dbo.T_SYS_MEASURESITE AS m INNER JOIN
                dbo.T_SYS_WS AS w ON m.WSID = w.WSID INNER JOIN
                    (SELECT   MSID, MAX(id) AS id
                     FROM      dbo.T_SYS_OPERATION
                     WHERE   (OperationType = 1)
                     GROUP BY MSID) AS o ON m.MSiteID = o.MSID INNER JOIN
                dbo.T_SYS_OPERATION AS op ON o.id = op.id
















GO
/****** Object:  View [dbo].[ViewGetOperationList]    Script Date: 2018/5/21 19:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ViewGetOperationList]
AS
    SELECT  MAX(TSO.id) id ,
            OperationResult ,
            TSO.EDate  ,
            TSO.MSID ,
            TSO.WSID ,
            TSO.DAQStyle ,
            TSO.OperationType,
			TSM.DevID
    FROM    dbo.T_SYS_OPERATION AS TSO
            LEFT JOIN dbo.T_SYS_MEASURESITE AS TSM ON TSO.MSID = TSM.MSiteID
    GROUP BY EDate,OperationResult, TSO.MSID ,
            TSO.WSID ,
            TSO.DAQStyle ,
            TSO.OperationType,
			TSM.DevID










GO


/****** Object:  UserDefinedFunction [dbo].[F_GetDeivceByMonitorTreeId]    Script Date: 2018/5/21 19:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[F_GetDeivceByMonitorTreeId]
(
  @MonitorTreeID INT
)
RETURNS @tab table(DeviceId int)
AS
BEGIN  

  WITH    uCte
          AS ( SELECT   a.*
               FROM     dbo.Tree  a
               WHERE    MonitorTreeID = @MonitorTreeID
			   --当前节点
               UNION ALL
               SELECT   k.*
               FROM     dbo.Tree k
                        INNER JOIN uCte c ON c.MonitorTreeID = k.PID
             )
  insert into @tab  SELECT  uCte.TrueId
    FROM    uCte WHERE uCte.Level=(SELECT COUNT(1)+1 FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.IsUsable=1)
  RETURN 
END






GO
/****** Object:  UserDefinedFunction [dbo].[F_GetMonitorTreeRouteByMonitorID]    Script Date: 2018/5/21 19:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[F_GetMonitorTreeRouteByMonitorID]
(
    @MonitorTreeID INT
)
RETURNS @tab TABLE
(
    MonitorTreeRoute NVARCHAR(100)
)
AS
BEGIN
    WITH TAB
    AS (SELECT MonitorTreeID,
               PID,
               Name,
               CAST(Name AS VARCHAR(100)) AS MonitorTreeRoute
        FROM T_SYS_MONITOR_TREE
        WHERE MonitorTreeID = 4 --子节点
        UNION ALL
        SELECT b.MonitorTreeID,
               b.PID,
               b.Name,
               --   CAST(a.fulltypeid + '#' + CAST(b.MonitorTreeID AS NVARCHAR(100)) AS VARCHAR(100)) AS fulltypeid
               CAST(CAST(b.Name AS NVARCHAR(100)) + '#' + a.MonitorTreeRoute AS VARCHAR(100)) AS MonitorTreeRoute
        FROM TAB a,               --子节点数据集
             T_SYS_MONITOR_TREE b --父节点数据集
        WHERE a.PID = b.MonitorTreeID --子节点数据集.parendID=父节点数据集.ID
    )
    INSERT INTO @tab
    SELECT TAB.MonitorTreeRoute
    FROM TAB
    WHERE TAB.PID = 0;
    RETURN;
END;


GO
/****** Object:  UserDefinedFunction [dbo].[fn_ChineseToSpell]    Script Date: 2018/5/21 19:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*创建取拼音首字母函数*/ 
CREATE FUNCTION [dbo].[fn_ChineseToSpell]
    (
      @strChinese VARCHAR(500) = ''
    )
RETURNS VARCHAR(500)
AS
    BEGIN /*函数实现开始*/ 
        DECLARE @strLen INT ,
            @return VARCHAR(500) ,
            @i INT; 
        DECLARE @n INT ,
            @c CHAR(1) ,
            @chn NCHAR(1);  
        SELECT  @strLen = LEN(@strChinese) ,
                @return = '' ,
                @i = 0; 
        WHILE @i < @strLen
            BEGIN /*while循环开始*/
                SELECT  @i = @i + 1 ,
                        @n = 63 ,
                        @chn = SUBSTRING(@strChinese, @i, 1); 
                IF @chn > 'z'/*原理:“字符串排序以及ASCII码表”*/
                    SELECT  @n = @n + 1 ,
                            @c = CASE chn
                                   WHEN @chn THEN CHAR(@n)
                                   ELSE @c
                                 END
                    FROM    ( SELECT TOP 27
                                        *
                              FROM      ( SELECT    chn = '吖'
                                          UNION ALL
                                          SELECT    '八'
                                          UNION ALL
                                          SELECT    '嚓'
                                          UNION ALL
                                          SELECT    '咑'
                                          UNION ALL
                                          SELECT    '妸'
                                          UNION ALL
                                          SELECT    '发'
                                          UNION ALL
                                          SELECT    '旮'
                                          UNION ALL
                                          SELECT    '铪'
                                          UNION ALL
                                          SELECT    '丌' /*because have no 'i'*/
                                          UNION ALL
                                          SELECT    '丌'
                                          UNION ALL
                                          SELECT    '咔'
                                          UNION ALL
                                          SELECT    '垃'
                                          UNION ALL
                                          SELECT    '嘸'
                                          UNION ALL
                                          SELECT    '拏'
                                          UNION ALL
                                          SELECT    '噢'
                                          UNION ALL
                                          SELECT    '妑'
                                          UNION ALL
                                          SELECT    '七'
                                          UNION ALL
                                          SELECT    '呥'
                                          UNION ALL
                                          SELECT    '仨'
                                          UNION ALL
                                          SELECT    '他'
                                          UNION ALL
                                          SELECT    '屲' /*no 'u'*/
                                          UNION ALL
                                          SELECT    '屲' /*no 'v'*/
                                          UNION ALL
                                          SELECT    '屲'
                                          UNION ALL
                                          SELECT    '夕'
                                          UNION ALL
                                          SELECT    '丫'
                                          UNION ALL
                                          SELECT    '帀'
                                          UNION ALL
                                          SELECT    @chn
                                        ) AS a
                              ORDER BY  chn COLLATE Chinese_PRC_CI_AS
                            ) AS b;  
                ELSE
                    SET @c = @chn;
                SET @return = @return + @c;  
            END; /*while循环结束*/  
        RETURN(@return);  
    END; /*函数实现结束*/





GO
/****** Object:  UserDefinedFunction [dbo].[SF_Get_StrArrayLength]    Script Date: 2018/5/21 19:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[SF_Get_StrArrayLength]
    (
      @str VARCHAR(5000) ,  --要分割的字符串
      @split VARCHAR(10)  --分隔符号
    )
RETURNS INT
AS
    BEGIN
        DECLARE @location INT;
        DECLARE @start INT;
        DECLARE @length INT;

        SET @str = LTRIM(RTRIM(@str));
        SET @location = CHARINDEX(@split, @str);
        SET @length = 1;
        WHILE @location <> 0
            BEGIN
                SET @start = @location + 1;
                SET @location = CHARINDEX(@split, @str, @start);
                SET @length = @length + 1;
            END;
        RETURN @length;
    END;
















GO
/****** Object:  UserDefinedFunction [dbo].[SF_Get_StrArrayStrOfIndex]    Script Date: 2018/5/21 19:58:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[SF_Get_StrArrayStrOfIndex]
    (
      @str VARCHAR(5000) ,  --要分割的字符串
      @split VARCHAR(10) ,  --分隔符号
      @index INT --取第几个元素
    )
RETURNS VARCHAR(5000)
AS
    BEGIN
        DECLARE @location INT;
        DECLARE @start INT;
        DECLARE @next INT;
        DECLARE @seed INT;

        SET @str = LTRIM(RTRIM(@str));
        SET @start = 1;
        SET @next = 1;
        SET @seed = LEN(@split);
  
        SET @location = CHARINDEX(@split, @str);
        WHILE @location <> 0
            AND @index > @next
            BEGIN
                SET @start = @location + @seed;
                SET @location = CHARINDEX(@split, @str, @start);
                SET @next = @next + 1;
            END;
        IF @location = 0
            SELECT  @location = LEN(@str) + 1; 
        RETURN SUBSTRING(@str,@start,@location-@start);
    END;
















GO

/****** Object:  StoredProcedure [dbo].[EditMeasureSite]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[GetDevAlarmRemindDataByUserId]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[GetDeviceCount]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[GetDeviceId]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[GetDeviceTree]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[GetServerTree]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SetMonitorTree]    Script Date: 2018/5/21 19:57:13 ******/
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
			--监测树类型最大值
		DECLARE @MonitorTreeTypeMaxCount INT;

		--监测树最大ID
        SET @MonitorMaxTreeId = (SELECT ISNULL( MAX(TSMT.MonitorTreeID),1) FROM  dbo.T_SYS_MONITOR_TREE AS TSMT);

		--设备树最大ID，不显示备用设备
        SET @DeviceMaxId      = (SELECT ISNULL( @MonitorMaxTreeId + MAX(TSD.DevID),@MonitorMaxTreeId+1) FROM dbo.T_SYS_DEVICE AS TSD) ;

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

			--监测树类型最大值
		SET @MonitorTreeTypeMaxCount=(SELECT COUNT(1) + 1 FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.IsUsable = 1)

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
	FROM Tree a WHERE a.TrueId IN (SELECT DeviceId FROM @tableDeviceId) AND a.Level = @MonitorTreeTypeMaxCount
    UNION ALL SELECT k.MonitorTreeID TreeId, k.PID ParentId, k.TrueId , k.Level FROM Tree k INNER JOIN tree1 c ON c.ParentId = k.MonitorTreeID)
	SELECT TSMT.PID MTPid,TSMT.MonitorTreeID MTId,TSMT.Name MTName,TSMT.Status MTStatus,
	(SELECT TDMT.Code FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.ID=TSMT.Type) MTType,
	(SELECT TDMT1.Describe FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT1 WHERE TDMT1.ID=TSMT.Type) Remark,TSMT.MonitorTreeID RecordID,1 IsMonitorTree FROM dbo.T_SYS_MONITOR_TREE AS TSMT
	WHERE TSMT.MonitorTreeID IN (SELECT DISTINCT TrueId FROM tree1 WHERE Level<@MonitorTreeTypeMaxCount)
	UNION
	--设备树集合
	SELECT MonitorTreeID MTPid,DevID+@MonitorMaxTreeId MTId,CASE RunStatus WHEN 3 THEN DevName+N'(stop)' ELSE DevName END MTName,
	CASE RunStatus WHEN 3 THEN 4 ELSE AlmStatus END MTStatus, 'DEVICE' MTType, DevName Remark, DevID RecordID,0 IsMonitorTree FROM dbo.T_SYS_DEVICE
	WHERE DevID IN (SELECT DeviceId FROM @tableDeviceId)
	UNION
	--测量位置集合
	SELECT TSM.DevID + @MonitorMaxTreeId MTPid,TSM.MSiteID +@DeviceMaxId MTId,
		      (SELECT TDMST.Name FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST WHERE TDMST.ID =TSM.MSiteName) MTName,
			  TSM.MSiteStatus MTStatus,'MEASURESITE' MTType,
			  (SELECT TSW.WSName FROM dbo.T_SYS_WS AS TSW WHERE TSW.WSID=TSM.WSID) Remark,
			  TSM.MSiteID RecordID,0 IsMonitorTree FROM dbo.T_SYS_MEASURESITE AS TSM
			  WHERE TSM.DevID IN (SELECT DeviceId FROM @tableDeviceId)
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
		ORDER BY MTId
END






GO
/****** Object:  StoredProcedure [dbo].[SetMonitorTreeByUserID]    Script Date: 2018/5/21 19:57:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SetMonitorTreeByUserID]
	@userID INT
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

		--监测树类型最大值
		DECLARE @MonitorTreeTypeMaxCount INT;
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

		--监测树类型最大值
		SET @MonitorTreeTypeMaxCount=(SELECT COUNT(1) + 1 FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.IsUsable = 1)
	
	INSERT INTO @tableDeviceId 
		SELECT DISTINCT DevId FROM dbo.T_SYS_USER_RELATION_DEVICE WHERE UserID = @userID;

	INSERT INTO @tableDeviceIdNoBY
		SELECT DISTINCT DevId FROM dbo.T_SYS_USER_RELATION_DEVICE WHERE UserID = @userID
		--过滤备用设备
		--AND UserID NOT IN (SELECT DevId FROM dbo.T_SYS_DEVICE );

   

	INSERT INTO @tableMSiteID 
		SELECT DISTINCT MSiteID FROM dbo.T_SYS_MEASURESITE AS TSM WHERE TSM.DevID IN (SELECT DeviceId FROM @tableDeviceIdNoBY);

	INSERT INTO @tableSingalID 
		SELECT DISTINCT SingalID FROM dbo.T_SYS_VIBSINGAL AS TSV WHERE TSV.MSiteID IN (SELECT MSiteID FROM @tableMSiteID) AND DAQStyle=1;;
		
	--监测树集合
	WITH tree1 AS (SELECT a.MonitorTreeID TreeId , a.PID ParentId, a.TrueId , a.Level FROM Tree a WHERE a.TrueId IN (SELECT DeviceId FROM @tableDeviceId) AND a.Level =@MonitorTreeTypeMaxCount
    UNION ALL SELECT k.MonitorTreeID TreeId, k.PID ParentId, k.TrueId , k.Level FROM Tree k INNER JOIN tree1 c ON c.ParentId = k.MonitorTreeID)
	SELECT TSMT.PID MTPid,TSMT.MonitorTreeID MTId,TSMT.Name MTName,TSMT.Status MTStatus,
	(SELECT TDMT.Code FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT WHERE TDMT.ID=TSMT.Type) MTType,
	(SELECT TDMT1.Describe FROM dbo.T_DICT_MONITORTREE_TYPE AS TDMT1 WHERE TDMT1.ID=TSMT.Type) Remark,TSMT.MonitorTreeID RecordID,1 IsMonitorTree FROM dbo.T_SYS_MONITOR_TREE AS TSMT
	WHERE TSMT.MonitorTreeID IN (SELECT DISTINCT TrueId FROM tree1 WHERE Level<@MonitorTreeTypeMaxCount)

	UNION
	--设备树集合
	SELECT MonitorTreeID MTPid,DevID+@MonitorMaxTreeId MTId,CASE RunStatus WHEN 3 THEN DevName+N'(stop)' ELSE DevName END MTName,
	CASE RunStatus WHEN 3 THEN 4 ELSE AlmStatus END MTStatus, 'DEVICE' MTType, DevName Remark, DevID RecordID,0 IsMonitorTree FROM dbo.T_SYS_DEVICE
	WHERE DevID IN (SELECT DeviceId FROM @tableDeviceIdNoBY)
  
	UNION
	--测量位置集合
	SELECT TSM.DevID + @MonitorMaxTreeId MTPid,TSM.MSiteID +@DeviceMaxId MTId,
		      (SELECT TDMST.Name FROM dbo.T_DICT_MEASURE_SITE_TYPE AS TDMST WHERE TDMST.ID =TSM.MSiteName) MTName,
			  TSM.MSiteStatus MTStatus,'MEASURESITE' MTType,
			  (SELECT TSW.WSName FROM dbo.T_SYS_WS AS TSW WHERE TSW.WSID=TSM.WSID) Remark,
			  TSM.MSiteID RecordID ,0 IsMonitorTree FROM dbo.T_SYS_MEASURESITE AS TSM
			  WHERE TSM.DevID IN (SELECT DeviceId FROM @tableDeviceIdNoBY)
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
		ORDER BY MTId
END








GO
/****** Object:  StoredProcedure [dbo].[SetServerTree]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ClearCloudLog]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DeleteDevice]    Script Date: 2018/5/21 19:57:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		LF
-- Create date: 2016/07/28
-- Description:	删除设备
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteDevice] ( @DevId INT )
AS
    BEGIN
        SET NOCOUNT    ON; -- 不返回计数
        SET XACT_ABORT ON; -- 出现系统错误 则回滚事务
    
        BEGIN TRAN; --TRANSACTION
	
        DECLARE @tempMsiteID TABLE ( MsiteID INT );
        INSERT  INTO @tempMsiteID
                SELECT  [MSiteID]
                FROM    [dbo].[T_SYS_MEASURESITE]
                WHERE   [DevID] = @DevId;

		--保存温度测量定义ID和寄存器相关ID,康
        DECLARE @Relation_ModbusRegisterID TABLE ( ModBusRegisterID INT );
        INSERT  INTO @Relation_ModbusRegisterID
                SELECT  ModBusRegisterID
                FROM    T_SYS_ModBusRegisterAddress
                WHERE   MDFResourceTable = 'T_SYS_TEMPE_DEVICE_SET_MSITEALM'
                        AND MDFID IN (
                        SELECT  MsiteAlmID
                        FROM    T_SYS_TEMPE_DEVICE_SET_MSITEALM
                        WHERE   MsiteID IN ( SELECT MsiteID
                                             FROM   @tempMsiteID ) );

-- 结束掉设备温度报警记录，振动信号报警记录
        UPDATE  [dbo].[T_SYS_DEV_ALMRECORD]
        SET     EDate = GETDATE()
        WHERE   BDate = EDate
                AND [DevID] = @DevId;

-- 结束掉WS电池电压报警，WSLink报警 
        UPDATE  [dbo].[T_SYS_WSN_ALMRECORD]
        SET     EDate = GETDATE()
        WHERE   BDate = EDate
                AND [DevID] = @DevId;

        DELETE  FROM [dbo].[T_DATA_REALTIME_COLLECT_INFO]
        WHERE   [DevID] = @DevId;
        DELETE  FROM [dbo].[T_SYS_TEMPE_DEVICE_SET_MSITEALM]
        WHERE   [MsiteID] IN ( SELECT   [MsiteID]
                               FROM     @tempMsiteID );
        DELETE  FROM [dbo].[T_SYS_TEMPE_WS_SET_MSITEALM]
        WHERE   [MsiteID] IN ( SELECT   [MsiteID]
                               FROM     @tempMsiteID );
        DELETE  FROM [dbo].[T_SYS_VOLTAGE_SET_MSITEALM]
        WHERE   [MsiteID] IN ( SELECT   [MsiteID]
                               FROM     @tempMsiteID );
        DELETE  FROM [dbo].[T_SYS_VIBRATING_SET_SIGNALALM]
        WHERE   [SingalID] IN ( SELECT  [SingalID]
                                FROM    [dbo].[T_SYS_VIBSINGAL]
                                WHERE   [MSiteID] IN ( SELECT [MsiteID]
                                                       FROM   @tempMsiteID ) );
        DELETE  FROM [dbo].[T_SYS_VIBSINGAL]
        WHERE   [MSiteID] IN ( SELECT   [MsiteID]
                               FROM     @tempMsiteID );
     
-- SET USESTATUS == 0 WHEN DELET MS
        UPDATE  [dbo].[T_SYS_WS]
        SET     UseStatus = 0
        WHERE   WSID IN ( SELECT    WSID
                          FROM      [dbo].[T_SYS_MEASURESITE]
                          WHERE     DevID = @DevId );

        DELETE  FROM [dbo].[T_SYS_MEASURESITE]
        WHERE   [MSiteID] IN ( SELECT   [MsiteID]
                               FROM     @tempMsiteID );
        DELETE  FROM [dbo].[T_SYS_DEVICE]
        WHERE   [DevID] = @DevId;

--删除用户关联表
        DELETE  FROM dbo.T_SYS_USER_RELATION_DEVICE
        WHERE   DevId = @DevId;

--删除设备诊断报告（逻辑删除）
        UPDATE  T_SYS_DIAGNOSE_REPORT
        SET     IsDeleted = 1
        WHERE   DeviceID = @DevId;

--删除设备维修报告（逻辑删除）
        UPDATE  T_SYS_MAINTAIN_REPORT
        SET     IsDeleted = 1
        WHERE   DeviceID = @DevId;

--删除诊断关联报告表
        DELETE  FROM dbo.T_SYS_USER_RELATION_DIAGNOSE_REPORT
        WHERE   DeviceID = @DevId;

--删除维修关联日志表
        DELETE  FROM dbo.T_SYS_USER_RELATION_MAINTAIN_REPORT
        WHERE   DeviceID = @DevId
                AND ReportType = 1;

--删除用户关联设备报警记录
        DELETE  FROM dbo.T_SYS_USER_RELATION_DEV_ALMRECORD
        WHERE   DeviceID = @DevId;

	--删除实时数据表，数据
        DELETE  FROM dbo.T_DATA_REALTIME_ALARMTHRESHOLD
        WHERE   MeasureSiteID IN ( SELECT   [MsiteID]
                                   FROM     @tempMsiteID );

   --删除转速测量定义
        DELETE  FROM T_SYS_SpeedSamplingMDF
        WHERE   MSiteID IN ( SELECT [MsiteID]
                             FROM   @tempMsiteID );
   
   --删除测量位置和轴承关系表
        DELETE  FROM T_SYS_MEASURESITE_BEARING
        WHERE   MeasureSiteID IN ( SELECT [MsiteID]
								   FROM   @tempMsiteID );
   
   --删除寄存器表
        DELETE  FROM T_SYS_ModBusRegisterAddress
        WHERE   ModBusRegisterID IN ( SELECT    ModBusRegisterID
                                      FROM      @Relation_ModbusRegisterID );

   --删除设备和采集单元关系表
        DELETE  FROM T_SYS_DEVICE_RELATION_WG
        WHERE   DevId = @DevId;
        COMMIT TRAN;

    END;


















GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteMeasureSite]    Script Date: 2018/5/21 19:57:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		LF
-- Create date: 2016/07/28
-- Description:	删除设备
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteMeasureSite] @MSiteID INT
AS
    BEGIN
        SET NOCOUNT    ON;
        SET XACT_ABORT ON;
    
        BEGIN TRAN; --TRANSACTION 
   
		--保存温度测量定义ID和寄存器相关ID,康
        DECLARE @Relation_ModbusRegisterID TABLE ( ModBusRegisterID INT );
        INSERT  INTO @Relation_ModbusRegisterID
                SELECT  ModBusRegisterID
                FROM    T_SYS_ModBusRegisterAddress
                WHERE   MDFResourceTable = 'T_SYS_TEMPE_DEVICE_SET_MSITEALM'
                        AND MDFID IN (
                        SELECT  MsiteAlmID
                        FROM    T_SYS_TEMPE_DEVICE_SET_MSITEALM
                        WHERE   MsiteID = @MSiteID );

--结果测点报警记录，设备温度报警记录
        UPDATE  [dbo].[T_SYS_DEV_ALMRECORD]
        SET     EDate = GETDATE()
        WHERE   BDate = EDate
                AND [MSiteID] = @MSiteID;
--结束掉WS电池电压报警，WSLink报警
        UPDATE  [dbo].[T_SYS_WSN_ALMRECORD]
        SET     EDate = GETDATE()
        WHERE   BDate = EDate
                AND [MSiteID] = @MSiteID;

        DELETE  FROM [dbo].[T_DATA_REALTIME_COLLECT_INFO]
        WHERE   [MSID] = @MSiteID;
        DELETE  FROM [dbo].[T_SYS_TEMPE_DEVICE_SET_MSITEALM]
        WHERE   [MsiteID] = @MSiteID;
        DELETE  FROM [dbo].[T_SYS_TEMPE_WS_SET_MSITEALM]
        WHERE   [MsiteID] = @MSiteID;
        DELETE  FROM [dbo].[T_SYS_VOLTAGE_SET_MSITEALM]
        WHERE   [MsiteID] = @MSiteID;
        DELETE  FROM [dbo].[T_SYS_VIBRATING_SET_SIGNALALM]
        WHERE   [SingalID] IN ( SELECT  [SingalID]
                                FROM    [dbo].[T_SYS_VIBSINGAL]
                                WHERE   [MSiteID] = @MSiteID );
        DELETE  FROM [dbo].[T_SYS_VIBSINGAL]
        WHERE   [MSiteID] = @MSiteID;

-- SET USESTATUS == 0 WHEN DELET MS
        UPDATE  [dbo].[T_SYS_WS]
        SET     UseStatus = 0
        WHERE   WSID IN ( SELECT    WSID
                          FROM      [dbo].[T_SYS_MEASURESITE]
                          WHERE     MSiteID = @MSiteID );
--删除测点时候，删除形貌图
        DELETE  FROM [dbo].[T_SYS_MEASURESITE]
        WHERE   [MSiteID] = @MSiteID;

--删除用户未确认设备报警记录关联
        DELETE  FROM dbo.T_SYS_USER_RELATION_DEV_ALMRECORD
        WHERE   DeviceAlmRecordID IN ( SELECT   AlmRecordID
                                       FROM     T_SYS_DEV_ALMRECORD
                                       WHERE    MSiteID = @MSiteID );
--删除实时数据表，数据
        DELETE  FROM dbo.T_DATA_REALTIME_ALARMTHRESHOLD
        WHERE   MeasureSiteID = @MSiteID;
   
   --删除转速测量定义
        DELETE  FROM T_SYS_SpeedSamplingMDF
        WHERE   MSiteID = @MSiteID;
   
   --删除寄存器表
        DELETE  FROM T_SYS_ModBusRegisterAddress
        WHERE   ModBusRegisterID IN ( SELECT    ModBusRegisterID
                                      FROM      @Relation_ModbusRegisterID );
   
   --删除测量位置和轴承关系表
        DELETE  FROM T_SYS_MEASURESITE_BEARING
        WHERE   MeasureSiteID = @MSiteID;
        COMMIT TRAN;

    END;

















GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteMonitorTree]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DeleteVibSingal]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetDevHistoryTotal]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetDeviceTotal]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetMeasureSiteLevel]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetMeasureSiteLevelByUserID]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetWSStatsInfoByWGNO]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByDeviceID]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByKey]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByMAC]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByMSiteID]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetWsStatusInfoByWSID]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ModifyHistoryView]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Paging]    Script Date: 2018/5/21 19:57:13 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UpdateTypeData]    Script Date: 2018/5/21 19:57:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UpdateTypeData] ( @Type INT )
AS
    BEGIN

    	--配置表
        IF @Type = 1
            BEGIN
                DECLARE @Config_ID INT;
                DECLARE @Config_OrderNo INT;
                DECLARE @Config_CommonDataType INT;
                DECLARE @Config_Code NVARCHAR(50);

                DECLARE Config_Cursor CURSOR
                FOR
                    SELECT  @Config_ID ,
                            @Config_OrderNo ,
                            @Config_CommonDataType ,
                            @Config_Code
                    FROM    T_DICT_CONFIG; 
                OPEN Config_Cursor; 
                FETCH NEXT FROM Config_Cursor INTO @Config_OrderNo,
                    @Config_CommonDataType, @Config_Code;
                WHILE @@fetch_status <> -1
                    BEGIN 
                    --修改配置表结构
                        UPDATE  dbo.T_DICT_CONFIG
                        SET     Code = @Config_Code ,
                                OrderNo = @Config_OrderNo ,
                                CommonDataType = @Config_CommonDataType
                        WHERE   ID = @Config_ID;
                        FETCH NEXT FROM Config_Cursor INTO @Config_OrderNo,
                            @Config_CommonDataType, @Config_Code;
                    END; 
                CLOSE Config_Cursor; 
                DEALLOCATE Config_Cursor;
            END;

		--连接状态表
        IF @Type = 2
            BEGIN
                UPDATE  dbo.T_DICT_CONNECT_STATUS_TYPE
                SET     OrderNo = 1
                WHERE   ID = 1;
                UPDATE  dbo.T_DICT_CONNECT_STATUS_TYPE
                SET     OrderNo = 2
                WHERE   ID = 2;
            END;

		--设备类型
        IF @Type = 3
            BEGIN
                UPDATE  dbo.T_DICT_DEVICE_TYPE
                SET     OrderNo = 1
                WHERE   ID = 1;
            END;

		--特征值类型
        IF @Type = 4
            BEGIN
                DECLARE @EigenValue_ID INT;
                DECLARE @EigenValue_OrderNo INT;

                DECLARE EigenValue_Cursor CURSOR
                FOR
                    SELECT  @EigenValue_ID ,
                            @EigenValue_OrderNo
                    FROM    T_DICT_EIGEN_VALUE_TYPE; 
                OPEN EigenValue_Cursor; 
                FETCH NEXT FROM EigenValue_Cursor INTO @EigenValue_ID,
                    @EigenValue_OrderNo;
                WHILE @@fetch_status <> -1
                    BEGIN 
                    --修改配置表结构
                        UPDATE  dbo.T_DICT_EIGEN_VALUE_TYPE
                        SET     OrderNo = @Config_OrderNo
                        WHERE   ID = @EigenValue_ID;
                        FETCH NEXT FROM Config_Cursor INTO @EigenValue_ID,
                            @EigenValue_OrderNo;
                    END; 
                CLOSE EigenValue_Cursor; 
                DEALLOCATE EigenValue_Cursor;
            END;

		--测量位置监测类型表
        IF @Type = 5
            BEGIN
                UPDATE  [dbo].[T_DICT_MEASURE_SITE_MONITOR_TYPE]
                SET     OrderNo = 1
                WHERE   ID = 1;
                UPDATE  [dbo].[T_DICT_MEASURE_SITE_MONITOR_TYPE]
                SET     OrderNo = 2
                WHERE   ID = 2;
                UPDATE  [dbo].[T_DICT_MEASURE_SITE_MONITOR_TYPE]
                SET     OrderNo = 3
                WHERE   ID = 3;
            END;

		--测量位置类型表
        IF @Type = 6
            BEGIN
                DECLARE @MeasureSiteType_ID INT;
                DECLARE @MeasureSiteType_OrderNo INT;

                DECLARE MeasureSiteType_Cursor CURSOR
                FOR
                    SELECT  @MeasureSiteType_ID ,
                            @MeasureSiteType_OrderNo
                    FROM    T_DICT_MEASURE_SITE_TYPE; 
                OPEN MeasureSiteType_Cursor; 
                FETCH NEXT FROM MeasureSiteType_Cursor INTO @MeasureSiteType_ID,
                    @MeasureSiteType_OrderNo;
                WHILE @@fetch_status <> -1
                    BEGIN 
                    --修改配置表结构
                        UPDATE  dbo.T_DICT_EIGEN_VALUE_TYPE
                        SET     OrderNo = @MeasureSiteType_OrderNo
                        WHERE   ID = @MeasureSiteType_ID;
                        FETCH NEXT FROM MeasureSiteType_Cursor INTO @MeasureSiteType_ID,
                            @MeasureSiteType_OrderNo;
                    END; 
                CLOSE MeasureSiteType_Cursor; 
                DEALLOCATE MeasureSiteType_Cursor;
            END;

		--监测树类型表
        IF @Type = 7
            BEGIN
                UPDATE  [dbo].[T_DICT_MONITORTREE_TYPE]
                SET     OrderNo = 1
                WHERE   ID = 1004;
                UPDATE  [dbo].[T_DICT_MONITORTREE_TYPE]
                SET     OrderNo = 2
                WHERE   ID = 1005;
                UPDATE  [dbo].[T_DICT_MONITORTREE_TYPE]
                SET     OrderNo = 3
                WHERE   ID = 1006;
                UPDATE  [dbo].[T_DICT_MONITORTREE_TYPE]
                SET     OrderNo = 4
                WHERE   ID = 1007;
            END;

		--传感器类型表
        IF @Type = 8
            BEGIN
                UPDATE  [dbo].[T_DICT_SENSOR_TYPE]
                SET     OrderNo = 1
                WHERE   ID = 4;
                UPDATE  [dbo].[T_DICT_SENSOR_TYPE]
                SET     OrderNo = 2
                WHERE   ID = 5;
                UPDATE  [dbo].[T_DICT_SENSOR_TYPE]
                SET     OrderNo = 3
                WHERE   ID = 6;
                UPDATE  [dbo].[T_DICT_SENSOR_TYPE]
                SET     OrderNo = 4
                WHERE   ID = 8;
            END;

			
		--振动信号类型表
        IF @Type = 9
            BEGIN
                UPDATE  [dbo].[T_DICT_VIBRATING_SIGNAL_TYPE]
                SET     OrderNo = 1
                WHERE   ID = 1;
                UPDATE  [dbo].[T_DICT_VIBRATING_SIGNAL_TYPE]
                SET     OrderNo = 2
                WHERE   ID = 2;
                UPDATE  [dbo].[T_DICT_VIBRATING_SIGNAL_TYPE]
                SET     OrderNo = 3
                WHERE   ID = 3;
                UPDATE  [dbo].[T_DICT_VIBRATING_SIGNAL_TYPE]
                SET     OrderNo = 4
                WHERE   ID = 4;
                UPDATE  [dbo].[T_DICT_VIBRATING_SIGNAL_TYPE]
                SET     OrderNo = 5
                WHERE   ID = 5;
            END;

		--波长类型表
        IF @Type = 10
            BEGIN
                DECLARE @WaveLength_ID INT;
                DECLARE @WaveLength_OrderNo INT;

                DECLARE WaveLength_Cursor CURSOR
                FOR
                    SELECT  @WaveLength_ID ,
                            @WaveLength_OrderNo
                    FROM    T_DICT_MEASURE_SITE_TYPE; 
                OPEN WaveLength_Cursor; 
                FETCH NEXT FROM WaveLength_Cursor INTO @WaveLength_ID,
                    @WaveLength_OrderNo;
                WHILE @@fetch_status <> -1
                    BEGIN 
                    --修改配置表结构
                        UPDATE  dbo.T_DICT_WAVE_LENGTH_VALUE
                        SET     OrderNo = @WaveLength_OrderNo
                        WHERE   ID = @WaveLength_ID;
                        FETCH NEXT FROM WaveLength_Cursor INTO @WaveLength_ID,
                            @WaveLength_OrderNo;
                    END; 
                CLOSE WaveLength_Cursor; 
                DEALLOCATE WaveLength_Cursor;
            END;

	    --上限类型表
        IF @Type = 11
            BEGIN
                DECLARE @UpperLimit_ID INT;
                DECLARE @UpperLimit_OrderNo INT;

                DECLARE UpperLimit_Cursor CURSOR
                FOR
                    SELECT  @UpperLimit_ID ,
                            @UpperLimit_OrderNo
                    FROM    T_DICT_WAVE_UPPERLIMIT_VALUE; 
                OPEN UpperLimit_Cursor; 
                FETCH NEXT FROM UpperLimit_Cursor INTO @UpperLimit_ID,
                    @UpperLimit_OrderNo;
                WHILE @@fetch_status <> -1
                    BEGIN 
                    --修改配置表结构
                        UPDATE  dbo.T_DICT_WAVE_LENGTH_VALUE
                        SET     OrderNo = @UpperLimit_OrderNo
                        WHERE   ID = @UpperLimit_ID;
                        FETCH NEXT FROM UpperLimit_Cursor INTO @UpperLimit_ID,
                            @UpperLimit_OrderNo;
                    END; 
                CLOSE UpperLimit_Cursor; 
                DEALLOCATE UpperLimit_Cursor;
            END;

	    --下限类型表
        IF @Type = 12
            BEGIN
                DECLARE @LowerLimit_ID INT;
                DECLARE @LowerLimit_OrderNo INT;

                DECLARE LowerLimit_Cursor CURSOR
                FOR
                    SELECT  @LowerLimit_ID ,
                            @LowerLimit_OrderNo
                    FROM    T_DICT_WAVE_UPPERLIMIT_VALUE; 
                OPEN LowerLimit_Cursor; 
                FETCH NEXT FROM LowerLimit_Cursor INTO @LowerLimit_ID,
                    @LowerLimit_OrderNo;
                WHILE @@fetch_status <> -1
                    BEGIN 
                    --修改配置表结构
                        UPDATE  dbo.T_DICT_WAVE_LOWERLIMIT_VALUE
                        SET     OrderNo = @LowerLimit_OrderNo
                        WHERE   ID = @LowerLimit_ID;
                        FETCH NEXT FROM LowerLimit_Cursor INTO @LowerLimit_ID,
                            @LowerLimit_OrderNo;
                    END; 
                CLOSE LowerLimit_Cursor; 
                DEALLOCATE LowerLimit_Cursor;
            END;

	    --传感器类型表
        IF @Type = 13
            BEGIN
                UPDATE  T_DICT_WIRELESS_GATEWAY_TYPE
                SET     OrderNo = 1
                WHERE   ID = 3;
                UPDATE  T_DICT_WIRELESS_GATEWAY_TYPE
                SET     OrderNo = 2
                WHERE   ID = 4;
            END;

    END;






GO
/****** Object:  StoredProcedure [dbo].[sp_who_lock]    Script Date: 2018/5/21 19:57:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_who_lock]
as
begin
declare @spid int,@bl int,
@intTransactionCountOnEntry int,
         @intRowcount int,
         @intCountProperties int,
         @intCounter int

create table #tmp_lock_who (
id int identity(1,1),
spid smallint,
bl smallint)

IF @@ERROR<>0 RETURN @@ERROR

insert into #tmp_lock_who(spid,bl) select   0 ,blocked
   from (select * from sysprocesses where   blocked>0 ) a
   where not exists(select * from (select * from sysprocesses where   blocked>0 ) b
   where a.blocked=spid)
   union select spid,blocked from sysprocesses where   blocked>0

IF @@ERROR<>0 RETURN @@ERROR

-- 找到临时表的记录数
select @intCountProperties = Count(*),@intCounter = 1
from #tmp_lock_who

IF @@ERROR<>0 RETURN @@ERROR

if @intCountProperties=0
select '现在没有阻塞和死锁信息' as message

-- 循环开始
while @intCounter <= @intCountProperties
begin
-- 取第一条记录
select @spid = spid,@bl = bl
from #tmp_lock_who where Id = @intCounter
begin
if @spid =0
             select '引起数据库死锁的是: '+ CAST(@bl AS VARCHAR(10)) + '进程号,其执行的SQL语法如下'
else
             select '进程号SPID：'+ CAST(@spid AS VARCHAR(10))+ '被' + '进程号SPID：'+ CAST(@bl AS VARCHAR(10)) +'阻塞,其当前进程执行的SQL语法如下'
DBCC INPUTBUFFER (@bl )
end

-- 循环指针下移
set @intCounter = @intCounter + 1
end


drop table #tmp_lock_who

return 0
end





GO