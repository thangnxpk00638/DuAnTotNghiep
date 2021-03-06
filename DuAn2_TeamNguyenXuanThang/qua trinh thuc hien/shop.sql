USE [master]
GO
/****** Object:  Database [shop]    Script Date: 11/13/2017 9:37:48 PM ******/
CREATE DATABASE [shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
GO
ALTER DATABASE [shop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shop] SET RECOVERY FULL 
GO
ALTER DATABASE [shop] SET  MULTI_USER 
GO
ALTER DATABASE [shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [shop]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Iduser] [int] NOT NULL,
	[Subiduser] [int] NULL,
	[Idcategorynew] [int] NULL,
	[Idcategoryproduct] [int] NULL,
	[Content_main] [nvarchar](max) NOT NULL,
	[Createdate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoryNews]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoryNews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Subcategory] [int] NULL,
	[Url] [varchar](max) NOT NULL,
	[Createdate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Danhmuctintuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categoryproduct]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoryproduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Subcategoryproduct] [int] NULL,
	[Url] [varchar](max) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sohoadon] [varchar](50) NOT NULL,
	[Idproduct] [int] NOT NULL,
	[Prices] [money] NOT NULL,
	[Number] [int] NOT NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Idproduct] [int] NULL,
	[Iduser] [int] NULL,
	[Star] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoiTac]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoiTac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Iduser] [int] NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_DoiTac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[Sohoadon] [varchar](50) NOT NULL,
	[Iduser] [int] NOT NULL,
	[Sum_price] [money] NOT NULL,
	[Status] [int] NOT NULL,
	[Createdate] [datetime] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[Sohoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Iduser] [int] NULL,
	[Title] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Sum_content] [nvarchar](250) NULL,
	[Content_main] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Img] [text] NULL,
	[Views] [int] NULL,
	[Idusermodify] [int] NULL,
	[Modifydate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tintuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Iduser] [int] NULL,
	[name] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[birthday] [datetime] NULL,
	[Country] [nvarchar](50) NULL,
	[mobile] [varchar](15) NULL,
	[phone] [varchar](15) NULL,
	[facebookname] [nvarchar](50) NULL,
	[twittername] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Createdate] [datetime] NULL,
	[Is_active] [bit] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Iduser] [int] NOT NULL,
	[Iddoitac] [int] NOT NULL,
	[Idcategoryproduct] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Price] [money] NOT NULL,
	[Gianhap] [money] NOT NULL,
	[Saleprice] [money] NULL,
	[Img] [text] NOT NULL,
	[Status] [bit] NULL,
	[Content_main] [nvarchar](max) NULL,
	[Sum_content] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[Numbers] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Idroles] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Idroles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/13/2017 9:37:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Idroles] [int] NULL CONSTRAINT [DF_Users_Roleid]  DEFAULT ((2)),
	[Username] [varchar](50) NULL,
	[Pwd] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Fullname] [nvarchar](250) NULL,
	[Img] [text] NULL,
	[Createdate] [datetime] NULL CONSTRAINT [DF_Users_Date]  DEFAULT (getdate()),
	[Is_active] [bit] NULL CONSTRAINT [DF_Users_Trangthai]  DEFAULT ((1)),
	[Address] [nvarchar](250) NULL,
	[Facebookid] [char](15) NULL,
	[FacebookName] [nvarchar](250) NULL,
	[Phone] [varchar](50) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([Id], [Iduser], [name], [lastname], [birthday], [Country], [mobile], [phone], [facebookname], [twittername], [Email], [Createdate], [Is_active]) VALUES (1, 1, N'Tiến', N'Nguyễn Đình', CAST(N'1980-09-30 00:00:00.000' AS DateTime), N'Việt Nam', N'02020102012', N'01251251425', NULL, NULL, N'tiengnguyen2@gmail.com', CAST(N'2017-09-30 11:47:43.240' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (1, N'admin', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (2, N'Trưởng phòng', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (3, N'Nhân viên Bán Hàng', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (4, N'Nhân viên soạn thảo', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (5, N'Nhân viên marketing', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (6, N'Khách Hàng', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (7, N'Kế Toán', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (8, N'Nhân viên kiểm duyệt', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (9, N'Bảo vệ', NULL)
INSERT [dbo].[Roles] ([Idroles], [Name], [Description]) VALUES (10, N'Nhân viên', NULL)
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (1, 1, N'hoangnguyen1995', N'', N'hoangadk123@gmail.com', N'Nguyễn Đình Hoàng', N'gallery3.jpg', CAST(N'2017-09-30 11:47:43.240' AS DateTime), 1, N'', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (3, 1, N'nguyendinhson1971', N'q3XmfiAtN9zlrz8QI7m0bQ==', N'Sonnguyen123@gmail.com', N'Nguyễn Đình Sơn', N'avarta.png', CAST(N'2017-10-28 08:27:34.367' AS DateTime), 1, N'', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (4, 1, N'huy@gmail.com', N'NiOeWhrb5tmg1r2Gw2qtDQ==', N'Nguy?n Huy', N'', N'blog-07.jpg', CAST(N'2017-11-06 21:39:04.530' AS DateTime), 1, N'ádsa', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (5, 1, N'admi232n@gmail.com', N'123', N'admin@gmail.com', N'', N'2017-04-24', CAST(N'2017-11-06 21:39:04.667' AS DateTime), 1, N'', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (6, 2, N'h2323uy@gmail.com', N'123', N'Lê Công', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:04.703' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (7, 2, N'huy21`213@gmail.com', N'123', N'asdad2332', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:04.740' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (8, 2, N'huy22321@gmail.com', N'123', N'Nguy?n H2323uy', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:04.910' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (9, 2, N'1221a31212312@gmail.com', N'123', N'Nguy?n Huy23232', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:04.943' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (10, 2, N'23w@yahoo.com', N'123', N'dsadada', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:04.980' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (14, 2, N'123112312@gmail.com', N'123', N'Nguy?n Huy23', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.107' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (15, 3, N'nhungn2gaycobongem@gmail.com', N'123', N'Nguy?n Huy12', N'hoang', N'2017-04-24', CAST(N'2017-11-06 21:39:05.137' AS DateTime), 1, N'', NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (16, 2, N'admi1an@gmail.com', N'123', N'123', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.170' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (17, 2, N'cxzsdadsa@gmail.com', N'123', N'asdbvfd', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.197' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (18, 2, N'hu1cay@gmail.com', N'123', N'ewqasd', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.230' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (19, 2, N'h21323uy@gmail.com', N'123', N'Nguy?n Huy123213', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.263' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (20, 2, N'1231212312@gmail.com2s', N'123', N'Nguy?n Huy2323', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.293' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (21, 2, N'23sxw@yahoo.com', N'123', N'12', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.327' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (22, 2, N'23sxw@yahoo.com', N'123', N'12sadasd', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.360' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (23, 2, N'hu2xxczy@gmail.com', N'123', N'qeqwe', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.393' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (24, 2, N'3123123@gmail.com', N'123', N'Nguy?n Huy2313', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.427' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (25, 2, N'nguyenthanh@gmail.com', N'123', N'Nguyên Thanh', N'avarta.png', N'2017-04-30', CAST(N'2017-11-06 21:39:05.450' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (26, 2, N'mahoa@gmail.com', N'VCZBXhUhQK4=', N'mahoa', N'avarta.png', N'2017-04-30', CAST(N'2017-11-06 21:39:05.497' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (27, 3, N'admin1@gmail.com', N'VCZBXhUhQK4=', N'admin1', N'avarta.png', N'2017-05-01', CAST(N'2017-11-06 21:39:05.533' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (28, 3, N'admin2@gmail.com', N'VCZBXhUhQK4=', N'admin2', N'avarta.png', N'2017-05-01', CAST(N'2017-11-06 21:39:05.580' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (29, 3, N'thucode@gmail.com', N'NiOeWhrb5tmg1r2Gw2qtDQ==', N'Th? Code', N'4034597_acerholo360.jpg', N'2017-05-01', CAST(N'2017-11-06 21:39:05.607' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (30, 3, N'lehoangnnx@gmail.com', N'GqfKa6m8GNOGz0SuOA5KXQ==', N'th? Mail', N'avarta.png', N'2017-05-04', CAST(N'2017-11-06 21:39:05.640' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (31, 1, N'thatnguyen.cukuin@gmail.com', N'CtAzbL0dMIvPj36BBqzTnw==', N'Nguy?n Ðình Hoàng', N'avarta.png', N'2017-07-10', CAST(N'2017-11-06 21:39:05.670' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (32, 2, N'23w@yahoo.com', N'123', N'dsadada', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.703' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (33, 2, N'huyav@gmail.com', N'123', N'asd22', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.730' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (34, 2, N'wqes@gmail.com', N'123', N'eweqweqe', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.750' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (35, 2, N'huy@1gmail.com', N'123', N'Nguy?n Huy2323', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.777' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (36, 2, N'123112312@gmail.com', N'123', N'Nguy?n Huy23', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.803' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (37, 2, N'nhungn2gaycobongem@gmail.com', N'123', N'Nguy?n Huy12', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.830' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (38, 2, N'admi1an@gmail.com', N'123', N'123', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.857' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (39, 2, N'cxzsdadsa@gmail.com', N'123', N'asdbvfd', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.883' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (40, 2, N'hu1cay@gmail.com', N'123', N'ewqasd', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.910' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (41, 2, N'h21323uy@gmail.com', N'123', N'Nguy?n Huy123213', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.937' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (42, 2, N'1231212312@gmail.com2s', N'123', N'Nguy?n Huy2323', NULL, N'2017-04-24', CAST(N'2017-11-06 21:39:05.967' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Idroles], [Username], [Pwd], [Email], [Fullname], [Img], [Createdate], [Is_active], [Address], [Facebookid], [FacebookName], [Phone], [Description]) VALUES (44, 6, N'Hoangdinhnguyen1998', N'q3XmfiAtN9zlrz8QI7m0bQ==', N'hoangnguyen.cukuin@gmail.com', N'Nguyeenx Do', N'avarta.png', CAST(N'2017-11-12 23:28:15.220' AS DateTime), 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[CategoryNews] ADD  CONSTRAINT [DF_Danhmuctintuc_Ngaytao]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[Categoryproduct] ADD  CONSTRAINT [DF_Categorys_Ngaytao]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_Tintuc_Ngaydang]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_Tintuc_Trangthai]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_Tintuc_Views]  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_Tintuc_Usersua]  DEFAULT ((0)) FOR [Idusermodify]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_Tintuc_Ngaysua]  DEFAULT (getdate()) FOR [Modifydate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Gianhap]  DEFAULT ((0)) FOR [Gianhap]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Saleprice]  DEFAULT ((0)) FOR [Saleprice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Img]  DEFAULT ('avarta.png') FOR [Img]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_News] FOREIGN KEY([Idcategorynew])
REFERENCES [dbo].[News] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_News]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_Products] FOREIGN KEY([Idcategoryproduct])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_Products]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([Sohoadon])
REFERENCES [dbo].[DonHang] ([Sohoadon])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Products] FOREIGN KEY([Idproduct])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Products]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Products] FOREIGN KEY([Idproduct])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_Products]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_Users] FOREIGN KEY([Iduser])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categoryproduct] FOREIGN KEY([Idcategoryproduct])
REFERENCES [dbo].[Categoryproduct] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categoryproduct]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_DoiTac] FOREIGN KEY([Iddoitac])
REFERENCES [dbo].[DoiTac] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_DoiTac]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([Idroles])
REFERENCES [dbo].[Roles] ([Idroles])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [shop] SET  READ_WRITE 
GO
