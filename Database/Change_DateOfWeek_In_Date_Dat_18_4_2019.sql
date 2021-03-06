
ALTER DATABASE [ATVDatabase] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATVDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATVDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATVDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATVDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATVDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATVDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATVDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ATVDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATVDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATVDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATVDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATVDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATVDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATVDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATVDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATVDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ATVDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATVDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATVDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATVDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATVDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATVDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATVDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATVDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [ATVDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [ATVDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATVDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATVDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATVDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ATVDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ATVDatabase', N'ON'
GO
ALTER DATABASE [ATVDatabase] SET QUERY_STORE = OFF
GO
USE [ATVDatabase]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 18/04/2019 5:17:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WeekID] [int] NOT NULL,
	[DayOfWeek] [int] NOT NULL,
	[DateOfYear] [datetime] NOT NULL,
	[StartAt] [float] NOT NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 18/04/2019 5:17:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EditingHistory]    Script Date: 18/04/2019 5:17:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditingHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[WeekID] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[IsFinished] [bit] NOT NULL,
 CONSTRAINT [PK_EditingHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailingHistory]    Script Date: 18/04/2019 5:17:50 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailingHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[DateID] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
 CONSTRAINT [PK_MailingHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Program]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Program](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Duration] [float] NULL,
	[PerformBy] [nvarchar](max) NULL,
	[ProgramTypeID] [int] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramType]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProgramType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[DateID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Schedules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleDetail]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramID] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[Contents] [nvarchar](max) NULL,
	[PerformBy] [nvarchar](max) NULL,
	[Duration] [float] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsNoted] [bit] NULL,
	[IsActive] [bit] NULL,
	[ScheduleID] [int] NULL,
	[ProgramName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleTemplate]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[DateID] [int] NULL,
	[IsActive] [bit] NULL,
	[DayOfWeek] [smallint] NULL,
 CONSTRAINT [PK_ScheduleTemplates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleTemplateDetail]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleTemplateDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramID] [int] NOT NULL,
	[ScheduleTemplateID] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[IsNoted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProgramName] [nvarchar](max) NULL,
	[Contents] [nvarchar](max) NULL,
	[PerformBy] [nvarchar](max) NULL,
	[Duration] [float] NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_ScheduleTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdentityCode] [varchar](200) NULL,
	[Name] [nvarchar](max) NULL,
	[Phone1] [varchar](50) NULL,
	[Phone2] [varchar](50) NULL,
	[Email] [varchar](200) NULL,
	[Username] [varchar](200) NOT NULL,
	[PasswordHash] [varchar](200) NOT NULL,
	[IsPasswordChanged] [bit] NOT NULL,
	[DefaultPassword] [varchar](200) NOT NULL,
	[RoleID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Week]    Script Date: 18/04/2019 5:17:51 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Week](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Week] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Date] ON 

INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (1, 1, 1, CAST(N'2019-02-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (2, 1, 2, CAST(N'2019-02-08T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (3, 1, 3, CAST(N'2019-02-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (4, 1, 4, CAST(N'2019-02-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (5, 1, 5, CAST(N'2019-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (6, 1, 6, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (7, 1, 7, CAST(N'2019-02-13T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (22, 4, 1, CAST(N'2019-04-08T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (23, 4, 2, CAST(N'2019-04-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (24, 4, 3, CAST(N'2019-04-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (25, 4, 4, CAST(N'2019-04-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (26, 4, 5, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (27, 4, 6, CAST(N'2019-04-13T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (28, 4, 7, CAST(N'2019-04-14T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (29, 5, 1, CAST(N'2019-04-15T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (30, 5, 2, CAST(N'2019-04-16T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (31, 5, 3, CAST(N'2019-04-17T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (32, 5, 4, CAST(N'2019-04-18T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (33, 5, 5, CAST(N'2019-04-19T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (34, 5, 6, CAST(N'2019-04-20T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (35, 5, 7, CAST(N'2019-04-21T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (36, 6, 1, CAST(N'2019-04-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (37, 6, 2, CAST(N'2019-04-02T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (38, 6, 3, CAST(N'2019-04-03T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (39, 6, 4, CAST(N'2019-04-04T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (40, 6, 5, CAST(N'2019-04-05T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (41, 6, 6, CAST(N'2019-04-06T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (42, 6, 7, CAST(N'2019-04-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (43, 7, 1, CAST(N'2018-04-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (44, 7, 2, CAST(N'2018-04-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (45, 7, 3, CAST(N'2018-04-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (46, 7, 4, CAST(N'2018-04-12T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (47, 7, 5, CAST(N'2018-04-13T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (48, 7, 6, CAST(N'2018-04-14T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (49, 7, 7, CAST(N'2018-04-15T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (50, 8, 1, CAST(N'2020-04-06T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (51, 8, 2, CAST(N'2020-04-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (52, 8, 3, CAST(N'2020-04-08T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (53, 8, 4, CAST(N'2020-04-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (54, 8, 5, CAST(N'2020-04-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (55, 8, 6, CAST(N'2020-04-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (56, 8, 7, CAST(N'2020-04-12T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (57, 9, 1, CAST(N'2019-04-22T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (58, 9, 2, CAST(N'2019-04-23T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (59, 9, 3, CAST(N'2019-04-24T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (60, 9, 4, CAST(N'2019-04-25T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (61, 9, 5, CAST(N'2019-04-26T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (62, 9, 6, CAST(N'2019-04-27T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (63, 9, 7, CAST(N'2019-04-28T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (64, 10, 1, CAST(N'2019-04-29T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (65, 10, 2, CAST(N'2019-04-30T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (66, 10, 3, CAST(N'2019-05-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (67, 10, 4, CAST(N'2019-05-02T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (68, 10, 5, CAST(N'2019-05-03T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (69, 10, 6, CAST(N'2019-05-04T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (70, 10, 7, CAST(N'2019-05-05T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (71, 11, 1, CAST(N'2019-05-06T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (72, 11, 2, CAST(N'2019-05-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (73, 11, 3, CAST(N'2019-05-08T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (74, 11, 4, CAST(N'2019-05-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (75, 11, 5, CAST(N'2019-05-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (76, 11, 6, CAST(N'2019-05-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (77, 11, 7, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (78, 12, 1, CAST(N'2019-05-13T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (79, 12, 2, CAST(N'2019-05-14T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (80, 12, 3, CAST(N'2019-05-15T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (81, 12, 4, CAST(N'2019-05-16T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (82, 12, 5, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (83, 12, 6, CAST(N'2019-05-18T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (84, 12, 7, CAST(N'2019-05-19T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (85, 13, 1, CAST(N'2018-05-14T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (86, 13, 2, CAST(N'2018-05-15T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (87, 13, 3, CAST(N'2018-05-16T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (88, 13, 4, CAST(N'2018-05-17T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (89, 13, 5, CAST(N'2018-05-18T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (90, 13, 6, CAST(N'2018-05-19T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (91, 13, 7, CAST(N'2018-05-20T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (92, 14, 1, CAST(N'2019-05-20T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (93, 14, 2, CAST(N'2019-05-21T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (94, 14, 3, CAST(N'2019-05-22T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (95, 14, 4, CAST(N'2019-05-23T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (96, 14, 5, CAST(N'2019-05-24T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (97, 14, 6, CAST(N'2019-05-25T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (98, 14, 7, CAST(N'2019-05-26T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (99, 15, 1, CAST(N'2019-05-27T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (100, 15, 2, CAST(N'2019-05-28T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (101, 15, 3, CAST(N'2019-05-29T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (102, 15, 4, CAST(N'2019-05-30T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (103, 15, 5, CAST(N'2019-05-31T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (104, 15, 6, CAST(N'2019-06-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (105, 15, 7, CAST(N'2019-06-02T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (106, 16, 1, CAST(N'2019-06-03T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (107, 16, 2, CAST(N'2019-06-04T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (108, 16, 3, CAST(N'2019-06-05T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (109, 16, 4, CAST(N'2019-06-06T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (110, 16, 5, CAST(N'2019-06-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (111, 16, 6, CAST(N'2019-06-08T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (112, 16, 7, CAST(N'2019-06-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (113, 17, 1, CAST(N'2019-06-10T00:00:00.000' AS DateTime), 5)
GO
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (114, 17, 2, CAST(N'2019-06-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (115, 17, 3, CAST(N'2019-06-12T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (116, 17, 4, CAST(N'2019-06-13T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (117, 17, 5, CAST(N'2019-06-14T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (118, 17, 6, CAST(N'2019-06-15T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (119, 17, 7, CAST(N'2019-06-16T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (120, 18, 1, CAST(N'2019-06-17T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (121, 18, 2, CAST(N'2019-06-18T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (122, 18, 3, CAST(N'2019-06-19T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (123, 18, 4, CAST(N'2019-06-20T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (124, 18, 5, CAST(N'2019-06-21T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (125, 18, 6, CAST(N'2019-06-22T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (126, 18, 7, CAST(N'2019-06-23T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (127, 19, 1, CAST(N'2019-06-24T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (128, 19, 2, CAST(N'2019-06-25T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (129, 19, 3, CAST(N'2019-06-26T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (130, 19, 4, CAST(N'2019-06-27T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (131, 19, 5, CAST(N'2019-06-28T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (132, 19, 6, CAST(N'2019-06-29T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (133, 19, 7, CAST(N'2019-06-30T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[Date] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([ID], [Name], [Email], [IsActive]) VALUES (1, N'Phòng kế toán', N'ketoan@mail.com', 1)
INSERT [dbo].[Department] ([ID], [Name], [Email], [IsActive]) VALUES (2, N'Phòng kế hoạch', N'kehoach@mail.com', 1)
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[EditingHistory] ON 

INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (1, 1, 1, CAST(N'2019-01-29T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (2, 3, 1, CAST(N'2019-02-20T19:26:58.553' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (3, 3, 1, CAST(N'2019-02-20T19:28:00.797' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (4, 3, 1, CAST(N'2019-02-20T19:28:09.980' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (5, 3, 1, CAST(N'2019-02-20T19:29:30.537' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (6, 3, 1, CAST(N'2019-02-20T19:29:37.730' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (7, 3, 1, CAST(N'2019-02-20T19:31:36.953' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (8, 3, 1, CAST(N'2019-02-20T19:37:19.217' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (9, 3, 1, CAST(N'2019-02-20T19:38:22.720' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (10, 3, 1, CAST(N'2019-02-20T19:38:29.167' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (11, 3, 1, CAST(N'2019-02-20T19:38:29.917' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (12, 3, 1, CAST(N'2019-02-20T19:38:30.267' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (13, 3, 1, CAST(N'2019-02-20T19:43:18.047' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (14, 3, 1, CAST(N'2019-02-20T19:43:23.347' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (15, 3, 1, CAST(N'2019-02-20T19:43:32.177' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (16, 3, 1, CAST(N'2019-02-20T20:26:46.767' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (17, 3, 1, CAST(N'2019-02-20T20:26:50.963' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (18, 3, 1, CAST(N'2019-02-20T20:28:09.777' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (19, 3, 1, CAST(N'2019-02-20T20:35:00.167' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (20, 3, 1, CAST(N'2019-02-21T20:47:15.233' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (21, 3, 1, CAST(N'2019-02-21T20:47:35.557' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (22, 3, 1, CAST(N'2019-02-21T20:56:43.083' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (23, 3, 1, CAST(N'2019-02-22T09:04:30.117' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (24, 3, 1, CAST(N'2019-02-22T09:46:37.977' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (25, 3, 1, CAST(N'2019-02-22T09:48:26.390' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (26, 3, 1, CAST(N'2019-02-22T09:49:58.123' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (27, 3, 1, CAST(N'2019-02-22T09:50:43.750' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (28, 3, 1, CAST(N'2019-02-22T09:55:28.193' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (29, 3, 1, CAST(N'2019-02-22T09:58:19.820' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (30, 3, 1, CAST(N'2019-02-22T09:59:43.707' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (31, 3, 1, CAST(N'2019-02-22T10:01:44.117' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (32, 3, 1, CAST(N'2019-02-22T10:04:25.123' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (33, 3, 1, CAST(N'2019-02-22T10:06:15.170' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (34, 3, 1, CAST(N'2019-02-22T10:33:15.557' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (35, 3, 1, CAST(N'2019-02-22T10:33:29.950' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (36, 3, 1, CAST(N'2019-02-22T10:39:55.420' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (37, 3, 1, CAST(N'2019-02-22T10:39:59.647' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (38, 3, 1, CAST(N'2019-02-22T10:55:37.393' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (39, 3, 1, CAST(N'2019-02-22T14:31:29.990' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (40, 3, 1, CAST(N'2019-02-22T14:31:53.997' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (41, 3, 1, CAST(N'2019-02-22T14:32:05.990' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (42, 3, 1, CAST(N'2019-02-22T19:19:42.433' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (43, 3, 1, CAST(N'2019-02-22T19:20:12.623' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (44, 3, 1, CAST(N'2019-02-22T19:21:24.997' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (45, 3, 1, CAST(N'2019-02-22T19:21:44.057' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (46, 3, 1, CAST(N'2019-02-22T19:22:20.063' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (47, 3, 1, CAST(N'2019-02-22T19:23:44.013' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (48, 3, 1, CAST(N'2019-02-22T19:54:54.160' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (49, 3, 1, CAST(N'2019-02-22T20:19:41.857' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (50, 3, 1, CAST(N'2019-02-22T20:47:19.543' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (51, 3, 1, CAST(N'2019-02-22T20:53:54.030' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (52, 3, 1, CAST(N'2019-02-22T21:15:20.230' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (53, 3, 1, CAST(N'2019-02-22T22:28:06.330' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (54, 3, 1, CAST(N'2019-02-23T08:11:06.777' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (55, 3, 1, CAST(N'2019-02-23T08:16:32.507' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (56, 3, 1, CAST(N'2019-02-23T08:19:53.367' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (57, 3, 1, CAST(N'2019-02-23T08:23:22.887' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (58, 3, 1, CAST(N'2019-02-23T08:27:47.690' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (59, 3, 1, CAST(N'2019-02-23T08:35:43.347' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (60, 3, 1, CAST(N'2019-02-23T08:37:20.380' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (61, 3, 1, CAST(N'2019-02-23T08:38:20.523' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (62, 3, 1, CAST(N'2019-02-23T08:39:46.373' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (63, 3, 1, CAST(N'2019-02-23T08:40:43.660' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (64, 3, 1, CAST(N'2019-02-23T08:42:12.017' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (65, 3, 1, CAST(N'2019-02-23T08:43:46.353' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (66, 3, 1, CAST(N'2019-02-23T08:46:02.087' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (67, 3, 1, CAST(N'2019-02-23T08:47:37.040' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (68, 3, 1, CAST(N'2019-02-23T08:49:29.263' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (69, 3, 1, CAST(N'2019-02-23T08:52:11.523' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (70, 3, 1, CAST(N'2019-02-23T08:53:40.733' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (71, 3, 1, CAST(N'2019-02-23T08:55:16.040' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (72, 3, 1, CAST(N'2019-02-23T08:56:50.790' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (73, 3, 1, CAST(N'2019-02-23T09:04:24.633' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (74, 3, 1, CAST(N'2019-02-23T09:21:50.420' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (75, 3, 1, CAST(N'2019-02-23T09:36:15.863' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (76, 3, 1, CAST(N'2019-02-23T09:38:54.643' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (77, 3, 1, CAST(N'2019-02-23T09:39:18.330' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (78, 3, 1, CAST(N'2019-02-23T09:39:51.680' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (79, 3, 1, CAST(N'2019-02-23T09:40:43.480' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (80, 3, 1, CAST(N'2019-02-23T09:40:55.260' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (81, 3, 1, CAST(N'2019-02-23T09:41:31.100' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (82, 3, 1, CAST(N'2019-02-23T09:42:02.063' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (83, 3, 1, CAST(N'2019-02-23T09:42:05.677' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (84, 3, 1, CAST(N'2019-02-23T09:42:27.667' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (85, 3, 1, CAST(N'2019-02-23T09:43:18.203' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (86, 3, 1, CAST(N'2019-02-23T09:53:50.427' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (87, 3, 1, CAST(N'2019-02-23T09:56:07.763' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (88, 3, 1, CAST(N'2019-02-23T09:57:33.517' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (89, 3, 1, CAST(N'2019-02-23T09:58:17.273' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (90, 3, 1, CAST(N'2019-02-23T15:08:54.043' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (91, 3, 1, CAST(N'2019-02-23T15:12:06.290' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (92, 3, 1, CAST(N'2019-02-23T15:22:31.630' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (93, 3, 1, CAST(N'2019-02-23T15:31:28.223' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (94, 3, 1, CAST(N'2019-02-23T15:31:45.613' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (95, 3, 1, CAST(N'2019-02-23T15:37:16.717' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (96, 3, 1, CAST(N'2019-02-23T15:37:25.390' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (97, 3, 1, CAST(N'2019-02-23T15:37:45.700' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (98, 3, 1, CAST(N'2019-02-23T15:41:41.647' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (99, 3, 1, CAST(N'2019-02-23T15:43:22.680' AS DateTime), 1)
GO
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (100, 3, 1, CAST(N'2019-02-23T15:53:06.113' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (101, 3, 1, CAST(N'2019-02-23T15:53:27.073' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (102, 3, 1, CAST(N'2019-02-23T15:53:58.290' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (103, 3, 1, CAST(N'2019-02-23T15:57:24.933' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (104, 3, 1, CAST(N'2019-02-23T15:58:54.503' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (105, 3, 1, CAST(N'2019-02-23T16:01:05.603' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (106, 3, 1, CAST(N'2019-02-23T16:01:23.590' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (107, 3, 1, CAST(N'2019-02-23T16:03:30.753' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (108, 3, 1, CAST(N'2019-02-23T16:03:42.110' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (109, 3, 1, CAST(N'2019-02-23T16:09:35.610' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (110, 3, 1, CAST(N'2019-02-23T16:12:36.327' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (111, 3, 1, CAST(N'2019-02-23T16:13:54.803' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (112, 3, 1, CAST(N'2019-02-23T16:15:25.837' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (113, 3, 1, CAST(N'2019-02-23T16:18:56.190' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (114, 3, 1, CAST(N'2019-02-23T16:22:09.937' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (115, 3, 1, CAST(N'2019-02-23T16:23:51.967' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (116, 3, 1, CAST(N'2019-02-23T16:25:17.657' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (117, 3, 1, CAST(N'2019-02-23T16:27:09.290' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (118, 3, 1, CAST(N'2019-02-23T16:27:35.667' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (119, 3, 1, CAST(N'2019-02-23T16:27:48.553' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (120, 3, 1, CAST(N'2019-02-23T16:27:53.277' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (121, 3, 1, CAST(N'2019-02-23T16:28:10.157' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (122, 3, 1, CAST(N'2019-02-23T16:28:20.560' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (123, 3, 1, CAST(N'2019-02-23T16:36:40.177' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (124, 3, 1, CAST(N'2019-02-23T16:41:13.443' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (125, 3, 1, CAST(N'2019-02-23T16:41:44.700' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (126, 3, 1, CAST(N'2019-02-23T16:42:02.157' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (127, 3, 1, CAST(N'2019-02-23T16:42:18.657' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (128, 3, 1, CAST(N'2019-02-23T16:42:40.820' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (129, 3, 1, CAST(N'2019-02-23T16:42:48.757' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (130, 3, 1, CAST(N'2019-02-23T16:50:41.387' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (131, 3, 1, CAST(N'2019-02-23T16:54:21.477' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (132, 3, 1, CAST(N'2019-02-23T16:56:27.963' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (133, 3, 1, CAST(N'2019-02-23T16:57:13.140' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (134, 3, 1, CAST(N'2019-02-23T16:57:23.073' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (135, 3, 1, CAST(N'2019-02-23T17:00:30.727' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (136, 3, 1, CAST(N'2019-02-23T17:00:44.143' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (137, 3, 1, CAST(N'2019-02-23T17:04:48.013' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (138, 3, 1, CAST(N'2019-02-23T17:04:56.873' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (139, 3, 1, CAST(N'2019-02-23T17:05:16.530' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (140, 3, 1, CAST(N'2019-02-23T17:05:22.193' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (141, 3, 1, CAST(N'2019-02-23T17:05:27.287' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (142, 3, 1, CAST(N'2019-02-23T17:05:38.097' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (143, 3, 1, CAST(N'2019-02-23T17:05:59.373' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (144, 3, 1, CAST(N'2019-02-23T17:06:51.710' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (145, 3, 1, CAST(N'2019-02-23T17:12:45.007' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (146, 3, 1, CAST(N'2019-02-24T10:50:24.370' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (147, 3, 1, CAST(N'2019-02-24T16:35:42.873' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (148, 3, 1, CAST(N'2019-02-24T16:37:22.517' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (149, 3, 1, CAST(N'2019-02-24T16:38:25.207' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (150, 3, 1, CAST(N'2019-03-16T19:32:35.437' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (151, 3, 1, CAST(N'2019-03-16T19:34:52.823' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (152, 3, 1, CAST(N'2019-03-16T19:52:25.337' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (153, 3, 1, CAST(N'2019-03-16T19:53:33.373' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (154, 3, 1, CAST(N'2019-03-16T19:53:43.997' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (155, 3, 1, CAST(N'2019-03-16T19:53:51.413' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (156, 3, 1, CAST(N'2019-03-16T19:54:34.387' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (157, 3, 1, CAST(N'2019-03-16T19:56:39.350' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (158, 3, 1, CAST(N'2019-03-16T19:56:54.053' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (159, 3, 1, CAST(N'2019-03-16T19:57:22.563' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (160, 3, 1, CAST(N'2019-03-16T19:58:55.387' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (161, 3, 1, CAST(N'2019-03-16T19:59:19.503' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (162, 3, 1, CAST(N'2019-03-16T19:59:28.693' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (163, 3, 1, CAST(N'2019-04-02T08:53:03.487' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (164, 3, 1, CAST(N'2019-04-02T08:54:17.860' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (165, 3, 1, CAST(N'2019-04-10T19:20:45.953' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (166, 3, 1, CAST(N'2019-04-10T19:22:04.783' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (167, 3, 1, CAST(N'2019-04-10T19:37:46.817' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (168, 3, 1, CAST(N'2019-04-10T19:40:36.703' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (169, 3, 1, CAST(N'2019-04-10T19:48:24.510' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (170, 3, 1, CAST(N'2019-04-10T20:33:31.997' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (171, 3, 1, CAST(N'2019-04-10T21:49:52.503' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (172, 3, 1, CAST(N'2019-04-11T20:26:24.590' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (173, 3, 1, CAST(N'2019-04-17T17:29:16.720' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[EditingHistory] OFF
SET IDENTITY_INSERT [dbo].[Program] ON 

INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (46, N'Tiếp bước đến trường', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (47, N'CM Nông thôn AC', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (48, N'CM Giáo dục và đào tạo', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (49, N'CM quốc phòng toàn dân', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (50, N'CD Vì an ninh tổ quốc', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (51, N'CĐ Doanh nghiệp và Doanh nhân AG', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (52, N'CM Cải cách hành chính', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (53, N'CM Pháp luật và chính sách', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (54, N'CM Tài nguyên và Môi trường', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (55, N'CM Sức khỏe và Cuộc sống', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (56, N'CĐ An Giang XD nông thôn mới', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (57, N'THTT Nuôi dưỡng & BV cây trồng', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (58, N'CM Bảo hiểm XH - Ngôi nhà chung', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (59, N'Hộp thư Bạn xem Đài', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (60, N'CM Vì chủ quyền AN biên giới', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (61, N'Mái ấm cho người nghèo', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (62, N'Tiết mục hiểu đúng', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (63, N'Giai điệu VPOP', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (64, N'Top 5 on ATV', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (65, N'Ca cổ theo yêu cầu', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (66, N'M4U', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (67, N'Địa chỉ An Giang', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (68, N'CĐ Công nghệ TT và Truyền thông', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (69, N'Trải nghiệm cuối tuần', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (70, N'CĐ Dân vận khéo', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (71, N'CĐ học tập và LT TGĐĐ HCM', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (72, N'Món ngon cuối tuần', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (73, N'Thể thao trong tuần', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (74, N'Văn nghệ An Giang', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (75, N'CM Nét đẹp giữa đời thường', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (76, N'CM Chuyện làng quê', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (77, N'Tiếng hát học đường', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (78, N'CM Gia đình và Cuộc sống', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (79, N'CM chuyện làng quê', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (80, N'Tiếng hát học đường', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (81, N'Tiếng hát học đường', 0, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (82, N'Chương trình cố định', 15, N'PCT', 1, 1)
SET IDENTITY_INSERT [dbo].[Program] OFF
SET IDENTITY_INSERT [dbo].[ProgramType] ON 

INSERT [dbo].[ProgramType] ([ID], [Name]) VALUES (1, N'Cố định')
INSERT [dbo].[ProgramType] ([ID], [Name]) VALUES (2, N'Chèn')
SET IDENTITY_INSERT [dbo].[ProgramType] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Editor')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (16, N'Default', 22, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (17, N'Default', 23, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (18, N'Default', 24, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (19, N'Default', 25, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (20, N'Default', 26, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (21, N'Default', 27, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (22, N'Default', 28, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (23, N'Default', 29, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (24, N'Default', 30, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (25, N'Default', 31, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (26, N'Default', 32, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (27, N'Default', 33, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (28, N'Default', 34, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (29, N'Default', 35, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (30, N'Default', 36, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (31, N'Default', 37, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (32, N'Default', 38, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (33, N'Default', 39, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (34, N'Default', 40, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (35, N'Default', 41, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (36, N'Default', 42, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (37, N'Default', 43, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (38, N'Default', 44, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (39, N'Default', 45, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (40, N'Default', 46, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (41, N'Default', 47, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (42, N'Default', 48, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (43, N'Default', 49, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (44, N'Default', 50, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (45, N'Default', 51, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (46, N'Default', 52, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (47, N'Default', 53, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (48, N'Default', 54, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (49, N'Default', 55, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (50, N'Default', 56, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (51, N'Default', 57, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (52, N'Default', 58, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (53, N'Default', 59, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (54, N'Default', 60, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (55, N'Default', 61, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (56, N'Default', 62, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (57, N'Default', 63, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (58, N'Default', 64, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (59, N'Default', 65, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (60, N'Default', 66, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (61, N'Default', 67, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (62, N'Default', 68, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (63, N'Default', 69, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (64, N'Default', 70, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (65, N'Default', 71, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (66, N'Default', 72, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (67, N'Default', 73, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (68, N'Default', 74, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (69, N'Default', 75, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (70, N'Default', 76, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (71, N'Default', 77, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (72, N'Default', 78, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (73, N'Default', 79, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (74, N'Default', 80, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (75, N'Default', 81, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (76, N'Default', 82, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (77, N'Default', 83, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (78, N'Default', 84, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (79, N'Default', 85, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (80, N'Default', 86, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (81, N'Default', 87, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (82, N'Default', 88, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (83, N'Default', 89, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (84, N'Default', 90, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (85, N'Default', 91, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (86, N'Default', 92, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (87, N'Default', 93, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (88, N'Default', 94, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (89, N'Default', 95, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (90, N'Default', 96, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (91, N'Default', 97, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (92, N'Default', 98, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (93, N'Default', 99, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (94, N'Default', 100, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (95, N'Default', 101, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (96, N'Default', 102, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (97, N'Default', 103, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (98, N'Default', 104, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (99, N'Default', 105, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (100, N'Default', 106, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (101, N'Default', 107, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (102, N'Default', 108, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (103, N'Default', 109, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (104, N'Default', 110, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (105, N'Default', 111, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (106, N'Default', 112, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (107, N'Default', 113, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (108, N'Default', 114, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (109, N'Default', 115, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (110, N'Default', 116, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (111, N'Default', 117, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (112, N'Default', 118, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (113, N'Default', 119, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (114, N'Default', 120, 1)
GO
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (115, N'Default', 121, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (116, N'Default', 122, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (117, N'Default', 123, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (118, N'Default', 124, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (119, N'Default', 125, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (120, N'Default', 126, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (121, N'Default', 127, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (122, N'Default', 128, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (123, N'Default', 129, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (124, N'Default', 130, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (125, N'Default', 131, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (126, N'Default', 132, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (127, N'Default', 133, 1)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
SET IDENTITY_INSERT [dbo].[ScheduleDetail] ON 

INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (67, 50, 0, N'Hello there', N'', 30, NULL, 0, 1, 107, N'CD Vì an ninh tổ quốc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (68, 50, 1, N'Vì một tương lai tươi sáng', N'', 50, NULL, 0, 1, 107, N'CD Vì an ninh tổ quốc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (69, 50, 0, N'Hello there', N'', 30, NULL, 0, 1, 114, N'CD Vì an ninh tổ quốc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (70, 50, 1, N'Vì một tương lai tươi sáng', N'', 50, NULL, 0, 1, 114, N'CD Vì an ninh tổ quốc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (71, 50, 0, N'Hello there', N'', 30, NULL, 0, 1, 121, N'CD Vì an ninh tổ quốc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (72, 50, 1, N'Vì một tương lai tươi sáng', N'', 50, NULL, 0, 1, 121, N'CD Vì an ninh tổ quốc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (73, 50, 0, NULL, N'', 0, NULL, 0, 1, 122, N'CD Vì an ninh tổ quốc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (74, 82, 1, NULL, N'PCT', 15, NULL, 0, 1, 122, N'Chương trình cố định')
SET IDENTITY_INSERT [dbo].[ScheduleDetail] OFF
SET IDENTITY_INSERT [dbo].[ScheduleTemplate] ON 

INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (1, N'Đạt', NULL, 1, 1)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (2, N'Đạt', NULL, 1, 2)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (3, N'Đạt', NULL, 1, 3)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (4, N'Đạt', NULL, 1, 4)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (5, N'Đạt', NULL, 1, 5)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (6, N'Đạt', NULL, 1, 6)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (7, N'Đạt', NULL, 1, 7)
SET IDENTITY_INSERT [dbo].[ScheduleTemplate] OFF
SET IDENTITY_INSERT [dbo].[ScheduleTemplateDetail] ON 

INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (32, 50, 1, 0, 0, 1, N'CD Vì an ninh tổ quốc', N'Hello there', N'', 30, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (33, 50, 1, 1, 0, 1, N'CD Vì an ninh tổ quốc', N'Vì một tương lai tươi sáng', N'', 50, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (34, 50, 2, 0, 0, 1, N'CD Vì an ninh tổ quốc', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (35, 82, 2, 1, 0, 1, N'Chương trình cố định', NULL, N'PCT', 15, NULL)
SET IDENTITY_INSERT [dbo].[ScheduleTemplateDetail] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (1, NULL, N'Nguyen Trung Tin', N'01234567899', NULL, N'tin@gmail.com', N'Editor01', N'E10ADC3949BA59ABBE56E057F20F883E', 1, N'123456', 1, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (3, NULL, N'Admin', NULL, NULL, NULL, N'Admin', N'E10ADC3949BA59ABBE56E057F20F883E', 1, N'123456', 2, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (5, NULL, N'Nguyen Tin', NULL, NULL, NULL, N'Editor02', N'4297F44B13955235245B2497399D7A93                                                                                                                                                                        ', 1, N'123456', 1, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (7, NULL, N'Tin Tin', NULL, NULL, NULL, N'Editor03', N'E10ADC3949BA59ABBE56E057F20F883E', 0, N'123456', 1, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Week] ON 

INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (1, CAST(N'2019-02-07T00:00:00.000' AS DateTime), CAST(N'2019-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (4, CAST(N'2019-04-08T00:00:00.000' AS DateTime), CAST(N'2019-04-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (5, CAST(N'2019-04-15T00:00:00.000' AS DateTime), CAST(N'2019-04-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (6, CAST(N'2019-04-01T00:00:00.000' AS DateTime), CAST(N'2019-04-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (7, CAST(N'2018-04-09T00:00:00.000' AS DateTime), CAST(N'2018-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (8, CAST(N'2020-04-06T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (9, CAST(N'2019-04-22T00:00:00.000' AS DateTime), CAST(N'2019-04-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (10, CAST(N'2019-04-29T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (11, CAST(N'2019-05-06T00:00:00.000' AS DateTime), CAST(N'2019-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (12, CAST(N'2019-05-13T00:00:00.000' AS DateTime), CAST(N'2019-05-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (13, CAST(N'2018-05-14T00:00:00.000' AS DateTime), CAST(N'2018-05-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (14, CAST(N'2019-05-20T00:00:00.000' AS DateTime), CAST(N'2019-05-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (15, CAST(N'2019-05-27T00:00:00.000' AS DateTime), CAST(N'2019-06-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (16, CAST(N'2019-06-03T00:00:00.000' AS DateTime), CAST(N'2019-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (17, CAST(N'2019-06-10T00:00:00.000' AS DateTime), CAST(N'2019-06-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (18, CAST(N'2019-06-17T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (19, CAST(N'2019-06-24T00:00:00.000' AS DateTime), CAST(N'2019-06-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Week] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User]    Script Date: 18/04/2019 5:17:51 SA ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [IX_User] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Date]  WITH CHECK ADD  CONSTRAINT [FK_Date_Week] FOREIGN KEY([WeekID])
REFERENCES [dbo].[Week] ([ID])
GO
ALTER TABLE [dbo].[Date] CHECK CONSTRAINT [FK_Date_Week]
GO
ALTER TABLE [dbo].[EditingHistory]  WITH CHECK ADD  CONSTRAINT [FK_EditingHistory_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[EditingHistory] CHECK CONSTRAINT [FK_EditingHistory_User]
GO
ALTER TABLE [dbo].[EditingHistory]  WITH CHECK ADD  CONSTRAINT [FK_EditingHistory_Week] FOREIGN KEY([WeekID])
REFERENCES [dbo].[Week] ([ID])
GO
ALTER TABLE [dbo].[EditingHistory] CHECK CONSTRAINT [FK_EditingHistory_Week]
GO
ALTER TABLE [dbo].[MailingHistory]  WITH CHECK ADD  CONSTRAINT [FK_MailingHistory_Date] FOREIGN KEY([DateID])
REFERENCES [dbo].[Date] ([ID])
GO
ALTER TABLE [dbo].[MailingHistory] CHECK CONSTRAINT [FK_MailingHistory_Date]
GO
ALTER TABLE [dbo].[MailingHistory]  WITH CHECK ADD  CONSTRAINT [FK_MailingHistory_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[MailingHistory] CHECK CONSTRAINT [FK_MailingHistory_Department]
GO
ALTER TABLE [dbo].[MailingHistory]  WITH CHECK ADD  CONSTRAINT [FK_MailingHistory_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[MailingHistory] CHECK CONSTRAINT [FK_MailingHistory_User]
GO
ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [FK_Program_ProgramType] FOREIGN KEY([ProgramTypeID])
REFERENCES [dbo].[ProgramType] ([ID])
GO
ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [FK_Program_ProgramType]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedules_Date] FOREIGN KEY([DateID])
REFERENCES [dbo].[Date] ([ID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedules_Date]
GO
ALTER TABLE [dbo].[ScheduleDetail]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleDetails_Program] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ID])
GO
ALTER TABLE [dbo].[ScheduleDetail] CHECK CONSTRAINT [FK_ScheduleDetails_Program]
GO
ALTER TABLE [dbo].[ScheduleDetail]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleDetails_Schedules] FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ID])
GO
ALTER TABLE [dbo].[ScheduleDetail] CHECK CONSTRAINT [FK_ScheduleDetails_Schedules]
GO
ALTER TABLE [dbo].[ScheduleTemplate]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleTemplates_Date] FOREIGN KEY([DateID])
REFERENCES [dbo].[Date] ([ID])
GO
ALTER TABLE [dbo].[ScheduleTemplate] CHECK CONSTRAINT [FK_ScheduleTemplates_Date]
GO
ALTER TABLE [dbo].[ScheduleTemplateDetail]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleTemplate_Program] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ID])
GO
ALTER TABLE [dbo].[ScheduleTemplateDetail] CHECK CONSTRAINT [FK_ScheduleTemplate_Program]
GO
ALTER TABLE [dbo].[ScheduleTemplateDetail]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleTemplateDetails_ScheduleTemplates] FOREIGN KEY([ScheduleTemplateID])
REFERENCES [dbo].[ScheduleTemplate] ([ID])
GO
ALTER TABLE [dbo].[ScheduleTemplateDetail] CHECK CONSTRAINT [FK_ScheduleTemplateDetails_ScheduleTemplates]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [ATVDatabase] SET  READ_WRITE 
GO
