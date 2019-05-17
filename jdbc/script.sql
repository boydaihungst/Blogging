USE [master]
GO
/****** Object:  Database [Blogging]    Script Date: 5/17/2019 5:39:45 PM ******/
CREATE DATABASE [Blogging]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Blogging', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Blogging.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Blogging_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Blogging_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Blogging] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Blogging].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Blogging] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blogging] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blogging] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blogging] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blogging] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blogging] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Blogging] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Blogging] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blogging] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blogging] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blogging] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blogging] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blogging] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blogging] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blogging] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blogging] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Blogging] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blogging] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blogging] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blogging] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blogging] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blogging] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Blogging] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blogging] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Blogging] SET  MULTI_USER 
GO
ALTER DATABASE [Blogging] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blogging] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blogging] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blogging] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Blogging]
GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 5/17/2019 5:39:45 PM ******/
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
/****** Object:  Table [dbo].[ArticleDetails]    Script Date: 5/17/2019 5:39:45 PM ******/
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
/****** Object:  Table [dbo].[Articles]    Script Date: 5/17/2019 5:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Title] [text] NULL,
	[TimeStamp] [datetime] NOT NULL,
	[PostID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statistic]    Script Date: 5/17/2019 5:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistic](
	[VisitCount] [int] NULL,
	[StatsID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[ArticleDetails] ([Text], [Type], [Image], [PostID], [Author]) VALUES (N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', 4, NULL, 1002, N'Vivianne Russell')
INSERT [dbo].[ArticleDetails] ([Text], [Type], [Image], [PostID], [Author]) VALUES (N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.

Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', 1, NULL, 1003, NULL)
INSERT [dbo].[ArticleDetails] ([Text], [Type], [Image], [PostID], [Author]) VALUES (N'You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth.', 2, NULL, 1004, N'William W. Purkey')
SET IDENTITY_INSERT [dbo].[Articles] ON 

INSERT [dbo].[Articles] ([Title], [TimeStamp], [PostID]) VALUES (N'About Me', CAST(0x0000AA5000000000 AS DateTime), 1002)
INSERT [dbo].[Articles] ([Title], [TimeStamp], [PostID]) VALUES (N'Essential skills for a happy life!', CAST(0x0000A55200000000 AS DateTime), 1003)
INSERT [dbo].[Articles] ([Title], [TimeStamp], [PostID]) VALUES (N'You''ve gotta dance', CAST(0x0000A55200000000 AS DateTime), 1004)
INSERT [dbo].[Articles] ([Title], [TimeStamp], [PostID]) VALUES (NULL, CAST(0x0000A55200000000 AS DateTime), 1005)
SET IDENTITY_INSERT [dbo].[Articles] OFF
SET IDENTITY_INSERT [dbo].[Statistic] ON 

INSERT [dbo].[Statistic] ([VisitCount], [StatsID]) VALUES (684, 1)
SET IDENTITY_INSERT [dbo].[Statistic] OFF
ALTER TABLE [dbo].[ArticleDetails]  WITH CHECK ADD  CONSTRAINT [FK_ArticleDetails_Articles1] FOREIGN KEY([PostID])
REFERENCES [dbo].[Articles] ([PostID])
GO
ALTER TABLE [dbo].[ArticleDetails] CHECK CONSTRAINT [FK_ArticleDetails_Articles1]
GO
USE [master]
GO
ALTER DATABASE [Blogging] SET  READ_WRITE 
GO
