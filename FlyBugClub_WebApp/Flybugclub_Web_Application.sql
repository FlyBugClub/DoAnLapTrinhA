USE [FlyBugClub_WebApplication]
GO
/****** Object:  Table [dbo].[BillBorrow]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillBorrow](
	[BID] [nchar](10) NOT NULL,
	[SID] [nchar](15) NOT NULL,
	[BorrowDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NULL,
	[Note] [nvarchar](200) NULL,
	[SupplierID] [int] NOT NULL,
	[FeeShip] [float] NULL,
	[Total] [float] NULL,
	[ReceiveDay] [datetime] NULL,
 CONSTRAINT [PK_BillBorrow] PRIMARY KEY CLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BorrowDetail]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowDetail](
	[BorrowDetailID] [int] NOT NULL,
	[DeviceID] [nchar](10) NOT NULL,
	[SubTotal] [money] NOT NULL,
	[BID] [nchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ReturnQuantity] [int] NULL,
	[Status] [bit] NOT NULL,
	[price] [money] NULL,
 CONSTRAINT [PK_BorrowDetail] PRIMARY KEY CLUSTERED 
(
	[BorrowDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryDevice]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryDevice](
	[CategoryID] [nchar](10) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[DeviceID] [nchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[ImagePath] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[CategoryID] [nchar](10) NOT NULL,
	[QtyBorrowed] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[BorrowRate] [int] NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device_SheetPrice]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device_SheetPrice](
	[SheetPriceID] [nchar](10) NOT NULL,
	[Price] [float] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[DeviceID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Device_SheetPrice] PRIMARY KEY CLUSTERED 
(
	[SheetPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount_Device]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount_Device](
	[DiscountDeviceID] [nchar](10) NOT NULL,
	[DeviceID] [nchar](10) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Percentage] [float] NOT NULL,
 CONSTRAINT [PK_Discount_Device] PRIMARY KEY CLUSTERED 
(
	[DiscountDeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoTuyenDung]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoTuyenDung](
	[MaViTri] [int] IDENTITY(1,1) NOT NULL,
	[TenViTri] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HoSoTuyenDung] PRIMARY KEY CLUSTERED 
(
	[MaViTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDevice]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDevice](
	[OID] [nchar](10) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[SupplierPhone] [nchar](11) NULL,
	[SupplierAddress] [nvarchar](100) NULL,
	[DateOrder] [date] NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_OrderDevice] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDeviceDetail]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDeviceDetail](
	[ODID] [nchar](10) NOT NULL,
	[OID] [nchar](10) NOT NULL,
	[DeviceID] [nchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[SubTotal] [float] NOT NULL,
 CONSTRAINT [PK_OrderDeviceDetail] PRIMARY KEY CLUSTERED 
(
	[ODID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [nchar](10) NOT NULL,
	[PositionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](20) NOT NULL,
	[SupplierPhone] [nchar](11) NULL,
	[SupplierAddress] [nvarchar](100) NOT NULL,
	[Room] [nchar](10) NULL,
 CONSTRAINT [PK_BillInformation] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[StudentID] [nchar](15) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [nchar](5) NULL,
	[Phone] [nchar](11) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Email] [nchar](50) NOT NULL,
	[Major] [nvarchar](100) NOT NULL,
	[Faculty] [nvarchar](50) NOT NULL,
	[PositionID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuCauUngTuyen]    Script Date: 10/10/2023 1:03:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCauUngTuyen](
	[StudentID] [varchar](15) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Major] [nvarchar](100) NOT NULL,
	[Phone] [nchar](12) NOT NULL,
	[Gender] [nvarchar](5) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Email] [varchar](100) NOT NULL,
	[Faculty] [nvarchar](100) NULL,
	[Position] [nvarchar](50) NOT NULL,
	[ReasonNote] [nvarchar](100) NOT NULL,
	[AdvantagesNote] [nvarchar](100) NOT NULL,
	[DisadvantagesNote] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BillBorrow] ([BID], [SID], [BorrowDate], [ReturnDate], [Note], [SupplierID], [FeeShip], [Total], [ReceiveDay]) VALUES (N'1         ', N'22011127       ', CAST(N'2023-08-02T00:00:00.000' AS DateTime), CAST(N'2023-09-20T00:00:00.000' AS DateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[CategoryDevice] ([CategoryID], [CategoryName]) VALUES (N'1         ', N'Cảm biến  ')
INSERT [dbo].[CategoryDevice] ([CategoryID], [CategoryName]) VALUES (N'2         ', N'Phần cứng ')
INSERT [dbo].[CategoryDevice] ([CategoryID], [CategoryName]) VALUES (N'3         ', N'Kết nối   ')
GO
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'1         ', N'Cảm Biến nhiệt độ', 8, NULL, N'dht11.jpg', 1, N'1         ', 3, 56.0000, 15)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'10        ', N'Cảm biến mưa', 15, NULL, N'cam-bien-mua-5jdk.jpg', 1, N'1         ', 0, 80.0000, 7)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'11        ', N'Cáp nối cái cái', 15, NULL, N'cap-cai-cai.jpg', 1, N'3         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'12        ', N'Cáp nối đực cái', 15, NULL, N'cap-duc-cai.jpg', 1, N'3         ', 0, 80.0000, 9)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'13        ', N'Cáp nối đực đực', 15, NULL, N'cap-duc-duc.jpg', 1, N'3         ', 0, 80.0000, 10)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'14        ', N'Cảm biến nhiệt độ', 15, NULL, N'dht22.jpg', 1, N'1         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'15        ', N'Điện trở', 15, NULL, N'dientro220.jpg', 1, N'3         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'16        ', N'Cảm biến dò line', 15, NULL, N'do-line.jpg', 1, N'1         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'17        ', N'Cảm biến hồng ngoại', 15, NULL, N'fm52.jpg', 1, N'1         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'18        ', N'Cảm biến siêu âm', 15, NULL, N'HC-SR04.jpg', 1, N'1         ', 0, 80.0000, 18)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'19        ', N'Màn hình LCD - 16x2', 15, NULL, N'LCD-1602-I2C.jpg', 1, N'3         ', 0, 80.0000, 6)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'2         ', N'Bluetooth', 15, NULL, N'bluth.jpg', 1, N'3         ', 0, 80.0000, 12)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'20        ', N'Màn hình LCD - TFT', 15, NULL, N'lcd-tft.jpg', 1, N'3         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'21        ', N'Đèn led 7 đoạn', 15, NULL, N'led7doan.jpg', 1, N'3         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'22        ', N'Cảm biến đất', 15, NULL, N'm9bi.jpg', 1, N'1         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'23        ', N'Mega', 15, NULL, N'mega-arduino.jpg', 1, N'2         ', 0, 500.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'24        ', N'Nút nhấn', 15, NULL, N'nutnhan4chan.jpg', 1, N'2         ', 0, 80.0000, 4)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'25        ', N'Cảm biến nhiệt', 15, NULL, N'pir.jpg', 1, N'1         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'26        ', N'Mạch RFID', 15, NULL, N'rfid.jpg', 1, N'2         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'27        ', N'Servo MG90', 15, NULL, N'servo-mg90.jpg', 1, N'2         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'28        ', N'Servo SG90', 15, NULL, N'servo-sg90.jpg', 1, N'2         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'29        ', N'Wemos D1R2', 15, NULL, N'wemosD1R2.jpg', 1, N'2         ', 0, 100.0000, 20)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'3         ', N'Bo cấm dây', 15, NULL, N'breadboard.jpg', 1, N'2         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'30        ', N'Máy bơm nước', 15, NULL, N'may-bom-nuoc-mini.jpg', 1, N'2         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'31        ', N'Servo 20kg', 20, NULL, N'servo20kg.jpg', 1, N'2         ', 0, 30.0000, 1)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'4         ', N'Còi', 15, NULL, N'buzzer.jpg', 1, N'2         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'5         ', N'Đèn led', 15, NULL, N'led.jpg', 1, N'2         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'6         ', N'Cảm biến khí gas', 15, NULL, N'mq-2.jpg', 1, N'1         ', 0, 80.0000, 24)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'7         ', N'Cảm biến âm thanh', 15, NULL, N'8ICG.jpg', 1, N'1         ', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'8         ', N'Arduino Uno R3', 15, NULL, N'ArduinoUnoR3.jpg', 1, N'2         ', 0, 100.0000, 8)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'9         ', N'Cảm biến ánh sáng', 15, NULL, N'cam-bien-anh-sang.jpg', 1, N'1         ', 0, 80.0000, 7)
GO
INSERT [dbo].[Device_SheetPrice] ([SheetPriceID], [Price], [StartDate], [EndDate], [DeviceID]) VALUES (N'1         ', 50, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-31' AS Date), N'1         ')
GO
INSERT [dbo].[OrderDevice] ([OID], [SupplierName], [SupplierPhone], [SupplierAddress], [DateOrder], [Total]) VALUES (N'1         ', N'Chợ Nhật Tảo', N'00511133478', N'16 Lê Minh Huyền, Q.7', CAST(N'2023-04-08' AS Date), 128)
GO
INSERT [dbo].[OrderDeviceDetail] ([ODID], [OID], [DeviceID], [Quantity], [Price], [SubTotal]) VALUES (N'1         ', N'1         ', N'1         ', 5, 30, 150)
GO
INSERT [dbo].[Position] ([PositionID], [PositionName]) VALUES (N'MB        ', N'Member')
INSERT [dbo].[Position] ([PositionID], [PositionName]) VALUES (N'STU       ', N'Student')
INSERT [dbo].[Position] ([PositionID], [PositionName]) VALUES (N'TC        ', N'Teacher')
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [SupplierPhone], [SupplierAddress], [Room]) VALUES (1, N'FlyBug Club', N'0522925104 ', N'7/1 Đ. Thành Thái, Phường 14, Quận 10,', NULL)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
INSERT [dbo].[User] ([StudentID], [Name], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID]) VALUES (N'2154756        ', N'Trần Thị Trương Thi', N'Nữ   ', N'01245874562', N'96 Bến Phú Định', N'thi.trantruongthi@hoasen.edu.vn                   ', N'Công nghệ thông tin', N'Công nghệ thông tin', N'TC        ')
INSERT [dbo].[User] ([StudentID], [Name], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID]) VALUES (N'22011127       ', N'Nguyễn Quốc Duy', N'Nam  ', N'01255511093', N'120/18 Lê Duẫn, Q.1', N'duy.nq11127@sinhien.hoasen.edu.vn                 ', N'Công nghệ thông tin', N'Công nghệ thông tin', N'MB        ')
INSERT [dbo].[User] ([StudentID], [Name], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID]) VALUES (N'22012597       ', N'Nguyễn Thị Linh', N'Nữ   ', N'02564782214', N'195 Bùi Thị Xuân', N'linh.ntl2214@sinhvien.hoasen.edu.vn               ', N'Công nghệ thông tin', N'Cong nghệ phần mềm', N'STU       ')
GO
ALTER TABLE [dbo].[BillBorrow]  WITH CHECK ADD  CONSTRAINT [FK_BillBorrow_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[BillBorrow] CHECK CONSTRAINT [FK_BillBorrow_Supplier]
GO
ALTER TABLE [dbo].[BillBorrow]  WITH CHECK ADD  CONSTRAINT [FK_BillBorrow_User] FOREIGN KEY([SID])
REFERENCES [dbo].[User] ([StudentID])
GO
ALTER TABLE [dbo].[BillBorrow] CHECK CONSTRAINT [FK_BillBorrow_User]
GO
ALTER TABLE [dbo].[BorrowDetail]  WITH CHECK ADD  CONSTRAINT [FK_BorrowDetail_BillBorrow] FOREIGN KEY([BID])
REFERENCES [dbo].[BillBorrow] ([BID])
GO
ALTER TABLE [dbo].[BorrowDetail] CHECK CONSTRAINT [FK_BorrowDetail_BillBorrow]
GO
ALTER TABLE [dbo].[BorrowDetail]  WITH CHECK ADD  CONSTRAINT [FK_BorrowDetail_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([DeviceID])
GO
ALTER TABLE [dbo].[BorrowDetail] CHECK CONSTRAINT [FK_BorrowDetail_Device]
GO
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_CategoryDevice] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryDevice] ([CategoryID])
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_CategoryDevice]
GO
ALTER TABLE [dbo].[Device_SheetPrice]  WITH CHECK ADD  CONSTRAINT [FK_Device_SheetPrice_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([DeviceID])
GO
ALTER TABLE [dbo].[Device_SheetPrice] CHECK CONSTRAINT [FK_Device_SheetPrice_Device]
GO
ALTER TABLE [dbo].[Discount_Device]  WITH CHECK ADD  CONSTRAINT [FK_Discount_Device_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([DeviceID])
GO
ALTER TABLE [dbo].[Discount_Device] CHECK CONSTRAINT [FK_Discount_Device_Device]
GO
ALTER TABLE [dbo].[OrderDeviceDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDeviceDetail_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([DeviceID])
GO
ALTER TABLE [dbo].[OrderDeviceDetail] CHECK CONSTRAINT [FK_OrderDeviceDetail_Device]
GO
ALTER TABLE [dbo].[OrderDeviceDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDeviceDetail_OrderDevice] FOREIGN KEY([OID])
REFERENCES [dbo].[OrderDevice] ([OID])
GO
ALTER TABLE [dbo].[OrderDeviceDetail] CHECK CONSTRAINT [FK_OrderDeviceDetail_OrderDevice]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Position]
GO
