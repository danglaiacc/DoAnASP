USE [master]
GO
/****** Object:  Database [QL_BANSACH]    Script Date: 15/06/2020 8:25:52 AM ******/
CREATE DATABASE [QL_BANSACH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_BANSACH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL\MSSQL\DATA\QL_BANSACH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_BANSACH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL\MSSQL\DATA\QL_BANSACH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QL_BANSACH] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_BANSACH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_BANSACH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_BANSACH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_BANSACH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_BANSACH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_BANSACH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_BANSACH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_BANSACH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_BANSACH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_BANSACH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_BANSACH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_BANSACH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_BANSACH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_BANSACH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_BANSACH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_BANSACH] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_BANSACH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_BANSACH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_BANSACH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_BANSACH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_BANSACH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_BANSACH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_BANSACH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_BANSACH] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_BANSACH] SET  MULTI_USER 
GO
ALTER DATABASE [QL_BANSACH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_BANSACH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_BANSACH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_BANSACH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_BANSACH] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_BANSACH', N'ON'
GO
ALTER DATABASE [QL_BANSACH] SET QUERY_STORE = OFF
GO
USE [QL_BANSACH]
GO
/****** Object:  Table [dbo].[CHU_DE]    Script Date: 15/06/2020 8:25:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHU_DE](
	[Mcd] [int] IDENTITY(1,1) NOT NULL,
	[Ten_chu_de] [nvarchar](50) NULL,
	[PID] [int] NULL,
 CONSTRAINT [PK_CHU_DE] PRIMARY KEY CLUSTERED 
(
	[Mcd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DAT_HANG]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DAT_HANG](
	[Mctddh] [int] IDENTITY(1,1) NOT NULL,
	[Sdh] [int] NOT NULL,
	[Ms] [int] NOT NULL,
	[So_luong] [int] NULL,
	[Don_gia] [float] NULL,
	[Thanh_tien] [float] NULL,
 CONSTRAINT [PK_CT_DAT_HANG] PRIMARY KEY CLUSTERED 
(
	[Mctddh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_DAT_HANG]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_DAT_HANG](
	[Sdh] [int] IDENTITY(1,1) NOT NULL,
	[Mkh] [int] NULL,
	[Ngay_dat_hang] [datetime] NOT NULL,
	[Tri_gia] [money] NULL,
	[Da_giao_hang] [bit] NOT NULL,
	[Ngay_giao_hang] [datetime] NULL,
 CONSTRAINT [PK_DON_DAT_HANG] PRIMARY KEY CLUSTERED 
(
	[Sdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[Mkh] [int] IDENTITY(1,1) NOT NULL,
	[Ho_ten] [nvarchar](50) NOT NULL,
	[Dia_chi] [nvarchar](50) NULL,
	[Dien_thoai] [nvarchar](10) NULL,
	[Ten_dang_nhap] [nvarchar](15) NOT NULL,
	[Mat_khau] [nvarchar](15) NOT NULL,
	[Ngay_sinh] [datetime] NULL,
	[Gioi_tinh] [bit] NOT NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[Mkh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHA_XUAT_BAN]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHA_XUAT_BAN](
	[Mnxb] [int] IDENTITY(1,1) NOT NULL,
	[Ten_nha_xuat_ban] [nvarchar](100) NULL,
	[Dia_chi] [nvarchar](150) NULL,
	[Dien_thoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_NHA_XUAT_BAN] PRIMARY KEY CLUSTERED 
(
	[Mnxb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANG_CAO]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANG_CAO](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenCTy] [nvarchar](200) NULL,
	[Hinh_Minh_Hoa] [nvarchar](100) NULL,
	[HREF] [nvarchar](100) NULL,
	[Ngay_bat_dau] [datetime] NULL,
	[Ngay_het_han] [datetime] NULL,
 CONSTRAINT [PK_QUANG_CAO] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[Ms] [int] IDENTITY(1,1) NOT NULL,
	[Ten_sach] [nvarchar](100) NOT NULL,
	[Don_gia] [money] NULL,
	[Don_vi_tinh] [nvarchar](10) NULL,
	[Mo_ta] [nvarchar](max) NULL,
	[Hinh_minh_hoa] [nvarchar](200) NULL,
	[Mcd] [int] NULL,
	[Mnxb] [int] NULL,
	[Ngay_cap_nhat] [datetime] NULL,
	[So_luong_ban] [int] NULL,
	[So_lan_xem] [int] NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[Ms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAC_GIA]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAC_GIA](
	[Mtg] [int] IDENTITY(1,1) NOT NULL,
	[Ten_tac_gia] [nvarchar](50) NULL,
	[Dia_chi] [nvarchar](100) NULL,
	[Dien_thoai] [nvarchar](15) NULL,
	[ChiTietTacGia] [nvarchar](1000) NULL,
	[hinhTacGia] [nchar](10) NULL,
 CONSTRAINT [PK_TAC_GIA] PRIMARY KEY CLUSTERED 
(
	[Mtg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THAM_GIA]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAM_GIA](
	[Ms] [int] NOT NULL,
	[Mtg] [int] NOT NULL,
	[Vai_tro] [nvarchar](50) NULL,
 CONSTRAINT [PK_THAM_GIA] PRIMARY KEY CLUSTERED 
(
	[Ms] ASC,
	[Mtg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHU_DE] ON 

INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (4, N'Ngoại ngữ', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (5, N'Tin Học', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (7, N'Luật ', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (9, N'Văn học trong nước', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (10, N'Văn học nước ngoài', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (12, N'Khoa học cơ bản', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (13, N'Khoa học thần bí', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (14, N'Khoa học kỹ thuật', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (15, N'Nông nghiệp', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (16, N'Triết học-Chính trị', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (17, N'Lịch sử, địa lý', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (18, N'Phong tục', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (19, N'Tôn giáo', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (20, N'Mỹ thuật', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (21, N'Nghệ thuật', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (22, N'Âm nhạc', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (23, N'Sách giáo khoa', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (24, N'Sách tham khảo', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (25, N'Nhà ở', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (27, N'Nghệ thuật sống', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (28, N'Thể dục thể thao', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (29, N'Giới tính va sinh lý', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (31, N'Nữ công gia chánh', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (32, N'Nghệ thuật làm đẹp', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (33, N'Du lịch', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (36, N'Y Học', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (37, N'Kế toán', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (39, N'Thiên văn', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (51, N'Tình Yêu Gia Đình', NULL)
SET IDENTITY_INSERT [dbo].[CHU_DE] OFF
SET IDENTITY_INSERT [dbo].[CT_DAT_HANG] ON 

INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (1, 45, 65, 2, 22000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (2, 45, 64, 2, 198000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (3, 45, 27, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (4, 46, 64, 1, 198000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (5, 46, 63, 1, 29000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (6, 47, 65, 1, 22000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (7, 47, 27, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (8, 48, 65, 1, 22000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (9, 48, 64, 1, 198000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (10, 49, 27, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (11, 49, 43, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (12, 55, 65, 2, NULL, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (13, 55, 64, 3, NULL, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (14, 55, 62, 1, NULL, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (16, 60, 65, 2, 22000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (17, 61, 19, 1, 16800, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (18, 61, 33, 1, 25000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (19, 61, 43, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (20, 61, 64, 1, 198000, NULL)
SET IDENTITY_INSERT [dbo].[CT_DAT_HANG] OFF
SET IDENTITY_INSERT [dbo].[DON_DAT_HANG] ON 

INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (1, 1, CAST(N'2004-09-19T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (2, 2, CAST(N'2004-09-20T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (3, 5, CAST(N'2004-09-19T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (4, 1, CAST(N'2004-09-19T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (5, 5, CAST(N'2004-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (44, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (45, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (46, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (47, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (48, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (49, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (50, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (51, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (52, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (53, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (54, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (55, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (56, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (57, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (58, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (59, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (60, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (61, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[DON_DAT_HANG] OFF
SET IDENTITY_INSERT [dbo].[KHACH_HANG] ON 

INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (1, N'Phạm Văn Khoa', N'Trần Huy Liệu', N'0918062755', N'pvkhoa', N'', CAST(N'1962-07-08T00:00:00.000' AS DateTime), 0, N'pvkhoa@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (2, N'Nguyễn Tiến Luân', N'Quận 6', N'Chưa có', N'ntluan', N'luan', CAST(N'1974-07-15T00:00:00.000' AS DateTime), 1, N'ntluan@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (3, N'Đặng Quốc Hòa', N'Sư Vạn Hạnh', N'Chưa có', N'dqhoa', N'hoa', CAST(N'1965-07-24T00:00:00.000' AS DateTime), 1, N'dqhoa@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (4, N'Ngô Ngọc Ngân', N'Khu chung cư', N'0918544699', N'nnngan', N'ngan', CAST(N'1946-08-15T00:00:00.000' AS DateTime), 1, N'nnngan@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (5, N'Đỗ Quỳnh Hương', N'Cống Quỳnh', N'0908123456', N'dqhuong', N'huong', CAST(N'1982-03-24T00:00:00.000' AS DateTime), 0, N'dqhuong@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (7, N'Trần Thị Thu Trang', N'Nơ Trang Long', N'Chưa có', N'ttttrang       ', N'trang          ', CAST(N'1962-08-05T00:00:00.000' AS DateTime), 0, N'ttrang@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (8, N'Nguyễn Thiên Thanh', N'Hai Bà Trưng', N'0908320111', N'ntthanh', N'thanh', CAST(N'1979-04-04T00:00:00.000' AS DateTime), 0, N'ntthanh@t3h.hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (9, N'Trần Thị Hải Yến', N'Trần Hưng Đạo', N'8111111   ', N'tthyen', N'yen', CAST(N'1975-07-15T00:00:00.000' AS DateTime), 0, N'tthyan@vol.vnn.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (10, N'Nguyễn Thị Thanh Mai', N'Trần Quang Diệu', N'81111222', N'nttmai         ', N'mai            ', CAST(N'1982-09-15T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (11, N'Nguyễn Thành Danh', N'Cộng Hòa', N'8103751   ', N'ntdanh', N'danh', CAST(N'1977-07-16T00:00:00.000' AS DateTime), 1, N'ntdanh@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (12, N'Phạm Thị Nga', N'Q6 - Tp.HCM', N'0831564512', N'ptnga', N'nga', CAST(N'2003-08-18T00:00:00.000' AS DateTime), 0, N'ptnhung@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (30, N'Lê Doanh Doanh', N'2Bis Hùng Vương', N'07077865', N'lddoanh', N'doanh', CAST(N'1977-05-06T00:00:00.000' AS DateTime), 0, N'lddoanh@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (33, N'Đòan Ngọc Minh Tâm', N'2 Đinh Tiên Hòang', N'0909092222', N'dnmtam', N'tam', CAST(N'1978-05-15T00:00:00.000' AS DateTime), 0, N'ndmtam@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (46, N'Trần Khải Nhi', N'3 Bùi Hữu Nghĩa', N'0909095555', N'tknhi', N'nhi', CAST(N'1980-04-01T00:00:00.000' AS DateTime), 1, N'tknhi@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (47, N'Đặng Quốc Lai', N'Quốc lộ 13', N'0772470922', N'danglaiacc', N'abc', CAST(N'2000-12-22T00:00:00.000' AS DateTime), 1, N'danglai.mail@gmail.com')
SET IDENTITY_INSERT [dbo].[KHACH_HANG] OFF
SET IDENTITY_INSERT [dbo].[NHA_XUAT_BAN] ON 

INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (1, N'Nhà xuất bản Trẻ', N'124 Nguyễn Văn Cừ Q.1 Tp.HCM', N'19001560')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (2, N'NXB Thống kê', N'Biên Hòa-Đồng Nai', N'19001511')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (3, N'Kim đồng', N'Tp.HCM', N'19001570')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (4, N'Đại học quốc gia', N'Tp.HCM', N'0908419981')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (5, N'Văn hóa nghệ thuật', N'Đà Nẵng', N'0903118833')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (6, N'Văn hóa', N'Bình Dương', N'0913336677')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (7, N'Lao động - Xã hội', N'Tp.HCM', N'0989888888')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (8, N'Khoa Học & Kỹ Thuật', N'Hà Nội', N'8351056')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (9, N'Thanh Niên', N'Tp.HCM', N'4545454')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (13, N'NXB Tài Chính', N'Huế', N'')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (14, N'NXB Phụ Nữ', N'Tp.HCM', N'')
SET IDENTITY_INSERT [dbo].[NHA_XUAT_BAN] OFF
SET IDENTITY_INSERT [dbo].[QUANG_CAO] ON 

INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (1, N'Thời trang Việt Nam', N'Thoitrang', N'http://www.vietfashion.vn/', NULL, NULL)
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (2, N'Bột giặt Omo', N'Omo', N'http://www.haydetretudo.com.vn/', CAST(N'2005-05-10T00:00:00.000' AS DateTime), CAST(N'2006-06-10T00:00:00.000' AS DateTime))
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (3, N'Bánh Trung thu', N'Trungthu', N'http://demo10.webinvietnam.com/For_Ad/h/hanobaco/', CAST(N'2005-05-10T00:00:00.000' AS DateTime), CAST(N'2005-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (10, N'Sữa Cô gái Hà Lan', N'Fristi', N'http://www.dutchlady.com.vn', CAST(N'2005-05-10T00:00:00.000' AS DateTime), CAST(N'2006-06-10T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[QUANG_CAO] OFF
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (1, N'Giáo trình Tin học cơ bản new', 26000.0000, N'Cuốn', N'Nội dung của cuốn: Tin Học Cơ Bản Windows XP gồm có 7 chương:
Chương 1: Một số vấn đề cơ bản. 
Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong My Computer và Windows Explorer. 
Chương 3: Các thao tác trong windows XP. 
Chương 4: Các thiết lập trong Windows XP. 
Chương 5: Bảo trì máy tính. 
Chương 6: Các phím tắt 
Chương 7: Hỏi và đáp các thắc mắc.
Xin trân trọng giới thiệu cuốn sách cùng bạn', N'THCB.jpg', 5, 1, CAST(N'2004-07-17T00:00:00.000' AS DateTime), 120, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (2, N'Giáo trình Tin học văn phòng', 12000.0000, N'Cuốn', N'Cuốn sách này gồm 3 phần sau:
Phần 1: Xử lý văn bản trong Microsoft Office Word 2007. 
Phần 2: Xử lý bảng tính trong Microsoft Office Excel 2007. 
Phần 3: Quản lý cơ sở dữ liệu trong Microsoft Office Access 2007.
Xin trân trọng giới thiệu cùng các bạn.', N'TH004.jpg', 5, 2, CAST(N'2004-06-05T00:00:00.000' AS DateTime), 25, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (3, N'Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0', 11500.0000, N'Cuốn', N'Cuốn sách "Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0" này giới thiệu các nội dung sau:
Chương 1: Căn bản về cơ sở dữ liệu.
Chương 2: Các bộ kết nối và tương tác dữ liệu.
Chương 3: Bộ chứa dữ liệu DataSet.
Chương 4: Bộ điều hợp dữ liệu DataAdapter.
Chương 5: Sử dụng các điều khiển ràng buộc dữ liệu.
Chương 6: Tạo báo cáo với Crystal Report.
Chương 7: ADO.NET và XML.
Xin trân trọng giới thiệu cùng các bạn.', N'Gt_Thcb.jpg', 5, 3, CAST(N'2004-07-12T00:00:00.000' AS DateTime), 130, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (4, N'Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web Với Cơ Sở Dữ Liệu', 20000.0000, N'Cuốn', N'"Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web Với Cơ Sở Dữ Liệu" sẽ cung cấp kỹ thuật và hướng dẫn bạn:
Tự học xây dựng ứng dụng Web quản lý CSDL toàn diện với ADO.NET 2.0 và ASP.NET. 
Khai thác các đối tượng và nguồn dữ liệu dành cho WebForm. 
Sử dụng các điều khiển dữ liệu đặc thù dành riêng cho ASP.NET và Web. 
Làm quen với những khái niệm xử lý dữ liệu hoàn toàn mới. 
Ràng buộc dữ liệu với các thành phần giao diện Web Forms. 
Thiết kế ứng dụng Web "Quản lý CD Shop" trực quan và thực tế. 
Cung cấp một kiến thức hoàn chỉnh về Web cho các bạn yêu thích ngôn ngữ Visual Basic và .NET Framework.
Sách có kèm theo CD-ROM bài tập.
Xin trân trọng giới thiệu cùng các bạn.', N'LTWeb2005.jpg', 5, 4, CAST(N'2004-07-18T00:00:00.000' AS DateTime), 150, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (5, N'Giáo trình Tin học quản lý 1', 21000.0000, N'Cuốn', N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu.', N'TH001.jpg', 5, 1, CAST(N'2004-06-18T00:00:00.000' AS DateTime), 170, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (6, N'Giáo trình Tin học quản lý 2', 21000.0000, N'Cuốn', N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn.', N'130499.jpg', 5, 5, CAST(N'2004-05-15T00:00:00.000' AS DateTime), 65, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (7, N'Giáo trình SQL Server', 18000.0000, N'Cuốn', N'Hệ quản trị cơ sở dữ liệu SQl Server 2003
Test thu', N'Gt_Thcb.jpg', 5, 6, CAST(N'2004-08-16T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (8, N'Giáo trình Phân tích hệ thống', 61000.0000, N'Cuốn', N'', N'Gt_Thcb.jpg', 5, 7, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (9, N'Giáo trình VB.Net 1', 25000.0000, N'Cuốn', N'', N'Gt_Thcb.jpg', 5, 8, CAST(N'2003-02-11T00:00:00.000' AS DateTime), 87, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (10, N'Giáo trình VB.Net 2', 23000.0000, N'Cuốn', N'', N'Gt_Thcb.jpg', 5, 2, CAST(N'2002-04-12T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (11, N'Giáo trình Oracle ', 61000.0000, N'Cuốn', N' ', N'Gt_Thcb.jpg', 5, 3, CAST(N'2001-09-16T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (13, N'Phong Cách Quản Lý Kinh Doanh Hiện Đại ', 61000.0000, N'Cuốn', N'Cuốn sách này không đi vào chi tiết những chủ đề quản lý cổ điển đã được nhắc đến trong nhiều cuốn sách khác như tổ chức cuộc họp, cung cấp số liệu, quản lý thời gian. Mục đích của cuốn sách này là mang lại cho bạn "nhiều hơn", một giá trị gia tăng so với những gì bạn đã biết và đã áp dụng, và giúp bạn tối ưu hóa việc quản lý chuyên môn và quản lý nhân sự.
Nội dung sách bao gồm 9 chương:
Chương 1: Bốn cách nhìn quản lý theo sắc màu.
Chương 2: Quản lý các sắc màu của một cộng tác viên.
Chương 3: Quản lý nhóm theo màu sắc.
Chương 4: Quyết định cách thích hợp dựa vào bản thân, người khác và hoàn cảnh.
Chương 5: Phát triển hiệu quả tối ưu theo sắc màu.
Chương 6: Hiểu rõ những sai lệch trong cách quản lý của mình.
Chương 7: Nền tảng cơ sở của hệ thống Success Insights: Bốn màu với tám kiểu.
Chương 8: Nhận biết và quản lý tám kiểu cộng tác viên.
Chương 9: Cải thiện người quản lý.
Xin trân trọng giới thiệu. 
', N'KT0001.jpg', 9, 8, CAST(N'2003-09-16T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (14, N'Giáo Trình Lý Thuyết Tài Chính - Tiền Tệ ', 23000.0000, N'Cuốn', N'Cuốn sách này không đi vào chi tiết những chủ đề quản lý cổ điển đã được nhắc đến trong nhiều cuốn sách khác như tổ chức cuộc họp, cung cấp số liệu, quản lý thời gian. Mục đích của cuốn sách này là mang lại cho bạn "nhiều hơn", một giá trị gia tăng so với những gì bạn đã biết và đã áp dụng, và giúp bạn tối ưu hóa việc quản lý chuyên môn và quản lý nhân sự.
Nội dung sách bao gồm 9 chương:
Chương 1: Bốn cách nhìn quản lý theo sắc màu.
Chương 2: Quản lý các sắc màu của một cộng tác viên.
Chương 3: Quản lý nhóm theo màu sắc.
Chương 4: Quyết định cách thích hợp dựa vào bản thân, người khác và hoàn cảnh.
Chương 5: Phát triển hiệu quả tối ưu theo sắc màu.
Chương 6: Hiểu rõ những sai lệch trong cách quản lý của mình.
Chương 7: Nền tảng cơ sở của hệ thống Success Insights: Bốn màu với tám kiểu.
Chương 8: Nhận biết và quản lý tám kiểu cộng tác viên.
Chương 9: Cải thiện người quản lý.
Xin trân trọng giới thiệu. 
', N'KT0001.jpg', 13, 7, CAST(N'2003-05-24T00:00:00.000' AS DateTime), 58, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (15, N'Cán Bộ Quản Lý Trong Sản Xuất Công Nghiệp', 25000.0000, N'Cuốn', N'Cuốn sách này gồm những nội dung chính sau:
Phần 1: Quản lý sản xuất công nghiệp trong kinh tế thị trường
- Kinh doanh sản xuất công nghiệp trong kinh tế thị trường
- Sự cần thiết và các chức năng của quản lý nhà nước đối với doanh nghiệp sản xuất công nghiệp
- Nội dung và tính chất của những công việc mà cán bộ quản lý sản xuất công nghiệp phải đảm nhiệm, hoàn thành.
- Kinh nghiệm đào tạo và đánh giá cán bộ quản lý kinh doanh ở Nhật.
Phần 2: Thực trạng và một số giải pháp nhằm nâng cao chất lượng đội ngũ cán bộ quản lý sản xuất công nghiệp Việt Nam
- Thực trạng cán bộ quản lý doanh nghiệp công nghiệp của Việt Nam
- Tiêu chuẩn hóa cán bộ quản lý sản xuất công nghiệp Việt Nam
- Đổi mới căn bản nội dung và phương pháp đào tạo cán bộ quản lý sản xuất công nghiệp Việt Nam
Xin trân trọng giới thiệu. 
 
', N'KT0001.jpg', 5, 6, CAST(N'2003-08-27T00:00:00.000' AS DateTime), 89, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (16, N'Tư Duy Chiến Lược (Quản Lý - Tại Sao? Thế Nào?', 18000.0000, N'Cuốn', N'Khả năng hoạch định dài hạn đồng thời tối ưu hóa tình hình hoạt động ngắn hạn là một yêu cầu bắt buộc phải có đối với các nhà quản lý.Tư Duy Chiến Lược sẽ giúp bạn vạch ra con đường đến thành công đồng thời giúp hình thành các kỹ năng phân tích và hoạch định theo nhóm. Tất cả các lĩnh vực then chốt để hình thành và thực thi một chiến lược đều được trình bày cặn kẽ trong cuốn sách này, từ việc nghiên cứu và thu thập thông tin nền tảng, hình thành một chiến lược mới đến việc xem xét và ứng dụng chiến lược ấy. Cả thảy có 101 chỉ dẫn nhằm cung cấp cho các bạn những lời khuyên thực tiễn hơn, đồng thời bài tập tự đánh giá sẽ giúp bạn xác định xem mình là một nhà tư duy chiến lược hiệu quả đến mức nào. Khi bạn có nhiều tham vọng hơn về việc hoạch định cho tương lai, cẩm nang này sẽ là quyển sách tham khảo không thể thiếu, giúp suy nghĩ của bạn đi đúng hướng.
Xin trân trọng giới thiệu cuốn sách cùng bạn. ', N'KT0001.jpg', 28, 3, CAST(N'2003-09-19T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (17, N'Quản Lý Dự Án (Quản Lý - Tại Sao? Thế Nào?) ', 61000.0000, N'Cuốn', N'Để thành công trong môi trường kinh doanh cạnh tranh hiện nay, các giám đốc dự án phải đạt được kết quả trong phạm thời gian và ngân sách đưa ra. Biết cách áp dụng các quy trình, phương pháp và kỹ thuật chỉ dẫn trong cuốn Quản Lý Dự Án này, bạn sẽ tăng tối đa khả năng thực hiện công việc và đảm bảo đạt kết quả tối ưu khi thực hiện dự án.
Được thiết kế phù hợp với tất cả các nhà quản lý ở đủ mọi trình độ, cẩm nang này sẽ trang bị cho bạn những kiến thức cần thiết trong việc quản lý mọi dự án, dù lớn hay nhỏ, để đạt đến thành công. Từ việc khởi xướng một dự án, thúc đẩy, phát triển nhóm dự án đến việc vượt qua những khó khăn, trở ngại; mỗi một khía cạnh của quản lý dự án chuyện nghiệp đều được trình bày một cách rõ nét. Cẩm nang bao gồm các hướng dẫn từng bước về hoạch định dự án và 101 mẹo vặt cung cấp cho bạn những lời khuyên thực tế. 
', N'KT0001.jpg', 4, 8, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (18, N'Điều Chỉnh Một Số Chính Sách Kinh Tế Ở Trung Quốc (Giai Đoạn 1992 - 2010)', 21000.0000, N'Cuốn', N'Cuốn sách này tập trung vào một số nội dung chính sau đây:

Tìm hiểu về những nhân tố đòi hỏi Trung Quốc phải điều chỉnh chính sách kinh tế.

Tìm hiểu về những nội dung chính trong điều chỉnh kinh tế ở Trung Quốc giai đoạn từ năm 1992 - 2010.

Tìm hiểu về tác động của việc điều chỉnh chính sách kinh tế của Trung Quốc đối với thế giới và khu vực trong đó có Việt Nam, sau đó rút tỉa một số kinh nghiệm của Trung Quốc trong quá trình điều chỉnh chính sách kinh tế mà Việt Nam có thể tham khảo.
Tập thể tác giả tham gia công trình này đều là những người chuyên nghiên cứu về Trung Quốc, hy vọng sẽ đem lại cho các bạn nhiều thông tin bổ ích.', N'KT0001.jpg', 5, 7, CAST(N'2004-05-15T00:00:00.000' AS DateTime), 19, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (19, N'Hợp Đồng Kinh Tế Trong Kinh Doanh ', 16800.0000, N'Cuốn', N' ', N'KT0001.jpg', 14, 6, CAST(N'2004-08-16T00:00:00.000' AS DateTime), 46, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (20, N'Từ Xiatơn Đến Đôha - Toàn Cầu Hóa Và Tổ Chức Thương Mại Thế Giới (Tiếng Nói Bè Bạn)', 25000.0000, N'Cuốn', N' ', N'KT0001.jpg', 9, 5, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 99, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (21, N'Thương Hiệu Với Nhà Quản Lý - The Road To Success ', 61000.0000, N'Cuốn', N' ', N'KT0001.jpg', 15, 2, CAST(N'2003-02-11T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (22, N'Xuất Nhập Khẩu Hàng Hóa (International Merchandise Trade Vietnam 2002) ', 61000.0000, N'Cuốn', N' ', N'KT0001.jpg', 18, 3, CAST(N'2002-04-12T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (23, N'30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh', 85000.0000, N'Cuốn', N'30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh là một cuốn sách bài tập dành cho những học sinh/sinh viên nghiêm túc quan tâm đến tầm quan trọng của việc nâng cao những yếu tố kỹ thuật cho kỹ năng viết của mình. Rèn luyện để viết cho tốt chẳng khác gì tự trang bị cho mình một sức mạnh cần thiết để thành công - khi đi học cũng như khi ra ngoài xã hội. Trui rèn được một trình độ viết “cứng” không hề là chuyện bỗng nhiên trời cho mà có được; đó phải là kết quả của một quá trình phấn đấu bền bỉ và rèn luyện chăm chỉ.

Đặc nét của sách này là sử dụng cách tiếp cận những kỹ thuật kết hợp câu cơ bản, có nghĩa là, sách không chỉ quan tâm đến việc tránh những sai lỗi, mà còn đặt mục tiêu tạo dựng được những câu hay, linh hoạt, và thể hiện một phong cách riêng. Cạnh đó, sách còn có những điểm đáng lưu ý như: 

- Bàn thảo rõ ràng về những qui tắc và kỹ thuật giúp viết tốt.

- Giải thích súc tích, hạn chế dùng những thuật ngữ ngữ pháp.

- Lương bài tập phong phú, đa dạng, từ những câu hỏi điền vào chỗ trống với mục đích xác định các từ loại cho đến những câu hỏi kết hợp những câu ngắn thành những câu văn dài hơn, ý tứ “duyên” hơn.

- Đáp án cuối sách nhằm giúp học sinh/sinh viên học và nghiên cứu nhanh chậm theo trình độ và ý thích của mình, đồng thời kiểm tra được bài làm trong quá trình học tập.

Học sinh/sinh viên tiếp thu tốt nhất khi họ tham gia tích cực và quá trình học. Họ rất thích những bài tập nào rèn cho họ được những kỹ năng viết họ cần đồng thời có giá trị thông tin nào đó hoặc vui vui. Đó chính là lý do cuốn sách này sử dụng đủ loại chủ đề thú vị trong các bài tập. Cũng vì lý do tương tự, sách có phần trình bày và giảng giải rất ngắn gọn những đưa ra rất nhiều những ví dụ và minh họa mở rộng.

Sử dụng cuốn 30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh này sẽ giúp học sinh/sinh viên viết “có nghề” và tự tin hơn".', N'TiengAnh01.jpg', 4, 1, CAST(N'2000-09-20T00:00:00.000' AS DateTime), 7, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (24, N' Tiền Tệ, Ngân Hàng, Thị Trường Tài Chính  
 ', 16800.0000, N'Cuốn', N' ', N'KT0001.jpg', 9, 6, CAST(N'2007-07-15T00:00:00.000' AS DateTime), 7, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (25, N' Khác Biệt Hay Là Chết (Để Thiết Lập, Xây Dựng Và Bảo Vệ Một Thương Hiệu Vững Mạnh)  
 ', 18000.0000, N'Cuốn', N' ', N'KT0001.jpg', 9, 4, CAST(N'2003-09-16T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (26, N'Quản Lý Đấu Thầu - Thực Trạng Ở Việt Nam Và Kinh Nghiệm Quốc Tế ', 16800.0000, N'Cuốn', N' ', N'KT0001.jpg', 9, 4, CAST(N'2002-07-16T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (27, N' Tỷ Giá Hối Đoái - Những Vấn Đề Lý Luận Và Thực Tiễn Điều Hành Ở Việt Nam  
 ', 18000.0000, N'Cuốn', N' ', N'KT0001.jpg', 10, 8, CAST(N'2004-09-11T00:00:00.000' AS DateTime), 98, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (28, N' Thành Ngữ Thương Mại Quốc Tế Anh - Việt  
 ', 61000.0000, N'Cuốn', N' ', N'KT0001.jpg', 10, 3, CAST(N'2004-08-12T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (29, N'Tin Học Ứng Dụng: Thành Thạo Oracle 9i - Quản Trị Cơ Sở Dữ Liệu (Tập 1) ', 21000.0000, N'Cuốn', N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn. ', N'TH001.jpg', 5, 2, CAST(N'2003-09-16T00:00:00.000' AS DateTime), 28, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (30, N'Mạng Máy Tính Và Hệ Thống Bảo Mật ', 23000.0000, N'Cuốn', N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu. 
', N'TH001.jpg', 5, 1, CAST(N'2002-07-16T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (31, N'Thủ Thuật Lập Trình Visual Basic 6 ', 18000.0000, N'Cuốn', N'Mục Lục:
Chương 1: Multimedia.
Chương 2: String.
Chương 3: Form.
Chương 4:Windows Control.
Chương 5: Common Control.
Chương 6: System.
Chương 7: Disk - File.
Chương 8: Graphics.
Chương 9: Internet.
Chương 10: Microsoft Office.
Chương 11: Database.
Chương 12: Clipboard.
Chương 13: Các vấn đề khác.
Phụ lục A: Giới thiệu một số ActiveX Control.
Phụ lục B: Một số tiện ích hỗ trợ lập trình Win32 API.
Phụ lục C: Một số vấn đề về đóng gói phần mềm.
Phụ lục D: Giới thiệu một số Website về Visual Basic.
Trân trọng giới thiệu. 
', N'TH001.jpg', 5, 2, CAST(N'2004-09-11T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (32, N'Lập Trình Mạng Trên Windows (Ấn bản dành cho sinh viên) ', 16800.0000, N'Cuốn', N'Chào mừng đến với "Lập Trình Mạng Trên Windows (Ấn bản dành cho sinh viên)". Quyển sách này sẽ hướng dẫn bạn sử dụng một cách hiệu quả bao gồm một số lượng lớn và đa dạng các hàm mạng sẵn có trong Windows 95, Windows 98, Windows NT 4, Windows CE, và Windows 2000/XP/. NET. Sách được chủ định viết dành cho những lập trình viên từ trung cấp đến cao cấp, tuy nhiên những lập trình viên mới bắt đầu tìm hiểu lập trình mạng cũng sẽ nhận thấy đây là một quyển sách không thể thiếu cho các bước xây dựng ứng dụng mạng sau này.
', N'TH001.jpg', 5, 5, CAST(N'2004-05-15T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (33, N'Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu ', 25000.0000, N'Cuốn', N'"Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu" gồm 12 chương:
Chương 1: Những điểm cơ bản.
Chương 2: Màu Photoshop.
Chương 3: Các tác vụ xử lý ảnh căn bản.
Chương 4: Các điểm cơ bản về pixel.
Chương 5: Các điểm cơ bản về lớp.
Chương 6: Làm việc với các công cụ chọn.
Chương 7: Ghép ảnh.
Chương 8: Làm việc với các palette History.
Chương 9: Các kỹ thuật điều chỉnh hình ảnh.
Chương 10: Chọn các màu.
Chương 11: Tô màu lại.
Chương 12: Làm việc với các công cụ tô vẽ.
Xin trân trọng giới thiệu. ', N'TH002.jpg', 5, 6, CAST(N'2004-08-16T00:00:00.000' AS DateTime), 56, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (34, N' Hướng Dẫn Sử Dụng Norton AntiVirus 2004 (Hướng dẫn bằng hình)  
 ', 16800.0000, N'Cuốn', N'"Hướng Dẫn Sử Dụng Norton AntiVirus 2004 (Hướng dẫn bằng hình)" bao gồm 6 phần, 23 chương:
Phần I: Bắt đầu với Norton AntiVirus 2004.
Chương 1: Bắt đầu với Norton AntiVirus 2004.
Chương 2: Cài đặt Norton System Works Professional.
Chương 3: Các điểm cơ bản về Norton AntiVirus 2004.
Chương 4: Các tùy chọn trong Norton SystemWorks.
Chương 5: Cải tiến sự trình duyệt Web và phục hồi đĩa cứng.
Chương 6: Duy trì tính bảo mật password và cập nhật với LiveUpdate.
Phần II: Làm việc với Norton AntiVirus 2004.
Chương 7: Bảo vệ đĩa, file và dữ liệu để tránh bị nhiễm Virus.
Chương 8: Những điều cần làm nếu phát hiện virus.
', N'TH002.jpg', 5, 7, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (35, N'Tin Học Văn Phòng - Microsoft Word 2000 (Tái Bản Lần Thứ Nhất) ', 15600.0000, N'Cuốn', N' ', N'TH002.jpg', 5, 8, CAST(N'2003-02-11T00:00:00.000' AS DateTime), 6, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (36, N'Adobe Photoshop 6.0 và ImageReady 3.0 ', 21000.0000, N'Cuốn', N'Cuốn sách Adobe Photoshop 6.0 và ImageReady 3.0 này sẽ giúp bạn tìm hiểu những tính năng tuyệt vời của phiên bản 6.0, nó cũng là con đường ngắn nhất cho những người mới sử dụng Photoshop lần đầu. Với bạn đọc đã sử dụng cuốn sách "Adobe Photoshop 5.5 và ImageReady 2.0" do MK.PUB biên soạn trước đây, cuốn sách này là một cách cập nhật nhanh chóng nhất.
Adobe Photoshop 6.0 và ImageReady 3.0 gồm hai phần chính, đan xen nhau: 

Adobe Photoshop 6.0: trình bày các kỹ thuật xử lý ảnh cao cấp, các tính năng mới, giúp bạn tạo được các ảnh đẹp, rõ nét và mang tính mỹ thuật cao, hỗ trợ đắc lực cho các chương trình dàn trang và tách màu điện tử. Đặc biệt trong phiên bản này, để đáp ứng cho mong mỏi từ lâu của người dùng, các hình thể vector bắt đầu được đưa vào sử dụng trong môi trường Photoshop.

', N'TH002.jpg', 5, 5, CAST(N'2002-04-12T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (37, N'Tự Học Linux ', 25000.0000, N'Cuốn', N' ', N'TH002.jpg', 5, 2, CAST(N'2001-09-16T00:00:00.000' AS DateTime), 6, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (38, N'Hoàn Thiện Công Việc Văn Phòng Với Excel 2003 ', 25000.0000, N'Cuốn', N' ', N'TH003.jpg', 5, 1, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 74, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (39, N'Hướng Dẫn Tự Học Photoshop CS (Photoshop 8.0) ', 25000.0000, N'Cuốn', N' ', N'TH003.jpg', 5, 4, CAST(N'2006-09-16T00:00:00.000' AS DateTime), 9, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (40, N'Tin Học Văn Phòng - Microsoft Excel 2000 (Tái Bản Lần Thứ Nhất)  
 
 
', 16800.0000, N'Cuốn', N'Cuốn sách này gồm những nội dung chính sau:
Chương 1: Giới thiệu
Chương 2: Soạn thảo văn bản
Chương 3: Trình bày Font chữ
Chương 4: Trình bày Paragraph
Chương 5: Trình bày trang in
Chương 6: Bảng biểu - Table
Chương 7: Cột chữ - Column
Chương 8: Hình vẽ
Chương 9: Microsoft Equation
Chương 10: Trình bày văn bản nhanh
Chương 11: Bài tập mẫu
Xin trân trọng giới thiệu. 
', N'TH003.jpg', 5, 5, CAST(N'2003-05-24T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (41, N'Các Thủ Thuật Truy Cập Nhanh Internet Explore Mail - Chat ', 21000.0000, N'Cuốn', N' ', N'TH004.jpg', 5, 4, CAST(N'2003-09-16T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (42, N'Macromedia FlashMX 2004 (Ấn Bản Dành Cho Sinh Viên - Có CD Bài Tập Kèm Theo Sách) ', 23000.0000, N'Cuốn', N' ', N'TH004.jpg', 5, 2, CAST(N'2002-07-16T00:00:00.000' AS DateTime), 9, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (43, N'Tạo Các Hiệu Ứng Đặc Biệt Để Trang Trí Ảnh Trong Photoshop CS ', 18000.0000, N'Cuốn', N' ', N'TH004.jpg', 5, 6, CAST(N'2004-09-11T00:00:00.000' AS DateTime), 9, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (44, N'Tin Học Ứng Dụng Lập Trình Mạng Trên Windows ', 23000.0000, N'Cuốn', N' ', N'TH004.jpg', 5, 8, CAST(N'2004-08-12T00:00:00.000' AS DateTime), 79, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (45, N'Tự Học SQL (Hãy dành 10 phút mỗi ngày bạn sẽ thành công với SQL) ', 21000.0000, N'Cuốn', N' ', N'TH005.jpg', 5, 7, CAST(N'2004-07-16T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (62, N'Nhập Môn Microsoft Windows XP', 12000.0000, N'Cuốn', N'Microsoft Windows XP đang là một trong những hệ điều hành được ưa chuộng nhất hiện nay, và nhu cầu tìm hiểu sử dụng hệ điều hành này ngày càng nhiều. Để đáp ứng nhu cầu đó, cuốn sách "Nhập Môn Microsoft Windows XP" được biên soạn nhằm giúp các bạn mới học có thêm tài liệu học tập.
Sách được các tác giả chọn lối viết thực dụng, học lý thuyết đi đôi với thực hành nên đạt được hiệu quả tối đa trong học tập. Bạn nên đọc tập sách này ngay bên cạnh chiếc máy tính của mình, học đến đâu thực hành đến đó. Như thế bạn sẽ dễ cảm nhận được công dụng của từng công trình, từng tính năng...', N'130318.jpg', 5, 2, CAST(N'2005-06-07T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (63, N'Thai Nghén Và Sinh Nở (Cẩm Nang Dành Cho Người Làm Mẹ) ', 29000.0000, N'Cuốn', N'Cuốn sách "Thai Nghén Và Sinh Nở (Cẩm Nang Dành Cho Người Làm Mẹ)" được chia làm 12 chương, với nội dung như sau:
Chương 1: Bạn thực sự sẵn sàng có em bé.
Chương 2: Chuẩn bị trước khi mang thai.
Chương 3: Sự hội ngộ giữa tinh trùng và trứng.
Chương 4: Không thụ thai.
Chương 5: Thụ thai.
Chương 6: Sứ mệnh bé khỏe.
Chương 7: Những lo âu khi mang thai.
Chương 8: Các chứng chứng nhức mỏi trong thời kỳ thai nghén.
Chương 9: Xét nghiệm hay không xét nghiệm.
Chương 10: Thời khắc khai hoa nở nhụy.
Chương 11: Những rủi ro thường gặp khi thai nghén.
Chương 12: Sau khi sinh.
', N'Me.jpg', 36, 14, CAST(N'2005-06-07T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (64, N'Hướng Dẫn Kế Toán Doanh Nghiệp Vừa Và Nhỏ Theo Luật, Nghị Định, Các Chuẩn Mực', 198000.0000, N'Cuốn', N'Nội dung của cuốn sách chia làm 4 chương như sau:
Chương 1: Kế toán và vai trò của nó trong quá trình quản lý doanh nghiệp.
Chương 2: Kế toán tài chính và các nguyên tắc kế toán cơ bản.
Chương 3: Hướng dẫn thực hiện các chế độ chứng từ, tài khoản, sổ kế toán và báo cáo tài chính theo luật và nghị định kế toán.
Chương 4: Hướng dẫn quy trình kế toán hoạt động kinh doanh của doanh nghiệp.
', N'Kt.jpg', 37, 13, CAST(N'2001-06-07T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (65, N'Thành Thạo Oracle 9i - Quản Trị Cơ Sở Dữ Liệu', 22000.0000, N'Cuốn', N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
', N'Oracle.jpg', 5, 2, CAST(N'2005-06-10T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (66, N'Cảo Thơm Trước Đèn - Lan Trì Kiến Văn Lục', 40000.0000, N'Cuốn', N'Khi nghiên cứu về các sáng tác văn xuôi bằng chữ Hán của các nhà văn Việt Nam thế kỷ XVIII-XIX không thể không nhắc đến Vũ Trinh (1759-1828).

Là người quê vùng Kinh Bắc, được sinh ra trong gia đình Nho học và quan lại. Sau khi đỗ Hương tiến làm tri Phủ Quốc Oai, năm 1787 ông được Lê Chiêu Thống mời vào triều. Rồi biến cố dồn dập đến: Nguyễn Huệ từ trong Nam ra dẹp Trịnh. Chính sự Bắc Hà không yên, Kinh thành náo loạn, Lê Chiêu Thống cầu cứu nhà Thanh. Cha con Vũ Trinh dốc hết sản nghiệp phò Lê nhưng bất thành. Triều Tây Sơn chấm dứt. Vũ Trinh làm quan cho Gia Long được cử đi sứ Trung Quốc. Sau vụ bênh con trai Nguyễn Văn Thành - tổng trấn Bắc Hà có thơ phản nghịch, Vũ Trinh bị bắt đi đày ở Quảng Nam 12 năm, sau được tha, mất lúc ông 70 tuổi.

Xét về chính trị, ông là người trung quân, phò Lê dẫu tập đoàn Lê - Trịnh đã vào thời mạt. Cũng như bao nho sĩ trẻ tuổi cùng thời như Nguyễn Du (1765-1820), Nguyễn Án (1770-1815), Phạm Đình Hổ (1768-1839)... Vũ Trinh cũng bị cuốn vào dòng thời cuộc với tâm trạng: "Một phen thay đổi sơn hà. Mảnh thân chiếc lá biết là về đâu".

Nhưng trong cái rủi lại có cái may. Số phận long đong của họ, từ dòng dõi thế gia vọng tộc (Nguyễn Du), hoặc gia đình phong kiến, khoa bảng (Nguyễn Án, Phạm Đình Hổ) họ rời chôn kinh thành, bị đẩy vào cuộc sống của thứ dân, để ngày nay chúng ta có Truyện Kiều, Vũ trung tuỳ bút, Tang thương ngẫu lục, Lan Trì kiến văn lục... Với những câu chuyện thật, hoặc hư cấu, phản ánh một cách sinh động thời cuộc bể dâu và nỗi đau đớn của con người trước hưng vong của lịch sử.

Vũ Trinh viết Lan Trì Kiến Văn Lục (chép những chuyện nghe và thấy của Lan Trì) vào thời gian ông ẩn nhẫn ở Hồ Sơn (Nam Định). Khoảng những năm 1793-1794 cuối đời Tây Sơn, đầu đời Gia Long. Những điều thấy và nghe (kiến văn) khi làm quan ở triều, khi lánh nạn, tiếp xúc với bao người, những chuyện nơi đồng quê, ngõ chợ, kết hợp với những điều trong sách vở thánh hiền đã được Vũ Trinh ghi lại một cách chân thực và nghệ thuật. Sáng tác của ông nói đến nhiều việc, nhiều chuyện, lúc thật lúc ảo, nhưng hầu hết đều ngụ ý sâu xa như một nỗi niềm tâm sự, khao khát cuộc sống yên bình. Nó là tấm gương phản chiếu không tô vẽ. Ông đã làm cái việc thực thi sứ mạng mà nếu không có sách ghi của một thời thì trăm ngàn năm sau còn ai biết đuổi theo mây gió, đi tìm hỏi người xưa ở trăm ngàn năm về trước.

Lan Trì Kiến Văn Lục xứng đáng góp mặt trong tủ sách CẢO THƠM TRƯỚC ĐÈN, nơi hội tụ những sáng tác, biên khảo xuất sắc của các trí thức, quan lại, nhà văn không chuyên Việt Nam thời phong kiến.

-------

"Tác phẩm quan trọng nhất của Vũ Trinh (1759 - 1828) là Lan Trì Kiến Văn Lục có 45 truyện gồm nhiều đề tài khác nhau: Chuyện tình yêu nam nữ, chuyện giáo dục thi cử, chuyên báo ứng luân hồi, chuyện kỳ quái khó tin...

Ở đó, con người thường bị đặt trong những tình huống căng thẳng, đầy bi kịch và chính từ trong cuộc vật lộn cay đắng ấy, họ đã có dịp bộc lộ những phẩm chất cao quý, những tình cảm rất "người".

Đặc biệt, trong số những con người được tác giả dành trọn niềm yêu mến thì phụ nữ chiếm phần rất lớn.

Truyện của Vũ Trinh thường vắn tắt, mỗi chi tiết được kể đều đóng một vị trí không thay thế được trong kết cấu nghệ thuật của cả câu chuyện. Đó là bí quyết của một cây bút truyện ngắn có tài".

Mời bạn đón đọc.', N'66.jpg', 9, 2, CAST(N'2020-06-12T00:00:00.000' AS DateTime), 100, 101)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (67, N'Nếu Biết Trăm Năm Là Hữu Hạn', 189000.0000, N'Cuốn', N'Chỉ xuất hiện vỏn vẹn trong hơn 40 bài viết trên chuyên mục Cảm thức của Bán nguyệt san 2! (số Chuyên đề của báo Sinh Viên Việt Nam), Phạm Lữ Ân là một tác giả đã âm thầm tạo nên hiện tượng đặc biệt trong văn hoá đọc của giới trẻ Việt nam hiện nay. Các bài viết của Phạm Lữ Ân được đăng tải, trích dẫn rất nhiều lần trên các trang web, trên blog cá nhân, đươc đọc trên Youtube, thành cảm hứng cho sáng tác ca khúc và cả kịch bản phim với những lời bình ưu ái.

Với nhiều bạn trẻ, những bài viết này như đã thức tỉnh trái tim và nhận thức của họ về cuộc đời, vốn chứa đựng nhiều cơ hội phát triển nhưng cũng đầy ắp lo toan. Bằng giọng văn dung dị, thân mật, giàu cảm xúc và có khi rất quyết liệt, tác giả dẫn dắt người đọc đi sâu vào những cảm nhận khác nhau về cuộc đời, về tình yêu trong góc nhìn tỉnh táo và không ngộ nhận (Hãy nói yêu thôi, đừng nói yêu mãi mãi), về tình bạn (Dư vị từ những tình bạn nhạt nhòa), về sự thành bại trong cuộc đời (Còn thời cưỡi ngựa bắn cung), về sự chờ đợi một cơ hội ngắn ngủi và cả một vận hội trong sự an nhiên và điềm tĩnh (Như chờ tình đến rồi hãy yêu)...  Không ít người cho rằng mình đã tìm thấy điều gì đó lạ lẫm và tươi mát trong nhận thức từ những bài viết này. Một số thú nhận mình đã đọc đi đọc lại những bài viết của Phạm Lữ Ân và mỗi lần đọc đều tìm thấy một ý nghĩa mới mẻ tiềm ẩn trong đó.

Với hiệu ứng của các bài viết, cái tên Phạm Lữ Ân luôn khiến bạn đọc tò mò. Và thật thú vị khi biết được bút danh này là sự kết hợp của hai nhà báo viết cho giới trẻ, cũng là một đôi vợ chồng. Nhờ sự kết hợp nhuần nhuyễn giữa cái nhìn trong trẻo, tinh tế và sắc sảo với sự từng trải, thương yêu và khoan dung, những bài Cảm thức này đã đưa ra được những kiến giải đầy thú vị và vô cùng sâu sắc về cuộc đời, không chỉ cho giới trẻ mà cho bất cứ ai trong chúng ta, ở bất kỳ lứa tuổi nào.

“Nếu biết trăm năm là hữu hạn, cớ gì ta không sống thật sâu…”

Có đôi khi những bộn bề của cuộc sống cuốn ta đi như dòng nước hững hờ cuốn trôi chiếc lá. Cứ thế, ta vội vã làm, vội vã ăn, vội vã ngủ, vội vã yêu và vội vã… để sống! Chắc hẳn đã không ít lần mỗi chúng ta đều thốt lên “giá như…”

Nếu biết trăm năm là hữu hạn, đưa người đọc đến nhiều tầng của cung bậc cảm xúc, đến nhiều không gian tưởng chừng ta không thể quay về. Vừa hoài niệm, sâu sắc, vừa giản dị, chân thành, vừa quá khứ, hiện tại. Nếu biết trăm năm là hữu hạn cứ thế cuốn ta đi một cách nhẹ nhàng và đầy sâu lắng…

Với tập hợp 40 truyện ngắn, chắc hẳn đâu đó xung quanh những câu chuyện ấy, ta sẽ vô tình bắt gặp chính ta. Nếu biết trăm năm là hữu hạn là một quyển sách dành cho nhiều người…

----------------------------------------------

“Người ta gọi tuổi mới lớn là “tuổi biết buồn”. “Biết buồn” tức là chạm ngõ cuộc đời rồi đó. Biết buồn tức là bắt đầu nhận ra sự hiện hữu của những khoảng trống trong tâm hồn. Biết buồn là khi nhận ra rằng có những lúc mình cảm thấy cô độc. Khi đó, hãy dành cho sự cô độc một khoảng riêng, hãy đóng khung sự cô đơn trong giới hạn của nó, như một căn phòng trống trong ngôi nhà tâm hồn. Mỗi lần vào căn phòng ấy, dù tự nguyện hay bị xô đẩy, thì bạn vẫn có thể điềm tĩnh khám phá bản thân trong sự tĩnh lặng. để rồi sau đó, bạn bình thản bước ra, khép cánh cửa lại và trở về với cuộc sống bề bộn thường ngày, vốn lắm nỗi buồn nhưng cũng không bao giờ thiếu niềm vui...” 

(Trích “Những khoảng trống không phải để lấp đầy”)
Mời bạn đón đọc.', N'67.jpg', 9, 2, CAST(N'2020-06-12T00:00:00.000' AS DateTime), 120, 103)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (68, N'Nguyễn Hiến Lê - Những Lời Tựa Và Bài Giới Thiệu Sách', 150000.0000, N'Cuốn', N'Theo Nguyễn Hiến Lê: "Tôi đã viết bốn - năm chục bài tựa cho các tác phẩm của tôi và hai chục bài cho các tác phẩm của bạn. Có người nhờ tôi đề tựa cho hai, ba cuốn. Hai đã là quá nhiều rồi (hóa nhảm đi), mà phải là hai cuốn trong hai loại khác nhau thì tôi mới nhận lời. Và tôi cũng chỉ nhận cho bạn thân thôi. Ông Châu Hải Kỳ có lần khuyên tôi nên lựa những bài vừa ý hơn hết, cho vào một tuyển tập như một nhà văn nào đó của Pháp. Tôi không làm việc đó, khiến ông bực mình, nhưng năm 1975 tôi cũng lựa ít bài cùng với một số tùy bút, hồi ký cho vô tập: Để tôi đọc lại"

Theo Nguyễn Hiền Đức hôm nay thì: "Đọc lại những bài Tựa đó, chúng ta thấy Nguyễn Hiến Lê luôn yêu độc giả, yêu đề tài, luôn là chính mình, thành thực với chính mình, thể hiện ở mức độ rất cao về tâm hồn, nhân cách và cá tính của ông. Văn ông bình dị, sáng sủa, đầy cảm xúc và nhiều ý cao tình đẹp. Vì vậy, với tôi, những lời Tựa của Nguyễn Hiến Lê - có khi chỉ 2 - 3 trang, có khi tới 20 - 30 trang - là những tác phẩm lớn thực sự có giá trị và quý hiếm" (trích "Lời thưa")

Kiên trì sưu tập, nhẩn nha gõ lại từng chữ để in ra đầy đủ những lời tựa, bài giới thiệu sách của Nguyễn Hiến Lê là một việc không phải ai cũng có gan làm được, và việc làm này chắc chắn sẽ mang lại lợi ích không nhỏ cho các thế hệ hậu bối, trong việc giúp họ tìm hiểu thêm về một học giả Việt Nam khả kính, qua đó còn có thể học tập được nhiều thứ khác, như nhân cách, tâm hồn, kinh nghiệm vận dụng ngòi bút của một người cả đời theo đuổi nghề văn với tâm tư phụ vụ nhân quần xã hội, như cụ Nguyễn Hiến Lê. (Trần Văn Chánh).
Mời bạn đón đọc.', N'68.jpg', 9, 2, CAST(N'2020-06-12T00:00:00.000' AS DateTime), 140, 102)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (69, N'Vàng Son Một Thuở Ba Tư', 100000.0000, N'Cuốn', N'

Không như nền văn minh Ai Cập với các vị thần hóa thân vào trong loài vật, Hy Lạp quá rực rỡ với các vị thần tuyệt đẹp đường nét bước ra từ bộ sử thi và là một trong những nền văn minh bản lề của phương Tây nên kẻ hậu bối như tôi chỉ nhớ đến công trạng hiển hách của Đại đế Alexandros của người Macedonia qua những trận chiến thần tốc khi ông xua đoàn quân thiện chiến về phương Đông. Tôi không biết được đại lộ giao thương Đông Tây từ đoạn Susa thuộc tỉnh Khuzestan - Iran đến Sardis - Thổ Nhĩ Kỳ ngày nay đã được Đại đế Darius xây dựng vào thế kỷ 5 TCN với tên gọi “Con đường Hoàng Gia”. Không còn huyền bí ma thuật như những lời đồn đãi, đoán mò của những người Hy Lạp trước đây, mà hành quân theo “Con đường Hoàng Gia” đã được người xưa thiết lập, Ba Tư trong ánh mắt của ông Alexandros vào thế kỷ 3 TCN là ngôi sao đích thực của mỹ thuật phương Đông với những đền đài lăng tẩm đẹp không sao tả xiết. Một nền văn minh rực rỡ của nhân loại được hỏa thần Ahura Mazda và nữ thủy thần Anahita ươm mầm sống trong lòng sa mạc rộng lớn.

Mời bạn đón đọc.
', N'69.jpg', 9, 2, CAST(N'2020-06-12T00:00:00.000' AS DateTime), 160, 102)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (70, N'Ngày Trở Về', 180000.0000, N'Cuốn', N'Ngày trở về là tên một chương trình đặc biệt được chờ đón mỗi dịp Tết Nguyên đán, kể lại những câu chuyện đầy cảm hứng từ hành trình sinh sống, học tập và làm việc của người con đất Việt ở khắp nơi trên thế giới; 

Những câu chuyện cảm động, sâu sắc cùng tấm lòng hướng về quê hương và nguồn cội của họ, đặc biệt những dấu ấn họ để lại và THÀNH CÔNG LỚN của họ ở xứ người thực sự đã đem lại sự tự tin, lòng kiêu hãnh tự hào  trước vị thế của Tổ quốc, của người Việt.

Một con người cần làm gì để có thể sống trọn vẹn và hạnh phúc hơn? Cuốn sách kể về 7 nhân vật - 7 người con Việt Nam ở nước ngoài xuất sắc tầm quốc tế chính là câu trả lời chính xác nhất. 

Các nhân vật: Trần Ngọc Phúc, Daniel Hoài Tiến, David Dương Bảo Long, Emma Phạm Thị Chín, Lê Duy Loan, Tần Lê, Caroline Kiều Linh Valverde. 

VTV4 và Nhà xuất bản Trẻ phối hợp thực hiện phát hành tập sách này.', N'70.jpg', 9, 2, CAST(N'2020-06-12T00:00:00.000' AS DateTime), 100, 103)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (71, N'Lịch Sử Việt Nam Bằng Tranh - Tập 15: Xây Đắp Nhà Lý', 30000.0000, N'Cuốn', N'Công trình Lịch sử Việt Nam Bằng Tranh Ra Đời nhằm mục đích giới thiệu lịch sử nước nhà một cách ngắn gọn, sinh động, có hệ thống, qua nhiều chuyện kể súc tích và bằng những tranh vẽ minh họa.

Bộ sách tranh nhiều tập này cố gắng phản ánh con người và đất nước Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, từng triều đại cụ thể. Bộ Lịch sử Việt Nam bằng tranh dự kiến thực hiện xuyên suốt từ người cổ Việt Nam qua các thời đại đồ đá, đồ đồng đến thời Hùng Vương dựng nước; trải qua hàng ngàn năm Bắc thuộc đến thời kỳ độc lập tự chủ của các triều đại Ngô, Đinh, Lê, Lý, Trần, Lê Nguyễn và cuối cùng là hai cuộc kháng chiến chống Pháp và chống Mỹ cứu nước vừa qua.', N'71.jpg', 9, 2, CAST(N'2020-06-12T00:00:00.000' AS DateTime), 100, 103)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (72, N'Tài Chính Cá Nhân Dành Cho Người Việt Nam', 160000.0000, N'Cuốn', N'Cuốn sách “Tài chính cá nhân dành cho người Việt Nam” và bộ bài giảng trực tuyến tặng kèm, gồm tất cả những nội dung về tài chính cá nhân.

    Kiếm tiền: Khi còn thể làm việc, chúng ta cần kiếm tiền, tạo ra thu nhập với "công suất" lớn nhất. 
    Tiết kiệm tiền, sử dụng tiền: Chúng ta phải quản lý tiền hiệu quá, sử dụng tiền khôn ngoan. Đặc biệt, chúng ta phải tiết kiệm trước khi sử dụng.
    Bảo vệ tiền: Chúng ta phải biết bảo vệ tiền sự mất mát của tiền trước những rủi ro. 
    Đầu tư tiền: Tiền phải sinh ra tiền. Chúng ta phải đầu tư để tiền tăng trưởng và đạt được mục tiêu tài chính cá nhân. 
    Mục tiêu tài chính cá nhân: An toàn, Đảm bảo, Độc lập, và Tự do tài chính

Cuốn Sách Dành Cho:

    Những người làm công: Quản lý, nhân viên
    Những người làm tự do, Freelance
    Những người làm chủ doanh nghiệp
    Những nhà đầu tư
    Và hầu hết mọi người quan tâm đến tiền bạc, tài chính.', N'72.jpg', 9, 2, CAST(N'2020-06-12T00:00:00.000' AS DateTime), 100, 103)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (73, N'Cải Thiện Giao Tiếp Vươn Tới Thành Công', 82000.0000, N'Cuốn', N'Không ai được sinh ra với tài giao tiếp bẩm sinh. Tất cả diễn giả thành công trên thế giới đều trải qua quá trình rèn luyện và nỗ lực không ngừng để làm chủ kỹ năng này. Không có gì là khó nếu bạn chú tâm dành thời gian và sức lực cho nó… Với hơn 90 năm kinh nghiệm, diễn giả Dale Carnegie và các hậu bối thuộc công ty Dale Carnegie & Associates đã giúp nhiều người ở mọi quốc gia, lứa tuổi phát triển các kỹ năng giao tiếp và thuyết trình bậc thầy.

Hãy tiếp cận mọi người với sự chân thành và khiến họ vui khi nói chuyện cùng bạn... là một trong những lời khuyên hữu ích mà bạn sẽ đọc được trong cuốn sách này. Thường xuyên luyện tập và thực hành kỹ năng giao tiếp, sự nghiệp của bạn sẽ ngày càng thăng tiến và cuộc sống của bạn sẽ đầy ắp niềm vui.

"Hãy khen mọi người về những gì họ làm tốt, và sau đó giúp họ khắc phục các thiếu sót. Cách này hiệu quả trong văn phòng, trong xí nghiệp, trong gia đình; với vợ chồng, con cái, cha mẹ và với hầu hết mọi người."

     (Dale Carnegie)
Mời bạn đón đọc.', N'73.jpg', 9, 2, CAST(N'2020-06-13T00:00:00.000' AS DateTime), 300, 100)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (74, N'Sống Đời Hạnh Phúc - Khắc Phục Lo Âu Để Vui Sống (Tái Bản 2018)', 66000.0000, N'Cuốn', N'"Bản thân bạn đã là một điều mới mẻ trên thế gian này rồi. Hãy mừng vì điều đó. Hãy tận dụng tất cả những gì mà tạo hoá đã ban tặng cho bạn. Bởi xét đến cùng, nghệ thuật cũng chỉ là tự thuật mà thôi. Bạn chỉ hát những gì bạn suy nghĩ, chỉ vẽ những gì bạn trông thấy. Bạn chỉ có thể là một con người duy nhất được tạo nên nhờ những yếu tố di truyền riêng. Dù tốt xấu thế nào, bạn cũng phải chịu khó làm lụng trên chính mảnh vườn nhỏ của mình. Dù hay dở thế nào, bạn cũng phải chơi cây đàn bé nhỏ của mình trong bản hoà ca muôn điệu của cuộc đời.

Với mỗi một thế hệ mới, thông điệp của Carnegie lại chỉ ra một khả năng kì lạ có thể tự đánh giá bản thân để phù hợp với sự thay đổi của thế giới. Giao tiếp có hiệu quả, khuyến khích họ đạt được và khám phá được khả năng lãnh đạo tiềm ẩn trong bản thân mỗi người là vấn đề được quan tâm hàng đầu của Dale Carnegie. Với một thế giới đang ở trong tình tạng hỗn loạn như hiện nay thì thời đại của ông lại xuất hiện một lần nữa.Trong những trang tiếp theo, những nguyên tắc của Carnegie về quan hệ của con người được áp dụng cho một loạt những thách thức mà ngày nay con người phải đối mặt.

Đó là những nguyên tắc cơ bản và rất dễ hiểu, không đòi hỏi người học phải có kĩ năng chuyên môn hay có kiến thức chuyên sâu nào. Chỉ cần có tinh thần sẵn sàng học hỏi và luyện tập thật sự là được.

Bạn đã chuẩn bị để đối mặt với những thử thách, những quan điểm lâu đời của thế giới chưa? "

Mời bạn đón đọc.', N'74.jpg', 9, 2, CAST(N'2020-06-13T00:00:00.000' AS DateTime), 250, 100)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (75, N'Đắc Nhân Tâm (Bìa Cứng)', 98000.0000, N'Cuốn', N'Bởi vì đó là cuốn sách mọi người đều nên đọc.

Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.

Nhưng đâu phải thế, Đắc Nhân Tâm là cuốn sách không hề lỗi thời! 

Những vấn đề được chỉ ra trong đó đều là căn bản ứng xử giữa người với người. Nếu diễn giải theo từ ngữ bây giờ, có thể gọi đây là “giáo trình” giúp hiểu mình – hiểu người để thành công trong giao tiếp. Có ai sống mà không cần giao tiếp? Có bao nhiêu người ngày ngày mệt mỏi, khổ sở vì gặp phải các vấn đề trong giao tiếp? Vì thế, Đắc Nhân Tâm chính là cuốn sách dành cho mọi người. Con cái nên đọc – cha mẹ càng nên đọc, nhân viên nên đọc – sếp càng nên đọc, người quen nhau nên đọc – người lạ nhau càng nên đọc…. Và đó mới chính thật là lý do Đắc Nhân Tâm luôn lọt vào Top sách bán chạy nhất thế giới, dù đã ra đời cách đây gần 80 năm.

Có lẽ sẽ có người vừa đọc vừa nghĩ, mấy điều trong sách này đơn giản mà, ai chẳng biết? Đúng thế, vì toàn bộ đều là những quy tắc, những cách cư xử căn bản giữa chúng ta với nhau thôi. Kiểu như “Không chỉ trích, oán trách hay than phiền”, “Thành thật khen ngợi và biết ơn người khác”, “Thật lòng làm cho người khác thấy rằng họ quan trọng”… Những điều này đúng thật là ai cũng biết, nhưng bạn có chắc bạn nhớ được và làm được những điều đơn giản đó? Vì vậy, cuốn sách mới ra đời, để giúp bạn thực hành.

Nhưng có lẽ đa số người đọc sẽ thành thật gật gù đồng ý với từng trang sách. Ồ nếu như bình tâm suy xét lại mọi việc, thì trong bất cứ trường hợp nào mình cũng có thể cư xử đúng mực, không làm người khác tổn thương, giúp bầu không khí luôn thoải mái, và thế là cả hai bên đều vui vẻ, công việc cũng vì thế mà suôn sẻ, thành công hơn. Vậy chứ mà cũng không dễ, bởi “cái tôi” của mỗi người thường chiến thắng tâm trí trong đa số trường hợp. Để thỏa mãn nó, chúng ta hay mắc sai lầm không đáng. Đó cũng chính là lý do Đắc Nhân Tâm có mặt, để nhắc nhở và từng chút giúp ta uốn nắn chính “cái tôi” của mình.

Với giọng văn giản dị, cách trình bày gần gũi nhưng cực kỳ khoa học bằng cách đúc rút những điều mối chốt ở cuối chương, Đắc Nhân Tâm là cuốn sách hiếm hoi không kén chọn người đọc. Bất cứ ai cũng có thể đồng cảm. Đây là công trình tâm huyết cả đời của Ngài Dale Carnegie, xuất phát từ chính nhu cầu của Dale khi cảm thấy cuộc đời mình sẽ không phạm phải quá nhiều sai lầm đã qua nếu như được học tử tế về cách cư xử trong cuộc sống. Ông đã viết bằng chính trải nghiệm phong phú cả đời mình. Thậm chí ông còn thuê cả một nhà nghiên cứu chuyên nghiệp để tìm và cùng ông nghiên cứu các tài liệu liên quan. Và cuốn sách hữu ích đến mức vừa ra đời đã phải tái bản liên tục, trở thành hiện tượng chưa từng có trong bối cảnh xuất bản ảm đạm của nước Anh lúc đó. Và mãi đến bây giờ.

Từ ngày ấy, Đắc Nhân Tâm trở thành cuốn sách không-chịu-nằm-yên-trên-kệ. Ngoài ý được tái bản liên tục ở khắp nơi trên thế giới, thì cụm từ này còn có một ý khác, đó là cuốn sách đã được Ngài Dale bổ sung và hiệu chỉnh liên tục các câu chuyện mới, cách diễn đạt mới, nên ở mỗi lần xuất hiện, Đắc Nhân Tâm đều có những điều mới mẻ. Việc này cũng tiếp tục được con trai ông thực hiện sau khi ông qua đời, như ý nguyện của ông.

Được đánh giá là cuốn sách có sức lan tỏa rộng lớn, được dịch ra hầu hết các ngôn ngữ trên thế giới và luôn nằm trong Top sách bán chạy ở mọi thị trường xuất bản, Đắc Nhân Tâm đã có đời sống xứng tầm với giá trị thực tế của mình. Đây có thể coi là một trong những cuốn sách dòng self-hepl chính thống đầu tiên. Và Ngài Dale cũng trở thành một trong những tác giả ảnh hưởng trực tiếp nhiều nhất đến sự thay đổi tích cực của hàng triệu độc giả trên thế giới.
Mời bạn đón đọc.', N'75.jpg', 9, 2, CAST(N'2020-06-13T00:00:00.000' AS DateTime), 320, 100)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (76, N'Nghĩ Giàu Và Làm Giàu (Bìa Cứng) - Tái Bản 2020', 168000.0000, N'Cuốn', N'Think and Grow Rich - Nghĩ giàu và Làm giàu là một trong những cuốn sách bán chạy nhất mọi thời đại. Đã hơn 60 triệu bản được phát hành với gần trăm ngôn ngữ trên toàn thế giới và được công nhận là cuốn sách tạo ra nhiều triệu phú hơn, một cuốn sách truyền cảm hứng thành công nhiều hơn bất cứ cuốn sách kinh doanh nào trong lịch sử.

Tác phẩm này đã giúp tác giả của nó, Napoleon Hill, được tôn vinh bằng danh hiệu “người tạo ra những nhà triệu phú”. Đây cũng là cuốn sách hiếm hoi được đứng trong top của rất nhiều bình chọn theo nhiều tiêu chí khác nhau – bìnhchọn của độc giả, của giới chuyên môn, của báo chí.

Lý do để Think and Grow Rich - Nghĩ giàu và Làm giàu có được vinh quang này thật hiển nhiên và dễ hiểu: Bằng việc đọc và áp dụng những phương pháp đơn giản, cô đọng này vào đời sống của mỗi cá nhân mà đã có hàng ngà người trên thế giới trở thành triệu phú và thành công bền vững. Điều thú vị nhất là các bí quyết này có thể được hiểu và áp dụng bởi bất kỳ một người bình thường nào, hoạt động trong bất cứ lĩnh vực nào. Qua hơn 70 năm tồn tại, những đúc kết về thành công của Napoleon Hill đến nay vẫn không hề bị lỗi thời, ngược lại, thời gian chính là minh chứng sống động cho tính đúng đắn của những bí quyết mà ông chia sẻ.

Sinh ra trong một gia đình nghèo vùng Tây Virginia, con đường thành công của Napoleon Hill cũng trải qua nhiều thăng trầm. Khởi đầu bằng chân cộng tác viên cho một tờ báo địa phương lúc 15 tuổi, đến năm 19 tuổi Hill trở thành nhà quản lý mỏ than trẻ tuổi nhất, sau đó bỏ ngang để theo đuổi ngành luật. NapoleonHill còn kinh qua nhiều nghề như kinh doanh gỗ, xe hơi, viết báo về kinh doanh… Đó là những công việc ông từng nếm trải trước khi 25 tuổi! Song khác với những người thành đạt khác, ông cẩn thận phân tích từng sự kiện trọng đại trong đời mình, rút ra những bài học, rồi tiếp tục rút gọn chúng thành các nguyên tắc căn bản, tổ chức các nguyên tắc ấy thành triết lý sống và rèn luyện... Cơ hội đặc biệt đã đến với Hill trong một lần phỏng vấn để viết về chân dung Andrew Carnegie – ông “vua thép” huyền thoại của Mỹ đã đi lên từ hai bàn tay trắng. Từ lần phỏng vấn đó, Napoleon Hill có dịp tiếp cận với những con người thành đạt và có quyền lực nhất tại Mỹ để tìm hiểu và học hỏi những bí quyết thành công của họ, trong thế so sánh và kiểm chứng với những công thức thành công của Andrew Carnegie. Ông muốn qua đó có thể đúc kết và viết nên một cuốn sách ghi lại những bí quyết giúp biến các cá nhân bình thường thành những người thành công trong xã hội. Để thực hiện cuốn sách này, Napoleon Hill dành hầu như toàn bộ thời gian và công sức trong suốt gần ba mươi năm để phỏng vấn hơn 500 người nổi tiếng và thành công nhất trong nhiều lĩnh vực khác nhau, cùng hàng ngàn doanh nhân khác - cả những kẻ thất bại và những người thành công. Kết quả của những nghiên cứu không mệt mỏi đó là Think and Grow Rich - Nghĩ giàu và Làm giàu - công thức, hay “cẩm nang” để trở thành vượt trội và được xã hội nể trọng. Cuốn sách cũng đưa Napoleon Hill vào danh sách một trong những tác giả có tác phẩm bán chạy nhất thế giới từ trước đến nay.

Được viết ra từ vô số những câu chuyện có thật, tác phẩm có một sức thuyết phục và lay động rất lớn. Bạn không chỉ được biết bí quyết về sự thành công của các tên tuổi như Edison - nhà phát minh lỗi lạc mà thời gian rèn luyện trong trường học chỉ… vỏn vẹn 3 tháng; như Henry Ford - người bị coi là không có học vấn nhưng đã trở thành ông trùm trong nền công nghiệp xe hơi với một gia tài kếch xù… mà còn của rất nhiều cá nhân trong nhiều lĩnh vực khác nhau đã đi lên từ con số không.

Think and Grow Rich - Nghĩ giàu và Làm giàu là cuốn sách đầu tiên đưa ra triết lý thành đạt - một triết lý đầy đủ và toàn diện về thành công của cá nhân, đồng thời cung cấp cho bạn phương pháp để tạo một ý thức thành công cũng như đưa ra kế hoạch sơ bộ và chi tiết để đạt được thành công đó. Các bí quyết thành công được đề cập đến trong cuốn sách này có thể đượcđúc kết ngắn gọn: tất cả bắt nguồn từ cách nghĩ. Do đó, cuốn sách này không chỉ thay đổi những điều bạn nghĩ mà còn có thể thay đổi cả cách nghĩ của bạn; không dừng lại ở việc chỉ ra cho bạn thấy bạn phải làm gì mà còn vạch cho bạn biết phải làm điều đó như thế nào để đạt được khát vọng của mình.

Mời bạn đón đọc.', N'76.jpg', 9, 2, CAST(N'2020-06-13T00:00:00.000' AS DateTime), 350, 100)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (77, N'Muôn kiếp nhân sinh', 168000.0000, N'Cuốn', N'“Muôn kiếp nhân sinh” là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm, ông Thomas – một nhà kinh doanh tài chính nổi tiếng ở New York. Những câu chuyện chưa từng tiết lộ này sẽ giúp mọi người trên thế giới chiêm nghiệm, khám phá các quy luật về luật Nhân quả và Nhân hồi của vũ trụ giữa lúc trái đất đang gặp nhiều tai ương, biến động, khủng hoảng từng ngày.

“Muôn kiếp nhân sinh” là một bức tranh lớn với vô vàn mảnh ghép cuộc đời, là một cuốn phim đồ sộ, sống động về những kiếp sống huyền bí, trải dài từ nền văn minh Atlantis hùng mạnh đến vương quốc Ai Cập cổ đại của các Pharaoh quyền uy, đến Hợp Chủng Quốc Hoa Kỳ ngày nay.

“Muôn kiếp nhân sinh” cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước. Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.

Luật Luân hồi và Nhân quả đã tạo nhân duyên để người này gặp người kia. Gặp nhau có khi là duyên, có khi là nợ; gặp nhau có lúc để trả nợ, có lúc để nối lại duyên xưa. Có biết bao việc diễn ra trong đời, tưởng chừng như là ngẫu nhiên nhưng thật ra đã được sắp đặt từ trước. Luân hồi là một ngôi trường rộng lớn, nơi tất cả con người, tất cả sinh vật đều phải học bài học của riêng mình cho đến khi thật hoàn thiện mới thôi. Nếu không chịu học hay chưa học được trọn vẹn thì buộc phải học lại, chính xác theo quy luật của Nhân quả.
Mời bạn đón đọc.', N'77.jpg', NULL, NULL, CAST(N'2020-06-13T00:00:00.000' AS DateTime), 380, 100)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (78, N'Bên rặng tuyết sơn', 88000.0000, N'Cuốn', N'Câu chuyện của người đi tìm chân lý

Bên Rặng Tuyết Sơn là quyển sách mới trong bộ sách khoa học tâm linh nổi tiếng. Khơi nguồn từ vùng núi Himalaya xa xôi và vùng đồng bằng Ấn Độ, Bên Rặng Tuyết Sơn mang đến cho bạn đọc những sự thật vĩ đại về tâm linh và vai trò của việc làm chủ tâm linh cũng như làm chủ số phận. Tác phẩm còn khơi dậy những giá trị cao đẹp như: Tính trung thực, trái tim bao dung, lòng trắc ẩn, sự thông thái, lòng tín ngưỡng và tình yêu bao la.

Câu chuyện bắt đầu từ việc Satyakam đến thung lũng Saraswati để tầm sư học đạo. Nhưng không ngờ rằng, khi đến đây, thì vị đạo sư già đã chờ anh rồi, không những thế, ông còn nói đúng tên anh và biết anh đến gặp ông để làm gì dù rằng anh chưa hề xưng tên cũng như chưa nói mục đích của mình đến đây.

Bài học đầu tiên của Satyakam là quên đi thời gian. Việc này nghe qua tưởng chừng như đơn giản nhưng khi bắt đầu thực hiện lại không đơn giản chút nào. Cũng như việc lắng nghe những âm thanh của vũ trụ như tiếng lá rơi, tiếng gió thổi, tiếng nước reo cũng không dễ dàng thực hiện nếu trong lòng ta vẫn còn nhiều tạp âm. Chúng ta sẽ được trải nghiệm những giây phút bình yên thông qua chuyến hành trình đi tìm chân lý của Satyakam dưới sự hướng dẫn của vị đạo sư trong dãy núi Tuyết Sơn để hiểu rõ hơn về sức mạnh vĩnh hằng của thế giới tâm linh cũng như khám phá chính tiếng nói nội tâm của bản thân mình.
Mời bạn đón đọc.', N'78.jpg', NULL, NULL, CAST(N'2020-06-13T00:00:00.000' AS DateTime), 390, 100)
SET IDENTITY_INSERT [dbo].[SACH] OFF
SET IDENTITY_INSERT [dbo].[TAC_GIA] ON 

INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (1, N'Phạm Công Anh', N'197 Trần Hưng Đạo', N'98877668', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (2, N'Nguyễn Thế Giang', N'179 Chánh hưng - F.4 - Q.8 Tp.HCM', N'19001611', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (3, N'Lê Việt Nhân', N'', N'19001570', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (5, N'Hồng Phúc', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (6, N'Ks.Phạm Quang Huy', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (7, N'Nguyễn Bá Tiến', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (8, N'Phạm Hữu Khang', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (10, N'Nguyễn Minh Đức', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (11, N'Nguyễn Văn Hòa', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (12, N'Trần Văn Thắng', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (13, N'Trần Văn Lăng', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (14, N'Quách Tuấn Ngọc', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (15, N'Nguyễn Xuân Huy', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (16, N'Đoàn Khắc Độ', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (17, N'Nguyễn Tấn Tín', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'8504122', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (25, N'Phạm Phan Trung', N'124 Bắc Hải P.6 Q.TB', N'0918121188', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (27, N'Hồ Trọng Long', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (29, N'Nguyễn Phước Đại', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (31, N'Nguyễn Duy Hoàng Mỹ', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (32, N'TS. Nguyễn Phương Liên', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (33, N'BS. Vũ Thị Uyên Thanh', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (34, N'Nguyễn Ngọc Minh', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (35, N'Nguyễn Thiên Bằng', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (36, N'Hoàng Đức Hải', N'', N'', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (37, N'Nguyễn Thanh Phong', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (38, N'Trần Thành Long', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (39, N'Lê Quốc Lai', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (40, N'Cao Thị Nhung', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (41, N'Nguyễn Thị Thu Thủy', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (42, N'La Quán Trung', NULL, NULL, NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (43, N'Dale Carnegie', NULL, NULL, N'Dale Breckenridge Carnegie (24/11/1888 – 1/11/1955) là một nhà văn và nhà thuyết trình Mỹ và là người phát triển các lớp tự giáo dục, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh nghèo đói tại một trang trại ở Missouri, ông là tác giả cuốn Đắc Nhân Tâm, được xuất bản lần đầu năm 1936, một cuốn sách thuộc hàng bán chạy nhất và được biết đến nhiều nhất cho đến tận ngày nay. Ông cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, và nhiều cuốn sách khác. Carnegie là một trong những người đầu tiên đề xuất cái ngày nay được gọi là đảm đương trách nhiệm, dù nó chỉ được đề cập tỉ mỉ trong tác phẩm viết của ông. Một trong những ý tưởng chủ chốt trong những cuốn sách của ông là có thể thay đổi thái độ của người khác khi thay đổi sự đối xử của ta với họ.', N'43.jpg    ')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (44, N'Napoleon Hill ', NULL, NULL, N'Napoleon Hill (Sinh ngày 26 tháng 10 năm 1883 - mất ngày 8 tháng 11 năm 1970) là một tác gia người Mỹ, một trong những người sáng lập nên một thể loại văn học hiện đại đó là môn "thành công học" (là khoa học về sự thành công của cá nhân). Tác phẩm được cho là nổi tiếng nhất của ông có tên "Suy nghĩ và làm giàu" (Think and Grow Rich) là. một trong những cuốn sách bán chạy nhất mọi thời đại. Trong sự nghiệp của mình, ông cũng từng được trở thành một cố vấn cho Tổng thống Franklin D. Roosevelt. Câu nói nổi tiếng thể hiện tư tưởng của ông là "Điều gì mà tâm trí có thể nhận thức và tin tưởng thì tâm trí có thể hoàn thành".Napoleon Hill được xem là người có ảnh hưởng rộng rãi nhất, mạnh mẽ nhất trong lĩnh vực thành công cá nhân.Cuốn sách kinh điển suy nghĩ và làm giàu của ông đã giúp cho hàng triệu người trên thế giới thành công và nó có một ý nghĩa, vai trò vô cùng quan trọng trong cuộc đời của rất nhiều người thành công như W.Clement Stone, Og Mandino. ', N'44.jpg    ')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai], [ChiTietTacGia], [hinhTacGia]) VALUES (45, N'Nguyên Phong', NULL, NULL, N'Dịch giả Nguyên Phong tên thật là Vũ Văn Du, sinh năm 1950 tại Hà Nội. Ông rời Việt Nam du học ở Hoa Kỳ từ năm 1968 và tốt nghiệp cao học ở hai ngành Sinh vật học và Điện toán. Ngoài công việc chính là một kỹ sư cao cấp tại Boeing trong hơn 20 năm, ông vẫn tiếp tục nghiên cứu trong vai trò nhà khoa học tại Đại học Carnergie Mellon và Đại học Seattle. Ông còn giảng dạy tại một số trường đại học quốc tế tại Trung Hoa, Hàn Quốc, Nhật Bản, Ấn Độ về lĩnh vực công nghệ phần mềm.', N'45.gif    ')
SET IDENTITY_INSERT [dbo].[TAC_GIA] OFF
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (1, 1, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (1, 3, NULL)
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (1, 27, NULL)
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (1, 29, NULL)
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (2, 3, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (2, 15, NULL)
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (3, 5, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (3, 6, N'Hiệu đính')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (4, 5, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (5, 6, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (5, 12, N'Chủ biên')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (6, 14, N'Sưu tầm và biên soạn')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (7, 8, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (8, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (9, 14, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (10, 11, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (11, 6, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (13, 13, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (13, 16, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (14, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (15, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (16, 14, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (17, 14, N'Chủ biên')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (17, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (18, 16, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (19, 5, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (20, 8, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (21, 13, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (22, 10, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (23, 11, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (24, 2, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (25, 10, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (26, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (27, 11, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (28, 14, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (29, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (30, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (31, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (32, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (33, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (34, 6, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (35, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (36, 1, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (36, 12, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (37, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (38, 13, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (39, 3, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (39, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (40, 10, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (41, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (42, 2, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (43, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (43, 8, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (44, 14, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (62, 27, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (62, 29, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (62, 31, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (63, 33, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (64, 32, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (65, 34, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (65, 35, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (65, 36, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (66, 37, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (67, 38, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (68, 39, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (69, 40, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (70, 41, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (71, 42, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (72, 42, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (73, 43, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (74, 43, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (75, 43, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (76, 44, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (77, 45, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (78, 45, N'Tác giả')
/****** Object:  StoredProcedure [dbo].[AddChuDe]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddChuDe](@tenchude nvarchar(100),@currentid int output)
as
begin try
 insert into CHU_DE(Ten_chu_de) values(@tenchude)
 set @currentid=@@IDENTITY
end try
begin catch
set @currentid=-1
end catch
GO
/****** Object:  StoredProcedure [dbo].[GetAllKH]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetAllKH]
as
select Mkh,Ho_ten from KHACH_HANG
union select 0,N'Tất Cả'
order by Mkh
GO
/****** Object:  StoredProcedure [dbo].[GetBook]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetBook](@machude int)
as
select * from SACH where Mcd=@machude
GO
/****** Object:  StoredProcedure [dbo].[GetchudeAll]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetchudeAll]
as
select * from CHU_DE
GO
/****** Object:  StoredProcedure [dbo].[LayChuDe]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayChuDe]
as
select * from CHU_DE
GO
/****** Object:  StoredProcedure [dbo].[Laysachtheochude]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Laysachtheochude](@macd int)
as
select * from sach where Mcd=@macd




GO
/****** Object:  StoredProcedure [dbo].[Proc_LayThongTinDonHang]    Script Date: 15/06/2020 8:25:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_LayThongTinDonHang](@makh int=0)
as
SELECT     KHACH_HANG.Mkh,   dbo.KHACH_HANG.Ho_ten, dbo.KHACH_HANG.Dia_chi, dbo.DON_DAT_HANG.Sdh, dbo.DON_DAT_HANG.Ngay_dat_hang, dbo.SACH.Ten_sach, dbo.CT_DAT_HANG.So_luong, dbo.CT_DAT_HANG.Don_gia, 
                         dbo.CT_DAT_HANG.Thanh_tien, dbo.SACH.Don_vi_tinh,Ten_chu_de
FROM            dbo.KHACH_HANG INNER JOIN
                         dbo.DON_DAT_HANG ON dbo.KHACH_HANG.Mkh = dbo.DON_DAT_HANG.Mkh INNER JOIN
                         dbo.CT_DAT_HANG ON dbo.DON_DAT_HANG.Sdh = dbo.CT_DAT_HANG.Sdh INNER JOIN
                         dbo.SACH ON dbo.CT_DAT_HANG.Ms = dbo.SACH.Ms
						 join CHU_DE on SACH.Mcd=CHU_DE.Mcd
						 where KHACH_HANG.Mkh=@makh or(isnull(@makh,0)=0)
GO
USE [master]
GO
ALTER DATABASE [QL_BANSACH] SET  READ_WRITE 
GO
