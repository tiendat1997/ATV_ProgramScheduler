USE [master]
GO
/****** Object:  Database [ATVDatabase]    Script Date: 28/04/2019 11:13:36 SA ******/
CREATE DATABASE [ATVDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATVDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ATVDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ATVDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ATVDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
EXEC sys.sp_db_vardecimal_storage_format N'ATVDatabase', N'ON'
GO
ALTER DATABASE [ATVDatabase] SET QUERY_STORE = OFF
GO
USE [ATVDatabase]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[EditingHistory]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[MailingHistory]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[Program]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[ProgramType]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[ScheduleDetail]    Script Date: 28/04/2019 11:13:37 SA ******/
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
/****** Object:  Table [dbo].[ScheduleTemplate]    Script Date: 28/04/2019 11:13:38 SA ******/
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
/****** Object:  Table [dbo].[ScheduleTemplateDetail]    Script Date: 28/04/2019 11:13:38 SA ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 28/04/2019 11:13:38 SA ******/
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
/****** Object:  Table [dbo].[Week]    Script Date: 28/04/2019 11:13:38 SA ******/
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

INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (169, 25, 1, CAST(N'2019-04-22T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (170, 25, 2, CAST(N'2019-04-23T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (171, 25, 3, CAST(N'2019-04-24T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (172, 25, 4, CAST(N'2019-04-25T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (173, 25, 5, CAST(N'2019-04-26T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (174, 25, 6, CAST(N'2019-04-27T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (175, 25, 7, CAST(N'2019-04-28T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (176, 26, 1, CAST(N'2019-04-29T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (177, 26, 2, CAST(N'2019-04-30T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (178, 26, 3, CAST(N'2019-05-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (179, 26, 4, CAST(N'2019-05-02T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (180, 26, 5, CAST(N'2019-05-03T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (181, 26, 6, CAST(N'2019-05-04T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DayOfWeek], [DateOfYear], [StartAt]) VALUES (182, 26, 7, CAST(N'2019-05-05T00:00:00.000' AS DateTime), 5)
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
SET IDENTITY_INSERT [dbo].[Schedule] OFF
SET IDENTITY_INSERT [dbo].[ScheduleDetail] ON 

INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (1, 83, 0, NULL, N'PCT', 15, NULL, 0, 0, 163, N'Tiếp bước đến trường')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (2, 85, 0, NULL, N'PCT', 0, NULL, 0, 0, 163, N'CM Giáo dục và đào tạo fasjfjasdkljf;lkasjd;fjas;ljf;lkasjflkjsalkfjas;ljdf;ljsda;lfjasldjflkjsaf;ljas;ljflksjadlkjfasld;jflasjdf;lj;asldjflkjsaldjflkjsdaljfsalkdjfljsad;lfj;asljfl')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (3, 121, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (n)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (4, 121, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (5, 121, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (6, 121, 1, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (7, 121, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (8, 121, 1, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU - (2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (9, 122, 0, NULL, N'', 230, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (10, 123, 1, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (11, 124, 3, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (12, 125, 3, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (13, 126, 4, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (14, 122, 0, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (15, 123, 2, N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (16, 124, 2, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (17, 125, 3, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (18, 126, 4, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (19, 122, 7, N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (20, 123, 1, NULL, N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (21, 124, 2, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (22, 125, 4, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (23, 126, 5, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (24, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (25, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (26, 85, 3, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (27, 86, 1, NULL, N'', 0, NULL, 0, 0, 175, N'CM Quốc phòng toàn dân')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (28, 91, 0, NULL, N'', 0, NULL, 0, 0, 175, N'CM Tài nguyên & Môi trường')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (29, 91, 0, NULL, N'', 0, NULL, 0, 0, 175, N'CM Tài nguyên & Môi trường')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (30, 91, 0, NULL, N'', 0, NULL, 0, 0, 175, N'CM Tài nguyên & Môi trường')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (31, 123, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (32, 86, 3, NULL, N'', 0, NULL, 0, 0, 175, N'CM Quốc phòng toàn dân')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (33, 86, 6, NULL, N'', 0, NULL, 0, 0, 175, N'CM Quốc phòng toàn dân')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (34, 85, 4, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (35, 85, 5, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CM Giáo dục và đào tạo')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (36, 88, 1, NULL, N'PCT', 0, NULL, 0, 0, 175, N'CĐ Doanh nghiệp & Doanh nhân AG')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (37, 97, 2, NULL, N'', 0, NULL, 0, 0, 175, N'CM Vì chủ quyền AN biên giới')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (38, 97, 2, NULL, N'', 0, NULL, 0, 0, 175, N'CM Vì chủ quyền AN biên giới')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (39, 122, 0, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (40, 123, 1, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (41, 124, 2, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (42, 125, 3, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (43, 126, 4, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (44, 122, 0, N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (45, 123, 1, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (46, 124, 2, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(3)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (47, 125, 3, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(4)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (48, 126, 4, NULL, N'', 0, NULL, 0, 0, 175, N'[dd-m -GIỚI THIỆU-(5)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (49, 122, 0, N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL, 1, 1, 175, N'[dd-m -GIỚI THIỆU-(1)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (50, 123, 11, N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, N'QuangCao\', 1, 1, 175, N'[dd-m -GIỚI THIỆU-(2)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (51, 124, 35, N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, N'QuangCao\', 1, 1, 175, N'[dd-m -GIỚI THIỆU-(3)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (52, 125, 36, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL, 1, 1, 175, N'[dd-m -GIỚI THIỆU-(4)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (53, 126, 37, N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL, 1, 1, 175, N'[dd-m -GIỚI THIỆU-(5)]')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (54, 128, 1, NULL, N'PCT', 8.32, N'YG-7', 0, 1, 175, N'Thể dục buổi sáng')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (55, 129, 2, NULL, N'PCG', 17.57, N'CaNhac\27-4 file sua', 0, 1, 175, N'Ca nhạc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (56, 132, 3, NULL, N'PCT', 1.02, NULL, 1, 1, 175, N'TD 30/4 + Thông điệp quốc tế lao động')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (57, 131, 5, N'Phim hoạt hình : Thế giới của Zou - Phần 1 - tập 7,8', N'', 23, N'ThieuNhi\', 1, 1, 175, N'Chương trình thiếu nhi')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (58, 133, 6, NULL, N'PCT', 0, NULL, 1, 1, 175, N'Quảng cáo trước phim sáng')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (59, 134, 7, N'Những đóa quân tử lan - tập 5, 6', N'PCT', 88.06, N'Phim\', 0, 1, 175, N'Phim truyện Việt Nam')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (60, 135, 8, NULL, N'PCT', 0, N'Phát khoảng 7h15', 1, 1, 175, N'Quảng cáo giữa phim sáng')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (61, 136, 9, NULL, N'PCT', 0, NULL, 0, 1, 175, N'Quảng cáo cuối phim sáng')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (62, 130, 4, NULL, N'PCT', 30, N'Giờ mốc', 1, 1, 175, N'Thông tin ngày mới')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (63, 137, 10, NULL, N'PCT', 5, N'BBT', 1, 1, 175, N'ATV 360 độ')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (64, 96, 12, NULL, N'', 10, N'Phát lại thứ sáu: 26-4', 0, 1, 175, N'Chuyên mục Hộp thư Bạn xem Đài')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (65, 138, 13, NULL, N'PCT', 1.23, NULL, 1, 1, 175, N'GTP Biệt động Sài Gòn - tập 1 + Trailer vua đầu bếp miệt vườn (Lẩu mắm)')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (66, 139, 14, NULL, N'PCT', 15.54, N'BBT', 0, 1, 175, N'Biết để làm đúng')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (67, 140, 15, NULL, N'PCT', 2.07, NULL, 1, 1, 175, N'Quảng cáo trước phim sáng (Đợt II)')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (68, 134, 16, N'Biệt động Sài Gòn - tập 1', N'PCT', 79, NULL, 0, 1, 175, N'Phim truyện Việt Nam')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (69, 141, 17, N'Hiện chữ Mời xem tiếp CT [P.Q/c] Phát QC giữa khoảng 9g25', N'PCT', 5.07, NULL, 1, 1, 175, N'Quảng cáo giữa phim sáng ( Đợt II )')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (70, 142, 18, NULL, N'PCT', 5.07, NULL, 1, 1, 175, N'Quảng cáo cuối phim sáng ( Đợt II )')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (71, 143, 19, N'Biệt động Sài Gòn - tập 2', N'', 1.23, NULL, 1, 1, 175, N'GTP')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (72, 144, 20, N'Nữ thần y 1', N'PCT', 0, NULL, 1, 1, 175, N'GTP')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (73, 146, 21, N'Vận may hoa đào - tập 9,10', N'PCT', 0, NULL, 1, 1, 175, N'Trailer')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (74, 106, 22, NULL, N'P.PTL', 10, N'P.PTL', 0, 1, 175, N'Trải nghiệm cuối tuần')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (75, 146, 23, N'Phong cách âm nhạc', N'PCT', 5, NULL, 1, 1, 175, N'Trailer')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (76, 145, 24, N'Những đóa quân tử Lan 2 + TĐ 30/4', N'PCT', 0, NULL, 1, 1, 175, N'GTP')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (77, 117, 25, NULL, N'', 10, N'Vệ tinh', 0, 1, 175, N'Thế giới tuần qua')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (78, 145, 26, N'Câu chuyện tình yêu - tập 7,  Diên Hy công lược - tập 54', N'PCT', 5, NULL, 1, 1, 175, N'Trailer')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (79, 146, 27, N'Những đứa con biệt động Sài Gòn - tập 21 ', N'PCT', 0, NULL, 1, 1, 175, N'Trailer')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (80, 146, 28, N'Vua đầu bếp miệt vườn ( lẩu mắm ) - tập 21', N'PCT', 0, NULL, 1, 1, 175, N'Trailer')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (81, 147, 29, NULL, N'PCT', 30, N'Phát lại thứ sáu 24-4', 0, 1, 175, N'Phong cách âm nhạc')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (82, 115, 30, N'Xã văn hóa nông thôn mới Mỹ Hiệp, Chợ Mới', N'', 10, N'BBT\', 0, 1, 175, N'CM Gia đình & Cuộc sống')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (83, 137, 31, NULL, N'PCT', 5, N'BBT', 0, 1, 175, N'ATV 360 độ')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (84, 148, 32, NULL, N'PCT', 6.28, N'KhoaGiao\TGHD- 110SUA (6-28)', 1, 1, 175, N'Thế giới hoang dã')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (85, 149, 33, N'Thông điệp 30/4 + Nước sạch và vệ sinh môi trường', N'PCT', 2.02, NULL, 1, 1, 175, N'Chen giờ')
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (86, 129, 34, NULL, N'PCT', 5, NULL, 0, 1, 175, N'Thông tin cần biết')
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

INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (2, 121, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU - (n)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (3, 121, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU - (1)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (4, 121, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU - (1)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (5, 121, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU - (2)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (6, 121, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU - (1)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (7, 121, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU - (2)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (8, 122, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', NULL, N'', 230, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (9, 123, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (10, 124, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (11, 125, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (12, 126, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (13, 122, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (14, 123, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', N'(Hiện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30', N'', 1.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (15, 124, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (16, 125, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (17, 126, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (18, 122, 13, 7, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', N'(Hiện chữ trên nền nhạc: Giới thiệu CT ( Từ 5g05 --> 23g00 )', N'', 2.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (19, 123, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', NULL, N'', 1.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (20, 124, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (21, 125, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (22, 126, 13, 5, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (23, 85, 13, 3, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (24, 85, 13, 3, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (25, 85, 13, 3, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (26, 86, 13, 1, 0, 0, N'CM Quốc phòng toàn dân', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (27, 91, 13, 0, 0, 0, N'CM Tài nguyên & Môi trường', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (28, 91, 13, 0, 0, 0, N'CM Tài nguyên & Môi trường', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (29, 91, 13, 0, 0, 0, N'CM Tài nguyên & Môi trường', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (30, 123, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (31, 86, 13, 3, 0, 0, N'CM Quốc phòng toàn dân', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (32, 86, 13, 6, 0, 0, N'CM Quốc phòng toàn dân', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (33, 85, 13, 4, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (34, 85, 13, 5, 0, 0, N'CM Giáo dục và đào tạo', NULL, N'PCT', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (35, 88, 13, 1, 0, 0, N'CĐ Doanh nghiệp & Doanh nhân AG', NULL, N'PCT', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (36, 97, 13, 2, 0, 0, N'CM Vì chủ quyền AN biên giới', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (37, 97, 13, 2, 0, 0, N'CM Vì chủ quyền AN biên giới', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (38, 122, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (39, 123, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (40, 124, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (41, 125, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (42, 126, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (43, 122, 13, 0, 0, 0, N'[dd-m -GIỚI THIỆU-(1)]', N'(HIện chữ trên nền nhạc: Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (44, 123, 13, 1, 0, 0, N'[dd-m -GIỚI THIỆU-(2)]', N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (45, 124, 13, 2, 0, 0, N'[dd-m -GIỚI THIỆU-(3)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (46, 125, 13, 3, 0, 0, N'[dd-m -GIỚI THIỆU-(4)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (47, 126, 13, 4, 0, 0, N'[dd-m -GIỚI THIỆU-(5)]', NULL, N'', 0, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (48, 122, 13, 0, 0, 1, N'[dd-m -GIỚI THIỆU-(1)]', N'(HIện chữ trên nền Giới thiệu CT [từ 5g05 --> 23g00)]', N'', 2.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (49, 123, 13, 1, 0, 1, N'[dd-m -GIỚI THIỆU-(2)]', N'(HIện chữ trên nền nhạc: Giới thiệu CT tiếp theo đến --> 11g30]', N'', 1.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (50, 124, 13, 2, 0, 1, N'[dd-m -GIỚI THIỆU-(3)]', N'(Hiện chữ trên nền nhạc: Giới thiệu CT từ 11g30 -> 17g00)', N'', 1.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (51, 125, 13, 3, 0, 1, N'[dd-m -GIỚI THIỆU-(4)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1.3, NULL)
INSERT [dbo].[ScheduleTemplateDetail] ([ID], [ProgramID], [ScheduleTemplateID], [Position], [IsNoted], [IsActive], [ProgramName], [Contents], [PerformBy], [Duration], [Note]) VALUES (52, 126, 13, 4, 0, 1, N'[dd-m -GIỚI THIỆU-(5)]', N'(Hiện chữ trên nền nhạc : Giới thiệu CT từ 18g30 -> 23g00)', N'', 1, NULL)
SET IDENTITY_INSERT [dbo].[ScheduleTemplateDetail] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (1, NULL, N'Nguyen Trung Tin', N'01234567899', NULL, N'tin@gmail.com', N'Editor01', N'E10ADC3949BA59ABBE56E057F20F883E', 1, N'123456', 1, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (3, NULL, N'Admin', NULL, NULL, NULL, N'Admin', N'E10ADC3949BA59ABBE56E057F20F883E', 1, N'123456', 2, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (5, NULL, N'Nguyen Tin', NULL, NULL, NULL, N'Editor02', N'4297F44B13955235245B2497399D7A93                                                                                                                                                                        ', 1, N'123456', 1, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (7, NULL, N'Tin Tin', NULL, NULL, NULL, N'Editor03', N'E10ADC3949BA59ABBE56E057F20F883E', 0, N'123456', 1, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Week] ON 

INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (25, CAST(N'2019-04-22T00:00:00.000' AS DateTime), CAST(N'2019-04-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (26, CAST(N'2019-04-29T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Week] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User]    Script Date: 28/04/2019 11:13:38 SA ******/
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
