USE [master]
GO
/****** Object:  Database [ATVDatabase]    Script Date: 15/02/2019 7:50:35 CH ******/
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
/****** Object:  Table [dbo].[Date]    Script Date: 15/02/2019 7:50:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WeekID] [int] NOT NULL,
	[DateOfWeek] [nvarchar](200) NOT NULL,
	[DateOfYear] [datetime] NOT NULL,
	[StartAt] [float] NOT NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[EditingHistory]    Script Date: 15/02/2019 7:50:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EditingHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateID] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[IsFinished] [bit] NOT NULL,
 CONSTRAINT [PK_EditingHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailingHistory]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[Program]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[ProgramType]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[ScheduleDetail]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[ScheduleTemplate]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[ScheduleTemplateDetail]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 15/02/2019 7:50:36 CH ******/
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
/****** Object:  Table [dbo].[Week]    Script Date: 15/02/2019 7:50:37 CH ******/
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

INSERT [dbo].[Date] ([ID], [WeekID], [DateOfWeek], [DateOfYear], [StartAt]) VALUES (1, 1, N'Monday', CAST(N'2019-02-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DateOfWeek], [DateOfYear], [StartAt]) VALUES (2, 1, N'Tuesday', CAST(N'2019-02-08T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DateOfWeek], [DateOfYear], [StartAt]) VALUES (3, 1, N'Wednesday', CAST(N'2019-02-09T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DateOfWeek], [DateOfYear], [StartAt]) VALUES (4, 1, N'Thursday', CAST(N'2019-02-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DateOfWeek], [DateOfYear], [StartAt]) VALUES (5, 1, N'Friday', CAST(N'2019-02-11T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DateOfWeek], [DateOfYear], [StartAt]) VALUES (6, 1, N'Saturday', CAST(N'2019-02-12T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Date] ([ID], [WeekID], [DateOfWeek], [DateOfYear], [StartAt]) VALUES (7, 1, N'Sunday', CAST(N'2019-02-13T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[Date] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([ID], [Name], [Email], [IsActive]) VALUES (1, N'Phòng kế toán', N'ketoan@mail.com', 1)
INSERT [dbo].[Department] ([ID], [Name], [Email], [IsActive]) VALUES (2, N'Phòng kế hoạch', N'kehoach@mail.com', 1)
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[EditingHistory] ON 

INSERT [dbo].[EditingHistory] ([ID], [UserID], [DateID], [Time], [IsFinished]) VALUES (1, 1, 1, CAST(N'2019-01-29T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[EditingHistory] OFF
SET IDENTITY_INSERT [dbo].[Program] ON 

INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (1, N'Chương trình 1', 100, NULL, 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (2, N'Chương trình 2', 50, NULL, 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (3, N'Chương trình 3', 42, NULL, 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (4, N'Chương trình 4', 33, NULL, 2, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (6, N'Chương trình cố định abc', 10, N'', 1, 1)
INSERT [dbo].[Program] ([ID], [Name], [Duration], [PerformBy], [ProgramTypeID], [IsActive]) VALUES (11, N'chương trình hay', 0.5, N'Tín', 1, 1)
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

INSERT [dbo].[Schedule] ([ID], [CreatedBy], [DateID], [IsActive]) VALUES (1, N'Tin', 1, 1)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
SET IDENTITY_INSERT [dbo].[ScheduleDetail] ON 

INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (1, 1, 1, NULL, NULL, 100, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (2, 2, 2, NULL, NULL, 50, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (3, 3, 3, NULL, NULL, 42, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (4, 4, 4, NULL, NULL, 33, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (5, 6, 5, NULL, N'', 10, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ScheduleDetail] ([ID], [ProgramID], [Position], [Contents], [PerformBy], [Duration], [Note], [IsNoted], [IsActive], [ScheduleID], [ProgramName]) VALUES (6, 11, 6, NULL, N'Tín', 0.5, NULL, NULL, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[ScheduleDetail] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (1, NULL, N'Nguyen Trung Tin', N'01234567899', NULL, N'tin@gmail.com', N'Editor01', N'E10ADC3949BA59ABBE56E057F20F883E', 1, N'123456', 1, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (3, NULL, N'Admin', NULL, NULL, NULL, N'Admin', N'E10ADC3949BA59ABBE56E057F20F883E', 1, N'123456', 2, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (5, NULL, N'Nguyen Tin', NULL, NULL, NULL, N'Editor02', N'4297F44B13955235245B2497399D7A93                                                                                                                                                                        ', 1, N'123456', 1, 1)
INSERT [dbo].[User] ([ID], [IdentityCode], [Name], [Phone1], [Phone2], [Email], [Username], [PasswordHash], [IsPasswordChanged], [DefaultPassword], [RoleID], [IsActive]) VALUES (7, NULL, N'Tin Tin', NULL, NULL, NULL, N'Editor03', N'E10ADC3949BA59ABBE56E057F20F883E', 0, N'123456', 1, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Week] ON 

INSERT [dbo].[Week] ([ID], [FromDate], [ToDate]) VALUES (1, CAST(N'2019-02-07T00:00:00.000' AS DateTime), CAST(N'2019-02-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Week] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User]    Script Date: 15/02/2019 7:50:37 CH ******/
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
ALTER TABLE [dbo].[EditingHistory]  WITH CHECK ADD  CONSTRAINT [FK_EditingHistory_Date] FOREIGN KEY([DateID])
REFERENCES [dbo].[Date] ([ID])
GO
ALTER TABLE [dbo].[EditingHistory] CHECK CONSTRAINT [FK_EditingHistory_Date]
GO
ALTER TABLE [dbo].[EditingHistory]  WITH CHECK ADD  CONSTRAINT [FK_EditingHistory_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[EditingHistory] CHECK CONSTRAINT [FK_EditingHistory_User]
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
