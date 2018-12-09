USE [master]
GO
/****** Object:  Database [AIS_DB]    Script Date: 12/9/2018 11:40:21 AM ******/
CREATE DATABASE [AIS_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AIS_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AIS_DB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AIS_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AIS_DB_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AIS_DB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AIS_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AIS_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AIS_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AIS_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AIS_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AIS_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AIS_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AIS_DB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AIS_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AIS_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AIS_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AIS_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AIS_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AIS_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AIS_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AIS_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AIS_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AIS_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AIS_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AIS_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AIS_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AIS_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AIS_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AIS_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AIS_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AIS_DB] SET  MULTI_USER 
GO
ALTER DATABASE [AIS_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AIS_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AIS_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AIS_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [AIS_DB]
GO
/****** Object:  Table [dbo].[CTPhieu]    Script Date: 12/9/2018 11:40:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTPhieu](
	[phieu_so] [varchar](20) NOT NULL,
	[mssp] [int] NOT NULL,
	[tk_du] [varchar](15) NOT NULL,
	[slg] [int] NOT NULL,
	[don_gia] [int] NOT NULL,
	[thanh_tien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[phieu_so] ASC,
	[mssp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUAHANG]    Script Date: 12/9/2018 11:40:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUAHANG](
	[msch] [int] NOT NULL,
	[ten_ch] [nvarchar](100) NOT NULL,
	[dia_chi] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[msch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GOCPHIEU]    Script Date: 12/9/2018 11:40:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GOCPHIEU](
	[phieu_so] [varchar](20) NOT NULL,
	[msch] [int] NOT NULL,
	[mskh] [int] NOT NULL,
	[so_hd] [int] NOT NULL,
	[ng_lap] [datetime] NOT NULL,
	[ng_phhd] [datetime] NULL,
	[thue_suat] [int] NOT NULL,
	[thue_gtgt] [int] NOT NULL,
	[tk_chinh] [varchar](15) NOT NULL,
	[loai_goc_phieu] [int] NOT NULL,
	[ly_do] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[phieu_so] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/9/2018 11:40:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[mskh] [int] NOT NULL,
	[ho_ten] [nvarchar](50) NOT NULL,
	[dia_chi] [nvarchar](100) NOT NULL,
	[ms_thue] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mskh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUCHI]    Script Date: 12/9/2018 11:40:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUCHI](
	[phieu_so] [int] NULL,
	[stt_pc] [int] NOT NULL,
	[ng_chi] [datetime] NOT NULL,
	[so_tien_chi] [int] NOT NULL,
	[mskh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stt_pc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUTHU]    Script Date: 12/9/2018 11:40:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTHU](
	[phieu_so] [int] NULL,
	[stt_pt] [int] NOT NULL,
	[ng_thu] [datetime] NOT NULL,
	[so_tien_thu] [int] NOT NULL,
	[mskh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stt_pt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/9/2018 11:40:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[mssp] [int] NOT NULL,
	[ten_sp] [nvarchar](100) NOT NULL,
	[don_vi_tinh] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[mssp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 12/9/2018 11:40:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[pass] [varchar](50) NOT NULL,
	[id_admin] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CUAHANG] ([msch], [ten_ch], [dia_chi]) VALUES (1, N'Kho Bia', N'96-98-100 Nguy?n An Ninh, Q. Ninh Ki?u, TP. C?n Tho')
GO
INSERT [dbo].[CUAHANG] ([msch], [ten_ch], [dia_chi]) VALUES (2, N'Kho Xe & ph? tùng', N'96-98-100 Nguy?n An Ninh, Q. Ninh Ki?u, TP. C?n Tho')
GO
INSERT [dbo].[CUAHANG] ([msch], [ten_ch], [dia_chi]) VALUES (3, N'Kho V? Thanh', N'135 du?ng 3 tháng 2, Th? xã V? Thanh, t?nh H?u Giang')
GO
INSERT [dbo].[CUAHANG] ([msch], [ten_ch], [dia_chi]) VALUES (4, N'Kho Th?c Ph?m S?a', N'96-98-100 Nguy?n An Ninh, Q. Ninh Ki?u, TP. C?n Tho')
GO
INSERT [dbo].[CUAHANG] ([msch], [ten_ch], [dia_chi]) VALUES (5, N'Kho Th?c ph?m các lo?i', N'96-98-100 Nguy?n An Ninh, Q. Ninh Ki?u, TP. C?n Tho')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (2, N'(70x48x27)x5 2DL3V', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (3, N'(60x45x27)x5 2DL3V', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (4, N'(60x48x27)x5 2DL3V', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (5, N'(80x48x27)x5 2DL3V', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (6, N'(42x27.5x21.7)x5 DL4X Hơp chất ra r', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (7, N'(42x27.5x217)x5 DL4X COPPER-B-ZINE', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (8, N'(49.5X30X24)X5 AB2X MI KIMEX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (9, N'(24X21X24)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (10, N'(39.5x31.8x25)x3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (11, N'(58x35.5x22.3)x3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (12, N'(39.5x31.8x22.3)x3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (13, N'(41x31.5x12.5)x3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (14, N'(40.5x32.5x12)x3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (15, N'(38.5x25.5x21.5)x3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (16, N'(34X28x22)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (17, N'(40X27.5x14.5)x3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (18, N'(29X28x22)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (19, N'(40x27.5X17)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (20, N'(31X28X22)X 3 DUPAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (21, N'(31.5X28X22)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (22, N'(32.5X28X22)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (23, N'(31.5X28X22)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (24, N'(39X28X22)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (25, N'(56X28X9)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (26, N'(39X28X16)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (27, N'(56X28X8.5)X3 2DLX', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (28, N'(31X28X22)X3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (29, N'(33.5X28X22)X3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (30, N'(44X28X31)X3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (31, N'(31.5X28X22)X3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (32, N'(31X28X22)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (33, N'(44X28X31)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (34, N'(44X28X31)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (35, N'(42.5X27X34)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (36, N'(40X27.5X23)X5 2DL X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (37, N'(38X29X23)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (38, N'(40X27.5X19)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (39, N'(40X27.5X22)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (40, N'(40X27.5X23)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (41, N'(40X27.5X24)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (42, N'(39.4X29X16.4)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (43, N'(39.4X31.5X15)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (44, N'(37X24X19.5)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (45, N'(35X25X28)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (46, N'(29.5X23X25.5)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (47, N'(36.5X28X22)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (48, N'(43X29X25.5)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (49, N'(32X27.5X14)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (50, N'(43X26X21)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (51, N'(49X27X27)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (52, N'(37X24X19.5)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (53, N'(29X28X22)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (54, N'(32X28X22)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (55, N'(32X27.5X16)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (56, N'(35X25X28)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (57, N'(32X28.5X20)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (58, N'(31X28X22)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (59, N'(30X28X22)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (60, N'(58X29.5X23.5)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (61, N'(57.5X29X21)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (62, N'(50X36X26)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (63, N'(52.5X27X34)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (64, N'(39X24X24)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (65, N'(35X22.5X31)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (66, N'(37.5X22X23)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (67, N'(64.5X30X14.5)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (68, N'(64.5X30X16)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (69, N'(57X28X18)X5 DUP3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (70, N'(56X28X9)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (71, N'(53X28X22)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (72, N'(41.5X28.5X31)X3 DUPXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (73, N'(39.4X28.4X17.5)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (74, N'(56X28X4)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (75, N'(22X21X17)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (76, N'(56X28X8.5)X3 DUPXDL', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (77, N'(36X28.5X16.7)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (78, N'(37X27X14)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (79, N'(34X30X20)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (80, N'(33X30.5X20)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (81, N'(31.5X28.5X22.5)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (82, N'(29X28X22)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (83, N'(36X29.5X19)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (84, N'(31X28X22)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (85, N'(35.5x18.5x16.7)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (86, N'(39x29x28)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (87, N'(33x28x22)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (88, N'(26x20.5x12)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (89, N'(32.5x28x22)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (90, N'(39X29x28.5)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (91, N'(40.6x25.3x13.5)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (92, N'(55x37x21)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (93, N'(42.5x28x18)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (94, N'(41x29x19)x3 DLXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (95, N'(42X31X14)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (96, N'(42X31X21)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (97, N'(42X31X12)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (98, N'(37X30X20)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (99, N'(41.5X41.5X12.5)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100, N'(41.5X41.5X19)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (101, N'(34.5X27.5X7)X3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (102, N'(37X30X20)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (103, N'(43X28X25)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (104, N'(39.5X29.5X22)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (105, N' (39.5X29.5X23.5)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (106, N'(43X28X26.5)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (107, N'(43X28X29)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (108, N'(45X33X21)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (109, N'(47.5X32.4X18.6)X5 DL3DL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (110, N'(34X33.5X23.5)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (111, N'(47.3X32.4X16.7)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (112, N'(34.5X33.5X19.5)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (113, N'(44.5X30X19.5)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (114, N'(46X33X18.5)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (115, N'(43X33X15)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (116, N'(47.3X32.4X18.6)X5 DUP3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (117, N'(46.5X31.5X14.5)X5 DUP3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (118, N'(44.5X30X16.5)X5 DUP3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (119, N'(48.3X28.3X15.5)X5 DUP3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (120, N'(50X30.5X31)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (121, N'(34X25X25)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (122, N'(32X26X26)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (123, N'(31X28X22)X3 2DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (124, N'(42X32X27.5)X5 2DL3VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (125, N'(41X31X12.5)X3 2DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (126, N'(34X28X22)X3 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (127, N'(42X32X23)X3 2DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (128, N'(36.5X10X66.5)X3 2DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (129, N'(19X13.5X19.5)X3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (130, N'(58X35X24)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (131, N'(58X38X28)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (132, N'(61X41X34)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (133, N'(61X41X30)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (134, N'(61X41X38)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (135, N'(58X40X31)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (136, N'(25X50) AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (137, N'(20.5X20.5X22)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (138, N'(30.5X30.5X31)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (139, N'(36X36X36.5)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (140, N'(41X41X41.5)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (141, N'(70X63X32)X5 DUP4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (142, N'(55X27X25)X3 DLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (143, N'(23.5X21X9.5)X3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (144, N'(25.5X19.5X10.5)X3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (145, N'(26X26X10)X3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (146, N'(28X25.5X10)X3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (147, N'(50X25X25)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (148, N'(33.5X32X17)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (149, N'(43X33X24.5)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (150, N'(41X30X14)X3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (151, N'(61.5X31X22.5)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (152, N'(30X20X10)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (153, N'(66X45X37)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (154, N'(54X46X40)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (155, N'(34X26.3X11.2)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (156, N'(0m68x1m70)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (157, N'(1m21x1m60)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (158, N'(30X20X15.5)X3 DUP2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (159, N'(46X28X22)X3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (160, N'(50X40X22)X3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (161, N'(56X37X15)X3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (162, N'(46X34X18)X3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (163, N'(50X32X20)X3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (164, N'(50X44X22)X3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (165, N'(31X7X10.7)X3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (166, N'(50X30X12)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (167, N'(27.5X24X20)X3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (168, N'(50X30X11)X5 DUP3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (169, N'(60X33X19)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (170, N'(58x38x24)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (171, N'(33x30x20)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (172, N'(42x30x20)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (173, N'(34x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (174, N'(56x28x9)x3 2DLX', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (175, N'(43x28x13.7)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (176, N'(36.5x10x66.5)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (177, N'(25.5x25.5x27)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (178, N'(42x31x17.5)x3 DupVNJAP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (179, N'(42x31x19.5)x3 DupVNJAP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (180, N'(42x31x23)x3 DupVNJAP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (181, N'(20x100)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (182, N'(25X170)x5 AB4X', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (183, N'(40x140)x5 AB4X', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (184, N'(20x160)x5 AB4X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (185, N'(20x140)x5 AB4X', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (186, N'(25x180)x5 AB4X', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (187, N'(194X11X65)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (188, N'(152x21x92)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (189, N'(33x33x21)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (190, N'(43x28x17)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (191, N'(43x27.5x14.2)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (192, N'(30x28x22)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (193, N'(39.4x29x16.2)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (195, N'(55.3x8.4x36.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (196, N'(43x28x15.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (197, N'(39x34x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (198, N'(36.5x10x66.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (199, N'(42x32x20)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (200, N'(42x32x18)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (201, N'(42x32x24.5)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (202, N'(50x32x24)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (203, N'(42x32x25)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (204, N'(42.5x27x34)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (205, N'(39.4X29X16.2)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (206, N'(50.5x29.5x20.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (207, N'(46x23x36)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (208, N'(55x50x40)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (209, N'(36x28x22)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (210, N'(39.4x29x16.2)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (211, N'(32.5x27.5x15.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (212, N'(36x36x36.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (213, N'(39.5x28.5x17)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (214, N'(29x28x22)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (215, N'(43x28x14.6)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (216, N'(34x28x22)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (217, N'(48.3x28.3x15.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (218, N'(47x27)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (219, N'(61x40x30)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (220, N'(60X37X24)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (221, N'(60x37x27)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (222, N'(25x160)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (223, N'(20x130)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (224, N'(20x180)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (225, N'(40x180)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (226, N'(40x130)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (227, N'(39x28x16)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (228, N'(39x28x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (229, N'(43x28x17)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (230, N'(39x27x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (231, N'(39x28x16)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (232, N'(44x29x24)x5 2DL3VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (233, N'(32x29x24)x5 2DL3VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (234, N'(41x31x12.5)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (235, N'(42x32x27.5)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (236, N'(44x29x24)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (237, N'(34.5x24x24.5)x5 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (238, N'(31x28x22)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (239, N'(50x30x20)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (240, N'(32.5x27.5x.5x15.5)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (241, N'(32.5x29x20)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (242, N'(34x29x20)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (243, N'(41.5x29.5x31)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (244, N'(28.5x30.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (245, N'(26.5x30.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (246, N'(37x30x20)x3 DupVNJANP', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (247, N'(42x31x12)x3 DupVNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (248, N'(42x31x24)x3 DupVNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (249, N'(41x29x19)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (250, N'(42x31x21)x3 DupVNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (251, N'(38.5x29x19.5)x3 DupVNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (252, N'(42x31x14)x3 DupVNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (253, N'(44x31x21)x5 DupVNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (254, N'(44x31x22)x5 Dup3VNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (255, N'(41x31x25)x5 Dup3VNJANP', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (256, N'(44x31x27.5)x5 Dup3VNJANP', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (257, N'(39x29x19.5)x3 Dup3VNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (258, N'(43x27x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (259, N'(21.5x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (260, N'(42x27.5x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (261, N'(40x27.5x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (262, N'(40x27.5x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (263, N'(30.5x28x22)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (264, N'(29.5x28x22)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (265, N'(50x32x19)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (266, N'(50x32x18)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (267, N'(55x30x20)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (268, N'(55x32x19)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (269, N'(40x27.5x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (270, N'(40x27.5x23)x3 dupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (271, N'(31.5x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (272, N'(30.5x28x22)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (273, N'(32x27.5x16.5)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (274, N'(20x100)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (275, N'(40x27.5x22)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (276, N'(40x27.5x23.5)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (277, N'(31.5x28x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (278, N'(33.5x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (279, N'(32.5x28.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (281, N'(33.5x29x20)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (282, N'(57x28x17)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (283, N'(31.5x28.5x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (284, N'(43x29x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (285, N'(39.4x29x10.2)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (286, N'(40x27.5x37)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (287, N'(31.5x28.5x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (288, N'(39x18x10)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (289, N'(39x24x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (290, N'(30x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (291, N'(38x27.5x27)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (292, N'(48.3x28.3x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (294, N'(40x30x20.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (295, N'(57x28x18)x5 Dup3XDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (296, N'(56x28x8.5)x3 2DLX', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (297, N'(30x110)x5 AB4X', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (298, N'(32x28x22)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (299, N'(56x28x9)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (300, N'(42.5x27x34.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (301, N'(56x28x9)x3 2DLX', N'N+đ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (302, N'(56x28x9)x3 2DLX', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (303, N'Giấy xeo K 123/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (304, N'Giấy xeo K 110/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (305, N'Giấy xeo K 102/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (306, N'Giấy xeo K 123/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (307, N'Giấy xeo K 106/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (308, N'Giấy xeo K 139', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (309, N'Giấy xeo K 140/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (310, N'Giấy xeo K 120/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (311, N'Giấy xeo K 130/180gr', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (312, N'Giấy xeo K 121/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (313, N'Giấy xeo K 122/200gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (314, N'Giấy xeo K 105/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (315, N'Giấy xeo K 92/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (316, N'Giấy xeo K 119', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (317, N'Giấy xeo K 115/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (318, N'Giấy xeo K 134/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (319, N'Giấy xeo K 103/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (320, N'Giấy xeo K 124/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (321, N'Giấy xeo K 86/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (322, N'Giấy xeo K 127/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (323, N'Giấy xeo K 137/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (324, N'Giấy xeo K 108/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (325, N'Giấy xeo K 135/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (326, N'Giấy xeo K 132/175gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (327, N'Giấy xeo K 88/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (328, N'(56x28x9)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (329, N'(64.5x30x14.5)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (330, N'(39.4x31.5x15)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (331, N'(47x28x38)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (332, N'(44x31x25)x5 Dup3VNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (333, N'(40x27.5x34)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (334, N'(57X28X18.5)X5 Dup3XDL', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (335, N'(72X27X13.5)X5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (336, N'(72x27x17.5)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (337, N'(69x27x14)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (338, N'(40x28.5x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (339, N'(61x41x45)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (340, N'(39.4X28.5X17.5)X3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (341, N'(64.5x30x14.5)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (342, N'(39.4X29X17.5)X3 DupXDL', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (343, N'(34.5X29X20)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (344, N'(38x27.5x29)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (345, N'(47.5X29X12)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (346, N'(43.5x26x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (347, N'(43.5X27X14)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (348, N'(40X27.5X23)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (349, N'(56x28x17)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (350, N'(56x28x15)x5 Dup3XDL', N'N+D')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (351, N'(42x32x22)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (352, N'(33.5x29.5x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (353, N'(43x28x13.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (354, N'(39x28x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (355, N'(57x28x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (356, N'(82x27x17)x5 Dup3XDL', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (357, N'(72x27x17)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (358, N'(39x27.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (359, N'(40x27.5x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (360, N'(32x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (361, N'(38x27.5x29)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (362, N'(43x28x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (363, N'(60x37x16)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (364, N'(64.5x30x14.5)x5 Dup3XDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (365, N'(39x27.5x21)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (366, N'(39.4x29.5x16.2)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (367, N'(43x28x25)x5 Dup3VNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (368, N'(43x28x26.5)x5 Dup3VNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (369, N'(15x11.5)x3 3VN', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (370, N'(15x13.5)x3 3VN', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (371, N'(15x20.5)x3 3VN', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (372, N'(15x23.5)x3 3VN', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (373, N'(44x28.5x33)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (374, N'(39x25.5x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (375, N'(44x28.5x36)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (376, N'(39.4x28.5x17.5)x3 DupXDL', N'N+D')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (377, N'(57x28x21)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (378, N'(40x27.5x38.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (379, N'(40.5x27.5x17)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (380, N'(40.5x27.5x14.3)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (381, N'(42x32x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (382, N'Giấy xeo', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (383, N'Giấy xeo K 114/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (384, N'Giấy xeo K 113/200gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (385, N'Giấy xeo K 125/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (386, N'Giấy xeo K 82/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (387, N'Giấy xeo K 85', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (388, N'Giấy xeo K 94', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (389, N'Giấy xeo K 136/170gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (390, N'Giấy xeo K 87/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (391, N'Giấy xeo K 104/180gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (392, N'Giấy xeo K 126/190', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (393, N'Giấy xeo K 100/180gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (394, N'Giấy xeo K 89/180gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (395, N'Nhãn phấn 100g', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (396, N'Túi 50g', N'Túi')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (398, N'Giấy xeo K 170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (399, N'Giấy xeo K 95/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (400, N'Giấy xeo K 128', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (401, N'Giấy xeo K 117', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (402, N'Giấy xeo K 109/180gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (403, N'(35x29x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (404, N'(44x28.5x37.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (405, N'(35x21.5x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (406, N'(42x32x21)x5 Dup3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (407, N'(42x32x24.5)x5 Dup3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (408, N'(42x32x22)x5 Dup3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (409, N'(34X28.5X22)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (410, N'(27.5x30)x3 DupXDL', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (411, N'(40.5x27.5x15.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (412, N'(34.5x28.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (413, N'(39.4x28.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (414, N'(42x32x30)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (415, N'(50x32x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (416, N'(10x36)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (417, N'(41.5x28.5x31)x5 Dup3XDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (418, N'(40x40x38.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (419, N'(40x27.5x29)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (420, N'(41.5x28.5x31)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (421, N'(40x27.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (422, N'(34.5x29x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (423, N'(39.4x28.5x16.8)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (424, N'(36x23.5x29)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (425, N'(35x35x32)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (426, N'(40x28.5x26.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (427, N'(43x28x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (428, N'(56x27.5x8.5)x3 2DLX', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (429, N'(60X37X18)X3 DL4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (430, N'(43x29x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (431, N'(43x27.5x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (432, N'(34.5x28x22)x3 2DLX', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (433, N'(40x40)x3 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (434, N'(37x70)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (435, N'(60x60)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (436, N'(50x50)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (437, N'(35x50)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (438, N'(25x70)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (439, N'(25x60)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (440, N'(43x29x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (441, N'(32.5x27.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (442, N'(32.5x28x22)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (443, N'(53x21x16)x5 2DL3VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (444, N'(60x30x20)x5 2DL3VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (445, N'(38x27x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (446, N'Nhãn NABICA', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (447, N'(22.5x27.5x14)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (448, N'(22x21x17.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (449, N'(56x27x8.5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (450, N'(43x28x15)x5 Dup3VNDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (451, N'(15x23.5)x3 AB2VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (452, N'(15x13.5)x3 AB2VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (453, N'(15x11.5)x3 AB2VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (454, N'(15x20.5)x3 AB2VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (455, N'(42X28X25)X5 Dup3VNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (456, N'(36x35x32)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (457, N'(33x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (458, N'(36.5x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (459, N'(48x30x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (460, N'(56x27x8.5)x3 2DLX', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (461, N'(25x50)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (462, N'(40x27.5x24.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (463, N'(32x24.5x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (464, N'(64.5X30X27)X5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (465, N'(55.5x8x37)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (466, N'(40.5x27.5x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (467, N'(39x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (468, N'(38.5x26.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (469, N'(35x25x29.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (470, N'(39.5x27x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (471, N'(29.5x28x22)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (472, N'(36.5x28x22)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (473, N'(43x29x25.5)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (474, N'(39.4x27x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (475, N'(40x27.5x14.7)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (476, N'(40x27.5x15.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (477, N'(50x30.5x31)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (478, N'Ngăn khe lót vá ép', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (479, N'(48.3x28.3x17.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (480, N'(44.5x33.5x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (481, N'(44.5x33.5x16.5)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (482, N'(43.5x32.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (483, N'(44X32)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (484, N'(64.5x30x28)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (485, N'(31.5x24x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (486, N'(58x29x23.5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (487, N'(56x28x4)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (488, N'(56X28X8.5)X3 2DLX', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (489, N'(55x26x9)x3 2DLX', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (490, N'(55.5x27.5x8.5)x3 2DLX', N'N+D')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (491, N'Giấy xeo K 98/180gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (492, N'Giấy xeo K 142', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (493, N'Giấy xeo K 90/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (494, N'(28X21X24)X3 AB 2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (495, N'Giấy xeo K 112/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (496, N'Giấy xeo K 107/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (497, N'Giấy xeo K 116/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (498, N'Giấy xeo K 133', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (499, N'Giấy xeo K 81/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (500, N'(42.5X28X18)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (501, N'Gạt hút nước', N'nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (502, N'(55.5x26x9)x3 DupXDL', N'N+D')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (503, N'(36x28.5x16.7)x3 DupXDL', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (504, N'(40x30x30)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (505, N'(40x27.5x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (506, N'(39x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (507, N'(56x27x9)x3 DupXDL', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (508, N'(56x27x9)x3 DupXDL', N'N+D')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (509, N'(40X27.5X17)3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (510, N'(39.4X28.5X16.4)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (511, N'(18x12.5)x3 3VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (512, N'(47x24x38)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (513, N'(40.5x25.3x13.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (514, N'(30x40)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (515, N'(44x30)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (516, N'(47.3x32.4x18.6)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (517, N'(33.5x32.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (518, N'(42x32x23)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (519, N'(43x28)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (520, N'(50x25)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (521, N'(34x33.5x19.5)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (522, N'(47.3x32.4x18.3)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (523, N'(33x32.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (524, N'(43x29)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (525, N'(40x27x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (526, N'(58.5x29.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (527, N'(57.5x29x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (528, N'(34x30x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (529, N'(36x25.5x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (530, N'(57.5x29x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (531, N'(40x28x17)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (532, N'(41.5x41.5x19)x3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (533, N'(52.5x27.5x31)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (534, N'(61X32X52)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (535, N'(53X27X50)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (536, N'(48x48x38)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (537, N'(59x30x25)x3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (538, N'(51x25x16)x3 3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (539, N'(46x46x12)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (540, N'(31x31x26)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (541, N'(56x27x4.5)x3 DupXDL', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (542, N'(56x27x4.5)x3 DupXDL', N'N+D')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (543, N'(33x33x80)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (544, N'(32x32x60)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (545, N'(26x26x51)x5 AB4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (546, N'(23x23x42)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (547, N'(37x29x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (548, N'(12.5x20)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (549, N'(25x20)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (550, N'(42x32)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (551, N'(37X22.5X17.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (552, N'(37x22.5x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (553, N'(43x25.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (554, N'(41x41x8)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (555, N'(25x25x13)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (556, N'(46x46x13)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (557, N'(31x31x17)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (558, N'(43x43x34.5)x5 AB4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (559, N'(52x27x28.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (560, N'(48x48x54,5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (561, N'(64x33x36.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (562, N'Giấy xeo K 99/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (563, N'Giấy xeo K 91/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (564, N'Giấy xeo K 141', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (565, N'(64.5x30x16)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (566, N'(43x25x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (567, N'(29.5x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (568, N'(46.4x31.5x14.6)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (569, N'(43.5x29)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (570, N'(46.5x30.5x14.5)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (571, N'(36x27.5x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (572, N'(33x28x22)x 3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (573, N'(32.5x27.5x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (574, N'(52.5x27.5x30)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (575, N'(52.7x27.5x30)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (576, N'(36x22.5x29)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (577, N'Tem nem phong', N'con')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (578, N'(46.5x31.5x14.6)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (579, N'(0.10x0.85)x9 xeo', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (580, N'(46x33x18.5)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (581, N'(45x33x21)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (582, N'(44.5x33.5x16.5)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (583, N'(34.5x33.5x23.5)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (584, N'(32x33.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (585, N'(45x32)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (586, N'(102x137)x3 2DLX', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (587, N'(102x151)x3 Dup3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (588, N'(93x105)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (589, N'(30x22x19)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (590, N'(124x138)x5 DupXTPT', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (591, N'(130x138)x3 DupXTPT', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (592, N'(100x138)x5 Dup3XTPT', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (593, N'(120x102)x3 DupXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (594, N'(90x1195)x5 DL3TPT', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (595, N'(76x112)x3 2DLX', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (596, N'(124x134)x3 DupXTPT', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (597, N'(83x112)x3 2DLX', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (598, N'(87x123)x3 2DLX', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (599, N'(130x168)x5 Dl3XTPT', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (600, N'(83x128)x3 2DLX', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (601, N'(100x148)x5 Dup3XTPT', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (602, N'(124x134)x3 DupXTPT', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (603, N'(133x150)x2 2DLX', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (604, N'(102x156)x3 2DLX', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (605, N'(102x129)x5 DL3XTPT', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (606, N'(98x155)x5 AB4X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (607, N'(103x129)x5 DL3XTPT', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (608, N'(93x140)x3 2DLX', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (609, N'(97x119)x3 DupXAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (610, N'(49.5x29x19)x3 Dup3VNJanp', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (611, N'(35x22.5x30)x5 Dup3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (612, N'Giâý xeo K.97/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (613, N'Giấy xeo K 77', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (614, N'Giấy xeo K 70/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (615, N'Giấy xeo K 129/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (616, N'Giâý xeo K 101/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (617, N'Giấy xeo K 118/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (618, N'(44.5X29X18)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (619, N'(28x17)x5 5X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (620, N'(57.5x27x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (621, N'(26x15.5)x5 5X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (622, N'(59x30x23.5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (623, N'(59x30x21.5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (624, N'(56x28x4)x3 DupXDL', N'N+đ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (625, N'(46x46x17)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (626, N'(48x48x54.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (627, N'(48x48x36)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (628, N'(37x27.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (629, N'(44.5x29x17.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (630, N'(28x16.5)x5 5X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (631, N'(39x27.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (632, N'(26x20)x5 5X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (633, N'(52.5x27x30)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (634, N'(123x160)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (635, N'(36x40)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (636, N'(68x170)x5 Dl3XAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (637, N'(121x160)x5 DL3XAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (638, N'(26.5x20)x5 5X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (639, N'(56x27.5x9)x3 2DLX', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (640, N'(40.5X28.5X21)X5 DL3XAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (641, N'(39.5x27.5)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (642, N'(48.3x28.3x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (643, N'(45X30)X3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (644, N'(44x33.5x16)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (646, N'(47.3x32.4x16.7)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (647, N'(46x31)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (648, N'(43x32.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (649, N'(41x41x16)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (650, N'(31x31x25)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (651, N'(43x43x51)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (652, N'(39.5x28x13)x3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (653, N'(34.5x27.5x8)x3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (654, N'(42x31x11)x3 Dup3VNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (655, N'(39.5x28x12.8)x3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (656, N'(58x35x26)x5 Dl4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (657, N'(34.5X28X22)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (658, N'(39.4x28.5x16.2)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (659, N'(37x22x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (660, N'(33.5x25x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (661, N'(35x22.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (662, N'(35.5x22.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (663, N'(56x26.5x8.5)x3 2DLX', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (664, N'(47.3x32.4x19.4)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (665, N'(40..5x28.5x16.5)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (666, N'(47.8x28.3x15.5)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (667, N'(44.5x33.5x15.5)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (668, N'(39x27)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (669, N'Giấy xeo K 116/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (670, N'Tem bảo hành', N'con')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (671, N'(122x76x22)x5 AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (672, N'(108x54x18)x5 AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (673, N'(194x66x10)x5 AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (674, N'(29.5x27.5x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (675, N'(30.5x28x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (676, N'(43x28x25.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (677, N'(40x31x19)x3 Dup3VNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (678, N'(41x31x19)x3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (679, N'(33x30x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (680, N'(55x27x25)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (681, N'(41x31x13)x5 2DL3VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (682, N'(142x72x12)x5 DL4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (683, N'(141x71) 2X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (684, N'(56x27x5)x3 DupXDL', N'N+đ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (685, N'(56x27x5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (686, N'(30.5x27.5x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (687, N'(43.5x30.5x15.5)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (688, N'(42x29)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (689, N'(48.3x27.8x15)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (690, N'(41.5x31.5)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (691, N'(36.5X10X66.5)X3 2DLVN', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (692, N'(49.5x23.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (693, N'(39.5x27x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (694, N'(35x28x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (695, N'(44x28.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (696, N'(44x28.5x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (697, N'(39.5x27.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (698, N'(27.5x17)x5 5X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (699, N'(54x28x17)x5 Dup3XDL', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (700, N'(64.5x30x17)x5 2DL3X', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (701, N'(42.5x27x35)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (702, N'(39.5x27x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (703, N'(32x29x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (704, N'(34.5x25x28.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (705, N'(35.5x22.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (706, N'Giấy xeo K 138/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (707, N'Giấy xeo K 93/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (708, N'Lót giấy ép', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (709, N'Ngăn lót giấy', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (710, N'(34.5x30x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (711, N'(40.5x25.5x13.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (712, N'(37x10.5x67)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (713, N'(56x40x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (714, N'(42.5x28.5x12.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (715, N'(42x28x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (716, N'(33x33x21.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (717, N'(40X28X22)X5 Dup3VNDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (718, N'(70x65x32)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (719, N'(33x33x60)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (720, N'(30x130)5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (721, N'(30X200)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (722, N'(30x110)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (723, N'(30x100)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (724, N'(20x105)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (725, N'(20x150)x5 AB4X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (726, N'(41x31x16)x5 Dup3VNJANP', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (727, N'(39.5X29X13)X3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (728, N'(41x32x16.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (729, N'(18.5X15.5X5)X3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (730, N'(44.5x33.5x15.5)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (731, N'(42.5x29.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (732, N'(44x33x16.5)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (733, N'(41x31x17)x3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (734, N'(56x28x5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (735, N'(44x29.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (736, N'(53x30x24.5)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (737, N'(45x29.5x23.5)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (738, N'(44.5x28.5x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (739, N'(41x28.5x31)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (740, N'(28.5x23x23)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (741, N'(29x23x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (742, N'(37x31x23.5)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (743, N'(47.5x28.5x27.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (744, N'(39x30.5x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (745, N'(38.5x30.5x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (746, N'(38.5x30.5x23.5)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (747, N'(45.5x21x31.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (748, N'(49.5x23x28.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (749, N'(44x28.5x31)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (750, N'Giấy 02 lớp K 72', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (751, N'Giấy xeo K 83', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (752, N'(34.5X25X28.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (753, N'(55X27.5X25)X3 DLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (754, N'(19.4x14x29.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (755, N'(13.5x13.5x32.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (756, N'(54.5x35x19)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (757, N'(56.5X38X78)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (758, N'(46x23x36)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (759, N'(41x31x12.5) x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (760, N'(37x25.5x21.5)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (761, N'(55x27x25)x3 DLXTPT', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (762, N'(42x32x27.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (763, N'(55x26.5x9)x3 2DLX', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (764, N'(41.5x41.5x10)x3 DupVNJAnp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (765, N'(38x24.5x20)x3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (766, N'(24x18x19)x3 DupVNJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (767, N'(68x59x32)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (768, N'(53x31x16)x5 2DL3VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (769, N'Giấy xeo K 105/175gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (770, N'Giấy xeo K 110/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (771, N'Giấy xeo K 105/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (772, N'Giấy xeo K 90/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (773, N'(38.5x27x24.5)x3 DupXJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (774, N'(41x31x18)x3 DupXJanp', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (775, N'Giấy xeo K 120/160gr', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (776, N'Giấy xeo K 95/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (777, N'Giấy xeo K 120/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (778, N'Giấy xeo K 105/220gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (779, N'(36.5X27X28)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (780, N'(31X29X22)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (781, N'(56x28x4.5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (782, N'(65.5x33.5x21.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (783, N'Lót(64.5x32.5)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (784, N'(65.5x34x21.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (785, N'(58x28x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (786, N'(58x28x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (787, N'Giấy xeo K 86/140gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (788, N'(35x27x20)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (789, N'(40x27.5x23)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (790, N'(35x27x32)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (791, N'Giấy xeo K 120/175gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (792, N'Giấy xeo K 119/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (793, N'Giấy xeo K 115/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (794, N'(37X27X24.5)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (795, N'(43x28x25)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (796, N'Giấy xeo K127/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (797, N'Giấy Carton 2 lớp K0.65', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (798, N'Giấy Carton 2 lớp K0.78', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (799, N'(38.5x29x14)x5 Dup3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (800, N'Lót (28.5x37.5)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (801, N'Giấy xeo K 120/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (802, N'(31X200)X5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (803, N'(26x180)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (804, N'(42.5x28.5x15.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (805, N'(41.5x21.5x21)x AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (806, N'lót(12x12)x 5 X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (807, N'(28.5x28x20.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (808, N'Lót(100x100)x 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (809, N'Lót(110x70)x 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (810, N'(36x27x33.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (811, N'(48x33.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (812, N'(48x33.5x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (813, N'(42x27.5x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (814, N'(38x25x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (815, N'(28x23x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (816, N'(34.5x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (817, N'(46.5x26.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (818, N'(43x32x15)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (819, N'(48x32x13.8)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (820, N'(32.5x32.5x27.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (821, N'(44.5x27.5x37)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (822, N'(69.5x35x6)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (823, N'(60x30x31)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (824, N'(60x40x30)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (825, N'(48x24x50)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (826, N'(48x24x60)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (827, N'(61.5x31.5x45.5)x 5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (828, N'(108x50x27)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (829, N'(38X38X20)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (830, N'(43x43x42)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (831, N'(111x70x70)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (832, N'(43x29x30)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (833, N'(60.5x30x48)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (834, N'(118x29.5x29.5)x5 AB4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (835, N'(122x31x29)x 5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (836, N'(26.5x20.5x6.5)x3 AB2X', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (837, N'(25.5x5.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (838, N'(10.5x5.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (839, N'(118x30x30)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (840, N'(35x27x30)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (841, N'(40x27x23.5)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (842, N'(35.5x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (843, N'(32x27.5x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (844, N'(44x28.5x30)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (845, N'(64.5x30x16)x 2dl3X', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (846, N'(49.5x23.5x31)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (847, N'(49.5x23.5x38.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (848, N'(22x20.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (849, N'(39x31x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (850, N'(49.5x25.5x23.5)x5 Dup3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (851, N'(67x29.5x24)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (852, N'(50x24x34.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (853, N'Giấy xeo K 105/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (854, N'Giấy xeo K 86/140gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (855, N'(0.67x1.60)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (856, N'(0.69x1.68)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (857, N'(0.69x1.56)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (858, N'(0.65x1.52)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (859, N'(1.20x1.70)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (860, N'Giấy xeo K 118/200gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (861, N'Giấy xeo K 95/175gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (862, N'Giấy xeo K 140/170gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (863, N'Giấy xeo K 115/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (864, N'Giấy xeo K 110/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (865, N'Giấy xeo K 132/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (866, N'Giấy xeo K 134/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (867, N'Giấy xeo K 90/190gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (868, N'Bìa Lịch', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (869, N'Nhãn Chai nứơc mắm', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (870, N'Hộp White Rose', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (871, N'Nhãn Chai 18g', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (872, N'Nhãn chai 22g', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (873, N'Tờ bướm Mỹ Phẩm', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (874, N'Tem decal', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (875, N'Hộp kem Lá dâu tằm', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (876, N'Toa kem Lá dâu tằm', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (877, N'Nhãn kem Lá dâu tằm', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (878, N'Thùng nước mắm', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (879, N'(64.5x30x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (880, N'(57X27.5X17)X5 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (881, N'(47.5x28.5x30.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (882, N'(40x27.5x28.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (883, N'(49.5x23x38.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (884, N'(48X35.5X26)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (885, N'Giấy xeo K 100/170gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (886, N'Giấy xeo K 60/170gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (887, N'(38X21X12.5)X3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (888, N'(39x32x27.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (889, N'(40x28x22)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (890, N'Giấy xeo K 111/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (891, N'Giấy xeo K 127/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (892, N'Giấy xeo K 91/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (893, N'(56X40X22)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (894, N'(47.7x28x15.3)x3 DupXDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (895, N'Lót(46.7x27)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (896, N'(0.68x1.68)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (897, N'(0.49x0.47)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (898, N'Giấy xeo K 97/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (899, N'Giấy xeo K 46/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (900, N'Giấy xeo K 59/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (901, N'(42X31X19)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (902, N'(20x15.5x5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (903, N'Giấy xeo K 109/170gr', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (904, N'Giấy xeo K 116/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (905, N'(38X31X12.5)X3 2DlX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (906, N'(55.5x35.5x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (907, N'(40x27.5x31)x3 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (908, N'(39.4x28.5x16.2)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (909, N'(39.4x28.5x13.5)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (910, N'Nhãn toa newgil', N'nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (911, N'(36.5X27X34)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (912, N'(36x37x37.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (913, N'(32x27.5x15.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (914, N'(33x28.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (915, N'Tấm lót(27x21)x5 5X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (916, N'(40x27.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (917, N'(40.5x30.5x19.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (918, N'(44.5x29x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (919, N'(64.5X30X14.5)X3 2DLX', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (920, N'(64.5x30x14.5)x3 2DLX', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (921, N'(35.5x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (922, N'(56X28.5X14)X3 DupXDL', N'nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (923, N'(56X28.5X14)x5 Dup3XDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (924, N'(62X28.5X14)X3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (925, N'(62x28.5x14)x5 Dup3XDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (926, N'(68x28.5x11.5)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (927, N'(68x28.5x11.5)x5 Dup3XDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (928, N'(73x28.5x11.5)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (929, N'(73x28.5x11.5)x5 Dup3XDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (930, N'Giấy xeo K 91/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (931, N'Giấy xeo K 105/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (932, N'Giấy xeo K 84/140gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (933, N'Giấy xeo K 105/190gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (934, N'Giấy xeo K 107/220gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (935, N'Giấy xeo K 127/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (936, N'(40x30x40)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (937, N'Giấy xeo K 100/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (938, N'Giấy xeo K 91/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (939, N'Giấy xeo K 92/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (940, N'Giấy xeo K 115/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (941, N'Giấy xeo K 130/200gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (942, N'Giấy xeo K 127/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (943, N'(64.5X30X16)X5 2DL3X', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (944, N'(44x26.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (945, N'Giấy xeo K 124/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (946, N'Giấy xeo K 101/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (947, N'Giấy xeo K 120/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (948, N'Giấy xeo K 109/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (949, N'Giấy xeo K 99/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (950, N'Giấy xeo K 106/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (951, N'Tráng Màng OPP', N'm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (952, N'(36.5x11.5x57)x3 DupXTPT', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (953, N'(36.5x11.5x57)x3 DLXTPT', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (954, N'(55x27x9)x3 DupVNDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (955, N'(55.5x27x9)x3 DupVNDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (956, N'(55x26.5x4.5)x3DupVNDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (957, N'(55x26.5x9)x3 DupVNDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (958, N'Nhãn chai kem xua muổi Antito', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (959, N'Nhãn 100g thú y', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (960, N'Nhãn 5g thú y', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (961, N'Nhãn thuốc thú y 10ml', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (962, N'(28x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (963, N'(28x25.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (964, N'(57.5x29x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (965, N'Túi PE (73x60)', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (966, N'(53.5x36.5x9)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (967, N'(53.5x36.5x9)x 3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (968, N'(68x130)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (969, N'(68x150)x5 2DL3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (970, N'(68x157)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (971, N'(68x166)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (972, N'(125x152)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (973, N'(41.5x28.5x31)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (974, N'(64.5x30x16)x5 Dup3XDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (975, N'(49.5x23.5x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (976, N'(38.5x25x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (977, N'(27X24X15.5)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (978, N'(27x20x19.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (979, N'(50x30x40)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (980, N'Giấy xeo K 95/160gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (981, N'(34x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (982, N'(36.5x10x56.5)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (983, N'(37x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (984, N'Giấy xeo K 98/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (985, N'Giấy xeo K 101/160', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (986, N'Giấy xeo K 94/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (987, N'Giấy xeo K 90/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (988, N'Giấy xeo K 140/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (989, N'Giấy xeo K 98/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (990, N'Giấy xeo K 110/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (991, N'Giấy xeo K 114/170gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (992, N'Giấy xeo K 83/180gr', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (993, N'Giấy xeo K 92/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (994, N'Giấy xeo K 125/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (995, N'(42x27x21)x5 DL4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (996, N'Giấy xeo K 108/180gr', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (997, N'(41x32x18)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (998, N'(42X31X28)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (999, N'(145x27)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1000, N'(58X38X11)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1001, N'(28x18x9)x3 DupXDL`', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1002, N'(55X28X19)X3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1003, N'Decal(74x34)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1004, N'Tập giấy britol', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1005, N'ảnh (50x70)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1006, N'Giấy xeo K 105/240', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1007, N'Giấy xeo K 131/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1008, N'(55.5x27.5x5)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (1009, N'Giấy xeo K 114/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001009, N'(55.5x27.5x5)x3 DupXDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001010, N'(36X29.5X19.3)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001011, N'(40x28x16.5)x Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001012, N'(45x28x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001013, N'(45x28x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001014, N'(36x29x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001015, N'(41x29x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001016, N'(51x27x18.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001017, N'(58x27x18.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001018, N'(38x26x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001019, N'(56x26x4.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001020, N'(57.5x27.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001021, N'(38x28x10)x3 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001022, N'(59x39x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001023, N'(48X28X9)X3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001024, N'(55.5x28x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001025, N'(27x4.5x54)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001026, N'(37x27.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001027, N'(27X20X18.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001028, N'(44x28.5x28.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001029, N'(39.4x28.5x15.2)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001030, N'(56x28x9)x5 DL3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001031, N'Giấy xeo K 108/190', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001032, N'(80x166)x3 DupXTPT', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001033, N'(80X166)X5 Dup3XTPT', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001034, N'(138x144)x5 Dup3XDDL', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001035, N'(55.5X36.5X16)X5 Dup3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001036, N'(44x37x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001037, N'Dây kẽm', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001038, N'Catalogue', N'cuốn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001039, N'Rạp áo', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001040, N'(35x28.5x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001041, N'(34.5x28.5x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001042, N'(68x128)x5 2DL3VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001043, N'(68x152)x5 2DL3VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001044, N'(70x155)x5 2DL3VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001045, N'(125x142)x5 2DL3VN', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001046, N'(61x41x28)x5 DL4VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001047, N'(61x41x35)x5 DL4VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001048, N'(61x41x31)x5 DL4VN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001049, N'(61x42x28)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001050, N'(46x15)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001051, N'(48x15)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001052, N'(84X42X26)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001053, N'(80x20)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001054, N'(40.5x25)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001055, N'(50x40x30)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001056, N'(50x40x32)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001057, N'(48x32x30)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001058, N'(42x32x32)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001059, N'(40x20)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001060, N'(58X38X41)X5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001061, N'(58x38x31)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001062, N'(8x8)x1 DL', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001063, N'(58x38x36)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001064, N'(58x38x32)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001065, N'(58x38x26)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001066, N'(58x28x33)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001067, N'(14.5x14.5x35)x AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001068, N'(57x40x80)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001069, N'(34x24.5x31.5)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001070, N'(36.5x24.5x20.6)x Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001071, N'(36x24.5x20.5)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001072, N'(33x28x23.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001073, N'(33x28x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001074, N'(45x33x13.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001075, N'(54x36.5x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001076, N'Giấy xeo K 140/130', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001077, N'Giấy xeo K 140/220', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001078, N'(55x28x10)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001079, N'(57x28x15)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001080, N'(48x28x19)x3 DupXDL', N'nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001081, N'(48x28x19)x3 DupXDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001082, N'(55x27x5)x3 DupXDL', N'nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001083, N'(55x27x5)x3 DupXDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001084, N'(36x21x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001085, N'(36x24x9.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001086, N'(36x24.5x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001087, N'(29X22X34)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001088, N'(36x20x9.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001089, N'(36x24x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001090, N'(18x13) Duplex', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001091, N'(35.5x28.5x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001092, N'Giấy xeo K 96/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001093, N'(30.5x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001094, N'Giấy carton K72', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001095, N'(35x26x33)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001096, N'(50.5x21x25)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001097, N'(45x33x9)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001098, N'Giấy xeo K 120/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001099, N'Giấy xeo K 122/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001100, N'(51x31x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001101, N'(47.7x28x11.6)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001102, N'(47.7x28x12.3)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001103, N'(47.7x28x17.3)x3 DupXDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001104, N'(47.7x28x19.7)x3 DupXDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001105, N'(41x29x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001106, N'(49.5X23.5X21)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001107, N'(37x27.5x23)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001108, N'(37x28.5x20)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001109, N'(44.5x26x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001110, N'(25x17)x5 5X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001111, N'(55.5x28.5x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001112, N'(27x45x54)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001113, N'(34.5x28x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001114, N'Giấy xeo K 86/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001115, N'Giấy xeo k 89/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001116, N'Giấy xeo K 95/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001117, N'Giấy xeo K 112/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001118, N'Giấy xeo K 134/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001119, N'Giấy xeo K 134/175', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001120, N'Giấy xeo K 105/220', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001121, N'Giấy xeo K 90/175', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001122, N'Giấy xeo K 84/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001123, N'Giấy xeo K 137/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001124, N'Giấy xeo K 92/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001125, N'Giấy xeo K 96,5/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001126, N'Giấy xeo K 103/220', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001127, N'(45x30x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001128, N'(50x30x30.5)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001129, N'Giấy xeo K 118/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001130, N'Giấy xeo K 112/175', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001131, N'Giấy xeo K 129/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001132, N'Giấy xeo K 102/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001133, N'(55X27X7)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001134, N'(55x27x9)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001135, N'(50.5x21x25)x3 TPT2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001136, N'(35x26x33)x3 TPT2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001137, N'Giấy xeo K 102/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001138, N'(44x28.5x30)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001139, N'(44x28.5x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001140, N'(39x30.5x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001141, N'(40X25.5X22)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001142, N'(40.5x32x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001143, N'(20x15.5x7.5)x3 DupXDL', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001144, N'(54x36.5x9)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001145, N'(36.5x29x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001146, N'(57.5x29x20)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001147, N'Hộp tiger king (28x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001148, N'Giấy xeo K 122/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001149, N'Giấy xeo K 135/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001150, N'Giấy xeo K 93/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001151, N'(55x37x9)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001152, N'(46x34x13.5)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001153, N'(55x27x7)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001154, N'(38x27x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001155, N'(56x26.5x10)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001156, N'(58x37x29)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001157, N'(40x27.5x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001158, N'(22x21x20.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001159, N'(30.5x25.5x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001160, N'(36x35.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001161, N'(35.5x32.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001162, N'(38x27x21)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001163, N'(56x28x8.5)x3 AB2X', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001164, N'(64.5x30x14.5)x3 AB2X', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001165, N'Nhãn srtiped-basa', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001166, N'Nhãn Hypo-Basa', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001167, N'Nhãn newgel', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001168, N'Giấy xeo K130/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001169, N'Giấy xeo K 78/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001170, N'Giấy xeo K 114/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001171, N'Giấy xeo K 117/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001172, N'(47.7X28X10.3)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001173, N'(57.5x27.5x22.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001174, N'(56x26x4.7)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001175, N'(38x26x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001176, N'Nhãn Bassan(7.3x20.6)', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001177, N'Nhãn Kinalux (6.2x15.5)', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001178, N'Giấy xeo K 80/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001179, N'Giấy xeo K 70/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001180, N'Giấy xeo K 92/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001181, N'Giấy xeo K 130/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001182, N'(27x4.5x54)X3 DupXDL', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001183, N'(37x28x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001184, N'(39x27.5x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001185, N'(40x27.5x26.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001186, N'(54x30x10)x3 DL2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001187, N'(58x38x35)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001188, N'(44x26.5x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001189, N'(57.5x27.5x21.5)x3 DupXDL', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001190, N'(26x4.5x56)x3 DupxDL', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001191, N'(58x38x29)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001192, N'(58x38x34)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001193, N'(24x20x17)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001194, N'(57x28x15)x5 Dup3XDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001195, N'(57x27x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001196, N'(26x4.5x56)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001197, N'(57.5x27.5x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001198, N'(26x4.5x54)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001199, N'(50x30x31)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001200, N'(43x24.5x26.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001201, N'(53x20.5x40)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001202, N'(42x39x39)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001203, N'(42x40x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001204, N'(115x59x59)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001205, N'(61x30x31)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001206, N'(46.5x24x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001207, N'(46.5x24x50)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001208, N'(46x32.5x15)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001209, N'(43x30x20.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001210, N'(55.5x28.5x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001211, N'(42x34x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001212, N'(43x34x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001213, N'(46x34x10)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001214, N'(41.5x31x12)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001215, N'(57x29x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001216, N'(28x18.5x10)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001217, N'(37x27x22.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001218, N'(37x27x26)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001219, N'(55x37.5x9)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001220, N'(46X34X9.5)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001221, N'(42x31x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001222, N'Nhãn Iglo', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001223, N'Decal Iglo ART', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001224, N'Bướm(21x30)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001225, N'Phim(41x28.7)x4', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001226, N'Nhãn Validan(31x13.2)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001227, N'Nhãn Anco (24.5x9.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001228, N'Nhãn Anco (26.5x8.4)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001229, N'Nhãn Validan(6,2x15,5)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001230, N'Nhãn Aligator(5x19)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001231, N'Phim(38x25.6)x4', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001232, N'(39.5x29x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001233, N'(27x14x57)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001234, N'Giấy xeo K 103/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001235, N'Giấy xeo K 103/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001236, N'(32.5x29x39)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001237, N'(42.5x29x23.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001238, N'(26.5x46.5)X3 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001239, N'Giấy xeo K 161/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001240, N'Giấy xeo K 93/175', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001241, N'NHãn Bassan (24.5x9.7)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001242, N'(38x31x13)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001243, N'(40x27x20)x5 2Dl3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001244, N'(43x28x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001245, N'(53x27x22)x5 Dl4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001246, N'(35x28x22)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001247, N'(36x28x27)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001248, N'(35x28x22)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001249, N'(30.5X25.5X20)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001250, N'(36x32.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001251, N'Giấy xeo K 90/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001252, N'(55x27.5x25)x3 2DLX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001253, N'(145x11)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001254, N'(20x15.5x5)x3 DupXDL', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001255, N'(54X28X17)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001256, N'(41.5x28.5x31)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001257, N'(40x27.5x23)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001258, N'Peran 50EC (10mlx10)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001259, N'Nhãn Anco 720DD (15.5x6.2)', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001260, N'(33x33x53)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001261, N'(38x38x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001262, N'(36x36x21)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001263, N'(57x37)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001264, N'(58x38x30)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001265, N'(63x150)x5 DL3XDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001266, N'(63x170)x5 DL3XDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001267, N'(67x130)x5 DL3XDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001268, N'(67x160)x5 DL3XDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001269, N'(67x170)x5 DL3XDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001270, N'(66x147)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001271, N'(68x166)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001272, N'(76x171)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001273, N'(55x27x7)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001274, N'(45x28x20)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001275, N'(40x29x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001276, N'(56x27x10)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001277, N'Tem Fresh water', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001278, N'Nhãn 60gT', N'cái')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001279, N'Nhãn +Hộp 18gT', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001280, N'Nhãn+hộp 21gT', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001281, N'Nhãn +hộp 60gT', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001282, N'Nhãn Newgil A', N'Nhãn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001283, N'Hộp Newgil A', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001284, N'Giấy xeo K 90/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001285, N'Tấm lót(35x53)', N'Cái')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001286, N'(43X28X25)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001287, N'(145x13)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001288, N'(38x36x11.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001289, N'(42x31x13)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001290, N'(42.5x31x13)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001291, N'(37.5x28x29.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001292, N'(37x57)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001293, N'(58x36x29)x5 Dl4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001294, N'(58.5x27x18.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001295, N'Giấy xeo K 107/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001296, N'(40x27.5x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001297, N'(44.5x29x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001298, N'Giấy xeo K 105/130', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001299, N'Giấy xeo K 115/100', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001300, N'Giấy xeo K 110/130', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001301, N'(30.5x23.5x23.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001302, N'(41x30.5x25.3)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001303, N'(48.5x31.5x18.5)x5 Choil4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001304, N'(30.5x23.5x23.5)x3 Choil2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001305, N'(37x28x29.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001306, N'(57x29.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001307, N'(31x23x12)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001308, N'(31x23.5x24)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001309, N'(48x31.5x19)x5 Choil4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001310, N'(36.5x24.5x20.5)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001311, N'(32.5x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001312, N'(45x28x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001313, N'(42x31x16)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001314, N'Nhãn Validan 3DD 480ml(26.5x8.4)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001315, N'Nhãn Bassan 50EC(15.5x6.2)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001316, N'Nhãn ceperan 10EC (15.5x6.2)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001317, N'Nhãn Basudin 40EC (20.6x7.3)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001318, N'Tem 1534280', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001319, N'Hộp Pacific Blue(20x14x8)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001320, N'Hộp Natural Marine(20x14x7)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001321, N'Hộp Natural Marine (26.5x18x11.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001322, N'Giấy xeo K 70/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001323, N'(28.5x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001324, N'(28X26X22)X5 Dup3XN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001325, N'(37x31x35)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001326, N'(40x28x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001327, N'(39.4x29x16.4)x5 Dup3XN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001328, N'(40x28x17)x5 Dup3XN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001329, N'(34x28x22)x3 Ab2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001330, N'(56x28x9)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001331, N'(58x38x28)x5 Dl3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001332, N'(58x38x30)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001333, N'(58x38x31)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001334, N'(58x38x32)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001335, N'(58x38x36)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001336, N'(58x36x31)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001337, N'(58x38x31)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001338, N'Giấy xeo K 103/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001339, N'Giấy xeo K 137/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001340, N'(30x38)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001341, N'(31x31x23)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001342, N'(41x31x16)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001343, N'(46.5X30X11.7)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001344, N'(31x23x23.5)x 3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001345, N'(39x32x27.5)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001346, N'Giấy xeo K 160/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001347, N'(46x34x16.5)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001348, N'(42x31x18.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001349, N'(145x17.5)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001350, N'(31x31x16)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001351, N'(64x33x35)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001352, N'(43x43x35)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001353, N'(92x152x15)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001354, N'(53x158x13)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001355, N'(50x110x18)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001356, N'(53x53x53)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001357, N'(58x58x38)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001358, N'(53x27x30)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001359, N'(31X31X16.5)X3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001360, N'(28x28x36)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001361, N'(51x51x12.5)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001362, N'(41x41x8)x 3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001363, N'(25x25x14)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001364, N'(112x112x13)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001365, N'(27x27x25)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001366, N'(27.5x27.5x17.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001367, N'(62x147x15)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001368, N'Giấy xeo K 134/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001369, N'(58X38X41)X5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001370, N'(58x38x36)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001371, N'(58x38x32)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001372, N'(58x38x26)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001373, N'(58x38x34)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001374, N'(58x38x25)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001375, N'(45x28x20)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001376, N'(55x27x15)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001377, N'(55x27x15)x5 Dup3XDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001378, N'(42x21x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001379, N'(55.5x26.5x9.5)x3 2Dl3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001380, N'(38.5X25.5X10.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001381, N'(45x28x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001382, N'(46x34x12)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001383, N'Giấy xeo K 115/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001384, N'(37X25.5X23)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001385, N'(28X4X56)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001386, N'Giấy xeo K 111/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001387, N'Giấy xeo K 202/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001388, N'(46x30.5x12)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001389, N'(37x31x27.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001390, N'(37x30x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001391, N'(40x28.5x36)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001392, N'(39.5x21x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001393, N'(40x27.5x25.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001394, N'(35.5x28x22)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001395, N'(33x27x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001396, N'(31x29x22.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001397, N'(33.5x27x21.5)3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001398, N'(31x28x22)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001399, N'(32.5x27x21.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001400, N'(34x27x21.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001401, N'(0.68x1.67)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001402, N'(56x27x10)x5 2N3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001403, N'(45x29x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001404, N'(32.5X28.5X22)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001405, N'(34x27x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001406, N'(40x28x24)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001407, N'Catalogue út Xi', N'Cuốn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001408, N'Hộp Fresh quick Frozen shirmp', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001409, N'Nhãn Newgil 60g', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001410, N'Nhãn 18gT', N'Cái')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001411, N'Thẻ size (5.5x9.5)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001412, N'Thẻ size (4.8x18)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001413, N'(36.5X30X19.3)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001414, N'Tờ bướm Biorat (20x14.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001415, N'(28X27.5X19)X3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001416, N'(34x26.5x19)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001417, N'Giấy xeo K 93/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001418, N'Giấy xeo K 125/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001419, N'(64x33x53)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001420, N'(53x53)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001421, N'(58x56)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001422, N'(61x58)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001423, N'(145x20.5)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001424, N'(145X11.5)X3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001425, N'(43x28x31)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001426, N'(40x27.5)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001427, N'(36x28x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001428, N'(56x27x10)x5 2N3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001429, N'(29X27X29.5)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001430, N'(43x28x13)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001431, N'(37x27x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001432, N'(30x28.5x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001433, N'(46x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001434, N'(43.5x28x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001435, N'(45x28x18.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001436, N'(36x28x22)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001437, N'(45x28.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001438, N'(41x31.5x19)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001439, N'Hộp tôm thịt (28x21.5x5.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001440, N'Hộp go (27.5x21.5x5.5)', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001441, N'(75x40x25)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001442, N'(75x48x27)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001443, N'(38X24X20)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001444, N'(18.4x8.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001445, N'(145x18)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001446, N'(159x9.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001447, N'(159x13)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001448, N'(58x38x29)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001449, N'(42x32x24)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001450, N'(48X31.5X19)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001451, N'(48x31.5x19)x3 Choil4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001452, N'(184x8.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001453, N'Hộp tôm sú(29x19x5.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001454, N'(33.5x31.5x2.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001455, N'Kinalux(24.5x9.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001456, N'Hộp Black tiger(27x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001457, N'(58x35x31)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001458, N'(31x23x23.5)x3 Choil2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001459, N'(33.5x27.5x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001460, N'(40x28x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001461, N'(30X27X21.5)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001462, N'Giấy xeo K 96/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001463, N'(33X28X22)X3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001464, N'(28.5x18.5x10)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001465, N'(159x11.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001466, N'(145x13.5)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001467, N'(33x33x17)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001468, N'(5x7.5)x1 AB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001469, N'(28x22x15)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001470, N'(35x35x71)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001471, N'(92X10X60)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001472, N'(158X13X52)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001473, N'(36x36x26)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001474, N'(58x30x48)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001475, N'(28x28x15)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001476, N'(45X30X19.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001477, N'(45x28x18)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001478, N'(48x48x32)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001479, N'(60X40X15)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001480, N'(23.5x23.5x44)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001481, N'Giấy xeo K 109/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001482, N'(42x32x24.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001483, N'(34X26X19)X3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001484, N'(46x34x22)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001485, N'(68x28x13)x5 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001486, N'(68x28x13)x5 Dup3XDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001487, N'(48x28x18)x5 Dup3XDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001488, N'(55x27x9)x3 DupXDL in offset', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001489, N'(145x9.5)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001490, N'(43x29x28)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001491, N'(43x29x28.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001492, N'(43X29X30)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001493, N'(43x29x33.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001494, N'(43x29x34)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001495, N'(48x35.5x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001496, N'(32.5x24x20.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001497, N'(44x28x30.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001498, N'(63x28.5x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001499, N'(63x29x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001500, N'(43x28.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001501, N'(68x164)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001502, N'(72x170)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001503, N'(68x152)x5 Dl3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001504, N'Giấy xeo K 97/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001505, N'(47x31x24)x 5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001506, N'In xử lý kỹ thuật "Luận án Tiến Sĩ"', N'Cuốn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001507, N'Tóm tắt luận án Tiến Sĩ', N'Cuốn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001508, N'Hộp tôm sú"Vĩnh Lợi"(27.5x21.5x5.3)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001509, N'Hộp tôm vỏ không đầu(28x21.5x6)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001510, N'(42x32x24.5)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001511, N'(38.5X31.5X13)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001512, N'(165x9.5)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001513, N'(27.5x22.5x9.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001514, N'(48.5x31.5x19)x5 Choil4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001515, N'(34x28x22.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001516, N'Tờ bướm Forvin 85WP(30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001517, N'Tờ bướm giống lúa(30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001518, N'Tờ bướm Forvathion 50EC', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001519, N'Tờ bướm Fuan 40EC(30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001520, N'Tiền xuất phim', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001521, N'Tờ bướm Meco 60EC(30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001522, N'Tờ bướm Peran 50EC (30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001523, N'Tờ bướm Cyperan 5-10-25 EC(30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001524, N'Tờ bướm Butan 60EC(30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001525, N'Tờ bướm Pursan 50EC(30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001526, N'Tờ bướm Folpan 50SC(30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001527, N'Bìa lịch (35x50)', N'Bìa')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001528, N'Bìa lịch (40x60)', N'Bìa')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001529, N'Block lịch trung trắng đen', N'Block')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001530, N'Block lịch trung 7 màu', N'Block')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001531, N'(41X31X16)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001532, N'(145x18)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001533, N'(39.5X29.3X23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001534, N'(40x27.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001535, N'(40x27.5x27.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001536, N'(40x27.5x29.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001537, N'(44x28x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001538, N'(41x26.5x14.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001539, N'(45x28x18)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001540, N'(48x27x9)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001541, N'(35x25.5x12)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001542, N'(58x38x24)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001543, N'Bướm Rabcide (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001544, N'Bướm Appencarb (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001545, N'Bướm Kinalux 25EC (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001546, N'Bướm Topan 70WP (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001547, N'Xuất phim in lần đầu tờ bướm', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001548, N'Bướm Carban 50SC (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001549, N'Bướm Basudin 50SC (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001550, N'Bướm Alphan 5EC (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001551, N'Bướm Forwacet 50WP', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001552, N'Bướm Fuan 40EC (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001553, N'Bướm Folpan 50SC (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001554, N'Bướm Forvin 85WP (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001555, N'Bướm Meco 60EC (30x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001556, N'Bướm Peran 50EC (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001557, N'Bướm Forwacet 50WP (30x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001558, N'Làm khuôn bế hộp Forwacet', N'Khuôn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001559, N'Tấm lót áo sơ mi (26x35)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001560, N'Tem decal (3.4x7.4)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001561, N'(38x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001562, N'(21X14.5X10)X3 DL2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001563, N'(48x31.5x19)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001564, N'(43x28.5x12)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001565, N'(25x23x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001566, N'(28x24.5x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001567, N'(38x22.5x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001568, N'(56x28x8.5)x3 AB2X', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001569, N'(32.5x28x15.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001570, N'(56x28x9)x3 2DlX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001571, N'(47.7x28x12.3)x3 DupXDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001572, N'(47.7x28x19.3)x3 DupXDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001573, N'(46.5x24x45)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001574, N'(39x39x22)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001575, N'(48x24x50)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001576, N'Hộp Forwacet  8gr 50WP (10x7x10)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001577, N'Hộp Forwacet 15gr WP (13x7x9.5)', N'hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001578, N'(14x14x31)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001579, N'(13.5x13.5x21)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001580, N'(26x26x21)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001581, N'(25x25x20)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001582, N'(41x41x6)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001583, N'(37x37x23)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001584, N'(43x29x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001585, N'(33.5x33.5x59)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001586, N'(22X22X36)X5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001587, N'(28x28x46)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001588, N'(16x10x9)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001589, N'(37x37x4)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001590, N'(43x29x27.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001591, N'(54x54x23)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001592, N'(46x46x39)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001593, N'(52x52x43)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001594, N'(84x43x51)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001595, N'(34x27.5x21.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001596, N'(40x28x23.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001597, N'(36x29x20)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001598, N'(42x28x22)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001599, N'(35x27x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001600, N'(37x27x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001601, N'Gia công tráng màng(40.5x54.5)', N'Mét V')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001602, N'Gia công tráng màng(35x54.5)', N'Mét V')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001603, N'Giấy xeo K 113/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001604, N'(41x28x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001605, N'(145x11.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001606, N'(145x13.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001607, N'(159x11.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001608, N'(145x20.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001609, N'(45x28x23)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001610, N'(45X30X28)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001611, N'(46x39x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001612, N'(28x21x28)x3 Ab2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001613, N'(19.5x13.5x19.5)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001614, N'(29.5x22.5x28.5)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001615, N'(21x15)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001616, N'(28x15)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001617, N'(33x25.5x32)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001618, N'(33x25.5x32)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001619, N'(36x24.5x20.5)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001620, N'(67x162)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001621, N'(65x166)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001622, N'(65x127)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001623, N'(48x31.5x19)x5 Choil4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001624, N'(34x26x27)x3 Ab2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001625, N'(36.5X29.5X20)X5 Dup3XN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001626, N'(159x9.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001627, N'(53x23.5x45)x 5 Dl4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001628, N'(53x23.5x42)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001629, N'(43x43x42)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001630, N'(41.5x27x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001631, N'Giấy xeo K 132/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001632, N'Giấy xeo K 104/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001633, N'(165x9.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001634, N'(47.7x28x15.3)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001635, N'(41x30.5x12.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001636, N'(72x160)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001637, N'(40x40)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001638, N'(42x42x28)x5 Ab4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001639, N'(24x24x44)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001640, N'(32.5x32.5x57.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001641, N'(37x29x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001642, N'(58x38x24)x1 DL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001643, N'(66x127)x5 Dl3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001644, N'(72x161)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001645, N'(45x36x12)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001646, N'(55X27.5X8.5)X3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001647, N'(42x28x15)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001648, N'(58x36x29)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001649, N'(36.5x29x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001650, N'Tem decal (34x3)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001651, N'Tấm lót áo+cổ áo(33.5x31x2.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001652, N'(40x28x23.5)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001653, N'(37x27x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001654, N'(47x30x44)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001655, N'(94x45x17)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001656, N'(94x45x10)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001657, N'(40x30x35)x5 DL3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001658, N'(40x37x35)x5 Dl3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001659, N'(40x40x35)x5 DL3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001660, N'(104x50x10)x5 Dl3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001661, N'(104x50x13)x5 DL3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001662, N'(46X33X28)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001663, N'(49x26x24)x3 DLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001664, N'(34x28x22)x5 Dup3XDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001665, N'(41.5x29x23)x5 Dup3XDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001666, N'(55x27x11)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001667, N'(36.5x30x19.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001668, N'Giấy xeo K 98/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001669, N'Forsan (20x30)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001670, N'(34x28x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001671, N'(42x27x16.5)x5 Dup3XDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001672, N'(87x145)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001673, N'(87x123)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001674, N'(124x142)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001675, N'(124x130)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001676, N'(124x151)x3 Ab2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001677, N'(124x147)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001678, N'(124x158)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001679, N'(34x28x22.5)x5 Dup3XDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001680, N'(69x154)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001681, N'(69x158)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001682, N'(69x161)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001683, N'(132x156)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001684, N'(132x146)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001685, N'(132x160)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001686, N'(132x162)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001687, N'(132x158)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001688, N'(117x159)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001689, N'(117x164)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001690, N'(117x130)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001691, N'(117x152)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001692, N'(117x150)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001693, N'(110x140)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001694, N'(110x158)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001695, N'(110x126)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001696, N'(110x172)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001697, N'(55x37.5x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001698, N'(184x14.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001699, N'(105x123)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001700, N'(105x131)x3 AB2X`', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001701, N'(122x147)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001702, N'(122x167)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001703, N'(31x23x23.5)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001704, N'(48x31.5x19)x5 Dup4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001705, N'(57x28x16)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001706, N'(55.5x27x8.5)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001707, N'(37x31x23.5)x5 DL3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001708, N'(39x30.5x23)x5 Dl3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001709, N'(30x25.5x19.5)x5 D3XDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001710, N'(36.5x29.5x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001711, N'(40x25.5x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001712, N'(37x32x10.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001713, N'(137x10)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001714, N'(34x27x21.5)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001715, N'(34x27x22)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001716, N'(56X49)X3 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001717, N'(57x50x33)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001718, N'(104X50X17)x5 2Dl3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001719, N'(27x10x57)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001720, N'(46x28x13)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001721, N'(46x28x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001722, N'(45x28x19)x 5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001723, N'(52x28x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001724, N'Giấy xeo K 132/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001725, N'(110x135)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001726, N'(110x123)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001727, N'(68x127)x5 Dl3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001728, N'(68x150)x5 Dl3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001729, N'(68x160)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001730, N'(68x165)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001731, N'(68x167)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001732, N'(122x158)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001733, N'(115x133)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001734, N'(117x151)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001735, N'(117x153)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001736, N'(90x105)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001737, N'(90x125)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001738, N'(90x126)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001739, N'(90x148)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001740, N'(121x143)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001741, N'(121x139)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001742, N'(115x128)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001743, N'(115x134)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001744, N'(115x136)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001745, N'(19x13x19.5)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001746, N'(14X17)X3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001747, N'(12x17)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001748, N'(26.5x46.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001749, N'(72x165)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001750, N'(115x160)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001751, N'(132x163)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001752, N'(132x147)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001753, N'(132x157)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001754, N'(132x161)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001755, N'(47x34x21.5)x5 Dup3XDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001756, N'(49X28X18)X5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001757, N'(37x31x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001758, N'(135x14.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001759, N'(145x18.5)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001760, N'(145x16.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001761, N'(127x24)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001762, N'Giấy xeo K 131', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001763, N'Bế hộp trắng (25x18x7)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001764, N'Tem SH05-SPS-ST (1x23)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001765, N'Tem SH06-SPS-SH (1x17.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001766, N'Tem SH07-BL-SBR (21x6.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001767, N'Tem SH08-BL-BSH (21x6.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001768, N'(52x35x28)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001769, N'Bướm forwathion', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001770, N'Bướm Bassan', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001771, N'Bướm Cyphosan', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001772, N'(117x139)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001773, N'(117x146)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001774, N'(117x133)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001775, N'(132x142)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001776, N'(110x159)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001777, N'(110x136)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001778, N'(65x127)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001779, N'(124x133)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001780, N'(124x139)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001781, N'(124x143)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001782, N'(117x142)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001783, N'(124x132)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001784, N'(110x127)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001785, N'(45x28x17.5)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001786, N'(56x10x27)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001787, N'(117x167)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001788, N'Bướm Actara(20x30)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001789, N'Bướm Clyphosan', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001790, N'Bướm kỹ thuệt canh tác&chăm sóc lúa', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001791, N'Bướm kỹ thuật canh tác lúa cao sản', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001792, N'Bướm topan 70wp', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001793, N'Bướm carban 50SC', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001794, N'Bướm Bian 40EC', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001795, N'(42X28X20)X5 2AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001796, N'(115x142)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001797, N'(124x157)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001798, N'(132x158)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001799, N'(103x146)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001800, N'(123X146)X2 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001801, N'(125x127)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001802, N'(132x137)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001803, N'(132x141)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001804, N'(41x31x16)x3 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001805, N'(48.5x39x10)x3 DL2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001806, N'(48.5x39x14)x3 DL2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001807, N'(50x41x33)x3 2Dl3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001808, N'(50x41x45)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001809, N'(52x32x44)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001810, N'(57x38x21)x5 Dl3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001811, N'(58x35x26)x5 Dl3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001812, N'(57x38x30)x5 DL2XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001813, N'(55x27x9)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001814, N'(38x28x10.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001815, N'(16x16x24)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001816, N'(27X16X16)X3', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001817, N'(17.5x17.5x26)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001818, N'(28x28x11)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001819, N'(24x24x10.5)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001820, N'Tem (5x7.5)x1 AB', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001821, N'(34x34x26)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001822, N'(29x34x35)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001823, N'(37x37x29)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001824, N'(30x30x47)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001825, N'(26x26x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001826, N'(33.5X24X21.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001827, N'(57x27x10)x5 2Dl3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001828, N'(42x28x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001829, N'(185x14.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001830, N'(151x13.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001831, N'(55x37.5x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001832, N'(184x13.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001833, N'(39x28)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001834, N'(40x29x10.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001835, N'(40x29x22)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001836, N'(40x28x14.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001837, N'(48x25x15)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001838, N'(37x28.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001839, N'(35x25.5x24.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001840, N'(126x150)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001841, N'(68x148)x5 Dl3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001842, N'(68x154)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001843, N'(72x160)x3 Dup2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001844, N'(96x120)x3 Dup2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001845, N'(96x128)x3 Dup2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001846, N'(120x126)x3 Dup2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001847, N'(34x23.5x11)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001848, N'(55.5x27x8.5)x3 2ABX', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001849, N'(37x29x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001850, N'Hộp tôm vỏ (27.8x21.5x6)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001851, N'Nhãn sunny(4.5x14.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001852, N'Hộp tôm (27.5x21.5x5.3)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001853, N'Hộp tôm seadco(27.8x21.5x6)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001854, N'Hộp tôm Go (27.8x21.5x6)', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001855, N'Hộp tôm Go (27.8x21.5x6)', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001856, N'(36x27.5x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001857, N'(36.5x29.5x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001858, N'Giấy xeo K 134/140', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001859, N'(40x27.5x31)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001860, N'(47x28x10.3)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001861, N'(47X28X11.6)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001862, N'(47x28x12.3)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001863, N'(47x28x15.3)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001864, N'(47x28x17.3)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001865, N'(47x28x19.7)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001866, N'Giấy xeo K 123/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001867, N'(48.5x39x14)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001868, N'(36x29x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001869, N'(36x22x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001870, N'Hộp tôm "Best meat"(27.5x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001871, N'46x36.5x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001872, N'(46x36.5x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001873, N'(46x36.5x13)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001874, N'(46x36.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001875, N'(58x38x33)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001876, N'(58x40x26)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001877, N'(58x40x28)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001878, N'Tem SH 07-BL-SBR(21x67)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001879, N'Tem SH 09-TO-WSF(16x8)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001880, N'Tem 60g(6.4x7.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001881, N'Tem 80g(6.4x7.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001882, N'(29x28x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001883, N'(36x31x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001884, N'(36x31x35)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001885, N'(60x32x20.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001886, N'(54x41.5x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001887, N'Giấy xeo K 120/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001888, N'Giấy xeo K 126/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001889, N'Giấy xeo K 134/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001890, N'Giấy xeo K 126/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001891, N'Giấy xeo K 88/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001892, N'Giấy xeo K 108/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001893, N'Giấy tấm (72x160)x5 2DL3X', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001894, N'(45x28x19)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001895, N'Decal trắng(1x3)cm', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001896, N'Decal trắng (1x6.3)cm', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001897, N'Tem YMD (2x14.5)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001898, N'Tem LMD (2.1x1.6)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001899, N'Tem 2LMD (2.1x1.6)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001900, N'Tem 3LMD (2.1x1.6)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001901, N'Decal squid half(6.3x9.6)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001902, N'Decal FCT02 (3.4x7.4)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001903, N'Decal Squid haft cut(9.6x6.3)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001904, N'Decal (6.1x4.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001905, N'Decal Broad squid slice', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001906, N'Decal Squid W/tentacile', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001907, N'Decal Broad squid Noodle', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001908, N'Bìa lưng áo sơ mi(36x54)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001909, N'Nhãn giấy (5x9)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001910, N'Nhãn decal (2.1x1.6)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001911, N'Hộp tôm Black tiger(27.5x21.5x5.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001912, N'Hộp tôm (27.8x21.5x5.7)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001913, N'(45X28X20)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001914, N'(44x33x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001915, N'(46x36.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001916, N'(52x41x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001917, N'(65x126)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001918, N'(51x28x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001919, N'(42.5x28x17.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001920, N'(56x27x13.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001921, N'(56x28x8.5)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001922, N'(56x28x13.5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001923, N'(36.5x28x22)x3 2DLX', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001924, N'(57X27X24)X3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001925, N'(55x27x5)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001926, N'(34.5x26.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001927, N'(159x13)x3 3X', N'3X')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001928, N'(33x23.5x11)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001929, N'(33x23.5x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001930, N'(33x23.5x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001931, N'(36.5x27x10.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001932, N'(41x31x20)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001933, N'(58x39x27)x5 Dl3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001934, N'(58.5x28.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001935, N'(43.5x28.5x13.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001936, N'(30x28x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001937, N'(38x26.5x20.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001938, N'(34.5x28.5x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001939, N'(58.5x30.5x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001940, N'(58.5x30.5x21)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001941, N'(51x27.5x13.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001942, N'(50x26.5)x5 5X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001943, N'(35.5x28.5x16)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001944, N'(46x33x28.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001945, N'Giấy xeo K 112/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001946, N'Giấy xeo K 126/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001947, N'Giấy xeo K 89/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001948, N'Giấy xeo K 112/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001949, N'(44X28X34.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001950, N'(40x27.5x19.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001951, N'(22x21x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001952, N'(63.5x29.5x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001953, N'Giấy xeo K 61/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001954, N'Giấy xeo K  125/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001955, N'Giấy xeo K 93/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001956, N'(39.5x29.5x27)x5 Dup3XDL in offset', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001957, N'(25x5) in offset', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001958, N'Giấy xeo K 120/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001959, N'Giấy xeo K 66/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001960, N'Giấy xeo K 140/190', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001961, N'(37x27x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001962, N'(63.5x29.5x27)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001963, N'(35.5X28X16)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001964, N'(37x27.5x27)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001965, N'(46.5x34.5x13.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001966, N'(160x13)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001967, N'(42x36x14)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001968, N'(155x13.5)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001969, N'(37.5x27.5x27)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001970, N'(56x26)x5 5X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001971, N'(38x28x10.5)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001972, N'(46x26x17.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001973, N'(10x100)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001974, N'(33x28x6)x3 Dup2X', N'Khay')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001975, N'Giấy xeo K 130/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001976, N'Giấy xeo K 198/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001977, N'(45x28x20)x3 2ABX', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001978, N'(58.5x28.5x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001979, N'(56x27x4.7)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001980, N'(33x23.5x22.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001981, N'(33x23.5x12.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001982, N'(16x13)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001983, N'(55x27x9)x3 DupXDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001984, N'(37x10.5x56.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001985, N'Hộp kem nghệ(5.5x5.5x4.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001986, N'Hộp kem lá dâu tằm(3.5x3.5x4.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001987, N'Hộp "King"(26.5x18.5x4)', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001988, N'Thẻ size(3x5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001989, N'Hộp Headless shell-on(27.5x21x5.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001990, N'Thùng Raw (22x5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001991, N'Hộp tôm (27.5x21.5x6.3)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001992, N'Hộp Apac (29x19x6)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001993, N'Thùng raw (37x27x27)x3 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001994, N'(47x28x12.3)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001995, N'(47x28x15.3)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001996, N'(47x28x17.3)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001997, N'(161x13)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001998, N'(34x24x9.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100001999, N'(35x24x29)x3 DL2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002000, N'(72x50x31)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002001, N'(121x22.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002002, N'Giấy xeo K 75/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002003, N'Giấy xeo K 55/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002004, N'Giấy xeo k 59/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002005, N'Giấy xeo K 64/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002006, N'(145x12.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002007, N'(39x27x27)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002008, N'Giấy xeo K 56/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002009, N'Giấy xeo K 65/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002010, N'Giấy xeo K 82/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002011, N'Giấy xeo K 121/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002012, N'Giấy xeo K 64/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002013, N'Giấy xeo K 135/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002014, N'Giấy xeo K 60/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002015, N'Giấy xeo K 80/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002016, N'Giấy xeo K 126/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002017, N'(121X23)X3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002018, N'Giấy xeo K 116/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002019, N'Giấy xeo K 75/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002020, N'Giấy xeo K 193/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002021, N'Giấy xeo K 158/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002022, N'Giấy xeo K 95/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002023, N'Giấy xeo K 96/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002024, N'Giấy xeo K 105/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002025, N'Giấy xeo K 126/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002026, N'Giấy xeo K 94/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002027, N'Giấy xeo K 135/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002028, N'Giấy xeo K 118/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002029, N'Tấm lót (46x26.5) 3 x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002030, N'Giấy xeo K 113/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002031, N'(42x28x18.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002032, N'(27x10x57)x5 2N3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002033, N'(60.5x27.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002034, N'(26x17.5x11.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002035, N'Giấy xeo K 74/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002036, N'Giấy xeo K 123/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002037, N'Giấy xeo K 84/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002038, N'Giấy xeo K 63/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002039, N'Giấy xeo K 67/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002040, N'Giấy xeo chống thấm', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002041, N'(35x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002042, N'(56X28X8.5)X3 AB2X', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002043, N'(39x27.5x27)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002044, N'Bướm lúa thơm+nếp', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002045, N'Bướm lúa mới có triển vọng', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002046, N'(57x30x8)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002047, N'(57x30x8)x3 DupXDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002048, N'(57x30x8)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002049, N'(40x29x14.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002050, N'(42x28x17.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002051, N'(40.5x32x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002052, N'(34x28x23.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002053, N'(121x20.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002054, N'(40.5X29X27.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002055, N'(56x27.5x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002056, N'Giấy xeo K 97/180', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002057, N'Giấy xeo K 136/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002058, N'Bướm nàng thơm 7Núi(30x42)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002059, N'đậu xanh-đậu nành(20x30)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002060, N'Decal SCN (9.6x6.3)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002061, N'Tem decal SH10-HO-BSS(6x4.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002062, N'Tem decal SH 09-HO-SHWF(6x4.7)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002063, N'Tem decal SH13-HO-SHF', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002064, N'Tem kiểm kê (3.4X7.4)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002065, N'Giấy xeo K 55/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002066, N'(40.5x29x27.5)x5 Dup3XN', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002067, N'(49x37x38)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002068, N'(68x38x56)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002069, N'(37x33x12)x3 DL2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002070, N'(37x33x12)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002071, N'(37x33x42)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002072, N'(68x38x48)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002073, N'(37x33x22)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002074, N'(181x13.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002075, N'Giấy xeo K 78/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002076, N'Giấy xeo K 107/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002077, N'Giấy xeo K 186/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002078, N'(46X36.5X19.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002079, N'(19.5x17.5x18.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002080, N'(33x27x19.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002081, N'(26x16x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002082, N'(58.5x32x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002083, N'(58x38x26)x1 DL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002084, N'G/c bồi (58x38x26)x1 DL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002085, N'G/c bồi (58x35x26)x1 DL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002086, N'G/c bồi (58x38x41)x1 DL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002087, N'(47X29X20)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002088, N'(47x24.5x10.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002089, N'(48x28.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002090, N'Tem chữ nhật(9x20)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002091, N'(57x28x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002092, N'(28x22)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002093, N'(54x54x43.5)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002094, N'(111x70x70)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002095, N'(53.5x23.5x28.5)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002096, N'(53.5x23.5x35.5)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002097, N'(53.5x36x27)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002098, N'(48x33x17.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002099, N'(41.5x25.5x22)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002100, N'(37x31x31.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002101, N'(30.5x30.5x18.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002102, N'(27x27x50.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002103, N'(36x36x46.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002104, N'(23.5x23.5x33.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002105, N'(35x35x26)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002106, N'(30.5x30.5x22)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002107, N'(48x33x34)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002108, N'(42x26x43)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002109, N'Giấy xeo K 114/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002110, N'(56x27.5x9)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002111, N'(36.5x20.5x19.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002112, N'(37x27x11.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002113, N'Giấy xeo K 76/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002114, N'(37x27x26.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002115, N'(40x27x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002116, N'(45x28x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002117, N'(51x30x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002118, N'(39.5X29.5X15)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002119, N'(56x28x13.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002120, N'(165x12)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002121, N'(123x22.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002122, N'(34x32x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002123, N'(131x21.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002124, N'(26x16x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002125, N'Giấy xeo K 102/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002126, N'Giấy xeo K 73/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002127, N'Giấy xeo K 54/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002128, N'(55x27x4.7)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002129, N'(42x42x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002130, N'(165x14.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002131, N'(123x23)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002132, N'(43x28x8.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002133, N'(33x22.5x12.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002134, N'(141X8)X3', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002135, N'(36x20.5x19.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002136, N'(33x23.5x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002137, N'(42x31x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002138, N'(30.5x22.5x23)x3 Choil2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002139, N'(39X27X24)X 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002140, N'Giấy xeo K 57/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002141, N'Giấy xeo chống thấm', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002142, N'Giấy xeo thường', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002143, N'Hộp Peran(7.5x9x4.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002144, N'(56x27x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002145, N'(55.5x35.5x21.5)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002146, N'(46x37.5x24)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002147, N'(41.5x41.5x10)x 3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002148, N'(167x14.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002149, N'(38x24.5x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002150, N'(24x18x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002151, N'(44x28x12)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002152, N'(46x28x11.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002153, N'(56x12x38)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002154, N'(56x12x38)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002155, N'Dây nẹp', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002156, N'Bọ sắt', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002157, N'(68x165)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002158, N'(68x160)x5 2Dl3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002159, N'(65X127)X5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002160, N'(65x147)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002161, N'(68x156)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002162, N'(65x165)x5 2Dl3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002163, N'(65x158)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002164, N'(65x128)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002165, N'(65x170)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002166, N'(54x39)x3 2ABX', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002167, N'(41x41x7)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002168, N'(43x43x31)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002169, N'(133x150)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002170, N'(133x150)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002171, N'(37x29x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002172, N'Thẻ size (7.8x3.8)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002173, N'Tem decal(1.6x1.6)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002174, N'Tem decal best before(5x3)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002175, N'Thẻ size (4.5x13)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002176, N'Con dấu đóng thùng loại nhỏ', N'Cái')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002177, N'Con dấu đóng thùng loại lớn', N'Cái')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002178, N'(58x38x32)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002179, N'(58x38x36)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002180, N'(58x38x33)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002181, N'(58x38x31)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002182, N'(58x38x28)x5 2Dl3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002183, N'(58x38x30)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002184, N'(50x25)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002185, N'Giấy xeo K 67/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002186, N'Giấy xeo K 72/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002187, N'Giấy xeo K 210/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002188, N'Giấy xeo K 185/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002189, N'Giấy xeo K 184/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002190, N'Giấy xeo K 72/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002191, N'Giấy xeo K 68/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002192, N'Giấy xeo K 115/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002193, N'(33X23.5X27.5)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002194, N'(148x17.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002195, N'(43x32x19)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002196, N'(151x18.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002197, N'(43x32x18)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002198, N'(151x17.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002199, N'Hộp Autovoltage(7x8x14)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002200, N'Hộp kem nha đam(4x5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002201, N'(36.5x10x56)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002202, N'(33x23.5x24)x3 DupXDl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002203, N'(149x17.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002204, N'Giấy xeo K 108/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002205, N'(55x27x4.5)x3 DupXDL', N'Bơ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002206, N'(41x29x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002207, N'(56x27x10)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002208, N'Hợp trắng', N'Hợp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002209, N'Kẽm đóng thùng', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002210, N'(40x25.5x34)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002211, N'(33x28x22.5)x 5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002212, N'(44x30x18)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002213, N'(55x27x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002214, N'(47.5x31.5x12)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002215, N'(55.5x35.5x17)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002216, N'(55.5x35.5x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002217, N'(55.5x35.5x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002218, N'(123x25.5)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002219, N'(39.5x28x13)x3 Dup XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002220, N'(47x29x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002221, N'(38x28x11.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002222, N'(68x161)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002223, N'(72x161)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002224, N'(68x161)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002225, N'Giấy xeo K 210/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002226, N'(22x27)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002227, N'(39x27x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002228, N'(32x27.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002229, N'(40x25.5x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002230, N'(58.5x31.5x21)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002231, N'(56x28x4)3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002232, N'(51.3x27.3x13.5)x5 Dup3XDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002233, N'(32x31.5x10.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002234, N'Con dấu đóng thùng', N'Con')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002235, N'(40x29x18)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002236, N'Giấy xeo K 53/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002237, N'Giấy xeo K 62/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002238, N'Giấy xeo K 89/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002239, N'Giấy xeo K 107/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002240, N'(46x23x26)x5 ĐL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002241, N'Chi phí vận chuyển', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002242, N'Giấy xeo K 81/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002243, N'Giấy xeo K 74/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002244, N'Giấy xeo K 87/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002245, N'Giấy xeo K 110/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002246, N'Giấy xeo K 91/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002247, N'(47x28x15.3)x3 DXDLin offsetdánbôiF', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002248, N'Tấm lót (40x30)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002249, N'Giấy xeo K 85/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002250, N'Giấy xeo K 74/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002251, N'(46.5x34.5x10)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002252, N'(161x9.5)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002253, N'(161x14)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002254, N'(46.5x34.5x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002255, N'(42x31x17)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002256, N'(33x23.5x22.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002257, N'(25.5x24x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002258, N'(24.5x11.5x18.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002259, N'(27x30)x3 DupXDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002260, N'(39.5x29.5x15)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002261, N'(56x28x8.5)x3 DupXDL', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002262, N'(38x28x11.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002263, N'(38x28x12)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002264, N'(42x29.5x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002265, N'(47x28x11.6)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002266, N'(34x26.5x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002267, N'(42x32x24.5)x 3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002268, N'(54x26x9)x3 ĐLXA', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002269, N'Giấy xeo K 140/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002270, N'Bướm G49 Bắp lai(20x30)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002271, N'Nhãn Bắp 3 loại', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002272, N'Giấy xeo K 97/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002273, N'Giấy xeo K 210/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002274, N'(47x35x15)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002275, N'(163x14.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002276, N'(184x8.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002277, N'(34x34x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002278, N'(34x28x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002279, N'(123x21)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002280, N'(129x26.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002281, N'(37x30x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002282, N'(40x28x15.5)x 5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002283, N'(50x26x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002284, N'Giấy xeo K 168', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002285, N'Giấy xeo K 104/240', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002286, N'46.5x34.5x13.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002287, N'(46.5x34.5x12)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002288, N'(161x11.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002289, N'(135x21.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002290, N'(46x28x22)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002291, N'(44x33x14)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002292, N'(36x31x19)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002293, N'(130x150)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002294, N'(130x150)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002295, N'Tem decal (3.5x5.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002296, N'Tem decal dán carton(9x3.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002297, N'Tem decal 7.5x3.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002298, N'Tem decal (3.5x2)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002299, N'Tem decal 8G', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002300, N'Tem decal 10G', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002301, N'Tem decal 12G', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002302, N'Tem decal(2x1)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002303, N'Tem decal 7.8x4.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002304, N'Tem decal 160', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002305, N'Tem decal 200', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002306, N'Tem decal 240', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002307, N'(55x27x4.7)x3 DupXDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002308, N'(127x65)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002309, N'(140x65)x5 2Dl3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002310, N'(150x68)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002311, N'(156x68)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002312, N'(161x68)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002313, N'(165x68)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002314, N'(168x65)x5 2Đl3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002315, N'(161x72)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002316, N'(166x74)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002317, N'(35.5x27x16)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002318, N'(40x25.5x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002319, N'(50x36x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002320, N'40x25.5x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002321, N'(39x29x14.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002322, N'Giấy xeo K 84/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002323, N'Giấy xeo K 69/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002324, N'(35.5x25x20.5)x 3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002325, N'(34x25x31.5)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002326, N'(29x27x22)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002327, N'(36x28.5x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002328, N'(50.8x35.5x25.4)x5 Dup3XĐl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002329, N'Tiền xuất phim in lần đầu', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002330, N'(127x19.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002331, N'(40x30.5x25)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002332, N'(40x30x13)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002333, N'(40x28x15)x3 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002334, N'(51x28x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002335, N'(50x26x16.5)x 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002336, N'(39.8x25.8x14.6)x 5 Dup3XĐl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002337, N'(42x28x26)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002338, N'(42x28x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002339, N'(52x28.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002340, N'(22x21.5x17.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002341, N'Pawathion(20x30)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002342, N'(37.x30)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002343, N'Giấy xeo K 125/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002344, N'(37x30x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002345, N'Giấy xeo K 106/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002346, N'Tấm lót(33x27)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002347, N'Giấy xeo K 93/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002348, N'Giấy xeo K 106/140', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002349, N'(36.5x20.5x20.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002350, N'(54X37.5X13.5)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002351, N'(46.5X33X14)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002352, N'(158x13.5)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002353, N'Tờ bướm sucess(20x30)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002354, N'(55X28X19)X3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002355, N'Giấy xeo thường', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002356, N'Giấy xeo K 121/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002357, N'Hộp towani(27x17x7.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002358, N'Hộp trắng(27x19x3)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002359, N'Thẻ size (7.3x10.3)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002360, N'Tem decal(5.5x3.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002361, N'(39x35x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002362, N'(38.5x27x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002363, N'(57.5x30.5x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002364, N'(35X27X16)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002365, N'(56x10x38)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002366, N'(28x22x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002367, N'(63x28.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002368, N'(33x27x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002369, N'(32x31x10.5)x3 ĐLXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002370, N'(52.5x28.5x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002371, N'(36.5x27x15.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002372, N'(37.5x27.5x19)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002373, N'(40x28x21.5)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002374, N'(30x27.5x22)x3 DupXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002375, N'(40X29X25)X3 DupXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002376, N'(46x36.5x20.5)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002377, N'(41x31x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002378, N'(45x28x18)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002379, N'(49x26x24)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002380, N'(163x72)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002381, N'(43x43x14.6)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002382, N'(45x45x31)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002383, N'(64x33x33)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002384, N'(53x37x33)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002385, N'(43x43x39)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002386, N'(49x49x38)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002387, N'(59x33x34)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002388, N'(64x33x42)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002389, N'(43x43x43)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002390, N'(31x31x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002391, N'(45x45x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002392, N'(48x48x43.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002393, N'(36x36x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002394, N'(42x42x18)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002395, N'(42x42x22)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002396, N'(31X31X13)X3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002397, N'(35x35x24)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002398, N'(16x16x34)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002399, N'(31x31x31)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002400, N'(51x35x6)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002401, N'(41x41x18)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002402, N'(23x23x36)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002403, N'(31x31x14)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002404, N'(44x44x15)x5 5X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002405, N'(29x29x21)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002406, N'(43x43x14)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002407, N'(46x46x13.5)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002408, N'(34x34x22)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002409, N'(27x22)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002410, N'Hộp tôm "GO"(28x21.5x5.5)', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002411, N'(37x30x20.5)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002412, N'Hộp trắng (27x15.5x4)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002413, N'Bìa áo sơ mi(26x36)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002414, N'Bìa áo sơ mi(35x53)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002415, N'Bìa áo sơ mi(26x32)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002416, N'Cổ áo sơ mi(38x36x3.2)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002417, N'(35x27x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002418, N'(49x35.5x26.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002419, N'(39x27x32)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002420, N'(51x35x20.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002421, N'(52.5x24x30)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002422, N'(50.5X24X28.5)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002423, N'(49.5x25.5x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002424, N'(53x35x20.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002425, N'Tem(10x6)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002426, N'Tem(9.6x9.3)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002427, N'Con dấu polime có cán cầm', N'Con')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002428, N'(57x37x48)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002429, N'(35x55)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002430, N'(57x37x47)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002431, N'Giấy xeo K 47/140', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002432, N'Giấy xeo K 46/140', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002433, N'Giấy xeo K 49/140', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002434, N'Giấy xeo K 47/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002435, N'Giấy xeo K 68/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002436, N'Giấy xeo K 75/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002437, N'Giấy xeo K 48/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002438, N'Giấy xeo K 113/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002439, N'Giấy xeo K 128/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002440, N'Giấy xeo K 83/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002441, N'Giấy xeo K 95/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002442, N'Giấy xeo K 100/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002443, N'(182x13)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002444, N'(123x21.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002445, N'(55x27x17.5)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002446, N'(31x23x12.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002447, N'(19.5x17.5x19)x3', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002448, N'(43x28x31.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002449, N'Giấy xeo K 119/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002450, N'Hộp tôm coseafex(26.5x18.5x2.8)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002451, N'(38.5x29.5x28)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002452, N'(35.5x28x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002453, N'(56X28X6)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002454, N'(55x27x10)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002455, N'(51x28x15)5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002456, N'(50.8X35.5X21.6)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002457, N'45x28x20.5)x5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002458, N'(56X29X22.5)X5 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002459, N'(27x21.5x5.6)x5 Dup3XDL', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002460, N'(45x28x16.5)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002461, N'Giấy xeo K 130/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002462, N'Giấy xeo K 88/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002463, N'Giấy xeo K 88/220', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002464, N'Giấy xeo', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002465, N'Giấy xeo K 94/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002466, N'(43x28.5x16.5)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002467, N'(57x28.5x21)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002468, N'(50x26x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002469, N'(38x28x12.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002470, N'(145x21)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002471, N'(140x90)x5 Dup3xDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002472, N'(158x52)x5 Dup3xDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002473, N'(155x47.5)x5 Dup3xDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002474, N'(157x90)x5 Dup3xDL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002475, N'(34x26.5x19.3)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002476, N'(39x27x24)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002477, N'(56x28x9)x3 DLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002478, N'(49x35.5x27.5)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002479, N'(49x35.5x23.5)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002480, N'(32x27.5x15)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002481, N'Giấy carton 2 lớp K0.72', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002482, N'(37x26x25)x3 Dup2x', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002483, N'(39x27.5x23)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002484, N'(163x72)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002485, N'Luận án TS', N'Cuốn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002486, N'Tóm tắt luận án TS', N'Cuốn')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002487, N'Tem (2.5x4)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002488, N'Giấy xeo K 84/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002489, N'Giấy xeo K 87/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002490, N'Giấy xeo K 108/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002491, N'Hộp Sucess (7.5x9x4.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002492, N'(45.5x28x15.3)x3 DupxDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002493, N'(45.5x28x17.3)x3 DupxDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002494, N'(45.5x28x10.3)x3 DupxDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002495, N'(45.5x28x11.6)x3 DupxDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002496, N'(46x26.5)x3 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002497, N'(100x10)x3 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002498, N'(46x26.5)x2 2x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002499, N'(46x26.5) x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002500, N'(46x36.5x20.5)x5 Dup3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002501, N'(51x34x6.5)x3 DupxDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002502, N'(56x37.5x6)x3 DupxDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002503, N'(57.5x36.5x21.8)x5 2AB3x', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002504, N'(44x30x17)x5 2DL3x', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002505, N'(145x19.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002506, N'Giấy xeo K 106/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002507, N'Giấy xeo K 131/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002508, N'Giấy xeo K 80/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002509, N'Giấy xeo K 55/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002510, N'Bướm (20x30)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002511, N'(55x37.5x10.5)x3 DupxDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002512, N'(184x10)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002513, N'(36.5x20.5x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002514, N'(42x31.5x10)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002515, N'(34x28x23)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002516, N'(42x31x10)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002517, N'(145x9.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002518, N'(39.5x28x13)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002519, N'(37x27x8.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002520, N'(36.5x24.5x6)x3 Dup2X', N'Khay')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002521, N'(34x34x39)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002522, N'(62x62x25)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002523, N'(34x34x48)x5 AB4X', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002524, N'(42x42x22)x5 AB4X', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002525, N'(48x48x14.5)x5 AB4X', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002526, N'(44x44x47)x5 AB4X', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002527, N'(32x32x32)x5 AB4X', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002528, N'(49x49x32)x5 AB4X', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002529, N'(32x32x18)x5 AB4X', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002530, N'(157x90)x5 2ĐL3X', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002531, N'Giấy xeo K 162/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002532, N'Giấy xeo K   87/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002533, N'Giấy xeo K   42/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002534, N'(22x21x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002535, N'(57x28x18)x3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002536, N'(39.5x29x15)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002537, N'(37x30)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002538, N'(42x38)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002539, N'Giấy xeo K 65/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002540, N'(141x65)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002541, N'(45x28x18)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002542, N'(46x33x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002543, N'(45.5x33.5x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002544, N'(21.5x15.5x9)', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002545, N'(50x26.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002546, N'(38x28x11)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002547, N'Hộp Alphan(7.5x9x4.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002548, N'(51x28x17)x5 Dup3XDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002549, N'(42.5x28.5x12)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002550, N'Màng PE', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002551, N'Hộp Icon (27.5x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002552, N'(33x29x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002553, N'(56x34x27)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002554, N'(44x30x10)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002555, N'Tem (3.5x17.5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002556, N'(38.5x32.5x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002557, N'(46x25x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002558, N'(41x31x17.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002559, N'(40x29x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002560, N'(39.5x28x24.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002561, N'(64x30x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002562, N'(40x28x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002563, N'(55.5x27x9)x3 DLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002564, N'(55x27x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002565, N'(45x28x17.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002566, N'(58x38x22)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002567, N'(58x40x31)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002568, N'(56x34x14)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002569, N'(41x34x14)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002570, N'(77x57x31)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002571, N'(38x30)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002572, N'(68x45)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002573, N'Giấy xeo K 68/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002574, N'Giấy xeo K 114/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002575, N'Giấy xeo K 100/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002576, N'(47x24x28)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002577, N'(31.5x31x31.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002578, N'(141x68)x5 Dup3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002579, N'(127x8)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002580, N'(19.5x17.5x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002581, N'(41.5x41.5x10)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002582, N'(156x9.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002583, N'(43x28x25)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002584, N'(28.5x21.5x13)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002585, N'Tem (7.5x5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002586, N'(66x34x35)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002587, N'(29.5x29.5x21.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002588, N'(41x30x17.5)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002589, N'(39.5x28x24.5)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002590, N'(36.5x27x19)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002591, N'(35.5x28x15.5)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002592, N'(29x22x22)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002593, N'Hộp (21x14x4)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002594, N'(35x27x27)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002595, N'(37x27x22)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002596, N'(37x27x19)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002597, N'(28x28x22)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002598, N'(64x30x20)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002599, N'(43x28x12)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002600, N'(43x28x12)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002601, N'(58.5x29.5x13)x5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002602, N'(37.5x29.5x19)x3 DUPXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002603, N'(150x68)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002604, N'(164x68)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002605, N'(34x28x24)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002606, N'(28x27.5x5)x3 Dup2X', N'Khay')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002607, N'(37x27.5x27)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002608, N'(26.5x46.5)x2 2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002609, N'Giấy xeo K 117/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002610, N'Giấy xeo K 81/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002611, N'Giấy xeo K 133/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002612, N'Giấy xeo K 119/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002613, N'Giấy xeo K 90/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002614, N'Giấy xeo K 42/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002615, N'Giấy xeo K 120/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002616, N'Giấy xeo K 93/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002617, N'(42x42x25.5)x5 dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002618, N'(50x40x35)x5 dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002619, N'(55.5x27x18)x5 dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002620, N'(45x28x15.5)x5 dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002621, N'(68.5x29.5x13)x5 dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002622, N'(42.5x28.5x11.5)x3 dupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002623, N'(55x28x19)x3 dupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002624, N'(32x28.5)x3 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002625, N'(48x27x9)x5 dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002626, N'(32x31.5x10.5)x5 dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002627, N'(41x29x25)x3 dupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002628, N'(165x68)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002629, N'(32x24x29.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002630, N'(39x25.5x23.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002631, N'(43.5x28x20.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002632, N'(38.5x32.5x9)x5 dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002633, N'(123x19.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002634, N'(46.5x34.5x13)x3 dupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002635, N'(161x12.50x3 3x', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002636, N'(32x14x32)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002637, N'(56x48x29)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002638, N'(66x37x34)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002639, N'(27x22x27)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002640, N'(44x34x9.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002641, N'(34.5x31.5x31.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002642, N'Giấy 02 lớp K 65', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002643, N'Giấy 02 lớp K 78', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002644, N'(31x23x23.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002645, N'(31.5x23.5x24.5)x5 Dup4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002646, N'Hộp (9x7.5x4.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002647, N'Hộp (23x19x9)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002648, N'(34x22x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002649, N'Tờ bướm các loại', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002650, N'(56x23x14.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002651, N'(37.5x22.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002652, N'(56x23x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002653, N'(56x21x13.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002654, N'(56x27.5x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002655, N'(56x42x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002656, N'(161x12.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002657, N'(52x34.5x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002658, N'(46.5x34.5x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002659, N'(161x21)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002660, N'(42x31x19.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002661, N'(37x27x13.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002662, N'(37x28.5x16)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002663, N'(36x27.5x7)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002664, N'(45x28x16.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002665, N'(56x27x9)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002666, N'(57x28x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002667, N'(37x31x23.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002668, N'(58.5x31.5x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002669, N'(32.5x27.5x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002670, N'(57.5x28x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002671, N'(58x38x21)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002672, N'Giấy xeo K 168/140', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002673, N'(161x21)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002674, N'Giấy xeo K 85/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002675, N'Giấy xeo K 135/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002676, N'Giấy xeo K 112/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002677, N'Giấy xeo K 92/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002678, N'Giấy xeo K 138/170', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002679, N'Giấy xeo K 119/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002680, N'Giấy xeo K 50/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002681, N'Giấy xeo K 98/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002682, N'(165x72)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002683, N'(55x27.5x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002684, N'(41x29x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002685, N'(53x27.5x20.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002686, N'(45x27x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002687, N'(36x27x12)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002688, N'(55x27x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002689, N'(42x32x24)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002690, N'(34x26x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002691, N'Giấy xeo K 138/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002692, N'(38.5x28x39)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002693, N'(45x28x17)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002694, N'(45x28x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002695, N'(45x28x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002696, N'(45x28x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002697, N'(45x28x31.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002698, N'(40x38.5x10)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002699, N'(41x31x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002700, N'Giấy xeo K 71/200', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002701, N'Giấy xeo K 72/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002702, N'(41x30.5x25)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002703, N'(56x27x9)x3 DLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002704, N'(39x27x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002705, N'(53x31x16)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002706, N'(36x10.5x56)x3 DUPXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002707, N'(53x31x16)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002708, N'Hộp (26x8.2x1.8)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002709, N'Giấy xeo K 133/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002710, N'Giấy xeo K 72/180', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002711, N'Giấy xeo K 115/140', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002712, N'Giấy xeo K 90/220', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002713, N'Giấy xeo K 78/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002714, N'Giấy xeo K 100/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002715, N'(30.5x12x50.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002716, N'(44x15.5x77)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002717, N'(54x15.5x77)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002718, N'(29x27x77)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002719, N'(41x30.5x12.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002720, N'(46x30.5x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002721, N'(38x22x10)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002722, N'(44x27x12)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002723, N'(42.5x28.5x11.5)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002734, N'(54x36x9.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002735, N'(53x9)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002736, N'(35x9)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002737, N'(46.5x36.5x20.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002738, N'(46.5x36.5x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002739, N'(46.5x36.5x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002740, N'(46x36.5x18)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002741, N'(164x17.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002742, N'(42x31x23)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002743, N'(145x22.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002744, N'(46x34.5x13)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002745, N'(164x16)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002746, N'(46x36.5x16.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002747, N'(31x24x16)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002748, N'(109x15.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002749, N'(31x24x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002750, N'(109x19.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002751, N'(31x24x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002752, N'(109x21.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002753, N'(38x28x30)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002754, N'(58x38x20)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002755, N'Bìa lưng áo sơ mi (35x26)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002756, N'Bìa lưng áo sơ mi (53x35)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002757, N'Bìa lưng áo sơ mi (50x35)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002758, N'(52x30.5x22.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002759, N'(31x23x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002760, N'Hộp Best Meat (27x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002761, N'(50x35x30)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002762, N'(33x28x22.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002763, N'(40.5x28.5x16.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002764, N'(46x33x18.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002765, N'(41x28.5x21)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002766, N'(44.5x33.5x16.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002767, N'(44x33x16.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002768, N'(45x33x21)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002769, N'(40x28)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002770, N'(33x33)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002771, N'Tem muối', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002772, N'Khay nước chấm', N'cái')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002773, N'Giấy xeo K 83/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002774, N'Giấy xeo K 120/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002775, N'Giấy xeo K 130/130', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002776, N'Giấy xeo K 135/130', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002777, N'Giấy xeo K 212/130', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002778, N'Giấy xeo K 52/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002779, N'Giấy xeo K 122/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002780, N'Giấy xeo K 94/160', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002781, N'(56x42x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002782, N'(43x28x30.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002783, N'(171x20.5)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002784, N'(33x26.5x19.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002785, N'(118x19)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002786, N'(161x16)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002787, N'(19.5x17.5x19.8)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002788, N'(36.5x20.5x22)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002789, N'(26x16x19.8)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002790, N'(52.5x47x16)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002791, N'(53.5x27.5x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002792, N'(58x28x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002793, N'(40x27.5x32)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002794, N'Giấy xeo K 114/140', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002795, N'(164x72)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002796, N'(167x65)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002797, N'(51x41x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002798, N'(51x41x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002799, N'(41x30x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002800, N'(33x28x22.3)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002801, N'(44x30x10)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002802, N'Giấy xeo K 130/150', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002803, N'(41x31.5x24)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002804, N'(41x31.5x16.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002805, N'(36.5x11.5x58)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002806, N'(59x25x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002807, N'(41x29x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002808, N'(43x23.5x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002809, N'(47x30x16)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002810, N'(47x30x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002811, N'(43x28x26.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002812, N'(40.7x29.3x20.4)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002813, N'(40.7x26.7x17.8)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002814, N'(43.2x25.4x20.4)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002815, N'(44.5x35.6x25.4)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002816, N'(40.7x36.9x22.9)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002817, N'(44.5x29.5x22.9)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002818, N'(56x10x38)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002819, N'(58x38x27)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002820, N'(38x28x32)x5 DL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002821, N'(40x31x21)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002822, N'(46x28)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002823, N'(48x28x11)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002824, N'Bướm(15x24)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002825, N'Giấy xeo K 130/220', N'kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002826, N'(44x30x18)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002827, N'(40x27.5x32)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002828, N'(48x31.5x19)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002829, N'(31x23.5x12)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002830, N'Hôp tôm (23.5x19x10)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002831, N'(47x30x17.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002832, N'(52x34x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002833, N'(39x26x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002834, N'(56x27x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002835, N'Hộp trắng (25x19x10)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002836, N'(34x22.5x19.7)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002837, N'(43x23.5x26)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002838, N'(34x28x22)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002839, N'Giấy xeo K 103/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002840, N'Giấy xeo K 85/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002841, N'(53.5x23.5x34.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002842, N'(115x59x51)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002843, N'(36.5x27.5x36.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002844, N'(26.5x20.5x65)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002845, N'(37x26.5x24)x3 Dup2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002846, N'(27x22)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002847, N'(60x31x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002848, N'(43x43x27)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002849, N'(48x48x39)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002850, N'(58x58x39)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002851, N'(53x53x54)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002852, N'(41x41x8)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002853, N'(28x28x36)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002854, N'(51x12.5x51)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002855, N'(31x31x16)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002856, N'(23x23x36)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002857, N'(29x29x21)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002858, N'(41x41x12)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002859, N'(43x43x14)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002860, N'(34x26x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002861, N'(44x27x12.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002862, N'(38x22x10.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002863, N'Giấy xeo K 140/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002864, N'Giấy xeo K 50/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002865, N'(57x28.5x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002866, N'(37x27x14)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002867, N'Giấy xeo K 104/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002868, N'Giấy xeo K 94/150', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002869, N'Hộp (7x4.4x9)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002870, N'(45.5x33.5x20)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002871, N'(57.5x29x24)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002872, N'(34x26x19)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002873, N'(44x30x17)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002874, N'(44x30x18)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002875, N'(43x23.5x26.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002876, N'(52x34.5x17)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002877, N'(45x42x14)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002878, N'(34x26x19)x3 DLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002879, N'(47x30x15)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002880, N'(56x34x21)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002881, N'(34x26x16.9)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002882, N'(35x30x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002883, N'(34x32.5x19.7)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002884, N'(33x28x10.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002885, N'(43x27x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002886, N'(41x37x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002887, N'(38x25x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002888, N'Hộp Ocean (27x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002889, N'(72x165)x5 DL3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002890, N'(43x36.5x11.5)x5 Dup4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002891, N'(49x26x24)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002892, N'(57.5x29x21)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002893, N'(39x27x24)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002894, N'(123x105)x3 DLXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002895, N'(131x90)x3 DLXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002896, N'Giấy xeo K 102/200', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002897, N'Giấy xeo K 144/170', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002898, N'Giấy xeo K 128/160', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002899, N'Giấy xeo K 93/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002900, N'Giấy xeo K 190/130', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002901, N'Giấy xeo K 128/180', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002902, N'Hộp (23.8x16.7x3.7)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002903, N'(50x27.5x15)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002904, N'(26x16x6.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002905, N'(164x72)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002906, N'(126x65)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002907, N'(150x65)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002908, N'(53.5x9)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002909, N'(35.5x9)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002910, N'(55x37.5x12)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002911, N'(40x28x8.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002912, N'Hộp (26x16x6.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002913, N'(43x23.5x26.5)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002914, N'(44x30x18)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002915, N'(37.5x32x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002916, N'(59x27.5x18.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002917, N'(46x28x11)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002918, N'(46x28x22)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002919, N'(50x32x20)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002920, N'(33.5x33.5x23.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002921, N'(44x37x11)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002922, N'(40x28x24.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002923, N'(54x37.5x9.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002924, N'(31x31x16)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002925, N'(48x24x24)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002926, N'(31x28x22)x5 Dup3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002927, N'(70x30x14)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002928, N'(50x32x21)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002929, N'(55x32x21.5)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002930, N'(34x26.5x19)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002931, N'(34x26.5x19)x3 DLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002932, N'(40x28x24)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002933, N' hộp(23,8x16,7x3,7)', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002934, N'(47.2X29.4X15.7)X5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002935, N'(57x28x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002936, N'(44X29.5X22)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002937, N'Hộp tôm (21x14x6.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002938, N'(44X28X22)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002939, N'Hộp Shutter pack(21x14x4.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002940, N'(44X30X12)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002941, N'(53x36x30)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002942, N'(51X28X13.5)X3 DupXDL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002943, N'(53x36x29)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002944, N'(46X30.5X12)X3 Choil2x', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002945, N'Tem (12x8)', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002946, N'(34X34X22)X3 AB2X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002947, N'(46x12.5x46)x3 AB2X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002948, N'(48X54X48)X5 AB4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002949, N'(33X46X34)X5 AB4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002950, N'(36X36X47)X5 AB4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002951, N'(43X43X45)X5 AB4X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002952, N'(41X41X21)X3 AB2X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002953, N'(31x14x31)x3 AB2X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002954, N'(41X41X16)X3 AB2X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002955, N'(34x26.5x19)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002956, N'(165X72)X5 2DL3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002957, N'(33x33.5x23.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002958, N'(48x24x26)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002959, N'(56x42x19)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002960, N'(28x18x5.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002961, N'(29.5x20x7)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002962, N'(36.5x29.5x17)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002963, N'(38.5x29.5x21.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002964, N'(44x28x25)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002965, N'(37.5x32x19.5)x5 D3xDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002966, N'(38x29x19)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002967, N'(30x28x22)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002968, N'(40x28x20)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002969, N'(48x27x21)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002970, N'(44x28x12.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002971, N'(48x27.5x21)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002972, N'(41x27x27.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002973, N'(37.5x32x22)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002974, N'(34x22x8)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002975, N'(39x32x28)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002976, N'(36x11x56)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002977, N'(47x24)x3 3Xeo', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002978, N'(37x29x16.5)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002979, N'(36x28x7.5)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002980, N'(46x36.5x180x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002981, N'(46x36.5x26)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002982, N'(24.5x11.5x19.8)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002983, N'(54x26x16)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002984, N'(33x28x22)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002985, N'(57x38x7)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002986, N'(33x28.5x22.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002987, N'(33x25.5x17)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002988, N'(140x68)x5 2DL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002989, N'(44x28x12)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002990, N'(45x25x27)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002991, N'(28x27x22)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002992, N'(29x29x14)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002993, N'(47x30x23)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002994, N'(81x58x40)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002995, N'(34x34x19)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002996, N'(46x36.5x20)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002997, N'(37x31x10.5)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002998, N'(43x31x23)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100002999, N'(24x15x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003000, N'(40x30x20)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003001, N'(28x20x15)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003002, N'(35x27x15)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003003, N'(64x30x19)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003004, N'(39x27x23)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003005, N'(37.5x27x16.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003006, N'(32.5x28x22)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003007, N'(41x27x24)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003008, N'(54x23x21)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003009, N'(33x31x14)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003010, N'(38.5x32.5x19)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003011, N'(34.5x26.5x17)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003012, N'(25x16x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003013, N'(42x30x16.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003014, N'(45.5x35.5x20)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003015, N'(46x24x19.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003016, N'(50x30x31.5)x5 DL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003017, N'(37x25.5x24)x3 D2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003018, N'(34.5x25.5x31.5)x3 D2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003019, N'(102x51x77)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003020, N'(66x41x86)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003021, N'(76x42x89)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003022, N'(105x52x51.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003023, N'(91x31x66)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003024, N'(60x60x25)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003025, N'(50x32x32)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003026, N'(49x34.5x31)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003027, N'(104x52x42)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003028, N'(25.5x25.5x31)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003029, N'(110x55x87)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003030, N'(81x42x82)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003031, N'(116x58x44)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003032, N'(115x59x59)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003033, N'(63x63x56)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003034, N'(28.5x28.5x21)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003035, N'(100x100x64)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003036, N'(46x42x66)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003037, N'(75x40x24)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003038, N'(58x38x24)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003039, N'(58x38x26)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003040, N'(40x40x30)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003041, N'(40x37x30)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003042, N'(40x37x24)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003043, N'(40x40x25)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003044, N'(40x30x24)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003045, N'(40x30x30)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003046, N'(40.7x29.3x20.5)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003047, N'(25x63)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003048, N'(25x40)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003049, N'Bìa lưng áo sơmi (25x36)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003050, N'(34.4x34.3x17.8)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003051, N'(45.7x40.7x20.4)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003052, N'(53.4x40.7x22.9)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003053, N'(35x28x22)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003054, N'(27.8x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003055, N'(33x28.5x23)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003056, N'(38x35x20)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003057, N'(35x33x17)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003058, N'(30x30x14)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003059, N'(38x28x17)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003060, N'(29.5x25.5x16.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003061, N'(46x36.5x17)x3 DXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003062, N'(30.5x26x17)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003063, N'(38x28x20)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003064, N'(35x34x11)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003065, N'Giấy xeo thường ĐL 130 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003066, N'Giấy xeo thường ĐL 140 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003067, N'Giấy xeo thường ĐL 150 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003068, N'Giấy xeo thường ĐL 160 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003069, N'Giấy xeo thường ĐL 170 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003070, N'Giấy xeo thường ĐL 180 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003071, N'Giấy xeo thường ĐL 190 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003072, N'Giấy xeo thường ĐL 200 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003073, N'Giấy xeo thường ĐL 220 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003074, N'Giấy xeo chống thấm ĐL 130 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003075, N'Giấy xeo chống thấm ĐL 140 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003076, N'Giấy xeo chống thấm ĐL 150 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003077, N'Giấy xeo chống thấm ĐL 160 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003078, N'Giấy xeo chống thấm ĐL 170 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003079, N'Giấy xeo chống thấm ĐL 180 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003080, N'Giấy xeo chống thấm ĐL 190 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003081, N'Giấy xeo chống thấm ĐL 200 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003082, N'Giấy xeo chống thấm ĐL 220 g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003083, N'(28x18x8.5)', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003084, N'(34.5x26.5x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003085, N'(42x28x27)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003086, N'(33x29x23)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003087, N'(42x28x23)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003088, N'(57x28x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003089, N'(32x27x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003090, N'(58x20x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003091, N'(45x28x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003092, N'(55x28x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003093, N'(50x24x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003094, N'(45x25x29)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003095, N'(31x20x27)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003096, N'(35x32x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003097, N'(35.5x35x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003098, N'(37x28x23)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003099, N'(54x26.5x5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003100, N'(55x37.5x12)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003101, N'(41.5x41.5x12.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003102, N'(38x28x25)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003103, N'(40x29x11.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003104, N'(40x29x24)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003105, N'(40x29x18)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003106, N'(42x30x22)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003107, N'(41x29)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003108, N'(46.5x34.5x13)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003109, N'(46.5x34.5x12)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003110, N'(55x37.5x12.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003111, N'(42x31x22.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003112, N'(42x31x24)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003113, N'(42x31x26.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003114, N'(46.5x34.5x16)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003115, N'(55x37.5x16)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003116, N'(45x28x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003117, N'(48x30x27)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003118, N'(48x29x18)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003119, N'(35.5x32x25)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003120, N'(141x68)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003121, N'(43x27x12)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003122, N'(35x25.5x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003123, N'(31x23.5x24.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003124, N'(38.5x30x17.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003125, N'(36.5x28.5x8)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003126, N'(37x20x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003127, N'(35x26x16.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003128, N'(58x27.5x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003129, N'(37.5x34x10)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003130, N'(34x33x10)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003131, N'(30x30x9)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003132, N'(54x33x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003133, N'(39x26x5.5)x3 D2X', N'Khay')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003134, N'(36.5x28.5x8)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003135, N'(47x30x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003136, N'(47x30x17.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003137, N'(42x31x12)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003138, N'(46.5x34.5x10)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003139, N'(46.5x34.5x13.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003140, N'(42x36x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003141, N'(45x42x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003142, N'(52.5x47x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003143, N'(46.5x34.5x21.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003144, N'(53x36x29)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003145, N'(42x31x22.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003146, N'(34x28x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003147, N'(34x34x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003148, N'(34x28x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003149, N'(55x37.5x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003150, N'(42x42x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003151, N'(55x37.5x13.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003152, N'(55x37.5x10.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003153, N'(62x31x20.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003154, N'(62x31x18.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003155, N'(27x4.3x55)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003156, N'(36x38x3.2)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003157, N'(2.5x5)', N'Tem')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003158, N'(24.5x16.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003159, N'(160x68)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003160, N'Ngăn - Khe - Lót trứng muối', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003161, N'(29x25x15)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003162, N'(41x7x82)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003163, N'(44x34x12.5)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003164, N'(31x23x23.5)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003165, N'(32x31x19)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003166, N'(45x28x21.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003167, N'Giấy xeo thường ĐL 230g/m2', N'Kg')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003168, N'(32x27x18)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003169, N'(42x31x21.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003170, N'(42x31x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003171, N'(40x28x8.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003172, N'(46.5X33X14)X5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003173, N'(27x22.5x13)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003174, N'(27x22.5x14.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003175, N'(166x65)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003176, N'(170x65)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003177, N'(34.5x26.5x19.2)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003178, N'(48x20x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003179, N'(32x31.5x10.5)x3 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003180, N'(30x30x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003181, N'(35x33x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003182, N'(34x28x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003183, N'(35.5x30.5x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003184, N'(33x28.5x23.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003185, N'(37.5x32x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003186, N'(37.5x30x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003187, N'(37x27x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003188, N'(44x29x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003189, N'(42x29x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003190, N'(53.5x9x26)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003191, N'(40x28x11.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003192, N'(31x23.5x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003193, N'(36x56)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003194, N'(27x21x6)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003195, N'(33x31.5x2.8)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003196, N'(43x27x11)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003197, N'(44x28x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003198, N'(42X32X23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003199, N'(43x28x20.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003200, N'(46.5x34.5x11)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003201, N'(44x28x26)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003202, N'(37.8x32x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003203, N'(78x66x45)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003204, N'(42x31x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003205, N'(42x31x24)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003206, N'(37x29x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003207, N'(33x31x19)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003208, N'(36x30x19)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003209, N'(47x30.5x17.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003210, N'(37x31x10.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003211, N'(60x30x20)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003212, N'(42x27x20)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003213, N'(45x27x13.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003214, N'(35x28x28)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003215, N'(40x28x24)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003216, N'(43x26x18)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003217, N'(44x30x17)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003218, N'(20x11)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003219, N'(9x21)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003220, N'(35x28x22)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003221, N'(39x28x24)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003222, N'(34x26.2x18.8)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003223, N'(44x28x11.5)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003224, N'(38x25.5x11)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003225, N'(37.5x27.5x28.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003226, N'(37.5x27.5x20)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003227, N'(41.5x41.5x10)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003228, N'(42x31x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003229, N'(60x30x20)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003230, N'(30x28x22)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003231, N'(37.5x27.5x22)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003232, N'(65x30x19)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003233, N'(37.5x27.5x18.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003234, N'(42x33.5x16.5)x3 2DLVN', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003235, N'(34x26.2x18.8)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003236, N'(44.5x31x24.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003237, N'(46x36.5x26)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003238, N'(29x20x20)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003239, N'(46x36.5x20)x5 Dup3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003240, N'(38.5x31.5x12)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003241, N'(36x31x19)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003242, N'(27.5x21.5x5.3)', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003243, N'(34.5x29.5x23)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003244, N'(40x30x28)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003245, N'(57x35.5x30.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003246, N'(7x38)x3 3Xeo', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003247, N'(35.5x29x23)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003248, N'(31x31x26)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003249, N'(27.5x21.5x5.3)', N'nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003250, N'(45x30x21.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003251, N'(29x20x26)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003252, N'(55x37.5x9)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003253, N'(33x32x14)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003254, N'(40x28x25)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003255, N'(32x29x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003256, N'(36x28x15.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003257, N'(57x38x8)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003258, N'(33x33x14)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003259, N'(46.5x34.5x14.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003260, N'(47x35x15)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003261, N'(41x31x22)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003262, N'(33x27.5x21.5)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003263, N'(43x28x32)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003264, N'(43x28x35)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003265, N'(40.5x30.5x25)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003266, N'(40.5x30.5x12.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003267, N'(56x36)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003268, N'(46x28x10.5)x3 DupXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003269, N'(55x37.5x12.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003270, N'(55x37.5x15)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003271, N'(55x37.5x16)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003272, N'(46.5x34.5x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003273, N'Hộp Shutter pack(21x14x4.5)', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003274, N'Hộp Shutter pack(21x14x4.5)', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003275, N'(38x28x15)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003276, N'(56x28x4)3 DupXDL', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003277, N'(40x37x32)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003278, N'(40x30x15)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003279, N'(42x40x20)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003280, N'(40x37x18)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003281, N'(40x40x20)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003282, N'(40x40x24)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003283, N'(36.5x25x20.5)x3 D2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003284, N'(45x27x20)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003285, N'(153x70)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003286, N'(34x27.5x17.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003287, N'(60x27.5x19)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003288, N'(40x28x12.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003289, N'(36x30x19)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003290, N'(33x24x12.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003291, N'(27x18x9)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003292, N'(31x23x23.5)x3 ChoilXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003293, N'(39x28x12)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003294, N'(46.5x34.5x11)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003295, N'(28x18x10)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003296, N'(28.5x27.5x19.5)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003297, N'(56x27.5x17.5)x5 Dup 3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003298, N'(50x26x20)x5 2DL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003299, N'(44x31x18)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003300, N'(35x26x17)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003301, N'(4.5x4.5x3.5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003302, N'(46.5x22.5x11)x5 Dup 3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003303, N'(27x4.3x55)x3 DXĐL', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003304, N'(30X27.5)X3 DXĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003305, N'(64x29.5x27) x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003306, N'(64x29.5x26.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003307, N'(64x29x25)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003308, N'(56x29x21.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003309, N'(44X30X18)X5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003310, N'(30.5x26x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003311, N'(42x28.5x21.5)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003312, N'(39x27x24)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003313, N'Tem (5x5)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003314, N'(37x27x21.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003315, N'(46x33x21)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003316, N'(44x33x16.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003317, N'(46x33x21)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003318, N'(46x33x18.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003319, N'(40x27x12.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003320, N'(36.5x29.5x17.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003321, N'(42x25x12.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003322, N'(40x25x30)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003323, N'(38x28.5x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003324, N'(36.5x10.5x56)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003325, N'(57x36x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003326, N'(42.5x28.5x21.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003327, N'(31.7x33.3x2.7)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003328, N'Tem (20x10)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003329, N'(52x40)x3 2ABX', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003330, N'(42x31x15.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003331, N'(37.5x29.5x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003332, N'Tấm lót(7x30)', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003333, N'(41.5x28.5x30)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003334, N'(57x28x13)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003335, N'(55x27x4.7)x3 DXĐL', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003336, N'(42x31x17.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003337, N'(57x36x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003338, N'(37x33x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003339, N'(39x38x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003340, N'(38x36x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003341, N'(38x28.5x23)X D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003342, N'(33x24x13.5)X D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003343, N'(37x27.5x22.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003344, N'(41.5x25x12.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003345, N'(28x22x26)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003346, N'(42x30x43.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003347, N'(46.5x34.5x28.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003348, N'(42x31x10)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003349, N'(42x32x10)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003350, N'(42x31x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003351, N'(14x14x43)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003352, N'(17x17x53)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003353, N'(12.5x12.5x38)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003354, N'(8.5x8.5x26)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003355, N'(10x10x32)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003356, N'(11x11x34)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003357, N'(14.5x14.5x47)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003358, N'(127x190)x5 ĐL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003359, N'(106x100)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003360, N'(54x26x9)x3 DXĐL', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003361, N'(46x36.5x16.5)x5 D3XĐL', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003362, N'(42x31x26)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003363, N'(42x31x29)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003364, N'(42x31x31.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003365, N'(43x32x10)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003366, N'(55x27x10.5)x3 D3XĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003367, N'(55x27x10.3)x3 AB2X', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003368, N'(53x25.5x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003369, N'(52x36x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003370, N'(150x25)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003371, N'(90x20)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003372, N'(120x20)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003373, N'(140x25)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003374, N'(175x30)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003375, N'(150x30)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003376, N'(130x30)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003377, N'(6.5x4.5)AB', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003378, N'(200x37)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003379, N'(190x30)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003380, N'(130x35)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003381, N'(110x40)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003382, N'(31x31x17)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003383, N'(26x26x21)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003384, N'(31x31x31)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003385, N'(33x33x37)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003386, N'(54x28x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003387, N'(64x33x34)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003388, N'(40x28x10.5)x5 D 3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003389, N'(57x35)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003390, N'(58x35)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003391, N'(44x35)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003392, N'(60x46x36)x5 ĐL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003393, N'(41x27x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003394, N'(31x23.5x23)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003395, N'(48x31.5x19)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003396, N'(30.5x15x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003397, N'(23x15x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003398, N'(15x15x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003399, N'(25.5x17x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003400, N'(17x17x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003401, N'(31x16x18)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003402, N'(30.5x22.5x22.5) x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003403, N'(35x31x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003404, N'(31x30.5x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003405, N'(31x30x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003406, N'(38x33.5x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003407, N'(41.5x25x18.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003408, N'(41x26x42)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003409, N'(40.5x28.5x24.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003410, N'(40x30x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003411, N'(33x28.5x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003412, N'Thẻ (7.5x10)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003413, N'(55x27x9)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003414, N'64.5x30x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003415, N'(43x32x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003416, N'(42x31x20.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003417, N'(42x28x28)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003418, N'(47x28x15.3)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003419, N'(46x31x16.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003420, N'(46x31x18.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003421, N'(46x31x16.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003422, N'(46x27.5x11.5)x3 DXĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003423, N'(64.5x30x17)x5 D3XĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003424, N'(52x36x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003425, N'(40.5x31.5x24)x5 D3XĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003426, N'(38.5x32.5x28.5)x5 D3XĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003427, N'(60x29x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003428, N'(32x29x20.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003429, N'(165x25)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003430, N'(155x25)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003431, N'(140x25)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003432, N'(155x30)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003433, N'(70x20)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003434, N'(140x20)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003435, N'(90x30)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003436, N'(160x30)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003437, N'Tem AB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003438, N'(90x25)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003439, N'(42x31x13)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003440, N'Tem Logo (6x8)', N'Tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003441, N'(44x30x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003442, N'(41x39.5x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003443, N'(36x30.5x17) x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003444, N'Hộp tôm Nordic(27x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003445, N'(37.5x32x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003446, N'(38x28x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003447, N'(45x28x27)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003448, N'(52.5x23.5x20.5)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003449, N'(38x7x57)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003450, N'(43x28x8.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003451, N'(40x29x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003452, N'(37.5x27.5x24)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003453, N'(37x30x10)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003454, N'(42x27x24)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003455, N'(43.5x27.5x12) x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003456, N'(42x27x24)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003457, N'(75x66)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003458, N'(31.5x17.5x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003459, N'(42x37x27)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003460, N'(46.5x34.5x28.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003461, N'(41.5x28.5x31)x3 DXĐL', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003462, N'(77x70)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003463, N'(1.10x1.48)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003464, N'(37.5x27.5x27)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003465, N'(46x36.5x16.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003466, N'(33x29x19.5)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003467, N'(55x23x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003468, N'(55x23x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003469, N'(36.5x10x56)x3 ĐLXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003470, N'(35.5x31x10)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003471, N'(31x30.5x9)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003472, N'(55x23x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003473, N'(42x28x23)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003474, N'(35x31x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003475, N'(37.5x29x15.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003476, N'(50x30.5x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003477, N'(48x27x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003478, N'(39.5x29.5x20)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003479, N'(43x38x42)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003480, N'(44x36x36)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003481, N'(56x37x26)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003482, N'(38x36x32)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003483, N'(55x50x27)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003484, N'(48x38x28)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003485, N'(42x31.5x16.5)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003486, N'(49x23.5x29)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003487, N'(63.5x29x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003488, N'(49x23.5x33)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003489, N'(49x23.5x27)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003490, N'(40x27.5x33.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003491, N'(40x27x29)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003492, N'(38x30x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003493, N'(36.5x29.5x22.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003494, N'(43x28x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003495, N'(53x28x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003496, N'(46.5x23.5x24.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003497, N'(40X23.5X25)X5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003498, N'(28x26.5x22)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003499, N'(33x29x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003500, N'(60x45x6)x3 DXAB', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003501, N'(49x23.5x37)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003502, N'(55x31x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003503, N'(57x30.5x20)x 5 D3XĐl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003504, N'(45x29x24)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003505, N'(46x38.5x16)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003506, N'(36x28x24)x 5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003507, N'(38x28x24)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003508, N'(53x31x16)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003509, N'(42x32x23.5) x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003510, N'(57x28x13) x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003511, N'(67x28x13)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003512, N'(34x26.5x19)x3 DXĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003513, N'(40x30x28)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003514, N'(37x10.5x56.5) x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003515, N'(36x26x15)x5 D3XĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003516, N'(105x123)x 3 DXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003517, N'(105x81)x3 DXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003518, N'(125x105)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003519, N'(140x117)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003520, N'(168x105)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003521, N'(181x121)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003522, N'(155x100)x5 2D3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003523, N'(35x27x28.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003524, N'(35x26x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003525, N'(35x31x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003526, N'(38x33.5x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003527, N'(37x34x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003528, N'(37.5x32.5x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003529, N'(33.5x30x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003530, N'(38x34x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003531, N'(38x28x12.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003532, N'(42x27x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003533, N'(23x20x8)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003534, N'(42x24x26)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003535, N'(36x27.5x13)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003536, N'(46.5x32x15.5)x3DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003537, N'(44.5x28.5x14)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003538, N'(44x28x10.5)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003539, N'(45x28x9)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003540, N'(44x30x17)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003541, N'(44x28x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003542, N'(39x32x26)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003543, N'(38x31x11.5)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003544, N'(51x41x35)x5 ĐL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003545, N'(50x39x59)x5 ĐL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003546, N'(36x27.5x17.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003547, N'(36x27.5x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003548, N'(39.5x32.5x26)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003549, N'(162x105)x5 2AB3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003550, N'(157x137)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003551, N'(143x105)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003552, N'(143x119)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003553, N'(161x103)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003554, N'(158x100)x5 2D3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003555, N'(141x109)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003556, N'(30.5x15x12)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003557, N'(31x23.5x23.5)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003558, N'(40x24x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003559, N'(100x15)x3 3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003560, N'(31.5x26.5x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003561, N'(36.5x27.5x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003562, N'(30x30x16) x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003563, N'(40x34x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003564, N'(41x29x25.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003565, N'(31.5x18.5x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003566, N'(38x28x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003567, N'(31x31x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003568, N'(48x27.5x30)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003569, N'(21.5x12x30) x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003570, N'(38x34x33)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003571, N'(23x22.5x29.5) x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003572, N'(43x32x20.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003573, N'(43x32x17) x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003574, N'(43x32x24)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003575, N'(43x32x29)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003576, N'(43x32x21.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003577, N'(43x32x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003578, N'(57x36x14.5)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003579, N'(55x23x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003580, N'(125x105)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003581, N'(36x33x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003582, N'(141x113)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003583, N'(34x28x22)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003584, N'(56.5x25.5x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003585, N'(145x112)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003586, N'(157x91)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003587, N'(129x105)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003588, N'(61.5x26x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003589, N'(55x23x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003590, N'(35.5x28x25)x5 D3XĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003591, N'(57x36x14.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003592, N'(66x41x21)x5 ĐL4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003593, N'(62.5x32.5x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003594, N'(126x103)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003595, N'(128x103)x5 2AB3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003596, N'(139x120)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003597, N'(157x90)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003598, N'(53x26.5x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003599, N'(57x30.5x20)x3 DXĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003600, N'(27x7)x3 DXĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003601, N'(33x25.5x25.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003602, N'(38.5x30.5x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003603, N'(58x44x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003604, N'(128x103)x3 2ABX', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003605, N'(182x120)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003606, N'(167x103)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003607, N'(130x103)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003608, N'(163x95)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003609, N'(165x130)x5 2AB3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003610, N'(154x126)x3 DXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003611, N'(123x103)x3 ĐLXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003612, N'(52.5x23.5x19.5)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003613, N'(50x25x15)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003614, N'(142x110)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003615, N'(127x103)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003616, N'(26x17x10)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003617, N'(41x30.5x19)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003618, N'(161x92)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003619, N'(56x28x18.5)x3 DXĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003620, N'(47x28x17.3)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003621, N'(30x22x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003622, N'Nòng giấy 5 cm', N'Cái')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003623, N'(47x28x12.3)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003624, N'Nòng giấy 6 cm', N'Cái')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003625, N'(29.5x24x20.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003626, N'(28x25.5x22)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003627, N'(45.5x21x14)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003628, N'(25x170)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003629, N'(20x135)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003630, N'(48x27.5x26.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003631, N'(31.5x18.5x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003632, N'(49x26x13)x3 2ĐLX', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003633, N'(137x105)x3 2ABX', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003634, N'(165x85)x5 2AB3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003635, N'(163x137)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003636, N'(157x132)x3 DXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003637, N'(68x49x11)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003638, N'(58x27x23.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003639, N'(25.5x18.5x11)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003640, N'(54x21x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003641, N'(34x28x22)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003642, N'(35x38x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003643, N'(47x28x11.6)x5 D3X ĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003644, N'(32.5x32.5x25)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003645, N'(47x32x15)x5 D3XĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003646, N'(38x27x12)x3 DupXDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003647, N'(38x26x13)x1 Duplex', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003648, N'(110x34x20)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003649, N'(37.5x32.5x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003650, N'(54x21x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003651, N'(30x170)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003652, N'(38x38x31)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003653, N'(38x38x25)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003654, N'(64x33x55)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003655, N'(38x38x26)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003656, N'(53x26x45)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003657, N'(53x37x26)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003658, N'(38x38x55)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003659, N'(46x46x40)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003660, N'(53x53x44)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003661, N'(51x51x10)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003662, N'(36x36x14)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003663, N'(36x36x11)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003664, N'(31x31x26)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003665, N'(36x36x11.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003666, N'(51x24x10.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003667, N'(51x35x11)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003668, N'(36x36x26)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003669, N'(22x22x37)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003670, N'(24.5x16.5x9.5)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003671, N'(31.5x21x13)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003672, N'(17.5x11.5x19)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003673, N'(33x22x16)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003674, N'(22x15x16)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003675, N'(168x103)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003676, N'(145x110)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003677, N'(57.5x36.5x21.5)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003678, N'(46.5x34.5x27)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003679, N'(32x26x18.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003680, N'(50x33x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003681, N'(49.5x28.5x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003682, N'(100x50x60)x5 ĐL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003683, N'(225x40x120)x5 ĐL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003684, N'(37x27x20)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003685, N'(36.5x10.5x57.5)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003686, N'(33.5x22.5x4.5)x3 DXĐL', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003687, N'(50x34.5x23.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003689, N'(53.5x24x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003690, N'(23x17x9.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003691, N'(33.5x30x14)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003692, N'(37x34x15.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003693, N'(36x35x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003694, N'(38x38x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003695, N'(36x35x16)x5 D3XĐl', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003696, N'(62x46x75)x5 ĐL3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003697, N'(49x28x17)x5', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003698, N'(40x30x25)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003699, N'(40x28x20)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003700, N'(39x28x14.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003701, N'(30x25.5x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003702, N'(49x26x13)x3 2ABX', N'Đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003703, N'(150x72)x5 2ĐL3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003704, N'(56x15.5x38)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003705, N'(44x28x19)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003706, N'(44x30x19)x5 D3XAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003707, N'(163x136)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003708, N'(142x114)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003709, N'(37x18x14.5)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003710, N'(53x35x15)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003711, N'(36.5x10x56)x3 DXAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003712, N'(55x28x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003713, N'(45x27x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003714, N'(55x28x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003715, N'(43x26x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003716, N'(58.5x28x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003717, N'(35x28x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003718, N'(32.5x32.5x26.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003719, N'(32.5x32.5x28.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003720, N'(30x22x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003721, N'(32.5x32.5x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003722, N'(46x28x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003723, N'(47x28x10.3)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003724, N'(44x31x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003725, N'(44x33x18.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003726, N'(46x33x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003727, N'(54x41x8)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003728, N'(53x7)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003729, N'(40x7)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003730, N'(42x35x11)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003731, N'(41x10)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003732, N'(34x10)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003733, N'(42x35x8)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003734, N'(41x7)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003735, N'(34x7)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003736, N'(37x35x8)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003737, N'(35x31x8)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003738, N'(30x7)x3 3X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003739, N'(26x17x9)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003740, N'(152x70)x5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003741, N'(35x28x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003742, N'(45x27.5x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003743, N'(33x30x20.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003744, N'(40.5x11.5x20)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003745, N'(30x4)x3 DXĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003746, N'(20x4)x3 DXĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003747, N'(40x27.5x21)x5 ĐL3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003748, N'(35x31x16.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003749, N'(60.5x27x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003750, N'(43.5x29x17)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003751, N'(24x21.5x5)', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003752, N'(39.5x27x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003753, N'(55x23.5x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003754, N'(41x26.5x16.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003756, N'(37x31x22)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003757, N'(43x31x26)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003758, N'(57x44x17.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003759, N'(40.5x11.5x21.5)x3 DXĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003760, N'(39x27.5x23)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003761, N'(55x26x4.7)x3 DXĐL', N'Hộp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003762, N'(41x27x19.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003763, N'(41.5x32.5x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003764, N'(41x29x13.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003765, N'(48x27x18.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003766, N'(142x103)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003767, N'(60.5x27x13)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003768, N'(35x31x10)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003769, N'(45x29x16)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003770, N'(42x27x10)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003771, N'(55x30x21)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003772, N'(55x30x17)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003773, N'(37x18x17)x3 DXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003774, N'(32.5x32.5x23)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003775, N'(35x26x12)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003776, N'(40.5x30.5x25)x5 2AB3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003777, N'(43x32x31.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003778, N'(39x27x23)x3 2ABX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003779, N'(57.5X36.5X15)X5 DUP3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003780, N'(57.5X36.5X15)X5 2ĐL3X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003781, N'(36x8.5x36)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003782, N'(25.5x25.5x12.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003783, N'(57x38x38)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003784, N'(54x28x42)x5 AB4X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003785, N'(175x30)x5 AB4X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003786, N'(56x37)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003787, N'(53x27)x3 AB2X', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003788, N'(47.5x26x24)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003789, N'(24.5x22.5)x3 DXĐL', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003790, N'(37x31x20)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003791, N'(43x32x16)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003792, N'(33x26x18)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003793, N'(54x28x20)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003794, N'(54x28x23)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003795, N'(43x28x25)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003796, N'(42x22x16)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003797, N'(143x120)x5 D3XAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003798, N'(169x120)x5 D3XAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003799, N'(56x28x9)x3 ABXAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003800, N'(56x28x8.5)x3 DXDL in Offset', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003801, N'(57x27x15)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003802, N'(47x28x19.7)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003803, N'(38x33.5x17)x5 D3XĐL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003804, N'(31x30x14)x5 D3XĐL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003805, N'(31x30.5x15)x5 D3XĐL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003806, N'(36x35x17)x5 D3XĐL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003807, N'(35x31x17)x5 D3XĐL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003808, N'(33x28x22)x5 2AB3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003809, N'(40x24x30)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003810, N'(38x38x18)x5 D3XĐL inoffset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003811, N'(15x15x30.5)x3 AB2X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003812, N'(46x27x15)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003813, N'(49x27x13.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003814, N'(45x32.5x27.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003815, N'(39x29x16)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003816, N'(49x26x14.5)x3 2ABX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003817, N'(54x53.5x34.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003818, N'(48x33.5x25)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003819, N'(34x28x22)x5 D3XAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003820, N'(40x27.5x26)x5 D3XAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003821, N'(55x26x9)x3 DXDL', N'bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003822, N'(55x30x20)x5 2AB3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003823, N'(44x28x10.5)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003824, N'(44x28x9.5)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003825, N'(40x29.5xx29)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003826, N'(38.5x30.5x20.8)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003827, N'(37.5x27.5x24)x5 D3XDL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003828, N'(33x23x21)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003829, N'(44x28x21)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003830, N'(44x28x26)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003831, N'(43x31x21)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003832, N'(52.5x28x19)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003833, N'(56.5x29.5x19.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003834, N'Tấm ngăn (4x30)x3 DXDL', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003835, N'(35x28x12)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003836, N'(40x37.5x20.5)x5 2DL3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003837, N'(44x24.5x12.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003838, N'(48x27.5x16)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003839, N'(43x31x20)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003840, N'(42x31x13)x5 D3XĐL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003841, N'(37.5x27.5x27)x5 D3XDL In offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003842, N'(43x32x15)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003843, N'(31x29x20.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003844, N'(60x29x16)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003845, N'(60x29x17)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003846, N'(35x31x16)x5 D3XĐL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003847, N'(48x32.5x27.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003848, N'(32x27.5x13)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003849, N'(33x23x9.5)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003850, N'(36x23x9.5)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003851, N'(52.5x31.5x20)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003852, N'(45x31x19)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003853, N'(36x27x15)x5 2Dup3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003854, N'(39.5x29.5x24)x5 2Dup3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003855, N'(48x33.5x30)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003856, N'(31x23.5x23.5)x3 2ABX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003857, N'(39x29x14.5)x5 Dup3XDL in Offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003858, N'(164x135)x5 D3XAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003859, N'(38x14x56)x3 2ABX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003860, N'(46.5x32x15.5)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003861, N'(46.5x32x15.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003862, N'(64x30x18.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003863, N'(65x30x17)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003864, N'(33x19x9.3)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003865, N'(31x31)x2', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003866, N'(20x28)x2', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003867, N'(27x4.3x55)x3 DXĐL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003868, N'(134x142)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003869, N'(132x131)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003870, N'(116x132)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003871, N'(118x125)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003872, N'(150x122)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003873, N'(120x122)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003874, N'(126x122)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003875, N'(112x119)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003876, N'(53x36x13)x5 2DL3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003877, N'nhãn PUCO', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003878, N'(30x30x10)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003879, N'(35x29x25)x3 AB2X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003880, N'(42x29x26)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003881, N'(46x31x13.5)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003882, N'(41x37x30)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003883, N'(63x27x20)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003884, N'(39x27x19.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003885, N'(37.5x35x19)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003886, N'(43x30x24)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003887, N'(31.5x29x19.5)x5 2ĐL3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003888, N'(36x36x19)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003889, N'(49.5x31x16.5)x5 ĐL3XAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003890, N'(47x37.5x18)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003891, N'(38.5x26x17)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003892, N'(32x24x17.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003893, N'(37.9x26.1x14.7)x5 D3XDL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003894, N'(34x22x18)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003895, N'(56.5x25.5x11)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003896, N'(56.5x45x36)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003897, N'(28x30)x3 DXDL', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003898, N'(40x27.5x26)x5 Dup3XDL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003899, N'(39.5x29.3x22.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003900, N'(112x122)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003901, N'(120x120)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003902, N'(134x122)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003903, N'(131x106)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003904, N'(126x125)x3 3x', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003905, N'(124x112)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003906, N'(143x114)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003907, N'(60.5x28x13)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003908, N'(58x28x10.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003909, N'(42.5x26x34)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003910, N'(34.5x26.5x10)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003911, N'(34x25x9)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003912, N'(47x37.5x20)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003913, N'(45x28x10)x3 DXAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003914, N'(47x34.5x19.8)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003915, N'(55x28x90x3 2ABX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003916, N'(39.5x29.3x22.5)x5 D3XDL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003917, N'(38x22x18)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003918, N'(37x21)x3 2DLX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003919, N'(31x27)x3 2DLX', NULL)
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003920, N'(37.3x22x19.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003921, N'(37.5x25x15.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003922, N'(44.5x30.5x29)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003923, N'(54x36x9.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003924, N'(30x40)x2 2X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003925, N'(38x28x16)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003926, N'(40x27.5x18)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003927, N'(46.5x33.5x26.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003928, N'(38x22x17)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003929, N'(31x28x22)x5 2AB3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003930, N'(47x29x23)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003931, N'(44x30x21)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003932, N'(33x19.5x10)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003933, N'(50x27x13.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003934, N'(37x27)x3 2DLX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003935, N'(34x27x32)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003936, N'(47x35x10.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003937, N'(30x26x19)x3 DXAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003938, N'(66.8x23x30.6)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003939, N'(41.5x37.5x17)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003940, N'(37.5x24.5x14.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003941, N'(39x27x26.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003942, N'(39x27x28.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003943, N'(47x27x16.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003944, N'(35x26x28)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003945, N'(39x27x14.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003946, N'(30x22x21)x3 DXDL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003947, N'(25x25x17)x5 D3XDL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003948, N'(25.5x23x19)x5 D3XDL in offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003949, N'(31x23x9.5)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003950, N'(44x31x16)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003951, N'(44x33x18.5)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003952, N'(44x33x21)x3DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003953, N'(22x5)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003954, N'(22x24)x2 2X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003955, N'(58.5x41x25)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003956, N'(42.5x26x14.3)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003957, N'(49.5x31x16.5)x5 ĐL3XAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003958, N'(31.5x13x46.5)x3 2ABX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003959, N'(53x48x19)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003960, N'(34x28x16)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003961, N'(46.5x30.5x24)x5 2AB3X', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003962, N'(41x26.5x34)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003963, N'(47.5x31.5x12)x5 Dup3XAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003964, N'(37x22x19)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003965, N'(44.5x24.5x10.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003966, N'(66.8x23x30.6)x5 D3XDL', N'Nắp')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003967, N'(38.5x26.1x14.7)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003968, N'(54x30x12)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003969, N'(123x105)x3 DXAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003970, N'(125x105)x3 DXAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003971, N'(131x105)x3 DXAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003972, N'(144x134)x5 D3XAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003973, N'(143x107)x3 DXAB', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003974, N'(41x26.5x31.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003975, N'(59x37.5x18.5)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003976, N'(66.8x23x30.6)x5 D3XDL', N'đáy')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003977, N'(34x22x8)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003978, N'(45x28x20)x3 DXAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003979, N'(41x31x21)x5 D3XAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003980, N'(31x23.5x12.5)x3 ĐLXAB', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003981, N'Thẻ (10x7.5) cosc 100', N'tờ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003982, N'(44x31x16)x3 2ĐLX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003983, N'(44x31x21)x3 DXDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003984, N'(33.5x33.5x21)x3 2ĐLX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003985, N'(42x33.5x16.5)x3 2ĐLX', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003986, N'(40x27.5x22)x5 D3XDL In offset', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003987, N'(23x5)x3 2ĐLX', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003988, N'(32x4)x3 2ĐLX', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003989, N'(122x113)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003990, N'(150x113)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003991, N'(116x134)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003992, N'(122x134)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003993, N'(106x134)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003994, N'(134x134)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003995, N'(128x143)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003996, N'(118x128)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003997, N'(122x126)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003998, N'(119x126)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100003999, N'(134x128)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004000, N'(106x131)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004001, N'(120x126)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004002, N'(58X38X15)X5 Dup3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004003, N'(37x19.5x20)x5 D3XDL', N'thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004004, N'(38x38)x3 3X', N'tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004005, N'(55x27.5x19)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004006, N'(39.5x29.5x24)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004007, N'(35x27x30)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004008, N'(43x30x25)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004009, N'(35x30.5x15)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004010, N'(181x105)x5 D3XAB', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004011, N'(42.5x32x13)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004012, N'(32x25x22.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004013, N'(35x25.5x21)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004014, N'(41x30.5x17.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004015, N'(38x28x14.5)x5 D3XĐL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004016, N'(15x4)x3 2ĐLX', N'Tấm')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004017, N'(34x25.5x18.5)x3 AB2X', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004018, N'Ngăn khe', N'Bộ')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004019, N'(34.3x26.3x17.9)x3 2ĐLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004020, N'(55x27x19.8)x3 ĐLXAB', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004021, N'(38x22x18.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004022, N'(31x22x15)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004023, N'(35.5x22x21.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004024, N'(34x29x23)x5 Dup3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004025, N'(48x27.5x15)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004026, N'(56x27x9.5)x3 2DLX', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004027, N'(47x35x11.5)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004028, N'(39x30x22)x5 D3XDL', N'Thùng')
GO
INSERT [dbo].[SANPHAM] ([mssp], [ten_sp], [don_vi_tinh]) VALUES (100004029, N'(48x31.5x19)x5 ĐL4X', N'Thùng')
GO
ALTER TABLE [dbo].[CTPhieu]  WITH CHECK ADD FOREIGN KEY([mssp])
REFERENCES [dbo].[SANPHAM] ([mssp])
GO
ALTER TABLE [dbo].[CTPhieu]  WITH CHECK ADD FOREIGN KEY([phieu_so])
REFERENCES [dbo].[GOCPHIEU] ([phieu_so])
GO
ALTER TABLE [dbo].[GOCPHIEU]  WITH CHECK ADD FOREIGN KEY([msch])
REFERENCES [dbo].[CUAHANG] ([msch])
GO
ALTER TABLE [dbo].[GOCPHIEU]  WITH CHECK ADD FOREIGN KEY([mskh])
REFERENCES [dbo].[KHACHHANG] ([mskh])
GO
ALTER TABLE [dbo].[PHIEUCHI]  WITH CHECK ADD FOREIGN KEY([mskh])
REFERENCES [dbo].[KHACHHANG] ([mskh])
GO
ALTER TABLE [dbo].[PHIEUTHU]  WITH CHECK ADD FOREIGN KEY([mskh])
REFERENCES [dbo].[KHACHHANG] ([mskh])
GO
USE [master]
GO
ALTER DATABASE [AIS_DB] SET  READ_WRITE 
GO
