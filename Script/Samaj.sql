USE [Samaj]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 12/15/2014 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAccount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](25) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Password] [varbinary](256) NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[ForcePasswordChange] [bit] NULL,
	[Disabled] [bit] NULL,
	[ExpirationDate] [datetime] NULL,
	[LoginAttempt] [int] NULL,
	[PasswordCount] [int] NULL,
	[LoginCount] [int] NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RefType]    Script Date: 12/15/2014 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RefType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RefType](
	[RefId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DisplayOrder] [int] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_RefType] PRIMARY KEY CLUSTERED 
(
	[RefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 12/15/2014 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Person](
	[StudentId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FatherName] [nvarchar](50) NOT NULL,
	[MotherName] [nvarchar](50) NOT NULL,
	[Dob] [datetime] NOT NULL,
	[IsBoy] [bit] NOT NULL,
	[Addresse] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/15/2014 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FatherOrHusbandName] [nvarchar](100) NOT NULL,
	[MotherName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsPhoto] [bit] NOT NULL,
	[DOB] [datetime] NOT NULL,
	[Caste] [nvarchar](50) NOT NULL,
	[IsFeMale] [bit] NOT NULL,
	[MarriedStats] [nvarchar](50) NOT NULL,
	[EmailId] [nvarchar](50) NULL,
	[PermanentAddress] [nvarchar](250) NULL,
	[PermanentCity] [nvarchar](50) NOT NULL,
	[PermanentState] [nvarchar](50) NOT NULL,
	[TempAddres] [nvarchar](250) NULL,
	[TempCity] [nvarchar](50) NULL,
	[TempState] [nvarchar](50) NULL,
	[Mobile] [nvarchar](15) NULL,
	[PanCardNo] [nvarchar](20) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 12/15/2014 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Designation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Designation](
	[EmployeeId] [int] NOT NULL,
	[RefTypeId] [int] NOT NULL,
	[SessionId] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CommitteeSession]    Script Date: 12/15/2014 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CommitteeSession]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CommitteeSession](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[CommitteeId] [int] NOT NULL,
	[SessionCode] [nvarchar](50) NOT NULL,
	[SessionStartDate] [datetime] NOT NULL,
	[SessionEndDate] [datetime] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CommitteeSession] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Committee]    Script Date: 12/15/2014 17:57:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Committee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Committee](
	[CommitteeId] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Committee] PRIMARY KEY CLUSTERED 
(
	[CommitteeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
