USE [master]
GO
/****** Object:  Database [kodexdb]    Script Date: 3/11/2019 3:23:18 PM ******/
CREATE DATABASE [kodexdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kodexdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\kodexdb.mdf' , SIZE = 8192KB , MAXSIZE = 4194304KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kodexdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\kodexdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [kodexdb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kodexdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kodexdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kodexdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kodexdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kodexdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kodexdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [kodexdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kodexdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kodexdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kodexdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kodexdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kodexdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kodexdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kodexdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kodexdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kodexdb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [kodexdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kodexdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kodexdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kodexdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kodexdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kodexdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kodexdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kodexdb] SET RECOVERY FULL 
GO
ALTER DATABASE [kodexdb] SET  MULTI_USER 
GO
ALTER DATABASE [kodexdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kodexdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kodexdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kodexdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kodexdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kodexdb] SET QUERY_STORE = OFF
GO
USE [kodexdb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [kodexdb]
GO
/****** Object:  User [brian]    Script Date: 3/11/2019 3:23:21 PM ******/
CREATE USER [brian] FOR LOGIN [brian] WITH DEFAULT_SCHEMA=[brian]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [brian]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [brian]
GO
ALTER ROLE [db_datareader] ADD MEMBER [brian]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [brian]
GO
/****** Object:  Schema [brian]    Script Date: 3/11/2019 3:23:22 PM ******/
CREATE SCHEMA [brian]
GO
/****** Object:  Schema [koserus_kodex]    Script Date: 3/11/2019 3:23:22 PM ******/
CREATE SCHEMA [koserus_kodex]
GO
/****** Object:  View [dbo].[posts]    Script Date: 3/11/2019 3:23:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[posts] AS
SELECT post.id
      ,post.title
      ,post.slug
      ,post.[url]
      ,post.body
      ,post.bodyraw
      ,post.[description]
      ,post.datepublished
      ,post.datepublishedid
      ,post.datelastupdated
      ,post.excerpt
      ,post.imageurl
      ,post.ispublic
	  ,posttype.id AS posttypeid
	  ,posttype.code
	  ,posttype.[name]
	  ,posttype.[url] AS posttypeurl
	  ,authors.authorids
	  ,authors.shortname AS shortname
	  ,authors.longname AS longname
  FROM dbo.post
  JOIN dbo.posttype
    ON post.posttypeid = posttype.id
  JOIN (SELECT post_author.postid,
               STRING_AGG(author.id, ',') AS authorids,
               STRING_AGG(author.firstname, ', ') AS shortname, 
			   STRING_AGG(author.fullname, ' and ') AS longname
          FROM dbo.post_author
		  JOIN dbo.author
			ON post_author.authorid = author.id
		 GROUP BY post_author.postid
	   ) authors
	ON post.id = authors.postid
GO
/****** Object:  View [dbo].[Users]    Script Date: 3/11/2019 3:23:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Users] as
SELECT [AspNetUsers].*,
	   author.firstname AS DisplayName
FROM [dbo].[AspNetUsers]
JOIN dbo.author 
ON [AspNetUsers].id = author.aspnetuserid
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/11/2019 3:23:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [varchar](256) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/11/2019 3:23:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [varchar](256) NOT NULL,
	[RoleId] [varchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/11/2019 3:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [varchar](256) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[SecurityStamp] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](256) NULL,
	[PhoneNumber] [varchar](11) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[author]    Script Date: 3/11/2019 3:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](64) NOT NULL,
	[firstname] [nvarchar](32) NOT NULL,
	[AspNetUserId] [varchar](256) NULL,
 CONSTRAINT [PK_author] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[author_site]    Script Date: 3/11/2019 3:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[author_site](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[authorid] [int] NOT NULL,
	[siteid] [int] NOT NULL,
 CONSTRAINT [PK_authorsite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authorhistory]    Script Date: 3/11/2019 3:23:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorhistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[authorid] [int] NOT NULL,
	[bio] [nvarchar](512) NULL,
	[enddate] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_authorhistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book]    Script Date: 3/11/2019 3:23:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](256) NULL,
	[authorfirstname] [nvarchar](128) NULL,
	[authorlastname] [nvarchar](128) NULL,
	[isbn] [char](13) NULL,
	[datepublished] [datetimeoffset](7) NULL,
	[coverimageurl] [varchar](1024) NULL,
	[openlibraryurl] [varchar](1024) NULL,
	[goodreadsurl] [varchar](1024) NULL,
 CONSTRAINT [PK_book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_booktag]    Script Date: 3/11/2019 3:23:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_booktag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bookid] [int] NOT NULL,
	[booktagid] [int] NOT NULL,
 CONSTRAINT [PK_book_bookshelf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookreview]    Script Date: 3/11/2019 3:23:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookreview](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[postid] [int] NOT NULL,
	[bookid] [int] NOT NULL,
	[rating] [tinyint] NULL,
	[startdate] [datetimeoffset](7) NULL,
	[enddate] [datetimeoffset](7) NULL,
	[goodreadsreviewurl] [varchar](1024) NULL,
 CONSTRAINT [PK_bookrating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booktag]    Script Date: 3/11/2019 3:23:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booktag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](128) NOT NULL,
	[slug] [nvarchar](128) NOT NULL,
	[description] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_bookshelf] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 3/11/2019 3:23:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[posttypeid] [tinyint] NOT NULL,
	[title] [nvarchar](128) NOT NULL,
	[slug] [varchar](64) NOT NULL,
	[url] [varchar](128) NULL,
	[body] [nvarchar](max) NULL,
	[description] [nvarchar](256) NULL,
	[datepublished] [datetimeoffset](7) NULL,
	[datepublishedid] [tinyint] NULL,
	[datelastupdated] [datetimeoffset](7) NULL,
	[excerpt] [nvarchar](256) NULL,
	[imageurl] [varchar](1024) NULL,
	[ispublic] [bit] NOT NULL,
	[bodyraw] [nvarchar](max) NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ix_slug_unique] UNIQUE NONCLUSTERED 
(
	[slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_author]    Script Date: 3/11/2019 3:23:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[postid] [int] NOT NULL,
	[authorid] [int] NOT NULL,
 CONSTRAINT [PK_postauthor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_tag]    Script Date: 3/11/2019 3:23:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_tag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[postid] [int] NOT NULL,
	[tagid] [int] NOT NULL,
 CONSTRAINT [PK_posttags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posttype]    Script Date: 3/11/2019 3:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posttype](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](32) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[url] [varchar](32) NULL,
 CONSTRAINT [PK_posttype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site]    Script Date: 3/11/2019 3:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[url] [nvarchar](128) NOT NULL,
	[iconname] [nvarchar](64) NULL,
 CONSTRAINT [PK_site] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 3/11/2019 3:23:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](128) NOT NULL,
	[description] [nvarchar](128) NULL,
 CONSTRAINT [PK_tag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRolesRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRolesRole]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRolesUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRolesUser]
GO
ALTER TABLE [dbo].[author]  WITH CHECK ADD  CONSTRAINT [author_AspNetUserId_FK] FOREIGN KEY([AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[author] CHECK CONSTRAINT [author_AspNetUserId_FK]
GO
ALTER TABLE [dbo].[author_site]  WITH CHECK ADD  CONSTRAINT [FK_author_site_author] FOREIGN KEY([authorid])
REFERENCES [dbo].[author] ([id])
GO
ALTER TABLE [dbo].[author_site] CHECK CONSTRAINT [FK_author_site_author]
GO
ALTER TABLE [dbo].[author_site]  WITH CHECK ADD  CONSTRAINT [FK_author_site_site] FOREIGN KEY([siteid])
REFERENCES [dbo].[site] ([id])
GO
ALTER TABLE [dbo].[author_site] CHECK CONSTRAINT [FK_author_site_site]
GO
ALTER TABLE [dbo].[authorhistory]  WITH CHECK ADD  CONSTRAINT [FK_authorhistory_author] FOREIGN KEY([authorid])
REFERENCES [dbo].[author] ([id])
GO
ALTER TABLE [dbo].[authorhistory] CHECK CONSTRAINT [FK_authorhistory_author]
GO
ALTER TABLE [dbo].[book_booktag]  WITH CHECK ADD  CONSTRAINT [FK_book_booktag_book] FOREIGN KEY([bookid])
REFERENCES [dbo].[book] ([id])
GO
ALTER TABLE [dbo].[book_booktag] CHECK CONSTRAINT [FK_book_booktag_book]
GO
ALTER TABLE [dbo].[book_booktag]  WITH CHECK ADD  CONSTRAINT [FK_book_booktag_booktag] FOREIGN KEY([booktagid])
REFERENCES [dbo].[booktag] ([id])
GO
ALTER TABLE [dbo].[book_booktag] CHECK CONSTRAINT [FK_book_booktag_booktag]
GO
ALTER TABLE [dbo].[bookreview]  WITH CHECK ADD  CONSTRAINT [FK_bookreview_book] FOREIGN KEY([bookid])
REFERENCES [dbo].[book] ([id])
GO
ALTER TABLE [dbo].[bookreview] CHECK CONSTRAINT [FK_bookreview_book]
GO
ALTER TABLE [dbo].[bookreview]  WITH CHECK ADD  CONSTRAINT [FK_bookreview_post] FOREIGN KEY([postid])
REFERENCES [dbo].[post] ([id])
GO
ALTER TABLE [dbo].[bookreview] CHECK CONSTRAINT [FK_bookreview_post]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK_post_posttype] FOREIGN KEY([posttypeid])
REFERENCES [dbo].[posttype] ([id])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK_post_posttype]
GO
ALTER TABLE [dbo].[post_author]  WITH CHECK ADD  CONSTRAINT [FK_post_author_author] FOREIGN KEY([authorid])
REFERENCES [dbo].[author] ([id])
GO
ALTER TABLE [dbo].[post_author] CHECK CONSTRAINT [FK_post_author_author]
GO
ALTER TABLE [dbo].[post_author]  WITH CHECK ADD  CONSTRAINT [FK_post_author_post] FOREIGN KEY([postid])
REFERENCES [dbo].[post] ([id])
GO
ALTER TABLE [dbo].[post_author] CHECK CONSTRAINT [FK_post_author_post]
GO
ALTER TABLE [dbo].[post_tag]  WITH CHECK ADD  CONSTRAINT [FK_post_tag_post] FOREIGN KEY([postid])
REFERENCES [dbo].[post] ([id])
GO
ALTER TABLE [dbo].[post_tag] CHECK CONSTRAINT [FK_post_tag_post]
GO
ALTER TABLE [dbo].[post_tag]  WITH CHECK ADD  CONSTRAINT [FK_post_tag_tag] FOREIGN KEY([tagid])
REFERENCES [dbo].[tag] ([id])
GO
ALTER TABLE [dbo].[post_tag] CHECK CONSTRAINT [FK_post_tag_tag]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertPost]    Script Date: 3/11/2019 3:23:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[sp_InsertPost]
  @postTypeID int,
  @title nvarchar(128),
  @slug varchar(64),
  @body nvarchar(max),
  @bodyRaw nvarchar(max),
  @description nvarchar(256),
  @datePublished datetimeoffset(7),
  @excerpt nvarchar(256),
  @imageUrl varchar(1024),
  @isPublic bit,
  @authors varchar(max)
AS
	DECLARE @currentPostID int
	DECLARE @datePublishedID int
	DECLARE @url varchar(128)
BEGIN
    IF @datePublished IS NOT NULL
	BEGIN
		-- generate date published id (number of post published that day)
		SELECT @datePublishedID = ISNULL(max(datepublishedid + 1), 1)
		  FROM dbo.post
		 WHERE DATEDIFF(day, datepublished, @datePublished) = 0;

		-- generate url
		SELECT @url = posttype.code + '/' + convert(varchar(max), year(@datePublished)) + '/' + format(month(@datePublished), '00') + '/' + format(day(@datePublished), '00') + '/' + convert(varchar(max), @datePublishedID) + '/' + @slug
		  FROM dbo.posttype
		 WHERE posttype.id = @postTypeID;
	END;
	
	-- save post
	INSERT INTO dbo.post (posttypeid, title, slug, [url], body, bodyraw, [description], datepublished, datepublishedid, excerpt, imageurl, ispublic)
	VALUES (@postTypeID, @title, @slug, @url, @body, @bodyRaw, @description, @datePublished, @datePublishedID, @excerpt, @imageUrl, @isPublic);

	SELECT @currentPostID = SCOPE_IDENTITY();

	-- save post author
	INSERT INTO dbo.post_author(postid, authorid)
	SELECT @currentPostID, value
	  FROM STRING_SPLIT(@authors, ',');
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUser]    Script Date: 3/11/2019 3:23:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertUser]
  @email nvarchar(256),
  @passwordHash nvarchar(256),
  @userName nvarchar(256)
AS
BEGIN
	INSERT INTO dbo.AspNetUsers(Id, UserName, NormalizedUserName, Email, NormalizedEmail, PasswordHash, EmailConfirmed, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnabled, AccessFailedCount)
	VALUES (NEWID(), @userName, upper(@userName), @email, upper(@email), @passwordHash, 0, 0, 0, 0, 0);
END
GO
USE [master]
GO
ALTER DATABASE [kodexdb] SET  READ_WRITE 
GO
