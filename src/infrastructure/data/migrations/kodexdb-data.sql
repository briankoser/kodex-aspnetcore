USE [kodexdb]
GO
/****** Object:  Table [dbo].[author]    Script Date: 2018-08-21 9:23:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](64) NOT NULL,
	[firstname] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_author] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[author_site]    Script Date: 2018-08-21 9:23:41 PM ******/
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
/****** Object:  Table [dbo].[authorhistory]    Script Date: 2018-08-21 9:23:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorhistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[authorid] [int] NOT NULL,
	[bio] [nvarchar](256) NULL,
	[enddate] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_authorhistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book]    Script Date: 2018-08-21 9:23:41 PM ******/
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
/****** Object:  Table [dbo].[book_booktag]    Script Date: 2018-08-21 9:23:41 PM ******/
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
/****** Object:  Table [dbo].[bookreview]    Script Date: 2018-08-21 9:23:42 PM ******/
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
/****** Object:  Table [dbo].[booktag]    Script Date: 2018-08-21 9:23:42 PM ******/
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
/****** Object:  Table [dbo].[post]    Script Date: 2018-08-21 9:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[posttypeid] [tinyint] NOT NULL,
	[title] [nvarchar](128) NOT NULL,
	[slug] [varchar](64) NOT NULL,
	[url] [varchar](128) NOT NULL,
	[body] [nvarchar](max) NULL,
	[description] [nvarchar](256) NULL,
	[datepublished] [datetimeoffset](7) NULL,
	[datepublishedid] [tinyint] NULL,
	[datelastupdated] [datetimeoffset](7) NULL,
	[excerpt] [nvarchar](256) NULL,
	[imageurl] [varchar](1024) NULL,
	[ispublic] [bit] NOT NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_author]    Script Date: 2018-08-21 9:23:42 PM ******/
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
/****** Object:  Table [dbo].[post_tag]    Script Date: 2018-08-21 9:23:42 PM ******/
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
/****** Object:  Table [dbo].[posttype]    Script Date: 2018-08-21 9:23:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posttype](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](32) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_posttype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site]    Script Date: 2018-08-21 9:23:43 PM ******/
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
/****** Object:  Table [dbo].[tag]    Script Date: 2018-08-21 9:23:43 PM ******/
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
SET IDENTITY_INSERT [dbo].[posttype] ON 

INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (1, N'article', N'Article')
INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (2, N'note', N'Note')
INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (3, N'album', N'Photo Album')
INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (4, N'recipe', N'Recipe')
INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (5, N'video', N'Video')
INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (6, N'bookReview', N'Book Review')
INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (7, N'productReview', N'Product Review')
INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (8, N'movieReview', N'Movie Review')
INSERT [dbo].[posttype] ([id], [code], [name]) VALUES (9, N'boardGameReview', N'Board Game Review')
SET IDENTITY_INSERT [dbo].[posttype] OFF
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
