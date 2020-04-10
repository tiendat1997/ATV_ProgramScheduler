USE [master]
GO
/****** Object:  Database [ATVDatabase]    Script Date: 5/3/2019 9:10:00 PM ******/
CREATE DATABASE [ATVDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATVDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ATVDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ATVDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ATVDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
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
ALTER DATABASE [ATVDatabase] SET QUERY_STORE = OFF
GO
USE [ATVDatabase]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 5/3/2019 9:10:00 PM ******/
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
	[InChargeUserID] [int] NULL,
	[MorningInChargeUserID] [int] NULL,
	[NoonInChargeUserID] [int] NULL,
	[AfternoonInChargeUserID] [int] NULL,
	[DawnInChargeUserID] [int] NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[EditingHistory]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[FramePlan]    Script Date: 5/3/2019 9:10:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FramePlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_FramePlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FramePlanDetail]    Script Date: 5/3/2019 9:10:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FramePlanDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramID] [int] NOT NULL,
	[StartTime] [time](7) NULL,
	[Contents] [nvarchar](max) NULL,
	[PerformBy] [nvarchar](max) NULL,
	[Duration] [float] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[FramePlanID] [int] NULL,
	[ProgramName] [nvarchar](max) NULL,
 CONSTRAINT [PK_FramePlaneDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailingHistory]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[Program]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[ProgramSchedule]    Script Date: 5/3/2019 9:10:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramSchedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramID] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ProgramSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramScheduleDetail]    Script Date: 5/3/2019 9:10:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramScheduleDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramScheduleID] [int] NOT NULL,
	[DateOfWeek] [int] NOT NULL,
	[TimeOfDate] [time](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ProgramScheduleDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramType]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[ScheduleDetail]    Script Date: 5/3/2019 9:10:00 PM ******/
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
	[StartTime] [time](7) NULL,
	[IsFixed] [bit] NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduleTemplate]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[ScheduleTemplateDetail]    Script Date: 5/3/2019 9:10:00 PM ******/
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
	[StartTime] [time](7) NULL,
 CONSTRAINT [PK_ScheduleTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/3/2019 9:10:00 PM ******/
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
/****** Object:  Table [dbo].[Week]    Script Date: 5/3/2019 9:10:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Week](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[InChargeUserID] [int] NULL,
 CONSTRAINT [PK_Week] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Date] ON 

INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (169, 25, 1, CAST(N'2019-04-22T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (170, 25, 2, CAST(N'2019-04-23T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (171, 25, 3, CAST(N'2019-04-24T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (172, 25, 4, CAST(N'2019-04-25T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (173, 25, 5, CAST(N'2019-04-26T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (174, 25, 6, CAST(N'2019-04-27T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (175, 25, 7, CAST(N'2019-04-28T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (176, 26, 1, CAST(N'2019-04-29T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (177, 26, 2, CAST(N'2019-04-30T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (178, 26, 3, CAST(N'2019-05-01T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (179, 26, 4, CAST(N'2019-05-02T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (180, 26, 5, CAST(N'2019-05-03T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (181, 26, 6, CAST(N'2019-05-04T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (182, 26, 7, CAST(N'2019-05-05T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (183, 27, 1, CAST(N'2019-04-15T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (184, 27, 2, CAST(N'2019-04-16T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (185, 27, 3, CAST(N'2019-04-17T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (186, 27, 4, CAST(N'2019-04-18T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (187, 27, 5, CAST(N'2019-04-19T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (188, 27, 6, CAST(N'2019-04-20T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (189, 27, 7, CAST(N'2019-04-21T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (190, 28, 1, CAST(N'2019-04-08T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (191, 28, 2, CAST(N'2019-04-09T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (192, 28, 3, CAST(N'2019-04-10T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (193, 28, 4, CAST(N'2019-04-11T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (194, 28, 5, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (195, 28, 6, CAST(N'2019-04-13T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (196, 28, 7, CAST(N'2019-04-14T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (197, 29, 1, CAST(N'2019-04-01T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (198, 29, 2, CAST(N'2019-04-02T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (199, 29, 3, CAST(N'2019-04-03T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (200, 29, 4, CAST(N'2019-04-04T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (201, 29, 5, CAST(N'2019-04-05T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (202, 29, 6, CAST(N'2019-04-06T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (203, 29, 7, CAST(N'2019-04-07T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (204, 30, 1, CAST(N'2019-03-25T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (205, 30, 2, CAST(N'2019-03-26T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (206, 30, 3, CAST(N'2019-03-27T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (207, 30, 4, CAST(N'2019-03-28T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (208, 30, 5, CAST(N'2019-03-29T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (209, 30, 6, CAST(N'2019-03-30T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (210, 30, 7, CAST(N'2019-03-31T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (211, 31, 1, CAST(N'2019-03-18T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (212, 31, 2, CAST(N'2019-03-19T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (213, 31, 3, CAST(N'2019-03-20T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (214, 31, 4, CAST(N'2019-03-21T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (215, 31, 5, CAST(N'2019-03-22T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (216, 31, 6, CAST(N'2019-03-23T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (217, 31, 7, CAST(N'2019-03-24T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (218, 32, 1, CAST(N'2019-05-06T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (219, 32, 2, CAST(N'2019-05-07T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (220, 32, 3, CAST(N'2019-05-08T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (221, 32, 4, CAST(N'2019-05-09T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (222, 32, 5, CAST(N'2019-05-10T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (223, 32, 6, CAST(N'2019-05-11T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt], [InChargeUserID], [MorningInChargeUserID], [NoonInChargeUserID], [AfternoonInChargeUserID], [DawnInChargeUserID]) VALUES (224, 32, 7, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 5, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Date] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([ID], [Name], [Email], [IsActive]) VALUES (1, N'Phòng kế toán', N'ketoan@mail.com', 1)
INSERT [dbo].[Department] ([ID], [Name], [Email], [IsActive]) VALUES (2, N'Phòng kế hoạch', N'kehoach@mail.com', 1)
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[EditingHistory] ON 

INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (178, 3, 25, CAST(N'2019-04-26T21:54:06.840' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (179, 3, 25, CAST(N'2019-04-27T08:50:20.287' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (180, 3, 25, CAST(N'2019-04-27T08:58:42.987' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (181, 3, 25, CAST(N'2019-04-27T12:08:31.203' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (182, 3, 25, CAST(N'2019-04-27T12:20:38.977' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (183, 3, 25, CAST(N'2019-04-27T12:30:05.487' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (184, 3, 26, CAST(N'2019-04-27T12:30:19.897' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (185, 3, 26, CAST(N'2019-04-27T12:53:43.543' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (186, 3, 26, CAST(N'2019-04-27T13:02:04.367' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (187, 3, 26, CAST(N'2019-04-27T21:32:51.107' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (188, 3, 26, CAST(N'2019-04-27T21:40:59.747' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (189, 3, 26, CAST(N'2019-04-27T21:42:43.893' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (190, 3, 26, CAST(N'2019-04-27T21:51:05.780' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (191, 3, 26, CAST(N'2019-04-27T21:55:29.427' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (192, 3, 26, CAST(N'2019-04-27T22:08:32.977' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (193, 3, 26, CAST(N'2019-04-28T05:01:49.080' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (194, 3, 26, CAST(N'2019-04-28T05:09:05.187' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (195, 3, 26, CAST(N'2019-04-28T05:09:18.590' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (196, 3, 26, CAST(N'2019-04-28T05:09:33.177' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (197, 3, 25, CAST(N'2019-04-28T05:12:14.183' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (198, 3, 26, CAST(N'2019-04-28T05:12:42.097' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (199, 3, 26, CAST(N'2019-04-29T09:30:34.823' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (200, 3, 26, CAST(N'2019-04-29T10:12:41.823' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (201, 3, 26, CAST(N'2019-04-29T10:14:49.563' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (202, 3, 26, CAST(N'2019-04-29T10:15:36.417' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (203, 3, 26, CAST(N'2019-04-29T10:16:12.903' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (204, 3, 26, CAST(N'2019-04-29T10:25:00.830' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (205, 3, 26, CAST(N'2019-04-29T10:32:26.183' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (206, 3, 26, CAST(N'2019-04-29T10:36:23.653' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (207, 3, 26, CAST(N'2019-04-29T10:41:16.637' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (208, 3, 26, CAST(N'2019-04-29T10:45:26.680' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (209, 3, 26, CAST(N'2019-04-29T11:04:53.430' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (210, 3, 26, CAST(N'2019-04-30T21:42:08.800' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (211, 3, 26, CAST(N'2019-04-30T21:51:16.587' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (212, 3, 26, CAST(N'2019-04-30T21:51:58.760' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (213, 3, 26, CAST(N'2019-04-30T21:57:43.107' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (214, 3, 26, CAST(N'2019-05-01T18:25:56.443' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (215, 3, 26, CAST(N'2019-05-01T18:27:56.100' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (216, 3, 26, CAST(N'2019-05-01T18:28:59.617' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (217, 3, 26, CAST(N'2019-05-01T18:29:03.403' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (218, 3, 26, CAST(N'2019-05-01T18:30:42.277' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (219, 3, 26, CAST(N'2019-05-01T18:31:31.990' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (220, 3, 26, CAST(N'2019-05-01T18:31:35.327' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (221, 3, 26, CAST(N'2019-05-01T20:58:51.937' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (222, 3, 26, CAST(N'2019-05-01T21:52:05.980' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (223, 3, 26, CAST(N'2019-05-01T21:52:09.060' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (224, 3, 26, CAST(N'2019-05-01T21:52:45.223' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (225, 3, 26, CAST(N'2019-05-01T21:57:57.917' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (226, 3, 26, CAST(N'2019-05-01T22:00:16.743' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (227, 3, 26, CAST(N'2019-05-01T22:04:51.213' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (228, 3, 26, CAST(N'2019-05-01T22:10:06.387' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (229, 3, 26, CAST(N'2019-05-01T22:10:21.020' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (230, 3, 26, CAST(N'2019-05-01T22:12:05.237' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (231, 3, 26, CAST(N'2019-05-01T22:12:53.547' AS DateTime), 1)
INSERT [dbo].[EditingHistory] ([ID], [UserID], [WeekID], [Time], [IsFinished]) VALUES (232, 3, 26, CAST(N'2019-05-01T22:13:36.113' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[EditingHistory] OFF
SET IDENTITY_INSERT [dbo].[Program] ON 

INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (83, N'Tiếp bước đến trường', 15, N'PCT', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (84, N'CM Nông thôn AG', 0, N'PCT', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (85, N'CM Giáo dục và đào tạo', 0, N'PCT', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (86, N'CM Quốc phòng toàn dân', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (87, N'CM Vì an ninh Tổ Quốc', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (88, N'CĐ Doanh nghiệp & Doanh nhân AG', 0, N'PCT', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (89, N'CM Cải cách hành chính', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (90, N'CM Pháp luật & Chính sách', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (91, N'CM Tài nguyên & Môi trường', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (92, N'CM Sức khỏe & Cuộc sống', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (93, N'CĐ An Giang XD nông thôn mới', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (94, N'THTT Nuôi dưỡng & BV cây trồng', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (95, N'CM Bảo hiểm XH-Ngôi nhà chung', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (96, N'Hộp thư Bạn xem Đài', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (97, N'CM Vì chủ quyền AN biên giới', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (98, N'Mái ấm cho người nghèo', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (99, N'Tiết mục hiểu đúng', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (100, N'Giai điệu VPOP', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (101, N'Top 5 on ATV', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (102, N'Ca cổ theo yêu cầu', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (103, N'M4U', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (104, N'Địa chỉ An Giang', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (105, N'CĐ Công nghệ TT & Truyền thông', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (106, N'Trải nghiệm cuối tuần', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (107, N'CĐ Dân vận khéo', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (108, N'CĐ Học tập & LT TGĐĐ HCM', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (109, N'Món ngon cuối tuần', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (110, N'Thể thao trong tuần', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (111, N'Văn nghệ An Giang', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (112, N'CM Nét đẹp giữa đời thường', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (113, N'CM Chuyện làng quê', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (114, N'Tiếng hát học đường', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (115, N'CM Gia đình & Cuộc sống', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (116, N'CM Văn hóa Xã hội', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (117, N'Thế giới tuần qua', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (118, N'Tiếng hát học đường', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (119, N'CM Gia đình & Cuộc sống', 0, N'', 1, 0)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (120, N'T''hế giới tuần qua', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (121, N'[dd-m -GIỚI THIỆU-(n)]', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (122, N'[dd-m -GIỚI THIỆU-(1)]', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (123, N'[dd-m -GIỚI THIỆU-(2)]', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (124, N'[dd-m -GIỚI THIỆU-(3)]', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (125, N'[dd-m -GIỚI THIỆU-(4)]', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (126, N'[dd-m -GIỚI THIỆU-(5)]', 0, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (127, N'ABC', 0, N'', 1, 0)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (128, N'Thể dục buổi sáng', 0, N'PCT', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (129, N'Ca nhạc', 17.57, N'PCG', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (130, N'Thông tin ngày mới', 30, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (131, N'Chương trình thiếu nhi', 23, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (132, N'TD 30/4 + Thong điệp quốc tế lao động', 1.02, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (133, N'*Quảng cáo trước phim sáng', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (134, N'Phim truyện Việt Nam', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (135, N'Quảng cáo giữa phim sáng', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (136, N'Quảng cáo cuối phim sáng', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (137, N'ATV 360 độ', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (138, N'GTP Biệt động Sài Gòn - tập 1 + Trailer vua đầu bếp miệt vườn (Lẩu mắm)', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (139, N'Biết để làm đúng', 15.54, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (140, N'Quảng cáo trước phim sáng (Đợt II)', 2.07, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (141, N'Quảng cáo giữa phim sáng ( Đợt II )', 5.07, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (142, N'Quảng cáo cuối phim sáng ( Đợt II )', 5.07, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (143, N'GTP Biệt động Sài Gòn - tập 1', 1.23, N'', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (144, N'GTP Nữ thần y 1', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (145, N'GTP', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (146, N'Trailer', 0, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (147, N'Phong cách âm nhạc', 30, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (148, N'Thế giới hoang dã', 6.28, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (149, N'Chen giờ', 2.02, N'PCT', 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (150, N'Thông tin cần biết', 5, N'PCT', 2, 1)
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

INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (163, N'Default', 169, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (164, N'Default', 170, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (165, N'Default', 171, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (166, N'Default', 172, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (167, N'Default', 173, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (168, N'Default', 174, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (169, N'Default', 175, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (170, N'Default', 176, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (171, N'Default', 177, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (172, N'Default', 178, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (173, N'Default', 179, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (174, N'Default', 180, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (175, N'Default', 181, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (176, N'Default', 182, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (177, N'Default', 183, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (178, N'Default', 184, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (179, N'Default', 185, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (180, N'Default', 186, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (181, N'Default', 187, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (182, N'Default', 188, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (183, N'Default', 189, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (184, N'Default', 190, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (185, N'Default', 191, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (186, N'Default', 192, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (187, N'Default', 193, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (188, N'Default', 194, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (189, N'Default', 195, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (190, N'Default', 196, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (191, N'Default', 197, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (192, N'Default', 198, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (193, N'Default', 199, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (194, N'Default', 200, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (195, N'Default', 201, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (196, N'Default', 202, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (197, N'Default', 203, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (198, N'Default', 204, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (199, N'Default', 205, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (200, N'Default', 206, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (201, N'Default', 207, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (202, N'Default', 208, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (203, N'Default', 209, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (204, N'Default', 210, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (205, N'Default', 211, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (206, N'Default', 212, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (207, N'Default', 213, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (208, N'Default', 214, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (209, N'Default', 215, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (210, N'Default', 216, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (211, N'Default', 217, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (212, N'Default', 218, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (213, N'Default', 219, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (214, N'Default', 220, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (215, N'Default', 221, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (216, N'Default', 222, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (217, N'Default', 223, 1)
INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (218, N'Default', 224, 1)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
SET IDENTITY_INSERT [dbo].[ScheduleDetail] ON 

INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (1, 83, 0, NULL, N'PCT', 15, NULL, 0, 0, 163, N'Tiếp bước đến trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (2, 85, 0, NULL, N'PCT', 0, NULL, 0, 0, 163, N'CM Giáo dục và đào tạo fasjfjasdkljf;lkasjd;fjas;ljf;lkasjflkjsalkfjas;ljdf;ljsda;lfjasldjflkjsaf;ljas;ljflksjadlkjfasld;jflasjdf;lj;asldjflkjsaldjflkjsdaljfsalkdjfljsad;lfj;asljfl', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (3, 121, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (n)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (4, 121, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (5, 121, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (6, 121, 1, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (7, 121, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (8, 121, 1, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (9, 122, 0, NULL, N'', 230, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (10, 123, 1, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (11, 124, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (12, 125, 3, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (13, 126, 4, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (14, 122, 0, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (15, 123, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (16, 124, 2, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (17, 125, 3, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (18, 126, 4, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (19, 122, 7, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (20, 123, 1, NULL, N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (21, 124, 2, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (22, 125, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (23, 126, 5, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (24, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (25, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (26, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (27, 86, 1, NULL, N'', 0, NULL, 0, 0, 175, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (28, 91, 0, NULL, N'', 0, NULL, 0, 0, 175, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (29, 91, 0, NULL, N'', 0, NULL, 0, 0, 175, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (30, 91, 0, NULL, N'', 0, NULL, 0, 0, 175, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (31, 123, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (32, 86, 3, NULL, N'', 0, NULL, 0, 0, 175, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (33, 86, 6, NULL, N'', 0, NULL, 0, 0, 175, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (34, 85, 4, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (35, 85, 5, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (36, 88, 1, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (37, 97, 2, NULL, N'', 0, NULL, 0, 0, 175, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (38, 97, 2, NULL, N'', 0, NULL, 0, 0, 175, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (39, 122, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (40, 123, 1, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (41, 124, 2, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (42, 125, 3, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (43, 126, 4, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (44, 122, 0, N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (45, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (46, 124, 2, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (47, 125, 3, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (48, 126, 4, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (49, 122, 0, N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 1, 1, 175, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (50, 123, 11, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, N'QuangCao\', 1, 1, 175, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (51, 124, 35, N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, N'QuangCao\', 1, 1, 175, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (52, 125, 36, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 1, 1, 175, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (53, 126, 37, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 1, 1, 175, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (54, 128, 1, NULL, N'PCT', 8.32, N'YG-7', 0, 1, 175, N'Thể dục buổi sáng', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (55, 129, 2, NULL, N'PCG', 17.57, N'CaNhac\27-4 file sua', 0, 1, 175, N'Ca nhạc', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (56, 132, 3, NULL, N'PCT', 1.02, NULL, 1, 1, 175, N'TD 30/4 + Thông điệp quốc tế lao động', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (57, 131, 5, N'Phim hoạt hình : Thế giới của Zou - Phần 1 - tập 7,8', N'', 23, N'ThieuNhi\', 1, 1, 175, N'Chương trình thiếu nhi', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (58, 133, 6, NULL, N'PCT', 0, NULL, 1, 1, 175, N'Quảng cáo trước phim sáng', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (59, 134, 7, N'Những đóa quân tử lan - tập 5, 6', N'PCT', 88.06, N'Phim\', 0, 1, 175, N'Phim truyện Việt Nam', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (60, 135, 8, NULL, N'PCT', 0, N'Phát khoảng 7h15', 1, 1, 175, N'Quảng cáo giữa phim sáng', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (61, 136, 9, NULL, N'PCT', 0, NULL, 0, 1, 175, N'Quảng cáo cuối phim sáng', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (62, 130, 4, NULL, N'PCT', 30, N'Giờ mốc', 1, 1, 175, N'Thông tin ngày mới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (63, 137, 10, NULL, N'PCT', 5, N'BBT', 1, 1, 175, N'ATV 360 độ', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (64, 96, 12, NULL, N'', 10, N'Phát lại thứ sáu: 26-4', 0, 1, 175, N'Chuyên mục Hộp thư Bạn xem Đài', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (65, 138, 13, NULL, N'PCT', 1.23, NULL, 1, 1, 175, N'GTP Biệt động Sài Gòn - tập 1 + Trailer vua đầu bếp miệt vườn (Lẩu mắm)', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (66, 139, 14, NULL, N'PCT', 15.54, N'BBT', 0, 1, 175, N'Biết để làm đúng', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (67, 140, 15, NULL, N'PCT', 2.07, NULL, 1, 1, 175, N'Quảng cáo trước phim sáng (Đợt II)', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (68, 134, 16, N'Biệt động Sài Gòn - tập 1', N'PCT', 79, NULL, 0, 1, 175, N'Phim truyện Việt Nam', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (69, 141, 17, N'Hiện chữ Mời xem tiếp CT [P.Q/c] Phát QC giữa khoảng 9g25', N'PCT', 5.07, NULL, 1, 1, 175, N'Quảng cáo giữa phim sáng ( Đợt II )', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (70, 142, 18, NULL, N'PCT', 5.07, NULL, 1, 1, 175, N'Quảng cáo cuối phim sáng ( Đợt II )', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (71, 143, 19, N'Biệt động Sài Gòn - tập 2', N'', 1.23, NULL, 1, 1, 175, N'GTP', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (72, 144, 20, N'Nữ thần y 1', N'PCT', 0, NULL, 1, 1, 175, N'GTP', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (73, 146, 21, N'Vận may hoa đào - tập 9,10', N'PCT', 0, NULL, 1, 1, 175, N'Trailer', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (74, 106, 22, NULL, N'P.PTL', 10, N'P.PTL', 0, 1, 175, N'Trải nghiệm cuối tuần', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (75, 146, 23, N'Phong cách âm nhạc', N'PCT', 5, NULL, 1, 1, 175, N'Trailer', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (76, 145, 24, N'Những đóa quân tử Lan 2 + TĐ 30/4', N'PCT', 0, NULL, 1, 1, 175, N'GTP', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (77, 117, 25, NULL, N'', 10, N'Vệ tinh', 0, 1, 175, N'Thế giới tuần qua', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (78, 145, 26, N'Câu chuyện tình yêu - tập 7,  Diên Hy công lược - tập 54', N'PCT', 5, NULL, 1, 1, 175, N'Trailer', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (79, 146, 27, N'Những đứa con biệt động Sài Gòn - tập 21 ', N'PCT', 0, NULL, 1, 1, 175, N'Trailer', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (80, 146, 28, N'Vua đầu bếp miệt vườn ( lẩu mắm ) - tập 21', N'PCT', 0, NULL, 1, 1, 175, N'Trailer', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (81, 147, 29, NULL, N'PCT', 30, N'Phát lại thứ sáu 24-4', 0, 1, 175, N'Phong cách âm nhạc', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (82, 115, 30, N'Xã văn hóa nông thôn mới Mỹ Hiệp, Chợ Mới', N'', 10, N'BBT\', 0, 1, 175, N'CM Gia đình & Cuộc sống', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (83, 137, 31, NULL, N'PCT', 5, N'BBT', 0, 1, 175, N'ATV 360 độ', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (84, 148, 32, NULL, N'PCT', 6.28, N'KhoaGiao\TGHD- 110SUA (6-28)', 1, 1, 175, N'Thế giới hoang dã', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (85, 149, 33, N'Thông điệp 30/4 + Nước sạch và vệ sinh môi trường', N'PCT', 2.02, NULL, 1, 1, 175, N'Chen giờ', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (86, 129, 34, NULL, N'PCT', 5, NULL, 0, 1, 175, N'Thông tin cần biết', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (87, 121, 0, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU - (n)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (88, 121, 0, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (89, 121, 0, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (90, 121, 1, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (91, 121, 0, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (92, 121, 1, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (93, 122, 0, NULL, N'', 230, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (94, 123, 1, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (95, 124, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (96, 125, 3, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (97, 126, 4, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (98, 122, 0, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (99, 123, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
GO
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (100, 124, 2, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (101, 125, 3, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (102, 126, 4, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (103, 122, 7, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (104, 123, 1, NULL, N'', 1.3, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (105, 124, 2, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (106, 125, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (107, 126, 5, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (108, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 182, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (109, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 182, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (110, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 182, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (111, 86, 1, NULL, N'', 0, NULL, 0, 0, 182, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (112, 91, 0, NULL, N'', 0, NULL, 0, 0, 182, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (113, 91, 0, NULL, N'', 0, NULL, 0, 0, 182, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (114, 91, 0, NULL, N'', 0, NULL, 0, 0, 182, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (115, 123, 0, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (116, 86, 3, NULL, N'', 0, NULL, 0, 0, 182, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (117, 86, 6, NULL, N'', 0, NULL, 0, 0, 182, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (118, 85, 4, NULL, N'PCT', 0, NULL, 0, 0, 182, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (119, 85, 5, NULL, N'PCT', 0, NULL, 0, 0, 182, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (120, 88, 1, NULL, N'PCT', 0, NULL, 0, 0, 182, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (121, 97, 2, NULL, N'', 0, NULL, 0, 0, 182, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (122, 97, 2, NULL, N'', 0, NULL, 0, 0, 182, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (123, 122, 0, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (124, 123, 1, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (125, 124, 2, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (126, 125, 3, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (127, 126, 4, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (128, 122, 0, N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (129, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (130, 124, 2, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (131, 125, 3, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (132, 126, 4, NULL, N'', 0, NULL, 0, 0, 182, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (133, 122, 0, N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 1, 182, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (134, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 1, 182, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (135, 124, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 1, 182, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (136, 125, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 1, 182, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (137, 126, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 1, 182, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (138, 121, 0, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU - (n)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (139, 121, 0, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (140, 121, 0, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (141, 121, 1, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (142, 121, 0, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (143, 121, 1, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (144, 122, 0, NULL, N'', 230, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (145, 123, 1, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (146, 124, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (147, 125, 3, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (148, 126, 4, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (149, 122, 0, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (150, 123, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (151, 124, 2, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (152, 125, 3, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (153, 126, 4, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (154, 122, 7, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (155, 123, 1, NULL, N'', 1.3, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (156, 124, 2, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (157, 125, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (158, 126, 5, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (159, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 189, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (160, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 189, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (161, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 189, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (162, 86, 1, NULL, N'', 0, NULL, 0, 0, 189, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (163, 91, 0, NULL, N'', 0, NULL, 0, 0, 189, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (164, 91, 0, NULL, N'', 0, NULL, 0, 0, 189, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (165, 91, 0, NULL, N'', 0, NULL, 0, 0, 189, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (166, 123, 0, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (167, 86, 3, NULL, N'', 0, NULL, 0, 0, 189, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (168, 86, 6, NULL, N'', 0, NULL, 0, 0, 189, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (169, 85, 4, NULL, N'PCT', 0, NULL, 0, 0, 189, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (170, 85, 5, NULL, N'PCT', 0, NULL, 0, 0, 189, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (171, 88, 1, NULL, N'PCT', 0, NULL, 0, 0, 189, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (172, 97, 2, NULL, N'', 0, NULL, 0, 0, 189, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (173, 97, 2, NULL, N'', 0, NULL, 0, 0, 189, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (174, 122, 0, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (175, 123, 1, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (176, 124, 2, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (177, 125, 3, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (178, 126, 4, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (179, 122, 0, N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (180, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (181, 124, 2, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (182, 125, 3, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (183, 126, 4, NULL, N'', 0, NULL, 0, 0, 189, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (184, 122, 0, N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 1, 189, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (185, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 1, 189, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (186, 124, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 1, 189, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (187, 125, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 1, 189, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (188, 126, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 1, 189, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (189, 121, 0, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU - (n)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (190, 121, 0, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (191, 121, 0, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (192, 121, 1, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (193, 121, 0, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (194, 121, 1, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (195, 122, 0, NULL, N'', 230, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (196, 123, 1, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (197, 124, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (198, 125, 3, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (199, 126, 4, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
GO
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (200, 122, 0, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (201, 123, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (202, 124, 2, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (203, 125, 3, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (204, 126, 4, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (205, 122, 7, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (206, 123, 1, NULL, N'', 1.3, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (207, 124, 2, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (208, 125, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (209, 126, 5, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (210, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 196, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (211, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 196, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (212, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 196, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (213, 86, 1, NULL, N'', 0, NULL, 0, 0, 196, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (214, 91, 0, NULL, N'', 0, NULL, 0, 0, 196, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (215, 91, 0, NULL, N'', 0, NULL, 0, 0, 196, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (216, 91, 0, NULL, N'', 0, NULL, 0, 0, 196, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (217, 123, 0, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (218, 86, 3, NULL, N'', 0, NULL, 0, 0, 196, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (219, 86, 6, NULL, N'', 0, NULL, 0, 0, 196, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (220, 85, 4, NULL, N'PCT', 0, NULL, 0, 0, 196, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (221, 85, 5, NULL, N'PCT', 0, NULL, 0, 0, 196, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (222, 88, 1, NULL, N'PCT', 0, NULL, 0, 0, 196, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (223, 97, 2, NULL, N'', 0, NULL, 0, 0, 196, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (224, 97, 2, NULL, N'', 0, NULL, 0, 0, 196, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (225, 122, 0, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (226, 123, 1, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (227, 124, 2, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (228, 125, 3, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (229, 126, 4, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (230, 122, 0, N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (231, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (232, 124, 2, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (233, 125, 3, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (234, 126, 4, NULL, N'', 0, NULL, 0, 0, 196, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (235, 122, 0, N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 1, 196, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (236, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 1, 196, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (237, 124, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 1, 196, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (238, 125, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 1, 196, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (239, 126, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 1, 196, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (240, 121, 0, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU - (n)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (241, 121, 0, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (242, 121, 0, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (243, 121, 1, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (244, 121, 0, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (245, 121, 1, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (246, 122, 0, NULL, N'', 230, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (247, 123, 1, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (248, 124, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (249, 125, 3, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (250, 126, 4, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (251, 122, 0, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (252, 123, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (253, 124, 2, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (254, 125, 3, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (255, 126, 4, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (256, 122, 7, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (257, 123, 1, NULL, N'', 1.3, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (258, 124, 2, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (259, 125, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (260, 126, 5, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (261, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 203, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (262, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 203, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (263, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 203, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (264, 86, 1, NULL, N'', 0, NULL, 0, 0, 203, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (265, 91, 0, NULL, N'', 0, NULL, 0, 0, 203, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (266, 91, 0, NULL, N'', 0, NULL, 0, 0, 203, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (267, 91, 0, NULL, N'', 0, NULL, 0, 0, 203, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (268, 123, 0, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (269, 86, 3, NULL, N'', 0, NULL, 0, 0, 203, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (270, 86, 6, NULL, N'', 0, NULL, 0, 0, 203, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (271, 85, 4, NULL, N'PCT', 0, NULL, 0, 0, 203, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (272, 85, 5, NULL, N'PCT', 0, NULL, 0, 0, 203, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (273, 88, 1, NULL, N'PCT', 0, NULL, 0, 0, 203, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (274, 97, 2, NULL, N'', 0, NULL, 0, 0, 203, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (275, 97, 2, NULL, N'', 0, NULL, 0, 0, 203, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (276, 122, 0, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (277, 123, 1, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (278, 124, 2, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (279, 125, 3, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (280, 126, 4, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (281, 122, 0, N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (282, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (283, 124, 2, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (284, 125, 3, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (285, 126, 4, NULL, N'', 0, NULL, 0, 0, 203, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (286, 122, 0, N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 1, 203, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (287, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 1, 203, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (288, 124, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 1, 203, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (289, 125, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 1, 203, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (290, 126, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 1, 203, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (291, 121, 0, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU - (n)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (292, 121, 0, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (293, 121, 0, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (294, 121, 1, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (295, 121, 0, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (296, 121, 1, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (297, 122, 0, NULL, N'', 230, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (298, 123, 1, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (299, 124, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
GO
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (300, 125, 3, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (301, 126, 4, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (302, 122, 0, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (303, 123, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (304, 124, 2, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (305, 125, 3, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (306, 126, 4, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (307, 122, 7, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (308, 123, 1, NULL, N'', 1.3, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (309, 124, 2, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (310, 125, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (311, 126, 5, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (312, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 210, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (313, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 210, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (314, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 210, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (315, 86, 1, NULL, N'', 0, NULL, 0, 0, 210, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (316, 91, 0, NULL, N'', 0, NULL, 0, 0, 210, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (317, 91, 0, NULL, N'', 0, NULL, 0, 0, 210, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (318, 91, 0, NULL, N'', 0, NULL, 0, 0, 210, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (319, 123, 0, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (320, 86, 3, NULL, N'', 0, NULL, 0, 0, 210, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (321, 86, 6, NULL, N'', 0, NULL, 0, 0, 210, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (322, 85, 4, NULL, N'PCT', 0, NULL, 0, 0, 210, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (323, 85, 5, NULL, N'PCT', 0, NULL, 0, 0, 210, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (324, 88, 1, NULL, N'PCT', 0, NULL, 0, 0, 210, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (325, 97, 2, NULL, N'', 0, NULL, 0, 0, 210, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (326, 97, 2, NULL, N'', 0, NULL, 0, 0, 210, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (327, 122, 0, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (328, 123, 1, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (329, 124, 2, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (330, 125, 3, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (331, 126, 4, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (332, 122, 0, N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (333, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (334, 124, 2, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (335, 125, 3, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (336, 126, 4, NULL, N'', 0, NULL, 0, 0, 210, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (337, 122, 0, N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 1, 210, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (338, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 1, 210, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (339, 124, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 1, 210, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (340, 125, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 1, 210, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (341, 126, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 1, 210, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (342, 121, 0, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU - (n)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (343, 121, 0, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (344, 121, 0, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (345, 121, 1, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (346, 121, 0, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU - (1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (347, 121, 1, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU - (2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (348, 122, 0, NULL, N'', 230, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (349, 123, 1, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (350, 124, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (351, 125, 3, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (352, 126, 4, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (353, 122, 0, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (354, 123, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (355, 124, 2, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (356, 125, 3, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (357, 126, 4, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (358, 122, 7, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (359, 123, 1, NULL, N'', 1.3, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (360, 124, 2, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (361, 125, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (362, 126, 5, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (363, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 217, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (364, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 217, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (365, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 217, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (366, 86, 1, NULL, N'', 0, NULL, 0, 0, 217, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (367, 91, 0, NULL, N'', 0, NULL, 0, 0, 217, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (368, 91, 0, NULL, N'', 0, NULL, 0, 0, 217, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (369, 91, 0, NULL, N'', 0, NULL, 0, 0, 217, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (370, 123, 0, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (371, 86, 3, NULL, N'', 0, NULL, 0, 0, 217, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (372, 86, 6, NULL, N'', 0, NULL, 0, 0, 217, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (373, 85, 4, NULL, N'PCT', 0, NULL, 0, 0, 217, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (374, 85, 5, NULL, N'PCT', 0, NULL, 0, 0, 217, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (375, 88, 1, NULL, N'PCT', 0, NULL, 0, 0, 217, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (376, 97, 2, NULL, N'', 0, NULL, 0, 0, 217, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (377, 97, 2, NULL, N'', 0, NULL, 0, 0, 217, N'CM Vì chủ quyền AN biên giới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (378, 122, 0, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (379, 123, 1, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (380, 124, 2, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (381, 125, 3, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (382, 126, 4, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (383, 122, 0, N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (384, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (385, 124, 2, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (386, 125, 3, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (387, 126, 4, NULL, N'', 0, NULL, 0, 0, 217, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (388, 122, 0, N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 1, 217, N'[dd-m -GIỚI THIỆU-(1)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (389, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 1, 217, N'[dd-m -GIỚI THIỆU-(2)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (390, 124, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 1, 217, N'[dd-m -GIỚI THIỆU-(3)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (391, 125, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 1, 217, N'[dd-m -GIỚI THIỆU-(4)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (392, 126, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 1, 217, N'[dd-m -GIỚI THIỆU-(5)]', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (393, 85, 0, NULL, N'PCT', 0, NULL, 0, 1, 170, N'CM Giáo dục và đào tạo', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (394, 87, 3, NULL, N'', 0, NULL, 0, 1, 170, N'CM Vì an ninh Tổ Quốc', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (395, 104, 12, NULL, N'', 0, NULL, 0, 1, 170, N'Địa chỉ An Giang', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (396, 91, 13, NULL, N'', 0, NULL, 0, 1, 170, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (397, 88, 10, NULL, N'PCT', 0, NULL, 0, 1, 170, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (398, 87, 2, NULL, N'', 0, NULL, 0, 1, 170, N'CM Vì an ninh Tổ Quốc', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (399, 100, 1, NULL, N'', 0, NULL, 0, 1, 170, N'Giai điệu VPOP', NULL, NULL)
GO
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (400, 86, 4, NULL, N'', 0, NULL, 0, 1, 170, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (401, 111, 5, NULL, N'', 0, NULL, 0, 1, 170, N'Văn nghệ An Giang', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (402, 105, 6, NULL, N'', 0, NULL, 0, 1, 170, N'CĐ Công nghệ TT & Truyền thông', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (403, 89, 9, NULL, N'', 0, NULL, 0, 1, 170, N'CM Cải cách hành chính', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (404, 90, 8, NULL, N'', 0, NULL, 0, 1, 170, N'CM Pháp luật & Chính sách', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (405, 105, 7, NULL, N'', 0, NULL, 0, 1, 170, N'CĐ Công nghệ TT & Truyền thông', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (406, 148, 11, NULL, N'PCT', 6.28, NULL, 0, 1, 170, N'Thế giới hoang dã', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (407, 91, 2, NULL, N'', 0, NULL, 0, 1, 171, N'CM Tài nguyên & Môi trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (408, 90, 3, NULL, N'', 0, NULL, 0, 1, 171, N'CM Pháp luật & Chính sách', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (409, 93, 6, NULL, N'', 0, NULL, 0, 1, 171, N'CĐ An Giang XD nông thôn mới', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (410, 90, 7, NULL, N'', 0, NULL, 0, 1, 171, N'CM Pháp luật & Chính sách', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (411, 83, 8, NULL, N'PCT', 15, NULL, 0, 1, 171, N'Tiếp bước đến trường', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (412, 86, 9, NULL, N'', 0, NULL, 0, 1, 171, N'CM Quốc phòng toàn dân', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (413, 94, 0, NULL, N'', 0, NULL, 0, 1, 171, N'THTT Nuôi dưỡng & BV cây trồng', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (414, 101, 1, NULL, N'', 0, NULL, 0, 1, 171, N'Top 5 on ATV', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (415, 87, 4, NULL, N'', 0, NULL, 0, 1, 171, N'CM Vì an ninh Tổ Quốc', NULL, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName], [StartTime], [IsFixed]) VALUES (416, 83, 5, NULL, N'PCT', 15, NULL, 0, 1, 171, N'Tiếp bước đến trường', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ScheduleDetail] OFF
SET IDENTITY_INSERT [dbo].[ScheduleTemplate] ON 

INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (8, N'Đạt Trần', NULL, 1, 1)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (9, N'Đạt Trần', NULL, 1, 2)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (10, N'Đạt Trần', NULL, 1, 3)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (11, N'Đạt Trần', NULL, 1, 4)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (12, N'Đạt Trần', NULL, 1, 5)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (13, N'Đạt Trần', NULL, 1, 6)
INSERT [dbo].[ScheduleTemplate] ([ID], [CreatedBy], [DateID], [IsActive], [DayOfWeek]) VALUES (14, N'Đạt Trần', NULL, 1, 7)
SET IDENTITY_INSERT [dbo].[ScheduleTemplate] OFF
SET IDENTITY_INSERT [dbo].[ScheduleTemplateDetail] ON 

INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (2, 121, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU - (n)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (3, 121, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU - (1)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (4, 121, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU - (1)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (5, 121, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU - (2)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (6, 121, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU - (1)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (7, 121, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU - (2)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (8, 122, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', NULL, N'', 230, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (9, 123, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (10, 124, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (11, 125, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (12, 126, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (13, 122, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (14, 123, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (15, 124, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (16, 125, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (17, 126, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (18, 122, 13, 7, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (19, 123, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', NULL, N'', 1.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (20, 124, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (21, 125, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (22, 126, 13, 5, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (23, 85, 13, 3, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (24, 85, 13, 3, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (25, 85, 13, 3, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (26, 86, 13, 1, 0, 0, N'CM Quốc phòng toàn dân', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (27, 91, 13, 0, 0, 0, N'CM Tài nguyên & Môi trường', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (28, 91, 13, 0, 0, 0, N'CM Tài nguyên & Môi trường', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (29, 91, 13, 0, 0, 0, N'CM Tài nguyên & Môi trường', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (30, 123, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (31, 86, 13, 3, 0, 0, N'CM Quốc phòng toàn dân', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (32, 86, 13, 6, 0, 0, N'CM Quốc phòng toàn dân', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (33, 85, 13, 4, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (34, 85, 13, 5, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (35, 88, 13, 1, 0, 0, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, N'PCT', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (36, 97, 13, 2, 0, 0, N'CM Vì chủ quyền AN biên giới', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (37, 97, 13, 2, 0, 0, N'CM Vì chủ quyền AN biên giới', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (38, 122, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (39, 123, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (40, 124, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (41, 125, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (42, 126, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (43, 122, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (44, 123, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (45, 124, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (46, 125, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (47, 126, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', NULL, N'', 0, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (48, 122, 13, 0, 0, 1, N'[dd-m -GIỚI THIỆU-(1)]', N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (49, 123, 13, 1, 0, 1, N'[dd-m -GIỚI THIỆU-(2)]', N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (50, 124, 13, 2, 0, 1, N'[dd-m -GIỚI THIỆU-(3)]', N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (51, 125, 13, 3, 0, 1, N'[dd-m -GIỚI THIỆU-(4)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note], [StartTime]) VALUES (52, 126, 13, 4, 0, 1, N'[dd-m -GIỚI THIỆU-(5)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ScheduleTemplateDetail] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (1, NULL, N'Nguyen Trung Tin', N'01234567899', NULL, N'tin@gmail.com', N'Editor01', N'E10ADC3949BA59ABBE56E057F20F883E', 1, N'123456', 1, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (3, NULL, N'Admin', NULL, NULL, NULL, N'Admin', N'E10ADC3949BA59ABBE56E057F20F883E', 1, N'123456', 2, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (5, NULL, N'Nguyen Tin', NULL, NULL, NULL, N'Editor02', N'4297F44B13955235245B2497399D7A93                                                                                                                                                                        ', 1, N'123456', 1, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (7, NULL, N'Tin Tin', NULL, NULL, NULL, N'Editor03', N'E10ADC3949BA59ABBE56E057F20F883E', 0, N'123456', 1, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Week] ON 

INSERT [dbo].[Week] ([ID], [FromDate], [ToDate], [InChargeUserID]) VALUES (25, CAST(N'2019-04-22T00:00:00.000' AS DateTime), CAST(N'2019-04-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate], [InChargeUserID]) VALUES (26, CAST(N'2019-04-29T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate], [InChargeUserID]) VALUES (27, CAST(N'2019-04-15T00:00:00.000' AS DateTime), CAST(N'2019-04-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate], [InChargeUserID]) VALUES (28, CAST(N'2019-04-08T00:00:00.000' AS DateTime), CAST(N'2019-04-14T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate], [InChargeUserID]) VALUES (29, CAST(N'2019-04-01T00:00:00.000' AS DateTime), CAST(N'2019-04-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate], [InChargeUserID]) VALUES (30, CAST(N'2019-03-25T00:00:00.000' AS DateTime), CAST(N'2019-03-31T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate], [InChargeUserID]) VALUES (31, CAST(N'2019-03-18T00:00:00.000' AS DateTime), CAST(N'2019-03-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate], [InChargeUserID]) VALUES (32, CAST(N'2019-05-06T00:00:00.000' AS DateTime), CAST(N'2019-05-12T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Week] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User]    Script Date: 5/3/2019 9:10:01 PM ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [IX_User] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Date]  WITH CHECK ADD  CONSTRAINT [FK_Date_User] FOREIGN KEY([InChargeUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Date] CHECK CONSTRAINT [FK_Date_User]
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
ALTER TABLE [dbo].[FramePlan]  WITH CHECK ADD  CONSTRAINT [FK_FramePlan_Date] FOREIGN KEY([DateID])
REFERENCES [dbo].[Date] ([ID])
GO
ALTER TABLE [dbo].[FramePlan] CHECK CONSTRAINT [FK_FramePlan_Date]
GO
ALTER TABLE [dbo].[FramePlanDetail]  WITH CHECK ADD  CONSTRAINT [FK_FramePlaneDetail_FramePlan] FOREIGN KEY([FramePlanID])
REFERENCES [dbo].[FramePlan] ([ID])
GO
ALTER TABLE [dbo].[FramePlanDetail] CHECK CONSTRAINT [FK_FramePlaneDetail_FramePlan]
GO
ALTER TABLE [dbo].[FramePlanDetail]  WITH CHECK ADD  CONSTRAINT [FK_FramePlaneDetail_Program] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ID])
GO
ALTER TABLE [dbo].[FramePlanDetail] CHECK CONSTRAINT [FK_FramePlaneDetail_Program]
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
ALTER TABLE [dbo].[ProgramSchedule]  WITH CHECK ADD  CONSTRAINT [FK_ProgramSchedule_Program] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ID])
GO
ALTER TABLE [dbo].[ProgramSchedule] CHECK CONSTRAINT [FK_ProgramSchedule_Program]
GO
ALTER TABLE [dbo].[ProgramScheduleDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProgramScheduleDetail_ProgramSchedule] FOREIGN KEY([ProgramScheduleID])
REFERENCES [dbo].[ProgramSchedule] ([ID])
GO
ALTER TABLE [dbo].[ProgramScheduleDetail] CHECK CONSTRAINT [FK_ProgramScheduleDetail_ProgramSchedule]
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
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [FK_Week_User] FOREIGN KEY([InChargeUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [FK_Week_User]
GO
USE [master]
GO
ALTER DATABASE [ATVDatabase] SET  READ_WRITE 
GO
