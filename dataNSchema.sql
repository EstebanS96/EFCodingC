USE [codeChallenge]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 15/9/2019 23:45:14 ******/
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
/****** Object:  Table [dbo].[userProject]    Script Date: 15/9/2019 23:45:14 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 15/9/2019 23:45:14 ******/
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
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (1, N'Esteban', N'Santamaria')
INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (2, N'Corey', N'Taylor')
INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (3, N'Alberto', N'Einstein')
INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (4, N'Tony', N'Hawk')
INSERT [dbo].[Users] ([id], [firstName], [lastName]) VALUES (5, N'Asuka', N'Langley')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [UQ__Project__3213E83EC38A58F5]    Script Date: 15/9/2019 23:45:14 ******/
ALTER TABLE [dbo].[Project] ADD UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Users__3213E83E97C9DCB7]    Script Date: 15/9/2019 23:45:14 ******/
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
