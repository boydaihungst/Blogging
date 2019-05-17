USE [Blogging]
GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 5/17/2019 10:59:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertise](
	[Title] [text] NULL,
	[Icon] [nvarchar](max) NULL,
	[Text] [text] NULL,
	[Path] [nvarchar](255) NULL,
	[AdID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Advertise_1] PRIMARY KEY CLUSTERED 
(
	[AdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticleDetails]    Script Date: 5/17/2019 10:59:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleDetails](
	[Text] [text] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[PostID] [int] NOT NULL,
	[Author] [nvarchar](max) NULL,
 CONSTRAINT [PK_ArticleDetails] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Articles]    Script Date: 5/17/2019 10:59:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Title] [text] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[PostID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statistic]    Script Date: 5/17/2019 10:59:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistic](
	[VisitCount] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[ArticleDetails] ([Text], [Type], [Image], [PostID], [Author]) VALUES (N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', 4, NULL, 1002, N'Vivianne Russell')
SET IDENTITY_INSERT [dbo].[Articles] ON 

INSERT [dbo].[Articles] ([Title], [TimeStamp], [PostID]) VALUES (N'About Me', CAST(0x0000AA5000000000 AS DateTime), 1002)
SET IDENTITY_INSERT [dbo].[Articles] OFF
ALTER TABLE [dbo].[ArticleDetails]  WITH CHECK ADD  CONSTRAINT [FK_ArticleDetails_Articles1] FOREIGN KEY([PostID])
REFERENCES [dbo].[Articles] ([PostID])
GO
ALTER TABLE [dbo].[ArticleDetails] CHECK CONSTRAINT [FK_ArticleDetails_Articles1]
GO
