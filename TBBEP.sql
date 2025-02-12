USE [TBBEP]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[IDDH] [int] NOT NULL,
	[IDSP] [int] NOT NULL,
	[SL] [int] NOT NULL,
	[Gia] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[IDDH] ASC,
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[IDKH] [int] NOT NULL,
	[IDSP] [int] NOT NULL,
	[NgayDG] [date] NULL,
	[NoiDung] [nvarchar](200) NOT NULL,
	[Diem] [int] NOT NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[IDKH] ASC,
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[IDDH] [int] IDENTITY(1,1) NOT NULL,
	[IDKH] [int] NOT NULL,
	[NgayGiaoDich] [date] NULL,
	[TongTien] [int] NULL,
	[HoTenNguoiNhan] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
	[PhuongThucTT] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDNV] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[IDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GioHang](
	[Username] [varchar](20) NOT NULL,
	[IDSP] [int] NOT NULL,
	[SL] [int] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Username] ASC,
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [varchar](11) NULL,
	[GioiTinh] [varchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[IDLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[IDLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NULL,
	[SDT] [varchar](50) NOT NULL,
	[GioiTinh] [varchar](50) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[Username] [varchar](20) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[Gia] [int] NOT NULL,
	[GiaKM] [int] NOT NULL,
	[IDLoai] [int] NOT NULL,
	[TieuDe] [nvarchar](300) NOT NULL,
	[MoTa] [ntext] NOT NULL,
	[SL] [int] NOT NULL,
	[URLHinh] [varchar](100) NOT NULL,
	[SoLuotXem] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDTK] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[IDQuyen] [int] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IDTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[namedb_view]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[namedb_view] AS
SELECT Name
FROM sys.databases


GO
INSERT [dbo].[ChiTietDH] ([IDDH], [IDSP], [SL], [Gia]) VALUES (1, 1, 1, 13790000)
INSERT [dbo].[ChiTietDH] ([IDDH], [IDSP], [SL], [Gia]) VALUES (1, 3, 2, 27700000)
INSERT [dbo].[DanhGia] ([IDKH], [IDSP], [NgayDG], [NoiDung], [Diem]) VALUES (3, 1, CAST(N'2021-05-09' AS Date), N'Sản phẩm quá tuyệt vời! yeheee', 10)
INSERT [dbo].[DanhGia] ([IDKH], [IDSP], [NgayDG], [NoiDung], [Diem]) VALUES (3, 3, CAST(N'2021-05-10' AS Date), N'quá tốt', 10)
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([IDDH], [IDKH], [NgayGiaoDich], [TongTien], [HoTenNguoiNhan], [DiaChi], [SDT], [GhiChu], [PhuongThucTT], [TrangThai], [IDNV]) VALUES (1, 3, CAST(N'2021-04-19' AS Date), 41490000, N'Võ Thị Thanh Phương', N'Ninh Thuận', N'0969588664', N'hihi2', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([IDKH], [HoTen], [SDT], [GioiTinh], [NgaySinh], [DiaChi], [Email], [Username]) VALUES (1, N'Trần Ngọc', N'0918585353', N'nu', CAST(N'1999-02-02' AS Date), N'Ninh Thuận', N'ttmngoc99@gmail.com', N'ngoc')
INSERT [dbo].[KhachHang] ([IDKH], [HoTen], [SDT], [GioiTinh], [NgaySinh], [DiaChi], [Email], [Username]) VALUES (3, N'Đỗ Giang', N'0193299343', N'nu', CAST(N'1999-01-01' AS Date), N'Ninh Thuận', N'giangdo@gmail.com', N'giang')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (1, N'BẾP TỪ_BẾP ĐIỆN')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (2, N'BẾP GAS')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (3, N'MÁY HÚT MÙI')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (4, N'MÁY RỬA BÁT')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (5, N'MÁY LỌC NƯỚC')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (6, N'LÒ NƯỚNG')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (7, N'LÒ VI SÓNG')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (8, N'NỒI ÁP SUẤT')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (9, N'NỒI CƠM ĐIỆN')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (10, N'TỦ LẠNH')
INSERT [dbo].[Loai] ([IDLoai], [TenLoai]) VALUES (11, N'BẾP')
SET IDENTITY_INSERT [dbo].[Loai] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([IDNV], [HoTen], [NgaySinh], [SDT], [GioiTinh], [DiaChi], [Username]) VALUES (1, N'Trần Thị Mỹ Ngọc', CAST(N'1999-02-02' AS Date), N'0824057402', N'nu', N'614 đường 79', N'ngocad')
INSERT [dbo].[NhanVien] ([IDNV], [HoTen], [NgaySinh], [SDT], [GioiTinh], [DiaChi], [Username]) VALUES (2, N'Đỗ Hoàng Linh Giang', CAST(N'1999-01-01' AS Date), N'0123456789', N'nu', N'97 Man thien', N'giangad')
INSERT [dbo].[NhanVien] ([IDNV], [HoTen], [NgaySinh], [SDT], [GioiTinh], [DiaChi], [Username]) VALUES (3, N'Huỳnh Văn Thiên', CAST(N'1999-01-01' AS Date), N'0123456654', N'nam', N'97 man thien', N'thienad')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'NhanVien')
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'KhachHang ')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (1, N'Bếp từ Bosch', 19625000, 19625000, 1, N'Bảo hành: 2 nămXuất xứ: Tây Ban NhaTình trạng: Còn hàngCông suất : 5400WMặt kính : Schott Ceran - Made in GermanyKích thước khoét đá: 560 x 490-500 mm', N'BẾP TỪ BOSCH PXY875DC1E SERIE 8 VÙNG NẤU LINH HOẠT VỚI CẢM BIẾN CHIÊN XÀO PERFECTFRY
+ Cảm biến PerfectFry: Với bếp từ Bosch PXY875DC1E có món chiên và món rán hoàn hảo nhất

+ DirectSelect Premium: Cảm ứng chạm trực tiếp cao cấp, đơn giản nhưng hiệu quả

+ Vùng nấu lớn linh hoạt: Có thể kết hợp các cung nấu nhỏ thanh vùng nấu lơn và cực kỳ kinh hoạt

+ PowerBoost: Nấu nhanh hơn với công suất tăng thêm 50%', 50, N'beptu1.png           ', 289)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (3, N'Bếp từ Bosch MS', 21000000, 13850000, 1, N'Bảo hành: 2 năm
Xuất xứ: Trung Quốc
Tình trạng: Còn hàng
Công suất : 3500W
Mặt kính : Schott Ceran - Made in Germany
Kích thước khoét đá : 700 x 400 mm', N'Bếp từ Bosch PPI82560MS là thiết kế mới nhất của dòng sản phẩm bếp từ Bosch có 2 vùng nấu tiện lợi sử dụng. Bếp được sản xuất tại nhà máy của Bosch đặt ở Trung Quốc và mẫu sản phẩm bếp từ 2 vùng nấu PPI82560MS là dành riêng cho đặc thù đun nấu của khu vực châu Á.

Mang trong mình thương hiệu cao cấp, kế thừa hoàn hảo các ưu điểm của các dòng bếp tiền nhiệm bếp từ Bosch PPI82560MS rất hoàn hảo về thiết kế và sửu dụng những linh kiện tốt nhất nhập khẩu từ châu Âu.

Mặt kính Schott Cerean siêu bền, chống chịu sốc nhiệt và sốc lực cực tốt. Mặt kính đen có độ bóng cao, dễ dàng phối đồ với các thiết bị nhà bếp khác, mặt kính này còn rất dễ vệ sinh khi bám bẩn, cho không gian bếp luôn sạch sẽ.', 45, N'beptu2.jpg', 100)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (4, N'Bếp điện Bosch 1E', 17400000, 13920000, 1, N'Bảo hành: 2 năm
Xuất xứ: Tây Ban Nha
Tình trạng: Còn hàng
Công suất: 5750W
Mặt kính: Schott Ceran-Made in Germany
Kích thước cắt đá:560 x490 mm', N' vùng nấu cảm ứng từ
Vùng nấu lớn bên trái: 1 x Ø 240 mm, 2.2 KW (có thể tăng đến 3.7KW)
Vùng nấu sau bên phải: 1 x Ø 145 mm, 1.4 KW (có thể tăng đến 2.2 KW)
Vùng nấu trước bên phải: 1 x Ø 180 mm, 1.8 KW (có thể tăng đến 3.1 KW)

Mặt gốm thủy tinh Schott, vác cạnh trước
Công nghệ điều khiển chọn trực tiếp với 17 mức gia nhiệt
Chức năng gia nhiệt nhanh, giữ ấm thực phẩm
Tự nhận diện nồi chảo
Chức năng kết hợp vùng nấu: cho phép sử dụng những nồi/ đĩa nướng hình chữ nhật hoặc kích thước lớn trên 2 vùng nấu có thể kết hợp với nhau
Hẹn giờ đến 99 phút', 54, N'bepdien1.jpg', 82)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (5, N'Bếp điện Bosch 7E', 17100000, 14890000, 1, N'Bảo hành: 2 năm
Xuất xứ: Tây Ban Nha
Tình trạng: Còn hàng
Công suất: 5700W
Mặt kính: Schott Ceran-Made in Germany
Kích thước cắt đá:560 x490 mm', N'Bếp từ Bosch PPI82560MS là thiết kế mới nhất của dòng sản phẩm bếp từ Bosch có 2 vùng nấu tiện lợi sử dụng. Bếp được sản xuất tại nhà máy của Bosch đặt ở Trung Quốc và mẫu sản phẩm bếp từ 2 vùng nấu PPI82560MS là dành riêng cho đặc thù đun nấu của khu vực châu Á.

Mang trong mình thương hiệu cao cấp, kế thừa hoàn hảo các ưu điểm của các dòng bếp tiền nhiệm bếp từ Bosch PPI82560MS rất hoàn hảo về thiết kế và sửu dụng những linh kiện tốt nhất nhập khẩu từ châu Âu.', 43, N'bepdien2.png', 26)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (6, N'Bếp Từ Đôi Bosch 1E', 21800000, 15680000, 1, N'Bảo hành: 2 năm
Xuất xứ: Tây Ban Nha
Tình trạng: Còn hàng
Công suất: 3700W
Mặt kính : Schott Ceran - Made in Germany
Kích thước khoét đá : 51 x 270 x 490-500 mm', N'Bếp Bosch PIB375FB1E thiết kế vùng nấu dạng dấu cộng với nhiều kích thước khác nhau cho phép chọn vùng nấu có kích thước thích hợp cho các nồi tương ứng, cùng hệ thống bảng điều khiển thiết kế đơn giản với điều khiển dang bo mạch số giúp thao tác điều khiển nhanh hơn dễ sử dụng hơn.

Bosch PIB375FB1E nhập khẩu từ Tây Ban Nha chính hãng, thiết kế dạng domino gồm 2 bếp, viền ngoài được bo viền nhôm cao cấp tránh va đập.

Bosch PIB375FB1E gồm 2 bếp nấu có chức năng Sprint tự động giảm thời gian làm nóng lên đến 50%

+ bếp nấu phía trước kích thước 21 cm công suất 2,2 KW

+ bếp nấu phía sau kích thước 14,5 cm công suất 1,4 KW', 32, N'beptu3.jpg', 42)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (7, N'Bếp gas Paloma PA', 2700000, 2150000, 2, N'Bảo hành: 2 năm
Xuất xứ: Việt Nam
Tình trạng: Còn hàng
Mặt bếp tráng men, màu đen
Kích thước: 690x384x136', N'BẾP GAS PALOMA PA-V72ER
Bếp 2 lò, đánh lửa magneto. 
Đầu đốt ECO BURNER - tiết kiệm gas và thời gian
Mặt bếp tráng men, màu đen
Kích thước: 690 (d) x 384 (r) x 136 (c) mm
Tổng lượng gas tiêu thụ: 0.43 kg/h
Đầu đốt trái: 0.25 kg/h;
Đầu đốt phải: 0.18 kg/h;
Trọng lượng: 5.4 kg;
Bảo hành : 24 tháng
Thương hiệu Nhật Bản - Lắp ráp tại Việt Nam', 31, N'bepgas1.png', 27)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (8, N'Bếp gas Rinnai FE', 5800000, 4490000, 2, N'Bảo hành: 2 nămXuất xứ: Nhật BảnTình trạng: Còn hàngBộ chia lửa bằng đồngMặt bếp thép phủ menKích thước : 590 x 420 x 185 mm', N'Bếp  gas dương Rinnai RJ-8600FE là sản phẩm bếp nhập khẩu nguyên chiếc từ Nhật Bản - chính hãng Rinnai. Để tìm hiểu kĩ hơn về chất lượng cũng như về kiểu dáng của sản phẩm này, Bếp Việt xin cung cấp tới các bạn những thông tin cụ thể nhất sau đây:

- Sản phẩm là bếp gas dương có màu đen sang trọng tinh tế, dễ dàng lau chùi các vết bám bẩn, mặt bếp tráng men chịu lực, chịu nhiệt tốt nhất.

- Bếp có kích thước tương đối lớn 600x480x185(mm), kích thước này tương đối lớn không phù hợp với những gia đình có không gian bếp nhỏ và hẹp.

- Tìm hiểu kĩ hơn về xuất xứ sản phẩm, bếp được nhập khẩu chính hãng nguyên chiếc từ Rinnai Japan. Trên bếp có tem và mã vạch của sản phẩm đồng thời sản phẩm có nguyên giấy bảo hành của công ty Rồng Việt - đơn vị duy nhất nhập khẩu và phân phối Rinnai tại Việt Nam.', 43, N'bepgas3.png', 1)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (9, N'Bếp gas Canzy MI', 3380000, 2650000, 2, N'Bảo hành: 3 năm
Xuất xứ: Chính hãng Canzy
Tình trạng: Còn hàng
Bộ chia lửa hợp kim
Hệ thống tự động ngắt gas an toàn
Kích thước khoét đá 540 x 340 mm', N'Sản phẩm có thiết kế 2 lò, 1 lò 2 vòng lửa và 1 lò 1 vòng lửa có thể nấu được nhiều nồi khác nhau. Bộ chia lửa bằng hợp kim với 2 phần có thể tách rời nhau thuận tiện cho việc vệ sinh bếp. Kiềng bếp bằng thép phủ sơn tĩnh điện, với thiết kế mặt kiềng có rãnh chống chơn trượt. Độ cao của kiềng thấp, ở phần giữa ngọn lửa nhằm tối ưu hóa lượng nhiệt năng tiêu thụ.', 21, N'bepgas4.jpg', 13)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (10, N'Bếp gas Eurosun 81', 4980000, 3984000, 2, N'Bảo hành: 2 năm
Xuất xứ: Chính hãng
Tình trạng: Còn hàng
Bộ chia lửa đồng
Hệ thống tự động ngắt gas an toàn
Kích thước khoét đá 650 x 350 mm', N'Tên sản phẩm Bếp ga âm kính 2 bếp nấu Teka

Lọai sản phẩm Bếp ga âm kính
Hãng sản xuất Teka
Mã sản phẩm GK LUX 73 2G AI AL
Mô tả sản phẩm - Bếp ga âm
- Kiềng bếp bằng gang

- Mặt kiếng chịu nhiệt, vát cạnh

- Hệ thống ngắt ga an toàn

- Đánh lửa bằng pin (1,5V)

- Kích thước: 730 x 480 mm

- Kích thước khoét đá : 660 x 430 mm

- 02 bếp 03 vòng lửa, công suất 4,3kW. ', 31, N'bepgas5.jpg', 25)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (11, N'Bếp gas Eurosun 78', 6250000, 5000000, 2, N'Bảo hành: 2 năm
Xuất xứ: Chính hãng
Tình trạng: Còn hàng
Bộ chia lửa đồng nguyên khối
Hệ thống tự động ngắt gas an toàn
Kích thước khoét đá 655 x 365 mm', N'Kích thước: 700 x 138 x 420 mm
Công suất nhiệt: 3,1 Kcal/giờ
Sản xuất theo công nghệ Panasonic  Nhật Bản
Mặt bếp bằng thép không rỉ (Inox)   
Bộ chia lửa phủ lớp gốm chịu nhiệt
Đánh lửa bằng magento
Van điều áp có thể hoạt động hơn 36.000 lần
Ngắt gas tự động an toàn
Hoa sen bằng gốm chịu nhiệt, bền và hiệu quả
Vòng lửa xoắn tập trung tạo hiệu quả cao nhất
Ngọn lửa mạnh và hội tụ
Tiết kiệm 25% Gas
Rút ngắn hơn 20% thời gian nấu', 56, N'bepgas6.jpg', 64)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (12, N'Máy rửa bát Bosch CG', 3560000, 3520000, 4, N'Bảo hành: 2 năm
Xuất xứ: Balan
Tình trạng: Còn hàng
Dung tích : 13 bộ
Độ ồn : 44 dB
Kích thước : 815 x 598 x 573 mm', N'Máy rửa bát Bosch CG tiện dụng cho mọi gia đình', 15, N'mayruabat.jpg', 66)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (13, N'Máy hút mùi Bosch 50', 16990000, 13990000, 3, N'Bảo hành: 2 năm
Xuất xứ: Đức
Tình trạng: Còn hàng
Công suất hút : 710 m3/h
Độ ồn : <=56 dB
Kích thước: 500 x 900 x 628 -1064 mm', N'Máy hút mùi Dann DA70EB mang đến không gian bếp sạch sẽ, thoáng mát cho gia đình bạn, thiết kế kiểu toa kính gắn tường hiện đại giúp tăng thêm tính thẩm mỹ nổi bật của ngôi nhà. Chất liệu Inox – kính sang trọng, không bám dấu vân tay khi sử dụng. Kính cong cường lực chịu nhiệt tốt. Máy có kích thước chiều ngang 700 mm phù hợp với nhiều không gian bếp.
Máy hút mùi Dann DA70EB chính hãng sử dụng động cơ turbin đôi siêu bền, mạnh mẽ, công suất hút lớn đến 1000m3/h. Máy hút mùi sử dụng đường ống thoát khí, khí thải được đẩy ra môi trường bên ngoài qua đường ống thoát lớn lên đến 150mm và có thể thu về tùy ý (lưu ý chỉ nên thu về nhỏ nhất 110mm để đảm bảo công suất hút và giảm độ ồn).', 13, N'hutmui2.png', 15)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (14, N'Máy hút mùi Bosch DF', 8520000, 6800000, 3, N'Bảo hành: 2 năm
Xuất xứ: ITALIA
Tình trạng: Còn hàng
Công suất hút : 700 m3/h
Độ ồn : <=50 dB
Kích thước: 900 mm', N'Máy có công suất 750m3/h do sử dụng động cơ tua bin giảm thiểu tối đa độ ồn. Khi hoạt động ở công suất lớn nhất, độ ồn của máy chỉ 48dB với độ ồn này thì hoàn toàn không gây ảnh hưởng đến sử dụng. Có thể thấy đặc điểm chung của các dòng máy hút mùi Dann là độ ồn thấp, làm hài lòng người sử dụng.



Lưới lọc mỡ Aluminum 5 lớp nằm trên 2 khay kéo của máy. Bộ lọc mỡ hợp kim nhôm, có thể tháo lắp, tiện lợi khi vệ sinh thường xuyên. Với những đặc điểm này, chiếc máy hút mùi DANN DSY 7002P sẽ có độ bền rất cao, phù hợp với nhu cầu thời thượng. Máy có 2 chế độ: khử mùi tuần hoàn bằng than hoạt tính và hút đẩy ra ngoài qua đường ống thoát. Nguồn điện 220V/50Hz phù hợp với điện lưới Việt Nam.', 42, N'hutmui5.png', 13)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (15, N'Máy hút mùi Bosch DIB', 45800000, 36640000, 3, N'Bảo hành: 2 năm
Xuất xứ: Đức
Tình trạng: Còn hàng
Công suất hút 1000 m3/h
Độ ồn: 46 dB
Kích thước: 900R x 600S x 744 - 1044C mm', N'Hút mùi Dann DS700 Titanium là một phiên bản cao cấp của dòng hút mùi Dann với thiết kế đẹp mắt và điều khiển cảm ứng hiện đại. Được sản xuất trên dây truyền công nghệ cao với công suất hút mạnh mẽ và độ ồn cực thấp mẫu sản phẩm sẽ làm hài lòng những khách hàng khó tính nhất. Mẫu DS700 Titanium có kích thước chiều ngang 700 mm phù hợp với nhiều không gian bếp Việt.', 31, N'hutmui6.png', 34)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (16, N'Máy hút mùi Bosch 5BL ', 15800000, 12640000, 3, N'Bảo hành: 2 năm
Xuất xứ: Đức
Tình trạng: Còn hàng
Công suất : 640 m3/h
Độ ồn: 69dB
Kích thước: 730R x 380S x 255C mm', N'Máy hút mùi Hafele HH-TG90E (539.81.075) là giải pháp đơn giản để bạn loại bỏ những mùi hôi khó chịu trong nhà bếp một cách nhanh chóng. Sản phẩm còn chinh phục khách hàng bằng thiết kế đẹp mắt và sang trong tôn lên vẻ đẹp riêng cho căn bếp của gia đình bạn.

', 54, N'hutmui7.png', 45)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (17, N'Máy hút mùi Bosch M60', 29990000, 20600000, 3, N'Bảo hành: 2 năm
Xuất xứ: ITALIA
Tình trạng: Còn hàng
Công suất hút : 700 m3/h
Độ ồn : <=50 dB
Kích thước: 900 mm', N'afele là thương hiệu "đẳng cấp" trên thế giới với hàng loạt mẫu mã các sản phẩm chuyên về thiết bị bếp như lò nướng, bếp, hút mùi,...Hiện nay, nhiều gia đình yêu thích máy hút mùi kiểu dáng âm tủ như Hafele HH-TI90D. Nhập khẩu nguyên chiếc từ EU, máy sẽ hút nhanh và lọc sạch mùi ra khỏi căn bếp của bạn.', 56, N'hutmui8.png', 57)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (18, N'Máy rửa bát Bosch SM', 23750000, 16500000, 4, N'Bảo hành: 2 năm
Xuất xứ: Balan
Tình trạng: Còn hàng
Dung tích : 13 bộ
Độ ồn : 40-45 dB
Kích thước : 845 x 595 x 595 mm', N'Máy rửa bát Hafele HDW-F60E gồm 8 chương trình rửa và 6 cấp độ nhiệt
Auto (Tự động).
Intensive (Rửa sâu).
Normal (Thường).
ECO (Tiết kiệm).
Đồ thủy tinh (Glass Care).
Wash 1h30′ 65°C.
Rapid (Nhanh).
Soak (Ngâm).
Máy rửa chén bát Hafele HDW-F60E thêm 4 chức năng đặc biệt
Half Load (nửa tải).
Power wash (Rửa mạnh mẽ).
Extra drying (Sấy khô).
Express (Rửa nhanh).
Chức năng an toàn của máy rửa bát Hafele HDW-F60E
Đèn báo muối và chất trợ xả.
Khóa trẻ em.', 52, N'mayruabat1.jpg', 13)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (19, N'Máy rửa bát Bosch EA', 23000000, 18400000, 4, N'Bảo hành: 2 năm
Xuất xứ: Thổ Nhĩ Kỳ
Tình trạng: Còn hàng
Dung tích : 12 bộ
Độ ồn : 52 dB
Kích thước : 845 x 600 x 600 mm', N'Dung tích: 14 bộ chén đĩa. 3 tầng rửa.

Điều khiển bằng cảm ứng điện tử.

6 chương trình rửa, 6 mức nhiệt độ rửa.

Màn hình full chức năng.

hẹn giờ 24 tiếng.

Chương trình rửa nhanh

Chương trình rửa ECO

Chương trình 3 trong 1 giúp tiết kiệm muối và chất trợ xả.

Chương trình rửa nửa tải.

Hệ thống tự ngắt nguồn nước khi có rò rỉ.

Hệ thống chống tràn tự động.

Khóa trẻ con.

Mức tiêu thụ điện A++: 1,05kW/ chu trình rửa.

Mức tiêu thụ nước: 11L/ chu trình rửa.

Độ ồn siêu êm: 49 dB.', 21, N'mayruabat2.jpg', 13)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (20, N'Máy rửa bát Bosch 02E', 27000000, 22990000, 4, N'Bảo hành: 2 năm
Xuất xứ: Đức
Tình trạng: Còn hàng
Dung tích : 13 bộ
Độ ồn : 40-45 dB
Kích thước : 845 x 595 x 595 mm', N'Model Bosch SMS25KI00E đến từ thương hiệu Bosch, thương hiệu hàng đầu về thiết bị nhà bếp tại Đức đã có mặt tại thị trường Việt Nam và đang dần chiếm được cảm tình từ người tiêu dùng trong nước. Với thiết kế kiểu dáng sang trọng hiện đại, vỏ inox chống gỉ sét, kích thước 845 × 600 × 600 mm phù hợp với thiết kế của hầu hết các căn bếp. Cơ cấu vận hành mạnh mẽ nhưng lại vô cùng yên tĩnh với độ ồn 46dB (tương đương môi trường nghỉ ngơi).', 56, N'mayruabat3.jpg', 13)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (21, N'Máy rửa rát Bosch 1E', 35000000, 22500000, 4, N'Bảo hành: 2 năm
Xuất xứ: Balan
Tình trạng: Còn hàng
Dung tích : 13 bộ
Độ ồn : 44 dB
Kích thước : 815 x 598 x 573 mm', N'ƯU ĐIỂM CỦA MÁY RỬA BÁT ĐỂ BÀN HAFELE
=> Máy rửa chén để bàn Hafele Dung tích nhỏ khiến máy rửa chén để bàn tiêu tốn ít nước hơn cho mỗi chu trình rửa.
=> Máy rửa chén để bàn Hafele 538.21.190 chỉ tiêu tốn khoảng 6 đến 9 lít nước cho 1 chu trình rửa thông thường – ít hơn nhiều so với việc rửa bát bằng tay.
=> Đặc biệt sử dụng Máy rửa bát để bàn Hafele giúp bạn tiết kiệm 30 phút mỗi ngày.
=> Máy rửa chén Hafele  538.21.190 là sự lựa chọn tuyệt vời cho gia đình nhỏ', 32, N'mayruabat4.jpg', 19)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (22, N'Máy lọc nước Dann', 8990000, 7192000, 5, N'Bảo hành: 2 năm
Xuất xứ: LK nhập khẩu Taiwan
Tình trạng: Còn hàng
9 lõi lọc
Màng lọc RO DOW - Made in USA
Công suất: 10-15l/h', N'  Máy lọc nước Dann DR-909B sử dụng công nghệ lọc RO có khả năng loại bỏ 99,99% Amip, Asen, các ion kim loại nặng, virus, vi khuẩn và các tạp chất khác cho nguồn nước hoàn toàn tinh khiết. Máy lọc nước Dann sử dụng màng lọc RO Filmtec, nhập khẩu trực tiếp từ tập đoàn DOW-USA được NSF chứng nhận và khuyên dùng.

 Ngoài ra máy lọc nước Dann còn có tới 9 lõi lọc lọc, ngoài lọc nước tinh khiết còn bổ xung các khoáng chất tốt cho cơ thể.

', 21, N'maylocnuoc1.jpg', 93)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (23, N'LÒ NƯỚNG BOSCH HB', 15500000, 13500000, 6, N'Bảo hành: 2 nămXuất xứ: Thổ Nhĩ KỳTình trạng: Còn hàngDung tích: 66 lítTổng công suất: 2950WKích thước: 595C x 594R x 548S mm', N'Cata là thương hiệu nổi tiếng với lò nướng dòng âm tủ. Thiết kế gọn gàng, đẹp mắt cùng những tính năng thông minh, lò nướng Cata ME 605 IX là một phần không thể thiếu trong căn bếp của bạn.

Cata ME 605 IX đa dạng với 5 chương trình nướng rất hiện đại, tiện lợi: nướng nhỏ lửa tiết kiệm, nướng siêu nhanh với quạt gió, nướng nhanh nhỏ lửa, nướng truyền thống với quạt gió… Nhờ đó thức ăn chín đều, thơm ngon và giữ được hương vị.

Dung tích 57L, công suất cao 2400W việc nấu nướng chưa bao giờ dễ dàng đến thế. Công suất cao như vậy nhưng với thiết kế vỏ thép cao cấp cùng kính chịu nhiệt tốt nên không bị thoát nhiệt ra bên ngoài.

Những gia đình có con nhỏ luôn lo sợ mỗi khi các bé đến gần các thiết bị điện gia dụng. Những với Cata ME 605 IX, cửa kính 2 lớp cách nhiệt, mát lạnh ngay cả khi đang hoạt động sẽ khiến các bậc phụ huynh an tâm hơn.', 12, N'lonuong1.jpg', 9)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (24, N'Lò vi sóng Bosch BF', 12000000, 10050000, 7, N'Bảo hành: 2 năm
Xuất xứ: Chính hãng
Tình trạng: Còn hàng
Dung tích : 20L
Công suất : 1270w
Kích thước lò: 382 x 594 x 317 mm', N'Một chiếc lò vi sóng tích hợp tính năng hiện đại, an toàn và thẩm mỹ cao, lò vi sóng Cata FS 20 BK không chỉ đáp ứng những yêu cầu trên mà còn khiến căn bếp của bạn sang trọng hơn bao giờ hết.

Phủ đen sang trọng làm tôn lên vẻ hoãn mỹ của căn bếp. Lò thiết kế vuông vắn, có thể đặt bất cứ chỗ nào trong nhà. Thiết kế tay cầm cho người dùng dễ đóng mở đưa thức ăn vào lò và giảm độ nóng do lò tỏa ra khi cầm, nắm.

Màn hình LCD hiển thị rõ ràng, sắc nét các hoạt động của lò, cho người dễ nắm bắt và theo dõi. Núm điều khiển tròn, bền hơn, ít thao tác nên dễ sử dụng hơn, ít tùy chọn hơn, nó phù hợp với đa số người dùng. Đặc biệt, núm điều khiển khởi động nhanh 30s.', 14, N'lovisong3.png', 56)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (25, N'Nồi áp suất Steba DD1', 5180000, 4590000, 8, N'Bảo hành: 2 năm
Xuất xứ: Đức
Tình trạng: Còn hàng
Dung tích: 5 lít
Chế độ nấu: 9 chế độ
Công suất :900W', N'Công suất : 900 W
Dung tích : 5 Lít
Nồi áp suất bằng điện
Có hệ thống an toàn tiêu chuẩn Châu Âu
Bảo hành: 24 tháng', 2, N'noiapsuat4.jpg', 16)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (27, N'Máy rửa bát FJVN08-S05F', 13000000, 8490000, 4, N'Bảo hành: 2 năm
Xuất xứ: Thổ Nhĩ Kỳ
Tình trạng: Còn hàng
Dung tích : 12 bộ
Độ ồn : 52 dB
Kích thước : 845 x 600 x 600 mm', N'Máy rửa bát  Fujishan FJVN08-S05F', 86, N'mayruabat5.jpg', 65)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (28, N'Máy rửa bát Teka LP9 850', 22649000, 16985000, 4, N'Bảo hành: 2 năm
Xuất xứ: Thổ Nhĩ Kỳ
Tình trạng: Còn hàng
Dung tích : 12 bộ
Độ ồn : 52 dB
Kích thước : 845 x 600 x 600 mm', N'
Máy Rửa Chén Teka LP9 850 - 14 Bộ
Máy Rửa Chén Teka LP9 850 - 14 Bộ
Máy Rửa Chén Teka LP9 850 - 14 Bộ
Máy Rửa Chén Teka LP9 850 - 14 Bộ
Máy Rửa Chén Teka LP9 850 - 14 Bộ
Máy Rửa Chén Teka LP9 850', 65, N'mayruabat6.jpg', 55)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (29, N'Lò nướng Nagakawa', 12000000, 11500000, 6, N'Bảo hành: 2 nămXuất xứ: Thổ Nhĩ KỳTình trạng: Còn hàngDung tích: 66 lítTổng công suất: 2950WKích thước: 595C x 594R x 548S mm', N'Lò Nướng Nagakawa với công nghệ nướng Halogen cao cấp tiết kiệm điện năng, điều khiển bằng núm xoay dễ dàng, tiện lợi', 45, N'lonuong2.jpg', 10)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (30, N'
Lò nướng điện MK-179 ', 1300000, 1250000, 6, N'Bảo hành: 2 năm
Xuất xứ: Đức
Tình trạng: Còn hàng
Dung tích : 13 bộ
Độ ồn : 40-45 dB
Kích thước : 845 x 595 x 595 mm', N' Lò nướng điện Mishio MK-179 có xiên nướng rất hữu ích, chúng ta có thể nướng nguyên một con gà hoặc con vịt và cả các mảng thịt lớn. Đồ ăn chín vàng thơm ngon giòn tan trong miệng thì thật là tuyệt vời.', 10, N'lonuong3.jpg', 56)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (34, N'moi', 1111111, 1111111, 1, N'tiéude moi', N'csc', 2, N'locnuoc1.png', 17)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (35, N'Bếp gas KA-2122GBK', 4500000, 4400000, 2, N'Bảo hành: 2 nămXuất xứ: Đức
Tình trạng: Còn hàng
Công suất hút : 710 m3/h
Độ ồn : <=56 dB
Kích thước: 500 x 900 x 628 -1064 mm', N'Bếp gas Kiwa KA-2122GBK màu đen trang bị đầu đốt tiết kiệm gas, giúp cho người dùng ít tốn chi phí khi sử dụng sản phẩm này.
', 20, N'bepgas2.png', 10)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (36, N'Máy lọc nước Pureit Classic', 1590000, 1560000, 5, N'Bảo hành: 2 năm
Xuất xứ: Tây Ban Nha
Tình trạng: Còn hàng
Công suất: 3700W
Mặt kính : Schott Ceran - Made in Germany
Kích thước khoét đá : 51 x 270 x 490-500 mm', N'Máy lọc nước Pureit Classic được tích hợp các tính năng thông minh và chức năng tích hợp nóng lạnh đáp ứng nhu cầu đa dạng của mọi gia đình.', 15, N'maylocnuoc3.jpg', 28)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (37, N'Lò vi sóng Panasonic', 5650000, 5560000, 7, N'Bảo hành: 2 năm
Xuất xứ: Thổ Nhĩ Kỳ
Tình trạng: Còn hàng
Dung tích : 12 bộ
Độ ồn : 52 dB
Kích thước : 845 x 600 x 600 mm', N'Lò vi sóng Panasonic với dung tích 27L đáp ứng nhu cầu sử dụng', 20, N'lovisong2.png', 107)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (38, N'Lò vi sóng Sharp', 2300000, 1690000, 7, N'Bảo hành: 3 năm
Xuất xứ: Chính hãng Canzy
Tình trạng: Còn hàng
Bộ chia lửa hợp kim
Hệ thống tự động ngắt gas an toàn
Kích thước khoét đá 540 x 340 mm', N'Lò vi sóng Sharp với ông suất vi sóng 800W, nướng 1000W, nấu nướng nhanh', 5, N'lovisong4.png', 56)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (39, N'Nồi cơm điện NK-1456', 562000, 525000, 9, N'Bảo hành: 2 nămXuất xứ: Đức
Tình trạng: Còn hàng
Công suất : 640 m3/h
Độ ồn: 69dB
Kích thước: 730R x 380S x 255C mm', N'Nồi cơm nắp gài Happycook HC-60 với kiểu dáng tròn trĩnh, xinh xắn cùng bảng điều khiển với nút gạt nhỏ nhắn và 2 đèn báo chế độ dễ thương mang lại một thiết kế trẻ trung, đáng yêu.

Ngoài tác dụng nấu cơm, nồi cơm điện còn có thể dùng nấu xôi, làm bánh, nấu cháo... giúp bạn làm phong phú bữa cơm cho gia đình.

Thiết kế nhỏ gọn và xinh xắn với hai màu trắng, xanh trẻ trung

Dung tích 0.6 lít, nồi cơm điện mini nấu đủ cơm cho từ 1 - 2 người ăn
noi-com-dien-nap-gai-happycook-hc-60-1a

Lòng nồi hợp kim nhôm phủ chống dính 2 lớp, dày 0.9 mm giúp cơm chín đều, mềm ngon
Nhờ khả năng truyền nhiệt tốt của chất liệu hợp kim nhôm. Hơn nữa, lớp men chống dính cao cấp được phủ bên trong ngăn không cho cơm dính lâu vào lòng nồi giúp việc vệ sinh sản phẩm dễ dàng, tiện lợi.

Xem thêm: Lợi ích của lòng nồi hợp kim nhôm phủ men chống dính.

Lòng nồi hợp kim nhôm chống dính

Công nghệ nấu 3D làm tăng hiệu quả gia nhiệt cho cơm chín nhanh nhờ nhiệt phát ra từ đáy, thân và nắp nồi
Nấu cơm nhanh chóng chỉ trong vòng 18 - 25 phút, bên cạnh đó nồi giữ nhiệt tối đa 720 phút cho cơm không bị nhanh thiu.

Nấu cơm chín nhanh - Nồi cơm điện tử Toshiba 1.8 lít RC-18DR1NV

Van thoát hơi thông minh giúp giữ lại vitamin bổ ích trong gạo
Kiểm soát quá trình thoát hơi nước tốt, chống tràn hiệu quả, có thể tháo rời, vệ sinh đơn giản.

Van thoát hơi thông minh có thể tháo lắp dễ dàng

Đi kèm nồi có xửng hấp giúp hấp thức ăn dễ dàng hơn
Xửng hấp kèm theo giúp bữa cơm gia đình bạn trở nên đa dạng và đặc sắc hơn

Nồi cơm nắp gài Happycook HC-60 được nhập khẩu trực tiếp từ Indonesia giúp công việc nội trợ của bạn trở nên đơn giản, dễ dàng. Nồi cơm điện nhỏ này đáp ứng nhu cầu sử dụng hằng ngày của những gia đình trẻ, người độc thân và đặc biệt là các bạn sinh viên đi học xa nhà.

Xem thêm
Đánh giá Nồi cơm điện Happycook 0.6 lít HC-60 Xanh

4.6

    
71 đánh giá
5 
73%
4 
11%
3 
7%
2 
0%

1 
8%
   
Nguyen Cam Tu  Đã mua tại DMX
    
Mới mua về dc 3 ngày. Xài lần đầu cơm sống. Lần 2 thì cơm chưa cạn nước nắp nồi cứ bật tung lên. Chả đóng lại được.
Rõ chán

 Hữu ích  1 thảo luận Đã dùng khoảng 1 ngày 
Phạm Thanh Tòng  Đã mua tại DMX
    
Nồi này cơm nấu ổn. Nhưng mình sử dụng 1 năm thì có hiện tượng bị cháy xém nắp, mỗi lần nấu cơm thì khi nồi chuyển qua chế độ hâm hơn 15p mà ko rút phích điện là sẽ có mùi khét nhựa cháy. Lúc nấu cơm luôn phải để ý kỹ, sợ cháy bất cứ lúc nào. Ko rõ Đmx bảo hành sau 1 năm ko?

 Chăm sóc khách hàng đã liên hệ hỗ trợ ngày 08/11/2020
 Hữu ích  Thảo luận Đã dùng khoảng 1 năm 
Xem tất cả đánh giá
Viết đánh giá
Giá tại Hồ Chí Minh
550.000₫
CÒN HÀNG
Chọn địa chỉ nhận hàng để biết thời gian giao.

Xem siêu thị có hàng
MUA NGAY
Gọi đặt mua 1800.1061 (7:30 - 22:00)

1 ưu đãi thêm

Tặng cho khách lần đầu mua hàng online tại web BachhoaXANH.com
Mã giảm 20% tối đa 100.000đ

5 lần FREEship

Áp dụng tại Tp.HCM và 1 số khu vực, 1 SĐT nhận 1 lần (Xem chi tiết)
Thông số kỹ thuật Nồi cơm điện Happycook 0.6 lít HC-60 Xanh

Loại nồi:

Nồi nắp gài
Dung tích:

0.6 lít1 - 2 người
Công suất:

350 W
Lòng nồi dày:

0.9 mmHợp kim nhôm phủ chống dính
Chức năng nấu:

2 chế độ nấu
Điều khiển:

Nút gạt
Tiện ích:

Có xửng hấp
Nơi sản xuất:

Indonesia
Hãng

HappyCook. Xem thông tin hãng
 Hướng Dẫn Sử Dụng Tiếng Việt [PDF, 1.7MB]
Xem chi tiết thông số
', 85, N'noicomdien2.png', 46)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (40, N'Máy lọc nước KAROFI', 5490000, 5250000, 5, N'Bảo hành: 2 năm
Xuất xứ: Chính hãng
Tình trạng: Còn hàng
Bộ chia lửa đồng
Hệ thống tự động ngắt gas an toàn
Kích thước khoét đá 650 x 350 mm', N'Máy lọc nước Karofi N-e239 sở hữu 9 lõi lọc tinh giúp cung cấp nguồn nước sạch đạt chuẩn lên đến 99.9%. Sản phẩm sử dụng màng RO 100 GPD nhập khẩu hoàn toàn từ Mỹ giúp thu hồi hơn 60% tỷ lệ nước lọc tinh khiết. Đồng thời, giúp bạn tiết kiệm được tối đa chi phí bỏ ra khi sử dụng.', 25, N'maylocnuoc4.png', 24)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (41, N'Lò vi sóng Electrolux ', 2190000, 2040000, 7, N'Bảo hành: 2 năm
Xuất xứ: Thổ Nhĩ Kỳ
Tình trạng: Còn hàng
Dung tích : 12 bộ
Độ ồn : 52 dB
Kích thước : 845 x 600 x 600 mm', N'Lò vi sóng Electrolux EMM23K18GW 23 lít giúp nấu nướng nhanh chóng, tiết kiệm điện, đáp ứng đúng nhu cầu gia đình 2-4 người', 6, N'lovisong1.png', 64)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (42, N'Nồi cơm điện NAG0102', 2250000, 1250000, 9, N'Bảo hành: 2 nămXuất xứ: Balan
Tình trạng: Còn hàng
Công suất : 640 m3/h
Độ ồn: 69dB
Kích thước: 730R x 380S x 255C mm', N'
Nồi cơm điện cao tần Nagakawa NAG0102', 22, N'noicomdien1.jpg', 162)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (43, N'Nồi cơm điện JBX-B18W', 3250000, 2540000, 9, N'Bảo hành: 2 năm
Xuất xứ: LK nhập khẩu Taiwan
Tình trạng: Còn hàng
9 lõi lọc
Màng lọc RO DOW - Made in USA
Công suất: 10-15l/h', N'Nồi được trang bị công nghệ xử lý bằng vi mạch điện tử tự động sẽ thực hiện ngâm gạo trong nước nóng trước khi nấu cho hạt cơm ngon hơn', 56, N'noicomdien3.jpg', 15)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (44, N'Nồi áp suất SHD1756', 1580000, 1240000, 8, N'Bảo hành: 2 năm
Xuất xứ: Thổ Nhĩ Kỳ
Tình trạng: Còn hàng
Dung tích: 5 lít
Chế độ nấu: 9 chế độ
Công suất :900W', N'Nồi áp suất điện Sunhouse SHD1756 6 lít thông dụng, thay thế cho các loại nồi thông thường. Tiết kiệm diện năng, giá thành hợp lí.', 15, N'noiapsuat2.jpg', 24)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (45, N'Nồi áp suất SHD1653', 1250000, 960000, 8, N'Bảo hành: 2 năm
Xuất xứ: Thổ Nhĩ Kỳ
Tình trạng: Còn hàng
Dung tích: 5 lít
Chế độ nấu: 9 chế độ
Công suất :900W', N'Nồi áp suất điện Sunhouse SHD1653 có dung tích 5L đa chức năng nấu với nhiều chế độ được cài đăt sẵn như: nấu cơm, hầm xương, nấu cháo, súp,… có 2 van xả thông minh và tự động, an toàn và tiện dụng, nồi có cấu tạo lòng nồi được làm từ hợp kim nhôm phủ chống dính Whitford, vỏ nồi được làm từ thép không gỉ phủ sơn tĩnh điện.', 50, N'noiapsuat3.jpg', 26)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (46, N'Tủ lạnh MR-FC29EP-SSL-V', 8990000, 7090000, 10, N'Bảo hành: 2 năm
Xuất xứ: Thổ Nhĩ Kỳ
Tình trạng: Còn hàng
Dung tích : 12 bộ
Độ ồn : 52 dB
Kích thước : 845 x 600 x 600 mm', N'Tủ lạnh Mitsubishi MR-FC29EP-SSL-V Inverter với công nghệ Neuro Inverter ghi nhớ thói quen sinh hoạt của người dùng và kiểm soát hơi lạnh từng ngăn, đảm bảo tiết kiệm điện năng hiệu quả

', 20, N'tulanh1.jpg', 78)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (47, N'Tủ lạnh Aqua AQR-T238FA', 5990000, 5190000, 10, N'Bảo hành: 2 năm
Xuất xứ: Tây Ban Nha
Tình trạng: Còn hàng
Công suất: 3700W
Mặt kính : Schott Ceran - Made in Germany
Kích thước khoét đá : 51 x 270 x 490-500 mm', N'Tủ lạnh Aqua AQR-T238FA với công nghệ kháng khuẩn, khử mùi:Kháng khuẩn khử mùi DEO Fresh và công nghệ bảo quản thực phẩm:Ngăn đông mềm bảo quản thực phẩm', 34, N'tulanh2.jpg', 105)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (48, N'Tủ lạnh Sharp FXP600VG', 31990000, 26990000, 10, N'Bảo hành: 2 nămTổng dung tích

590 lít

Tổng dung tích sử dụng

520 lít

Số người sử dụng thích hợp

Trên 7 người (Trên 350 lít) 

Dung tích ngăn đông + ngăn đá 203 lít

Dung tích ngăn lạnh 317 Lít', N'Tủ lạnh Sharp SJ-FXP600VG-BK', 5, N'tulanh3.jpg', 56)
INSERT [dbo].[SanPham] ([IDSP], [TenSP], [Gia], [GiaKM], [IDLoai], [TieuDe], [MoTa], [SL], [URLHinh], [SoLuotXem]) VALUES (49, N'Tủ lạnh Hitachi FVY480', 15990000, 14290000, 10, N'Bảo hành: 2 nămDung tích ngăn đá:101 lít
Dung tích ngăn lạnh:265 lít', N'Tủ lạnh Hitachi R-FVY480PGV0 với Công nghệ làm lạnh:Air Jet Flow
Công nghệ kháng khuẩn, khử mùi:Màng lọc Nano Titanium
Công nghệ bảo quản thực phẩm:Ngăn rau quả giữ ẩm', 6, N'tulanh4.jpg', 91)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([IDTK], [Username], [Password], [IDQuyen]) VALUES (1, N'ngocad', N'123', 1)
INSERT [dbo].[TaiKhoan] ([IDTK], [Username], [Password], [IDQuyen]) VALUES (2, N'giangad', N'123', 1)
INSERT [dbo].[TaiKhoan] ([IDTK], [Username], [Password], [IDQuyen]) VALUES (3, N'thienad', N'123', 1)
INSERT [dbo].[TaiKhoan] ([IDTK], [Username], [Password], [IDQuyen]) VALUES (4, N'ngoc', N'123', 2)
INSERT [dbo].[TaiKhoan] ([IDTK], [Username], [Password], [IDQuyen]) VALUES (5, N'giang', N'123', 2)
INSERT [dbo].[TaiKhoan] ([IDTK], [Username], [Password], [IDQuyen]) VALUES (6, N'thien', N'123', 2)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [Email_KH_duynhat]    Script Date: 6/10/2021 11:11:49 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [Email_KH_duynhat] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDTK_KH_duynhat]    Script Date: 6/10/2021 11:11:49 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [IDTK_KH_duynhat] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SDT_duynhat]    Script Date: 6/10/2021 11:11:49 PM ******/
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [SDT_duynhat] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Username_nv_duynhat]    Script Date: 6/10/2021 11:11:49 PM ******/
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [Username_nv_duynhat] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Username_duynhat]    Script Date: 6/10/2021 11:11:49 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [Username_duynhat] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DanhGia] ADD  CONSTRAINT [DF_DanhGia_NgayDG]  DEFAULT (getdate()) FOR [NgayDG]
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_NgayGiaoDich]  DEFAULT (getdate()) FOR [NgayGiaoDich]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuotXem]  DEFAULT ((0)) FOR [SoLuotXem]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_DonHang] FOREIGN KEY([IDDH])
REFERENCES [dbo].[DonHang] ([IDDH])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_SanPham] FOREIGN KEY([IDSP])
REFERENCES [dbo].[SanPham] ([IDSP])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_SanPham]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_KhachHang] FOREIGN KEY([IDKH])
REFERENCES [dbo].[KhachHang] ([IDKH])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_KhachHang]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([IDSP])
REFERENCES [dbo].[SanPham] ([IDSP])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([IDKH])
REFERENCES [dbo].[KhachHang] ([IDKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([IDNV])
REFERENCES [dbo].[NhanVien] ([IDNV])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([IDSP])
REFERENCES [dbo].[SanPham] ([IDSP])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_TaiKhoan]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TaiKhoan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Loai] FOREIGN KEY([IDLoai])
REFERENCES [dbo].[Loai] ([IDLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Loai]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_Quyen] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[Quyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_Quyen]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [CK_GioHang] CHECK  (([SL]>(0)))
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [CK_GioHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [CK_KhachHang] CHECK  (([GioiTinh]='nam' OR [GioiTinh]='nu'))
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [CK_KhachHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [CK_NhanVien] CHECK  (([GioiTinh]='nam' OR [GioiTinh]='nu'))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [CK_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [CK_SanPham] CHECK  (([Gia]>(1000)))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [CK_SanPham]
GO
/****** Object:  Trigger [dbo].[triggerCapNhatDatHang]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[triggerCapNhatDatHang] ON [dbo].[ChiTietDH] AFTER UPDATE AS
BEGIN 
	UPDATE SanPham 
	SET SL = sp.SL -
			(SELECT SL 
			FROM inserted
			WHERE IDSP = sp.IDSP 
			) + 
				(SELECT SL 
				FROM deleted
				WHERE IDSP = sp.IDSP 
				)
	FROM SanPham sp
	JOIN deleted ON sp.IDSP = deleted.IDSP
END


GO
/****** Object:  Trigger [dbo].[triggerDatHang]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[triggerDatHang] ON [dbo].[ChiTietDH] AFTER INSERT 
AS 
BEGIN
	UPDATE SanPham 
	SET SL = sp.SL - (
		SELECT SL 
		FROM inserted
		WHERE IDSP = sp.IDSP 
		)
	FROM SanPham sp
	JOIN inserted ON sp.IDSP = inserted.IDSP
END




GO
/****** Object:  Trigger [dbo].[triggerXoaDatHang]    Script Date: 6/10/2021 11:11:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[triggerXoaDatHang] ON [dbo].[ChiTietDH] FOR DELETE AS
BEGIN 
	UPDATE SanPham 
	SET SL = sp.SL + (
		SELECT SL 
		FROM deleted
		WHERE IDSP = sp.IDSP 
		)
	FROM SanPham sp
	JOIN deleted ON sp.IDSP = deleted.IDSP
END




GO
USE [master]
GO
ALTER DATABASE [TBBEP] SET  READ_WRITE 
GO
