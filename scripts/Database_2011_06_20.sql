USE [epiworx]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Salt] [nvarchar](20) NOT NULL,
	[Token] [nvarchar](50) NOT NULL,
	[TokenExpirationDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([UserId], [Email], [FullName], [IsActive], [IsArchived], [Name], [Password], [Salt], [Token], [TokenExpirationDate], [CreatedDate], [ModifiedDate]) VALUES (2, N'administrator@website.com', N'Administrator', 1, 0, N'admin', N'D/M0RmZPjxvVpgrZ6QnOmB4EYag=', N'YQmsBzX/4A', N'', CAST(0x002D247F00000000 AS DateTime), CAST(0x00009DDB0167BF57 AS DateTime), CAST(0x00009E60010792DF AS DateTime))
INSERT [dbo].[User] ([UserId], [Email], [FullName], [IsActive], [IsArchived], [Name], [Password], [Salt], [Token], [TokenExpirationDate], [CreatedDate], [ModifiedDate]) VALUES (4, N'mattruma@gmail.com', N'Matt Ruma', 1, 0, N'mattruma', N'qToEiN5JLX34E0ZQSCp0IWWQ3lM=', N'bmAvSlugKE', N'', CAST(0x002D247F018B81FF AS DateTime), CAST(0x00009F07008625E3 AS DateTime), CAST(0x00009F07008625E3 AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[SourceType]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SourceType](
	[SourceTypeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SourceType] PRIMARY KEY CLUSTERED 
(
	[SourceTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SourceType] ([SourceTypeId], [Name], [CreatedDate]) VALUES (1, N'Project', CAST(0x00009EF100B0902C AS DateTime))
INSERT [dbo].[SourceType] ([SourceTypeId], [Name], [CreatedDate]) VALUES (2, N'Sprint', CAST(0x00009EF100B0942A AS DateTime))
INSERT [dbo].[SourceType] ([SourceTypeId], [Name], [CreatedDate]) VALUES (3, N'Story', CAST(0x00009EF100B099E9 AS DateTime))
INSERT [dbo].[SourceType] ([SourceTypeId], [Name], [CreatedDate]) VALUES (4, N'User', CAST(0x00009EF100B0A2F7 AS DateTime))
/****** Object:  Table [dbo].[Source]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Source](
	[SourceId] [int] NOT NULL,
	[SourceTypeId] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Source] PRIMARY KEY CLUSTERED 
(
	[SourceId] ASC,
	[SourceTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (1, 4, N'Project 1', CAST(0x00009F070167A0D1 AS DateTime), CAST(0x00009F070167A0D1 AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (2, 4, N'Project 1', CAST(0x00009F07016991EB AS DateTime), CAST(0x00009F07016991EB AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (3, 4, N'Project 1', CAST(0x00009F07016A0873 AS DateTime), CAST(0x00009F07016A0873 AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (4, 1, N'mattruma', CAST(0x00009F07008625FC AS DateTime), CAST(0x00009F07008625FC AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (4, 4, N'Project 1', CAST(0x00009F07016ACD7C AS DateTime), CAST(0x00009F07016ACD7C AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (5, 4, N'Project 1', CAST(0x00009F07016BCA9E AS DateTime), CAST(0x00009F07016BCA9E AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (7, 4, N'Project 1', CAST(0x00009F07016EB20C AS DateTime), CAST(0x00009F07016EB20C AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (8, 4, N'Project 1', CAST(0x00009F07016F2A22 AS DateTime), CAST(0x00009F07016F2A22 AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (11, 4, N'Project 1', CAST(0x00009F070171E840 AS DateTime), CAST(0x00009F070171E840 AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (14, 4, N'Project 2', CAST(0x00009F070172DEFB AS DateTime), CAST(0x00009F070172DEFB AS DateTime))
INSERT [dbo].[Source] ([SourceId], [SourceTypeId], [Name], [CreatedDate], [ModifiedDate]) VALUES (15, 4, N'Project 3', CAST(0x00009F070172EA3D AS DateTime), CAST(0x00009F070172EA3D AS DateTime))
/****** Object:  Table [dbo].[Role]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Role] ([RoleId], [Name], [CreatedDate]) VALUES (0, N'None', CAST(0x00009EF101299C5A AS DateTime))
INSERT [dbo].[Role] ([RoleId], [Name], [CreatedDate]) VALUES (1, N'Administrator', CAST(0x00009EF100B0DA20 AS DateTime))
INSERT [dbo].[Role] ([RoleId], [Name], [CreatedDate]) VALUES (2, N'Editor', CAST(0x00009EF100B0E02B AS DateTime))
INSERT [dbo].[Role] ([RoleId], [Name], [CreatedDate]) VALUES (3, N'Contributor', CAST(0x00009EF100B0E45C AS DateTime))
INSERT [dbo].[Role] ([RoleId], [Name], [CreatedDate]) VALUES (4, N'Reviewer', CAST(0x00009EF100B20CD3 AS DateTime))
/****** Object:  Table [dbo].[Project]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Project] ON
INSERT [dbo].[Project] ([ProjectId], [Description], [IsActive], [IsArchived], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'This is a sample project.', 1, 0, N'Project 1', 4, CAST(0x00009F070171E829 AS DateTime), 4, CAST(0x00009F0800C52C71 AS DateTime))
INSERT [dbo].[Project] ([ProjectId], [Description], [IsActive], [IsArchived], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'', 1, 0, N'Project 2', 4, CAST(0x00009F070171F25D AS DateTime), 4, CAST(0x00009F070171F25D AS DateTime))
INSERT [dbo].[Project] ([ProjectId], [Description], [IsActive], [IsArchived], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'', 1, 0, N'Project 2', 4, CAST(0x00009F0701725F9B AS DateTime), 4, CAST(0x00009F0701725F9B AS DateTime))
INSERT [dbo].[Project] ([ProjectId], [Description], [IsActive], [IsArchived], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'', 1, 0, N'Project 2', 4, CAST(0x00009F070172DEE2 AS DateTime), 4, CAST(0x00009F070172DEE2 AS DateTime))
INSERT [dbo].[Project] ([ProjectId], [Description], [IsActive], [IsArchived], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'', 1, 0, N'Project 3', 4, CAST(0x00009F070172EA3B AS DateTime), 4, CAST(0x00009F070172EA3B AS DateTime))
SET IDENTITY_INSERT [dbo].[Project] OFF
/****** Object:  Table [dbo].[Note]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[NoteId] [int] IDENTITY(1,1) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[SourceId] [int] NOT NULL,
	[SourceTypeId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[NoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feed]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feed](
	[FeedId] [int] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Feed] PRIMARY KEY CLUSTERED 
(
	[FeedId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attachment](
	[AttachmentId] [int] IDENTITY(1,1) NOT NULL,
	[FileData] [varbinary](max) NULL,
	[FileType] [varchar](100) NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[Name] [varchar](300) NOT NULL,
	[SourceId] [int] NOT NULL,
	[SourceTypeId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED 
(
	[AttachmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Filter]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filter](
	[FilterId] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[FilterQuery] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[SourceTypeId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Filter] PRIMARY KEY CLUSTERED 
(
	[FilterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectUserMember]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectUserMember](
	[ProjectUserMemberId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProjectUserMember] PRIMARY KEY CLUSTERED 
(
	[ProjectUserMemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_ProjectUserMember] UNIQUE NONCLUSTERED 
(
	[ProjectId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProjectUserMember] ON
INSERT [dbo].[ProjectUserMember] ([ProjectUserMemberId], [ProjectId], [RoleId], [UserId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (0, 11, 1, 4, 4, CAST(0x00009F070171E838 AS DateTime), 4, CAST(0x00009F070171E838 AS DateTime))
INSERT [dbo].[ProjectUserMember] ([ProjectUserMemberId], [ProjectId], [RoleId], [UserId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 14, 1, 4, 4, CAST(0x00009F070172DEF3 AS DateTime), 4, CAST(0x00009F070172DEF3 AS DateTime))
INSERT [dbo].[ProjectUserMember] ([ProjectUserMemberId], [ProjectId], [RoleId], [UserId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 15, 1, 4, 4, CAST(0x00009F070172EA3C AS DateTime), 4, CAST(0x00009F070172EA3C AS DateTime))
SET IDENTITY_INSERT [dbo].[ProjectUserMember] OFF
/****** Object:  Table [dbo].[FeedSourceMember]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedSourceMember](
	[FeedSourceMemberId] [int] IDENTITY(1,1) NOT NULL,
	[FeedId] [int] NOT NULL,
	[SourceId] [int] NOT NULL,
	[SourceTypeId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FeedSourceMember] PRIMARY KEY CLUSTERED 
(
	[FeedSourceMemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_FeedSourceMember] UNIQUE NONCLUSTERED 
(
	[FeedId] ASC,
	[SourceId] ASC,
	[SourceTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[IsStarted] [bit] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Ordinal] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Status] ON
INSERT [dbo].[Status] ([StatusId], [Description], [IsActive], [IsArchived], [IsCompleted], [IsStarted], [Name], [Ordinal], [ProjectId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'', 1, 0, 0, 0, N'Back Log', 0, 11, 2, CAST(0x00009E5B0119C7A6 AS DateTime), 2, CAST(0x00009E6E007B87EB AS DateTime))
INSERT [dbo].[Status] ([StatusId], [Description], [IsActive], [IsArchived], [IsCompleted], [IsStarted], [Name], [Ordinal], [ProjectId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'', 1, 0, 0, 0, N'Ready', 1, 11, 2, CAST(0x00009E5B0119D92F AS DateTime), 2, CAST(0x00009E6201133117 AS DateTime))
INSERT [dbo].[Status] ([StatusId], [Description], [IsActive], [IsArchived], [IsCompleted], [IsStarted], [Name], [Ordinal], [ProjectId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'', 1, 0, 0, 1, N'In Progress', 2, 11, 2, CAST(0x00009E5B011ACA0F AS DateTime), 2, CAST(0x00009E6201133D21 AS DateTime))
INSERT [dbo].[Status] ([StatusId], [Description], [IsActive], [IsArchived], [IsCompleted], [IsStarted], [Name], [Ordinal], [ProjectId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'', 1, 0, 1, 0, N'Done', 5, 11, 2, CAST(0x00009E5B011AF5B3 AS DateTime), 2, CAST(0x00009E71008803C4 AS DateTime))
INSERT [dbo].[Status] ([StatusId], [Description], [IsActive], [IsArchived], [IsCompleted], [IsStarted], [Name], [Ordinal], [ProjectId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'Pending review and approval by the customer.', 1, 0, 0, 0, N'Review', 4, 11, 2, CAST(0x00009E6E014AEFAD AS DateTime), 2, CAST(0x00009E710087E0FB AS DateTime))
SET IDENTITY_INSERT [dbo].[Status] OFF
/****** Object:  Table [dbo].[Sprint]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sprint](
	[SprintId] [int] IDENTITY(1,1) NOT NULL,
	[CompletedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[Duration] [decimal](10, 2) NOT NULL,
	[EstimatedCompletedDate] [datetime] NOT NULL,
	[EstimatedDuration] [decimal](10, 2) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Sprint] PRIMARY KEY CLUSTERED 
(
	[SprintId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Story]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Story](
	[StoryId] [int] NOT NULL,
	[AssignedTo] [int] NOT NULL,
	[AssignedDate] [datetime] NOT NULL,
	[CompletedDate] [datetime] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Duration] [decimal](10, 2) NOT NULL,
	[EstimatedCompletedDate] [datetime] NOT NULL,
	[EstimatedDuration] [decimal](10, 2) NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[SprintId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[StatusId] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Story] PRIMARY KEY CLUSTERED 
(
	[StoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hour]    Script Date: 06/20/2011 21:14:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hour](
	[HourId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Duration] [decimal](10, 2) NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[StoryId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Hour] PRIMARY KEY CLUSTERED 
(
	[HourId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Attachment_IsArchived]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_IsArchived]  DEFAULT ((0)) FOR [IsArchived]
GO
/****** Object:  Default [DF_Table_1_FileName]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Table_1_FileName]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_Attachment_CreatedDate]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Attachment_ModifiedDate]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_Note_IsArchived]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_IsArchived]  DEFAULT ((0)) FOR [IsArchived]
GO
/****** Object:  Default [DF_Role_CreatedDate]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Source_CreatedDate]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Source] ADD  CONSTRAINT [DF_Source_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Source_ModifiedDate]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Source] ADD  CONSTRAINT [DF_Source_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_SourceType_CreatedDate]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[SourceType] ADD  CONSTRAINT [DF_SourceType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Sprint_Duration]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Sprint] ADD  CONSTRAINT [DF_Sprint_Duration]  DEFAULT ((0)) FOR [Duration]
GO
/****** Object:  Default [DF_Sprint_EstimatedDuration]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Sprint] ADD  CONSTRAINT [DF_Sprint_EstimatedDuration]  DEFAULT ((0)) FOR [EstimatedDuration]
GO
/****** Object:  Default [DF_Status_ProjectId]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_ProjectId]  DEFAULT ((0)) FOR [ProjectId]
GO
/****** Object:  Default [DF_Story_IsCompleted]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Story] ADD  CONSTRAINT [DF_Story_IsCompleted]  DEFAULT ((0)) FOR [IsCompleted]
GO
/****** Object:  Default [DF_Story_SprintId]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Story] ADD  CONSTRAINT [DF_Story_SprintId]  DEFAULT ((0)) FOR [SprintId]
GO
/****** Object:  Default [DF_User_Token]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Token]  DEFAULT ('') FOR [Token]
GO
/****** Object:  Default [DF_User_TokenExpirationDate]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_TokenExpirationDate]  DEFAULT ('12/31/9999') FOR [TokenExpirationDate]
GO
/****** Object:  ForeignKey [FK_Attachment_Source]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK_Attachment_Source] FOREIGN KEY([SourceId], [SourceTypeId])
REFERENCES [dbo].[Source] ([SourceId], [SourceTypeId])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FK_Attachment_Source]
GO
/****** Object:  ForeignKey [FK_Attachment_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK_Attachment_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FK_Attachment_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Attachment_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK_Attachment_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FK_Attachment_UserModifiedBy]
GO
/****** Object:  ForeignKey [FK_Feed_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Feed]  WITH CHECK ADD  CONSTRAINT [FK_Feed_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Feed] CHECK CONSTRAINT [FK_Feed_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_FeedSourceMember_Feed]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[FeedSourceMember]  WITH CHECK ADD  CONSTRAINT [FK_FeedSourceMember_Feed] FOREIGN KEY([FeedId])
REFERENCES [dbo].[Feed] ([FeedId])
GO
ALTER TABLE [dbo].[FeedSourceMember] CHECK CONSTRAINT [FK_FeedSourceMember_Feed]
GO
/****** Object:  ForeignKey [FK_FeedSourceMember_Source]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[FeedSourceMember]  WITH CHECK ADD  CONSTRAINT [FK_FeedSourceMember_Source] FOREIGN KEY([SourceId], [SourceTypeId])
REFERENCES [dbo].[Source] ([SourceId], [SourceTypeId])
GO
ALTER TABLE [dbo].[FeedSourceMember] CHECK CONSTRAINT [FK_FeedSourceMember_Source]
GO
/****** Object:  ForeignKey [FK_FeedSourceMember_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[FeedSourceMember]  WITH CHECK ADD  CONSTRAINT [FK_FeedSourceMember_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[FeedSourceMember] CHECK CONSTRAINT [FK_FeedSourceMember_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Filter_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Filter]  WITH CHECK ADD  CONSTRAINT [FK_Filter_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Filter] CHECK CONSTRAINT [FK_Filter_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Filter_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Filter]  WITH CHECK ADD  CONSTRAINT [FK_Filter_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Filter] CHECK CONSTRAINT [FK_Filter_UserModifiedBy]
GO
/****** Object:  ForeignKey [FK_Hour_Story]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Hour]  WITH CHECK ADD  CONSTRAINT [FK_Hour_Story] FOREIGN KEY([StoryId])
REFERENCES [dbo].[Story] ([StoryId])
GO
ALTER TABLE [dbo].[Hour] CHECK CONSTRAINT [FK_Hour_Story]
GO
/****** Object:  ForeignKey [FK_Hour_User]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Hour]  WITH CHECK ADD  CONSTRAINT [FK_Hour_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Hour] CHECK CONSTRAINT [FK_Hour_User]
GO
/****** Object:  ForeignKey [FK_Hour_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Hour]  WITH CHECK ADD  CONSTRAINT [FK_Hour_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Hour] CHECK CONSTRAINT [FK_Hour_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Hour_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Hour]  WITH CHECK ADD  CONSTRAINT [FK_Hour_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Hour] CHECK CONSTRAINT [FK_Hour_UserModifiedBy]
GO
/****** Object:  ForeignKey [FK_Note_Source]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Source] FOREIGN KEY([SourceId], [SourceTypeId])
REFERENCES [dbo].[Source] ([SourceId], [SourceTypeId])
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_Source]
GO
/****** Object:  ForeignKey [FK_Note_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Note_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_UserModifiedBy]
GO
/****** Object:  ForeignKey [FK_Project_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Project_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_UserModifiedBy]
GO
/****** Object:  ForeignKey [FK_ProjectUserMember_Project]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[ProjectUserMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectUserMember_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
ALTER TABLE [dbo].[ProjectUserMember] CHECK CONSTRAINT [FK_ProjectUserMember_Project]
GO
/****** Object:  ForeignKey [FK_ProjectUserMember_Role]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[ProjectUserMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectUserMember_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[ProjectUserMember] CHECK CONSTRAINT [FK_ProjectUserMember_Role]
GO
/****** Object:  ForeignKey [FK_ProjectUserMember_User]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[ProjectUserMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectUserMember_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ProjectUserMember] CHECK CONSTRAINT [FK_ProjectUserMember_User]
GO
/****** Object:  ForeignKey [FK_ProjectUserMember_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[ProjectUserMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectUserMember_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ProjectUserMember] CHECK CONSTRAINT [FK_ProjectUserMember_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_ProjectUserMember_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[ProjectUserMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectUserMember_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ProjectUserMember] CHECK CONSTRAINT [FK_ProjectUserMember_UserModifiedBy]
GO
/****** Object:  ForeignKey [FK_Sprint_Project]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Sprint]  WITH CHECK ADD  CONSTRAINT [FK_Sprint_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
ALTER TABLE [dbo].[Sprint] CHECK CONSTRAINT [FK_Sprint_Project]
GO
/****** Object:  ForeignKey [FK_Sprint_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Sprint]  WITH CHECK ADD  CONSTRAINT [FK_Sprint_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Sprint] CHECK CONSTRAINT [FK_Sprint_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Sprint_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Sprint]  WITH CHECK ADD  CONSTRAINT [FK_Sprint_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Sprint] CHECK CONSTRAINT [FK_Sprint_UserModifiedBy]
GO
/****** Object:  ForeignKey [FK_Status_Project]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Status_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_Status_Project]
GO
/****** Object:  ForeignKey [FK_Status_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Status_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_Status_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Status_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Status_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_Status_UserModifiedBy]
GO
/****** Object:  ForeignKey [FK_Story_Project]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Project]
GO
/****** Object:  ForeignKey [FK_Story_Sprint]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Story]  WITH NOCHECK ADD  CONSTRAINT [FK_Story_Sprint] FOREIGN KEY([SprintId])
REFERENCES [dbo].[Sprint] ([SprintId])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Story] NOCHECK CONSTRAINT [FK_Story_Sprint]
GO
/****** Object:  ForeignKey [FK_Story_Status]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Status]
GO
/****** Object:  ForeignKey [FK_Story_UserAssignedTo]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_UserAssignedTo] FOREIGN KEY([AssignedTo])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_UserAssignedTo]
GO
/****** Object:  ForeignKey [FK_Story_UserCreatedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_UserCreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_UserCreatedBy]
GO
/****** Object:  ForeignKey [FK_Story_UserModifiedBy]    Script Date: 06/20/2011 21:14:54 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_UserModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_UserModifiedBy]
GO
