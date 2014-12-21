

CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Fname] [nvarchar](100) NULL,
	[Lname] [nvarchar](100) NULL,
	[Role] [nvarchar](100) NULL,
	[Mobile] [nvarchar](15) NULL,
	[Status] [nvarchar](10) NULL,
	[Gender] [nvarchar](10) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

--Roles table

CREATE TABLE [dbo].[Roles](
	[RoleID] [int] NULL,
	[RoleName] [nvarchar](100) NULL
) ON [PRIMARY]

--Saving file paths
CREATE TABLE [dbo].[UserImages](
	[FileID] [int] IDENTITY(1,1) NOT NULL,
	[F_UserId] [int] NULL,
	[FileType] [nvarchar](10) NULL,
	[Imagefile] [varchar](1000) NULL,
	[TextOptional] [nvarchar](100) NULL,
	[Status] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


-- Mater table

CREATE TABLE [dbo].[M_Users_Roles](
	[RoleId] [int] NULL,
	[UserId] [int] NULL,
	[MusicFiles] [bit] NULL,
	[Photoes] [bit] NULL,
	[Videos] [bit] NULL
) ON [PRIMARY]

