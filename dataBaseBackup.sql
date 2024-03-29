USE [master]
GO
/****** Object:  Database [codeChallenge]    Script Date: 16/9/2019 02:03:17 ******/
CREATE DATABASE [codeChallenge]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'codeChallenge', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVERESTEBAN\MSSQL\DATA\codeChallenge.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'codeChallenge_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVERESTEBAN\MSSQL\DATA\codeChallenge_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [codeChallenge] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [codeChallenge].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [codeChallenge] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [codeChallenge] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [codeChallenge] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [codeChallenge] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [codeChallenge] SET ARITHABORT OFF 
GO
ALTER DATABASE [codeChallenge] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [codeChallenge] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [codeChallenge] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [codeChallenge] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [codeChallenge] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [codeChallenge] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [codeChallenge] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [codeChallenge] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [codeChallenge] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [codeChallenge] SET  DISABLE_BROKER 
GO
ALTER DATABASE [codeChallenge] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [codeChallenge] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [codeChallenge] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [codeChallenge] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [codeChallenge] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [codeChallenge] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [codeChallenge] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [codeChallenge] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [codeChallenge] SET  MULTI_USER 
GO
ALTER DATABASE [codeChallenge] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [codeChallenge] SET DB_CHAINING OFF 
GO
ALTER DATABASE [codeChallenge] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [codeChallenge] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [codeChallenge] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [codeChallenge] SET QUERY_STORE = OFF
GO
USE [codeChallenge]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 16/9/2019 02:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [datetime2](0) NOT NULL,
	[endDate] [datetime2](0) NOT NULL,
	[Credits] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userProject]    Script Date: 16/9/2019 02:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userProject](
	[userID] [int] NOT NULL,
	[projectID] [int] NOT NULL,
	[isActive] [binary](1) NOT NULL,
	[assignedDate] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16/9/2019 02:03:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (1, CAST(N'2019-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-01T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (2, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-02T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (3, CAST(N'2019-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-09-10T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (4, CAST(N'2019-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-09-10T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (5, CAST(N'2019-07-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-09-20T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (6, CAST(N'2019-10-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-11-20T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (7, CAST(N'2019-10-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-20T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (8, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-20T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (9, CAST(N'2019-08-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-09-20T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (10, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-21T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (11, CAST(N'2019-10-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-21T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (12, CAST(N'2019-10-07T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-21T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (13, CAST(N'2019-09-07T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-01T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (14, CAST(N'2019-10-07T00:00:00.0000000' AS DateTime2), CAST(N'2019-11-01T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (15, CAST(N'2019-10-04T00:00:00.0000000' AS DateTime2), CAST(N'2019-11-11T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (16, CAST(N'2019-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-20T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (17, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-11-20T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (18, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-09-26T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (19, CAST(N'2019-08-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-09-20T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (20, CAST(N'2019-10-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-11-22T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (21, CAST(N'2019-07-02T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-21T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (22, CAST(N'2019-10-07T00:00:00.0000000' AS DateTime2), CAST(N'2019-11-22T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (23, CAST(N'2019-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-01T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (24, CAST(N'2019-09-07T00:00:00.0000000' AS DateTime2), CAST(N'2019-11-01T00:00:00.0000000' AS DateTime2), 4)
INSERT [dbo].[Project] ([id], [startDate], [endDate], [Credits]) VALUES (25, CAST(N'2019-10-04T00:00:00.0000000' AS DateTime2), CAST(N'2019-11-11T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Project] OFF
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (1, 2, 0x01, CAST(N'2019-09-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (1, 1, 0x01, CAST(N'2019-08-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (1, 3, 0x00, CAST(N'2019-09-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (1, 4, 0x00, CAST(N'2019-09-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (1, 5, 0x01, CAST(N'2019-08-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 6, 0x01, CAST(N'2019-08-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 7, 0x01, CAST(N'2019-08-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 8, 0x00, CAST(N'2019-10-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 9, 0x01, CAST(N'2019-09-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 10, 0x01, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 11, 0x00, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 12, 0x00, CAST(N'2019-10-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 13, 0x01, CAST(N'2019-08-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 14, 0x01, CAST(N'2019-09-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 15, 0x00, CAST(N'2019-09-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 6, 0x01, CAST(N'2019-08-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 7, 0x01, CAST(N'2019-09-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 8, 0x00, CAST(N'2019-09-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 9, 0x01, CAST(N'2019-09-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (2, 10, 0x01, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 11, 0x00, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 12, 0x00, CAST(N'2019-10-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 13, 0x01, CAST(N'2019-08-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 14, 0x01, CAST(N'2019-10-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (3, 15, 0x00, CAST(N'2019-10-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (4, 6, 0x01, CAST(N'2019-08-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (4, 7, 0x01, CAST(N'2019-08-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (4, 8, 0x00, CAST(N'2019-10-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (4, 9, 0x01, CAST(N'2019-09-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (4, 10, 0x01, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (5, 11, 0x00, CAST(N'2019-09-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (5, 12, 0x00, CAST(N'2019-10-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (5, 13, 0x01, CAST(N'2019-08-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (5, 14, 0x01, CAST(N'2019-09-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[userProject] ([userID], [projectID], [isActive], [assignedDate]) VALUES (5, 15, 0x00, CAST(N'2019-09-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (1, N'Esteban', N'Santamaria')
INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (2, N'Corey', N'Taylor')
INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (3, N'Alberto', N'Einstein')
INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (4, N'Tony', N'Hawk')
INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (5, N'Asuka', N'Langley')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [UQ__Project__3213E83EC38A58F5]    Script Date: 16/9/2019 02:03:17 ******/
ALTER TABLE [dbo].[Project] ADD UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Users__3213E83E97C9DCB7]    Script Date: 16/9/2019 02:03:17 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[userProject]  WITH CHECK ADD FOREIGN KEY([projectID])
REFERENCES [dbo].[Project] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[userProject]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [codeChallenge] SET  READ_WRITE 
GO
