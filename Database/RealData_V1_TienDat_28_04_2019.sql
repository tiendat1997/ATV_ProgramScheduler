USE [master]
GO
/****** Object:  Database [ATVDatabase]    Script Date: 28/04/2019 5:24:34 SA ******/
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
/****** Object:  Table [dbo].[Date]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[EditingHistory]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[MailingHistory]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[Program]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[ProgramType]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[ScheduleDetail]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[ScheduleTemplate]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[ScheduleTemplateDetail]    Script Date: 28/04/2019 5:24:35 SA ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 28/04/2019 5:24:35 SA ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_User] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Week]    Script Date: 28/04/2019 5:24:35 SA ******/
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
