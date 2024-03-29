USE [Blogging]
GO
/****** Object:  Table [dbo].[About]    Script Date: 6/4/2019 9:28:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [text] NOT NULL,
	[Text] [text] NOT NULL,
	[Author] [text] NOT NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 6/4/2019 9:28:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertise](
	[Title] [text] NULL,
	[Content] [text] NULL,
	[AdID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Advertise_1] PRIMARY KEY CLUSTERED 
(
	[AdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticleDetails]    Script Date: 6/4/2019 9:28:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleDetails](
	[Text] [text] NULL,
	[Image] [nvarchar](max) NULL,
	[PostID] [int] NOT NULL,
	[Author] [nvarchar](max) NULL,
 CONSTRAINT [PK_ArticleDetails] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Articles]    Script Date: 6/4/2019 9:28:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Title] [text] NULL,
	[TimeStamp] [datetime] NOT NULL,
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [tinyint] NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statistic]    Script Date: 6/4/2019 9:28:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistic](
	[VisitCount] [int] NULL,
	[StatsID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([ID], [Title], [Text], [Author]) VALUES (1, N'About Me', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', N'Vivianne Russell')
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[Advertise] ON 

INSERT [dbo].[Advertise] ([Title], [Content], [AdID]) VALUES (N'Share this page', N'<div class="adv-item">
            <a href="#">
                <img src="" alt=""/>
                <p class="underline">Share on Facebook</p>
            </a>
        </div>
        <div class="adv-item">
            <a href="#">
                <img src="" alt=""/>
                <p class="underline">Share on Twitter</p>
            </a>
        </div>', 1)
INSERT [dbo].[Advertise] ([Title], [Content], [AdID]) VALUES (N'Create a website', N'
            <div class="adv-item">
                <p>Everybody can create a website, it''s easy.</p>
            </div>
            <div class="button text-center">Try it for FREE now</div>', 2)
SET IDENTITY_INSERT [dbo].[Advertise] OFF
INSERT [dbo].[ArticleDetails] ([Text], [Image], [PostID], [Author]) VALUES (N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.

Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', N'image-girl.jpg', 1, NULL)
INSERT [dbo].[ArticleDetails] ([Text], [Image], [PostID], [Author]) VALUES (N'“You''ve gotta dance like there''s nobody watching,<br>Love like you''ll never be hurt,<br>Sing like there''s nobody listening,<br>And live like it''s heaven on earth.” ', NULL, 3, N'William W. Purkey')
INSERT [dbo].[ArticleDetails] ([Text], [Image], [PostID], [Author]) VALUES (NULL, N'image-street.jpg', 4, NULL)
SET IDENTITY_INSERT [dbo].[Articles] ON 

INSERT [dbo].[Articles] ([Title], [TimeStamp], [PostID], [Type]) VALUES (N'Essential skills for a happy life!', CAST(0x0000A55200000000 AS DateTime), 1, 1)
INSERT [dbo].[Articles] ([Title], [TimeStamp], [PostID], [Type]) VALUES (N'You''ve gotta dance', CAST(0x0000A6C000000000 AS DateTime), 3, 2)
INSERT [dbo].[Articles] ([Title], [TimeStamp], [PostID], [Type]) VALUES (N'Photo', CAST(0x0000A53300000000 AS DateTime), 4, 3)
SET IDENTITY_INSERT [dbo].[Articles] OFF
SET IDENTITY_INSERT [dbo].[Statistic] ON 

INSERT [dbo].[Statistic] ([VisitCount], [StatsID]) VALUES (1505, 1)
SET IDENTITY_INSERT [dbo].[Statistic] OFF
ALTER TABLE [dbo].[ArticleDetails]  WITH CHECK ADD  CONSTRAINT [FK_ArticleDetails_Articles1] FOREIGN KEY([PostID])
REFERENCES [dbo].[Articles] ([PostID])
GO
ALTER TABLE [dbo].[ArticleDetails] CHECK CONSTRAINT [FK_ArticleDetails_Articles1]
GO
