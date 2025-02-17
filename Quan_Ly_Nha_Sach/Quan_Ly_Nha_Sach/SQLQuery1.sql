﻿SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoCongNo](
	[MaBaoCao] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
 CONSTRAINT [PK_BaoCaoCongNo] PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoTon]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoTon](
	[MaBaoCao] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
 CONSTRAINT [PK_BaoCaoTon] PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTBaoCaoCongNo]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTBaoCaoCongNo](
	[MaBaoCao] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[SoTienNoDau] [int] NOT NULL,
	[SoTienNoCuoi] [int] NOT NULL,
 CONSTRAINT [PK_CTBaoCaoCongNo] PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTBaoCaoTon]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTBaoCaoTon](
	[MaBaoCao] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuongTonDau] [int] NOT NULL,
	[SoLuongTonCuoi] [int] NOT NULL,
 CONSTRAINT [PK_CTBaoCaoTon] PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGiaBan] [int] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhap](
	[MaPN] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[DonGiaNhap] [int] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
 CONSTRAINT [PK_CTPHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTTacGia]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTacGia](
	[MaTG] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
 CONSTRAINT [PK_CTTacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTTheLoai]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTheLoai](
	[MaTL] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
 CONSTRAINT [PK_CTTheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TongTien] [int] NULL,
	[NgayBan] [datetime] NULL,
	[SoTienTra] [int] NULL,
	[MaKH] [int] NOT NULL,
	[MaND] [int] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NOT NULL,
	[SDT] [nvarchar](11) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[SoTienNo] [int] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[TenND] [nvarchar](100) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](20) NULL,
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](100) NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[MaND] [int] NOT NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThuTien]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThuTien](
	[MaPT] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayThuTien] [datetime] NULL,
	[SoTienThu] [int] NULL,
	[MaND] [int] NULL,
 CONSTRAINT [PK_PhieuThuTien] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinh](
	[MaQuyDinh] [int] IDENTITY(1,1) NOT NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[SoLuongSachTonToiThieuDeNhap] [int] NOT NULL,
	[SoLuongSachNhapToiThieu] [int] NOT NULL,
	[TienNoToiDa] [int] NOT NULL,
	[SoLuongSachTonToiThieuSauKhiBan] [int] NOT NULL,
	[DuocThuVuotSoTienKhachHangDangNo] [bit] NOT NULL,
 CONSTRAINT [PK_QuyDinh] PRIMARY KEY CLUSTERED 
(
	[MaQuyDinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[SoLuongTon] [int] NULL,
	[DonGia] [int] NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[AnhBia] [varchar](100) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/1/2020 9:25:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [int] IDENTITY(1,1) NOT NULL,
	[TenTL] [nvarchar](100) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (1, 2, 10, 240000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (2, 5, 2, 160000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (2, 40, 1, 92000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (3, 2, 1, 240000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (3, 6, 2, 50000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (4, 13, 1, 98000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (4, 48, 1, 90000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (5, 8, 1, 222000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (5, 15, 1, 270000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (5, 50, 1, 20000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (6, 10, 1, 212000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (7, 44, 1, 180000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (7, 45, 1, 180000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (7, 46, 1, 180000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (8, 38, 1, 106000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (9, 39, 1, 72000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (9, 54, 1, 240000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (10, 20, 1, 520000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (10, 57, 1, 108000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (11, 3, 1, 220000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (11, 7, 2, 248000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (12, 5, 2, 160000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (12, 12, 3, 96000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (13, 12, 1, 96000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (13, 37, 1, 96000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (14, 4, 1, 40000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (14, 6, 1, 50000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (14, 8, 1, 222000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (15, 3, 1, 220000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (15, 51, 1, 20000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (15, 53, 1, 20000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (16, 5, 2, 160000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (16, 8, 1, 222000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (17, 3, 1, 220000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (17, 48, 1, 90000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (17, 57, 1, 108000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (18, 10, 1, 212000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (18, 56, 1, 86000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (19, 13, 1, 98000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (20, 2, 1, 240000)
INSERT [dbo].[CTHD] ([MaHD], [MaSach], [SoLuong], [DonGiaBan]) VALUES (21, 15, 1, 270000)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 2, 240000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 3, 220000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 4, 40000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 5, 160000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 6, 50000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 7, 248000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 8, 222000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 10, 212000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 11, 204000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 12, 96000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 13, 98000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 14, 212000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 15, 270000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 16, 110000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 17, 420000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 18, 450000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 19, 210000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 20, 520000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 21, 245000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 23, 20000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 36, 366000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 37, 96000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 38, 72000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 39, 92000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 40, 82000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 41, 77000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 42, 77000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 43, 50000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 44, 180000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 45, 180000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 46, 180000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 47, 165000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 48, 90000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 50, 20000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 51, 20000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 52, 20000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 53, 20000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 54, 20000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 55, 20000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 56, 86000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 57, 108000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 2, 240000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 5, 160000, 150)
INSERT [dbo].[CTPhieuNhap] ([MaPN], [MaSach], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 6, 50000, 150)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (1, 38)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (1, 39)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (1, 58)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (2, 13)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (3, 14)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (4, 2)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (5, 17)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (5, 18)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (6, 7)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (6, 8)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (6, 10)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (6, 11)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (6, 54)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (7, 5)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (9, 4)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (10, 6)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (10, 48)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (11, 3)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (12, 20)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (13, 57)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (16, 12)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (16, 37)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (18, 16)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (19, 19)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (19, 55)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (20, 21)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (21, 23)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (21, 50)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (21, 51)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (21, 52)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (21, 53)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (22, 36)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (24, 15)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (25, 40)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (26, 41)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (27, 42)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (28, 44)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (28, 45)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (28, 46)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (28, 47)
INSERT [dbo].[CTTacGia] ([MaTG], [MaSach]) VALUES (29, 56)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (16, 37)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (21, 10)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (23, 18)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (23, 36)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (24, 36)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (25, 21)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (25, 36)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (27, 36)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (29, 38)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (29, 39)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (30, 21)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (30, 37)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (31, 40)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (32, 23)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (32, 44)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (33, 40)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (34, 44)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (35, 23)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (36, 37)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (38, 40)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (39, 21)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (39, 36)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (40, 36)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (42, 10)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (42, 37)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (43, 10)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (43, 44)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (44, 10)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (44, 44)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (45, 43)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (47, 41)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (47, 42)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (48, 10)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (48, 18)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (48, 21)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (48, 36)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (48, 37)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (48, 40)
INSERT [dbo].[CTTheLoai] ([MaTL], [MaSach]) VALUES (48, 44)
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (1, 3900000, CAST(N'2020-03-24T00:00:00.000' AS DateTime), 3900000, 13, 4)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (2, 412000, CAST(N'2020-04-10T00:00:00.000' AS DateTime), 412000, 13, 4)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (3, 340000, CAST(N'2020-03-28T00:00:00.000' AS DateTime), 338000, 16, 4)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (4, 188000, CAST(N'2020-04-14T00:00:00.000' AS DateTime), 180000, 16, 4)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (5, 512000, CAST(N'2020-04-24T00:00:00.000' AS DateTime), 512000, 14, 2)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (6, 212000, CAST(N'2020-05-19T00:00:00.000' AS DateTime), 200000, 14, 2)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (7, 540000, CAST(N'2020-04-01T00:00:00.000' AS DateTime), 540000, 17, 2)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (8, 106000, CAST(N'2020-05-07T00:00:00.000' AS DateTime), 106000, 14, 2)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (9, 312000, CAST(N'2020-04-08T00:00:00.000' AS DateTime), 310000, 24, 2)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (10, 628000, CAST(N'2020-04-05T00:00:00.000' AS DateTime), 628000, 13, 2)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (11, 1316000, CAST(N'2020-05-17T00:00:00.000' AS DateTime), 1316000, 18, 3)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (12, 608000, CAST(N'2020-05-27T00:00:00.000' AS DateTime), 600000, 23, 3)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (13, 192000, CAST(N'2020-04-02T00:00:00.000' AS DateTime), 192000, 15, 3)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (14, 612000, CAST(N'2020-05-28T00:00:00.000' AS DateTime), 600000, 20, 3)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (15, 280000, CAST(N'2020-05-14T00:00:00.000' AS DateTime), 270000, 21, 3)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (16, 542000, CAST(N'2020-03-01T00:00:00.000' AS DateTime), 542000, 13, 3)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (17, 418000, CAST(N'2020-03-07T00:00:00.000' AS DateTime), 418000, 21, 4)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (18, 298000, CAST(N'2020-05-16T00:00:00.000' AS DateTime), 298000, 14, 4)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (19, 98000, CAST(N'2020-05-14T00:00:00.000' AS DateTime), 90000, 15, 4)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (20, 240000, CAST(N'2020-03-13T00:00:00.000' AS DateTime), 240000, 15, 4)
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [NgayBan], [SoTienTra], [MaKH], [MaND]) VALUES (21, 270000, CAST(N'2020-04-14T00:00:00.000' AS DateTime), 260000, 21, 4)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (13, N'Khách Hàng Thông Thường', N'00000000000', N'<Địa chỉ>', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (14, N'Huỳnh Chí Phong', N'01203875665', N'792/4 đường Kha Vạn Cân, nước Việt Nam, tinh cầu Trái Đất, tinh hệ Thái Dương Hệ', N'hiroshi.kaze1994@gmail.com', 12000)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (15, N'Võ Hoài Nam', N'00000000001', N'Trên mặt đất, dưới bầu trời', NULL, 8000)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (16, N'Tô Chính Tín', N'0907993625 ', N'Ngoài hành tinh', NULL, 10000)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (17, N'Lãnh Thừa Phong', N'0123456789 ', N'Có hả?', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (18, N'Lý Thất Dạ', N'00000000002', N'Trong truyện Đế Bá của lão Yếm', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (19, N'Hàn Phong', N'00000000003', N'Nhà e ở đâu?', N'emlaai@meomeo.com', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (20, N'Dư Chính Phong', N'00000000004', N'Trong não chui ra, quê quán không rõ', NULL, 12000)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (21, N'Diệu Yến', N'00000000005', N'Ai đây o.O', NULL, 20000)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (22, N'Tiêu Viêm', N'00000000006', N'Đấu Phá Thương Khung/Thiên Tàm Thổ Đậu', NULL, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (23, N'Diệp Phàm', N'00000000007', N'Lý do em đến Trái Đất là gì?', NULL, 8000)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [SoTienNo]) VALUES (24, N'Hoa Thiên Cốt', N'00000000008', N'Ờ thì Hoa Thiên Cốt', N'tieucot@quaqua.com', 2000)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaND], [TenND], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (1, N'Nguyễn Phú Trung Anh', CAST(N'2000-07-11T00:00:00.000' AS DateTime), 1, N' 1017 D6 Khu B, HCM - VNU, Trái đất- Hành tinh số 7, Vũ trụ 7', N'0374666666', N'admin1', N'87d9bb400c0634691f0e3baaf1e2fd0d', N'admin')
INSERT [dbo].[NguoiDung] ([MaND], [TenND], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (2, N'Nguyễn Hữu Trí', CAST(N'2000-08-14T00:00:00.000' AS DateTime), 1, N' 1017 D6 Khu B, HCM - VNU, Trái đất- Hành tinh số 7, Vũ trụ 7', N'0312346574', N'user1', N'87d9bb400c0634691f0e3baaf1e2fd0d', N'user')
INSERT [dbo].[NguoiDung] ([MaND], [TenND], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (3, N'Trần Ngọc Trường', CAST(N'2000-09-27T00:00:00.000' AS DateTime), 1, N' 1017 D6 Khu B, HCM - VNU, Trái đất- Hành tinh số 7, Vũ trụ 7', N'0123456786', N'admin2', N'87d9bb400c0634691f0e3baaf1e2fd0d', N'user')
INSERT [dbo].[NguoiDung] ([MaND], [TenND], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (4, N'Phạm Công Hạnh', CAST(N'2000-09-27T00:00:00.000' AS DateTime), 1, N' 1017 D6 Khu B, HCM - VNU, Trái đất- Hành tinh số 7, Vũ trụ 7', N'0312458123', N'user2', N'87d9bb400c0634691f0e3baaf1e2fd0d', N'user')
INSERT [dbo].[NguoiDung] ([MaND], [TenND], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [TenDangNhap], [MatKhau], [ChucVu]) VALUES (5, N'Trần Ngọc Chiến', CAST(N'2001-09-27T00:00:00.000' AS DateTime), 1, N' 1017 D6 Khu B, HCM - VNU, Trái đất- Hành tinh số 7, Vũ trụ 7', N'0398564212', N'user3', N'87d9bb400c0634691f0e3baaf1e2fd0d', N'user')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaND]) VALUES (2, CAST(N'2020-06-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaND]) VALUES (3, CAST(N'2020-05-08T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaND]) VALUES (4, CAST(N'2020-04-06T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [MaND]) VALUES (5, CAST(N'2020-03-25T00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[PhieuThuTien] ON 

INSERT [dbo].[PhieuThuTien] ([MaPT], [MaKH], [NgayThuTien], [SoTienThu], [MaND]) VALUES (1, 18, CAST(N'2020-04-17T00:00:00.000' AS DateTime), 20000, 1)
SET IDENTITY_INSERT [dbo].[PhieuThuTien] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (2, 288, 240000, N'Hoa Thiên Cốt - Trọn bộ', N'HOA THIÊN CỐT” - TIỂU THUYẾT TIÊN HIỆP', N'HoaThienCot_TronBo.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (3, 147, 220000, N'Narnia - Trọn bộ', N'The first time Julia Beckett saw Greywethers she was only five, but she knew that it was her house. ', N'Narnia_TronBo.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (4, 149, 40000, N'Truyện Kiều', N'The Tale of Kieu is an epic poem in Vietnamese written by Nguyen Du (1766–1820), and is widely regarded as the most significant work of Vietnamese literature. ', N'TruyenKieu.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (5, 294, 160000, N'Another - Trọn bộ 2 tập', N'In the spring of 1998, Kouichi Sakakibara transfers to Yomiyama North Middle School. In class, he develops a sense of unease as he notices that the people around him act like they are walking on eggshells, and students and teachers alike seem frightened.', N'Another.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (6, 297, 50000, N'5 Centimet trên giây', N'Love can move at the speed of terminal velocity, but as award-winning director Makoto Shinkai reveals in his latest comic, it can only be shared and embraced by those who refuse to see it stop.', N'5cm_tren_giay.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (7, 148, 248000, N'Hỏa Ngục', N'Với cuốn tiểu thuyết trinh thám kì bí đầy  hấp dẫn này, Dan Brown trở lại với đúng  sở trường của mình và đã tạo nên một "Siêu phẩm được đặt cược nhiều" nhất từ trước đến nay.', N'HoaNguc.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (8, 147, 222000, N'Mật mã Da Vinci', N'Đây là một tuyệt phẩm thuần khiết', N'DaVinciCode.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (10, 148, 212000, N'Thiên thần và ác quỷ', N'Thiên thần và ác quỷ thu hút người đọc bởi sự uyên bác và tài dẫn truyện của Dan Brown, người đã thể hiện khả năng nắm bắt siêu hạng', N'ThienThanVaAcQuy.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (11, 150, 204000, N'Pháo đài số', NULL, N'PhaoDaiSo.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (12, 146, 96000, N'Sword Art Online: Aincrad - Tập 1', NULL, N'SAO_Aincrad1.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (13, 148, 98000, N'Ma sói', NULL, N'MaSoi.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (14, 150, 212000, N'Daren Shan - Trọn Bộ', NULL, N'DarrenShan.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (15, 148, 270000, N'Sherlock Holmes - Trọn bộ', NULL, N'SherlockHolmes_TronBo.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (16, 150, 110000, N'Bài học yêu của tiểu ma vương', NULL, N'BaiHocYeuCuaTieuMaVuong.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (17, 150, 420000, N'Đấu phá thương khung', NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (18, 150, 450000, N'Đại chúa tể', NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (19, 150, 210000, N'Đấu la đại lục', NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (20, 149, 520000, N'Đế bá', NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (21, 150, 245000, N'Vệ sĩ thần cấp của nữ tổng giám đốc', NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (23, 150, 20000, N'Doraemon: Chú khủng long của Nobita', NULL, N'Doraemon_ChuKhungLongCuaNobita.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (36, 150, 366000, N'Yêu cung', NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (37, 149, 96000, N'Sword Art Online: Aincrad - Tập 2', NULL, N'SAO_Aincrad2.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (38, 149, 106000, N'Bộ sách giáo khoa lớp 9', NULL, N'BoSachGiaoKhoaLop9.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (39, 149, 72000, N'Bộ vở bài tập lớp 9', NULL, N'BoVoBaiTapLop9.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (40, 149, 92000, N'Cô nàng quản trị', NULL, N'CoNangQuanTri.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (41, 150, 82000, N'Nấu ăn bằng cả trái tim', NULL, N'NauAnBangCaTraiTim.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (42, 150, 77000, N'Ốc đảo mùi hương', NULL, N'OcDaoMuiHuong.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (43, 150, 50000, N'Tài liệu luyện thi năng lực Nhật ngữ N5 (Kèm CD)', NULL, N'TaiLieuLuyenThiNangLucNhatNguN5_CD.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (44, 149, 180000, N'Chúa tể những chiếc nhẫn: Đoàn hộ nhẫn', NULL, N'CTNCN_DoanHoNhan.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (45, 149, 180000, N'Chúa tể những chiếc nhẫn: Hai tòa tháp', NULL, N'CTNCN_HaiToaThap.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (46, 149, 180000, N'Chúa tể những chiếc nhẫn: Nhà vua trở về', NULL, N'CTNCN_NhaVuaTroVe.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (47, 150, 165000, N'Anh Chàng Hobbit (Tái Bản 2014)', NULL, N'AnhChangHobbit.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (48, 148, 90000, N'Khu Vườn Ngôn Từ', NULL, N'KhuVuonNgonTu.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (50, 149, 20000, N'Doraemon: Nobita và chuyến phiêu lưu vào xứ quỷ', NULL, N'Doraemon_PhieuLuuVaoXuQuy.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (51, 149, 20000, N'Doraemon: Nobita ở xứ sở nghìn lẻ một đêm', NULL, N'Doraemon_NghinLeMotDem.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (52, 150, 20000, N'Doraemon: Nobita và người khổng lồ xanh', NULL, N'Doraemon_NguoiKhongLoXanh.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (53, 149, 20000, N'Doraemon: Nobita và cuộc đại thủy chiến ở xứ sở người cá', NULL, N'Doraemon_XuSoNguoiCa.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (54, 149, 240000, N'Điểm dối lừa', NULL, N'DeceptionPoint.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (55, 150, 225000, N'Đấu la đại lục 2', NULL, NULL)
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (56, 149, 86000, N'Yêu anh hơn cả tử thần', NULL, N'YeuAnhHonCaTuThan.jpg')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (57, 148, 108000, N'Ame và Yuki: Những đứa con của sói', NULL, N'Ame_Yuki_wolf_children.png')
INSERT [dbo].[Sach] ([MaSach], [SoLuongTon], [DonGia], [TenSach], [MoTa], [AnhBia]) VALUES (58, 0, 1000000, N'Sách dạy xếp hình', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[TacGia] ON 

INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (1, N'Nhiều tác giả')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (2, N'Fred Vargas')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (3, N'Darren Shan')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (4, N'Fresh Quả Quả')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (5, N'Thiên Tàm Thổ Đậu')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (6, N'Dan Brown')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (7, N'Yukito Ayatsuji')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (8, N'Nguyễn Nhật Ánh')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (9, N'Nguyễn Du')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (10, N'Shinkai Makoto')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (11, N'Clive Staples Lewis')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (12, N'Yếm Bút Tiêu Sinh')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (13, N'Mamoru Hasoda')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (14, N'Kobayashi Ritz')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (15, N'Yonezawa Honobu')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (16, N'Kawahara Reki')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (17, N'Tanigawa Nagaru')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (18, N'Minh Nguyệt Thính Phong')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (19, N'Đường Gia Tam Thiếu')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (20, N'Mai Can Thái Thiếu Bính')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (21, N'Fujiko F. Fujio')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (22, N'Minh Nguyệt')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (24, N'Conan Doyle')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (25, N'Iwasaki Natsumi')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (26, N'Christine Hà')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (27, N'Huỳnh Hải Yến')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (28, N'J.R.R Tolkien')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (29, N'Tào Đình')
SET IDENTITY_INSERT [dbo].[TacGia] OFF
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (10, N'10+')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (16, N'16+')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (18, N'18+')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (21, N'Trinh Thám')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (22, N'Kinh Dị')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (23, N'Huyền Huyễn')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (24, N'Dị Giới')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (25, N'Tu Tiên')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (26, N'Thơ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (27, N'Xuyên Không')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (28, N'Trùng Sinh')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (29, N'Sách Giáo Khoa')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (30, N'Lãng Mạng')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (31, N'Học Trò')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (32, N'Thiếu Nhi')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (33, N'Thể Thao')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (34, N'Hư Cấu')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (35, N'Truyện Tranh, Comic, Manga')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (36, N'Game')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (37, N'Ngôn Tình')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (38, N'Đời Thường')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (39, N'Giả Tưởng')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (40, N'Tiên Hiệp')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (41, N'Huyền Ảo')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (42, N'Khoa Học Giả Tưởng')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (43, N'Kỳ Ảo')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (44, N'Sử Thi')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (45, N'Sách Học Ngoại Ngữ')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (46, N'Từ Điển')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (47, N'Sách Thường Thức - Đời Sống')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (48, N'Sách Văn Học - Truyện Ngắn - Tiểu Thuyết')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (49, N'Ngược')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (50, N'Siêu năng lực')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
ALTER TABLE [dbo].[CTBaoCaoCongNo]  WITH CHECK ADD  CONSTRAINT [FK_CTBaoCaoCongNo_BaoCaoCongNo] FOREIGN KEY([MaBaoCao])
REFERENCES [dbo].[BaoCaoCongNo] ([MaBaoCao])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTBaoCaoCongNo] CHECK CONSTRAINT [FK_CTBaoCaoCongNo_BaoCaoCongNo]
GO
ALTER TABLE [dbo].[CTBaoCaoCongNo]  WITH CHECK ADD  CONSTRAINT [FK_CTBaoCaoCongNo_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTBaoCaoCongNo] CHECK CONSTRAINT [FK_CTBaoCaoCongNo_KhachHang]
GO
ALTER TABLE [dbo].[CTBaoCaoTon]  WITH CHECK ADD  CONSTRAINT [FK_CTBaoCaoTon_BaoCaoTon] FOREIGN KEY([MaBaoCao])
REFERENCES [dbo].[BaoCaoTon] ([MaBaoCao])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTBaoCaoTon] CHECK CONSTRAINT [FK_CTBaoCaoTon_BaoCaoTon]
GO
ALTER TABLE [dbo].[CTBaoCaoTon]  WITH CHECK ADD  CONSTRAINT [FK_CTBaoCaoTon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTBaoCaoTon] CHECK CONSTRAINT [FK_CTBaoCaoTon_Sach]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_Sach]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_Sach]
GO
ALTER TABLE [dbo].[CTTacGia]  WITH CHECK ADD  CONSTRAINT [FK_CTTacGia_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTTacGia] CHECK CONSTRAINT [FK_CTTacGia_Sach]
GO
ALTER TABLE [dbo].[CTTacGia]  WITH CHECK ADD  CONSTRAINT [FK_CTTacGia_TacGia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTTacGia] CHECK CONSTRAINT [FK_CTTacGia_TacGia]
GO
ALTER TABLE [dbo].[CTTheLoai]  WITH CHECK ADD  CONSTRAINT [FK_CTTheLoai_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTTheLoai] CHECK CONSTRAINT [FK_CTTheLoai_Sach]
GO
ALTER TABLE [dbo].[CTTheLoai]  WITH CHECK ADD  CONSTRAINT [FK_CTTheLoai_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTTheLoai] CHECK CONSTRAINT [FK_CTTheLoai_TheLoai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NguoiDung]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NguoiDung]
GO
ALTER TABLE [dbo].[PhieuThuTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuTien_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuThuTien] CHECK CONSTRAINT [FK_PhieuThuTien_KhachHang]
GO
ALTER TABLE [dbo].[PhieuThuTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuTien_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuThuTien] CHECK CONSTRAINT [FK_PhieuThuTien_NguoiDung]
GO
USE [master]
GO
ALTER DATABASE [QLNS] SET  READ_WRITE 
GO