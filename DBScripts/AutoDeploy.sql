USE [AutoDeploy]
GO
/****** Object:  Table [dbo].[VersionControlType]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VersionControlType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [varchar](5000) NULL,
 CONSTRAINT [PK_VersionControlType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_Status]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BuildTypes]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BuildTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_BuildTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Release]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Release](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [varchar](50) NOT NULL,
	[Note] [varchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Release] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](30) NOT NULL,
	[Description] [varchar](5000) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VersionControlDetails]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VersionControlDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[VersionControlTypeID] [int] NOT NULL,
	[DominAddress] [varchar](max) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_VersionControlDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeploymentServers]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeploymentServers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SarverName] [varchar](30) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Pasword] [varchar](50) NOT NULL,
	[DomainUrl] [varchar](max) NOT NULL,
	[Description] [varchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_DeploymentServers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProjectDetails]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProjectDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProjectName] [varchar](100) NOT NULL,
	[VersionControlID] [int] NOT NULL,
	[SolutionPath] [varchar](max) NULL,
	[ProjectPath] [varchar](max) NULL,
	[Configuration] [varchar](15) NULL,
	[Platform] [varchar](15) NULL,
	[Descrption] [varchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ProjectDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Build]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Build](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BuildTypeID] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [varchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Build] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Package]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Package](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BuildID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[PackageVersion] [varchar](50) NOT NULL,
	[PackagePath] [varchar](max) NOT NULL,
	[VersionControlID] [int] NOT NULL,
	[Note] [varchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestCaseDetails]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestCaseDetails](
	[ID] [int] NOT NULL,
	[BuildID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [varchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReleasePackage]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReleasePackage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReleaseID] [int] NOT NULL,
	[PackageID] [int] NOT NULL,
	[Note] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ReleasePackage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Deploy]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Deploy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServerID] [int] NOT NULL,
	[ReleasePackageID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [varchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Deploy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UITestCasesDetails]    Script Date: 05/01/2013 16:26:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UITestCasesDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeployeID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Note] [varchar](max) NOT NULL,
	[CreaedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UITestCasesDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Build_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Build] ADD  CONSTRAINT [DF_Build_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Deploy_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Deploy] ADD  CONSTRAINT [DF_Deploy_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_DeploymentServers_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[DeploymentServers] ADD  CONSTRAINT [DF_DeploymentServers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Package_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Package] ADD  CONSTRAINT [DF_Package_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_ProjectDetails_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[ProjectDetails] ADD  CONSTRAINT [DF_ProjectDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Release_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Release] ADD  CONSTRAINT [DF_Release_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_ReleasePackage_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[ReleasePackage] ADD  CONSTRAINT [DF_ReleasePackage_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_TestCaseDetails_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[TestCaseDetails] ADD  CONSTRAINT [DF_TestCaseDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_UITestCasesDetails_CreaedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[UITestCasesDetails] ADD  CONSTRAINT [DF_UITestCasesDetails_CreaedDate]  DEFAULT (getdate()) FOR [CreaedDate]
GO
/****** Object:  Default [DF_User_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_VersionControlDetails_CreatedDate]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[VersionControlDetails] ADD  CONSTRAINT [DF_VersionControlDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  ForeignKey [FK_Build_BuildTypes]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_BuildTypes] FOREIGN KEY([BuildTypeID])
REFERENCES [dbo].[BuildTypes] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_BuildTypes]
GO
/****** Object:  ForeignKey [FK_Build_Status]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_Status]
GO
/****** Object:  ForeignKey [FK_Build_ProjectDetails]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Build]  WITH CHECK ADD  CONSTRAINT [FK_Build_ProjectDetails] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[ProjectDetails] ([ID])
GO
ALTER TABLE [dbo].[Build] CHECK CONSTRAINT [FK_Build_ProjectDetails]
GO
/****** Object:  ForeignKey [FK_Deploy_D_Status]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Deploy]  WITH CHECK ADD  CONSTRAINT [FK_Deploy_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Deploy] CHECK CONSTRAINT [FK_Deploy_Status]
GO
/****** Object:  ForeignKey [FK_Deploy_DeploymentServers]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Deploy]  WITH CHECK ADD  CONSTRAINT [FK_Deploy_DeploymentServers] FOREIGN KEY([ServerID])
REFERENCES [dbo].[DeploymentServers] ([ID])
GO
ALTER TABLE [dbo].[Deploy] CHECK CONSTRAINT [FK_Deploy_DeploymentServers]
GO
/****** Object:  ForeignKey [FK_Deploy_ReleasePackage]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Deploy]  WITH CHECK ADD  CONSTRAINT [FK_Deploy_ReleasePackage] FOREIGN KEY([ReleasePackageID])
REFERENCES [dbo].[ReleasePackage] ([ID])
GO
ALTER TABLE [dbo].[Deploy] CHECK CONSTRAINT [FK_Deploy_ReleasePackage]
GO
/****** Object:  ForeignKey [FK_DeploymentServers_User]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[DeploymentServers]  WITH CHECK ADD  CONSTRAINT [FK_DeploymentServers_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[DeploymentServers] CHECK CONSTRAINT [FK_DeploymentServers_User]
GO
/****** Object:  ForeignKey [FK_Package_Build]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_Build] FOREIGN KEY([BuildID])
REFERENCES [dbo].[Build] ([ID])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_Build]
GO
/****** Object:  ForeignKey [FK_Package_Status]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_Status]
GO
/****** Object:  ForeignKey [FK_Package_VersionControlDetails]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_VersionControlDetails] FOREIGN KEY([VersionControlID])
REFERENCES [dbo].[VersionControlDetails] ([ID])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_VersionControlDetails]
GO
/****** Object:  ForeignKey [FK_ProjectDetails_User]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[ProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDetails_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ProjectDetails] CHECK CONSTRAINT [FK_ProjectDetails_User]
GO
/****** Object:  ForeignKey [FK_ProjectDetails_VersionControlDetails]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[ProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDetails_VersionControlDetails] FOREIGN KEY([VersionControlID])
REFERENCES [dbo].[VersionControlDetails] ([ID])
GO
ALTER TABLE [dbo].[ProjectDetails] CHECK CONSTRAINT [FK_ProjectDetails_VersionControlDetails]
GO
/****** Object:  ForeignKey [FK_ReleasePackage_Package]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[ReleasePackage]  WITH CHECK ADD  CONSTRAINT [FK_ReleasePackage_Package] FOREIGN KEY([PackageID])
REFERENCES [dbo].[Package] ([ID])
GO
ALTER TABLE [dbo].[ReleasePackage] CHECK CONSTRAINT [FK_ReleasePackage_Package]
GO
/****** Object:  ForeignKey [FK_ReleasePackage_Release]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[ReleasePackage]  WITH CHECK ADD  CONSTRAINT [FK_ReleasePackage_Release] FOREIGN KEY([ReleaseID])
REFERENCES [dbo].[Release] ([ID])
GO
ALTER TABLE [dbo].[ReleasePackage] CHECK CONSTRAINT [FK_ReleasePackage_Release]
GO
/****** Object:  ForeignKey [FK_TestCaseDetails_Build]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[TestCaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_TestCaseDetails_Build] FOREIGN KEY([BuildID])
REFERENCES [dbo].[Build] ([ID])
GO
ALTER TABLE [dbo].[TestCaseDetails] CHECK CONSTRAINT [FK_TestCaseDetails_Build]
GO
/****** Object:  ForeignKey [FK_TestCaseDetails_Status]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[TestCaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_TestCaseDetails_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[TestCaseDetails] CHECK CONSTRAINT [FK_TestCaseDetails_Status]
GO
/****** Object:  ForeignKey [FK_UITestCasesDetails_Status]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[UITestCasesDetails]  WITH CHECK ADD  CONSTRAINT [FK_UITestCasesDetails_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[UITestCasesDetails] CHECK CONSTRAINT [FK_UITestCasesDetails_Status]
GO
/****** Object:  ForeignKey [FK_UITestCasesDetails_Deploy]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[UITestCasesDetails]  WITH CHECK ADD  CONSTRAINT [FK_UITestCasesDetails_Deploy] FOREIGN KEY([DeployeID])
REFERENCES [dbo].[Deploy] ([ID])
GO
ALTER TABLE [dbo].[UITestCasesDetails] CHECK CONSTRAINT [FK_UITestCasesDetails_Deploy]
GO
/****** Object:  ForeignKey [FK_User_Role]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  ForeignKey [FK_VersionControlDetails_User]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[VersionControlDetails]  WITH CHECK ADD  CONSTRAINT [FK_VersionControlDetails_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[VersionControlDetails] CHECK CONSTRAINT [FK_VersionControlDetails_User]
GO
/****** Object:  ForeignKey [FK_VersionControlDetails_VersionControlType]    Script Date: 05/01/2013 16:26:17 ******/
ALTER TABLE [dbo].[VersionControlDetails]  WITH CHECK ADD  CONSTRAINT [FK_VersionControlDetails_VersionControlType] FOREIGN KEY([VersionControlTypeID])
REFERENCES [dbo].[VersionControlType] ([ID])
GO
ALTER TABLE [dbo].[VersionControlDetails] CHECK CONSTRAINT [FK_VersionControlDetails_VersionControlType]
GO
