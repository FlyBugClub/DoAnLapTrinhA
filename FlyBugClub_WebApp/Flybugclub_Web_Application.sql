USE [FlyBugClub_WebApplication]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UID] [nchar](15) NULL,
	[FullName] [nvarchar](50) NULL,
	[Gender] [nvarchar](5) NULL,
	[Phone] [nchar](11) NULL,
	[Address] [nvarchar](100) NULL,
	[Email] [varchar](256) NULL,
	[Major] [nvarchar](100) NULL,
	[Faculty] [nvarchar](50) NULL,
	[PositionID] [nchar](10) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillBorrow]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillBorrow](
	[BID] [int] IDENTITY(1,1) NOT NULL,
	[SID] [varchar](50) NOT NULL,
	[BorrowDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NULL,
	[ReceiveDay] [datetime] NULL,
	[Note] [nvarchar](200) NULL,
	[SupplierID] [int] NOT NULL,
	[FeeShip] [float] NULL,
	[Total] [money] NULL,
	[Status] [int] NULL,
	[DepositPriceOnBill] [money] NULL,
 CONSTRAINT [PK_BillBorrow] PRIMARY KEY CLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BorrowDetail]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowDetail](
	[BorrowDetailID] [int] IDENTITY(1,1) NOT NULL,
	[BID] [int] NOT NULL,
	[DeviceID] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[price] [money] NULL,
	[SubTotal] [money] NOT NULL,
	[ReturnQuantity] [int] NULL,
	[QtyDamage] [int] NULL,
	[DepositPrice] [money] NULL,
 CONSTRAINT [PK_BorrowDetail] PRIMARY KEY CLUSTERED 
(
	[BorrowDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BorrowRate]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowRate](
	[DeviceID] [varchar](50) NOT NULL,
	[UID] [varchar](50) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_BorrowRate] PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC,
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryDevice]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryDevice](
	[CategoryID] [varchar](50) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[DeviceID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Describe] [nvarchar](200) NULL,
	[ImagePath] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[CategoryID] [varchar](50) NOT NULL,
	[QtyBorrowed] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[BorrowRate] [int] NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device_SheetPrice]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device_SheetPrice](
	[SheetPriceID] [nchar](10) NOT NULL,
	[Price] [float] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[DeviceID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Device_SheetPrice] PRIMARY KEY CLUSTERED 
(
	[SheetPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount_Device]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount_Device](
	[DiscountDeviceID] [nchar](10) NOT NULL,
	[DeviceID] [varchar](50) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Percentage] [float] NOT NULL,
 CONSTRAINT [PK_Discount_Device] PRIMARY KEY CLUSTERED 
(
	[DiscountDeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryUpdate]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryUpdate](
	[BID] [int] NULL,
	[BorrowDetailID] [int] NULL,
	[UID] [varchar](50) NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoTuyenDung]    Script Date: 10/13/2023 7:46:07 AM ******/
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
/****** Object:  Table [dbo].[OrderDevice]    Script Date: 10/13/2023 7:46:07 AM ******/
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
/****** Object:  Table [dbo].[OrderDeviceDetail]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDeviceDetail](
	[ODID] [nchar](10) NOT NULL,
	[OID] [nchar](10) NOT NULL,
	[DeviceID] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[SubTotal] [float] NOT NULL,
 CONSTRAINT [PK_OrderDeviceDetail] PRIMARY KEY CLUSTERED 
(
	[ODID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [varchar](5) NOT NULL,
	[PositionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/13/2023 7:46:07 AM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 10/13/2023 7:46:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[StudentID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Email] [varchar](50) NOT NULL,
	[Major] [nvarchar](100) NULL,
	[Faculty] [nvarchar](50) NULL,
	[PositionID] [varchar](5) NOT NULL,
	[Account] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuCauUngTuyen]    Script Date: 10/13/2023 7:46:07 AM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011135404_init', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011143616_second', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011154437_third', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011162224_fourth', N'7.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'533cbaf4-cdde-43d9-b6cc-962164c64b32', N'Administrator', N'ADMINISTRATOR', N'd865b956-68ba-4213-8a8e-c225dbda16a4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9ca8f496-7aa6-45cb-8581-a718f5b18ac1', N'Customer', N'CUSTOMER', N'2b195678-a0a8-4860-9145-91c63f93caaa')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ecf21b2b-66d0-4cb3-88b4-96f1b8e2625a', N'533cbaf4-cdde-43d9-b6cc-962164c64b32')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4ec65370-804e-4279-8475-963e80b35b53', N'9ca8f496-7aa6-45cb-8581-a718f5b18ac1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UID], [FullName], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'100b305a-c56e-403c-ba70-69d8e84f78d5', N'22111548       ', N'Danny Nguyễn', NULL, NULL, N'Q1', N'thitruong@gmai.com', NULL, NULL, NULL, N'thitruong@gmai.com', N'THITRUONG@GMAI.COM', NULL, 0, N'AQAAAAEAACcQAAAAECBSxWiE5gn8ViKexrSILUo1jdu2T16GeelC2C0aykUks048Y0zlXIBttp5ooQftAQ==', N'YW3LGLPPY43SI6MMYQEITWCIUMZQ4P3C', N'f00a7b02-5065-4c23-8ffe-cb3badc46861', N'0251475896', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UID], [FullName], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4ec65370-804e-4279-8475-963e80b35b53', N'22111547       ', N'Cô thi', NULL, NULL, N'Q1', N'thitruong11@gmai.com', NULL, NULL, NULL, N'thitruong11@gmai.com', N'THITRUONG11@GMAI.COM', NULL, 0, N'AQAAAAEAACcQAAAAENwRcwqTSfzdk3CIJsgRR8YrQ/k0B/3sLNRi44y+Pa4T/27hJP5vNBRQBbVZBQCCNQ==', N'TBBH5MLZZWAD6AZWTQCPCVC7TD4AQODU', N'ff443283-3aad-43c0-9323-00b8b0a7354e', N'0251475896', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UID], [FullName], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID], [UserName], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ecf21b2b-66d0-4cb3-88b4-96f1b8e2625a', NULL, N'Admin', NULL, NULL, N'123/15/8 Nguyễn Hữu Cảnh', N'admin@gmail.com', NULL, NULL, NULL, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHhlbQsAi7YYWJraea2HmljBParcGdoFpYGy5o5jpBoZglC/Xa3ifv18UL/kCgMHww==', N'c9cfd11e-7b5e-4d49-b3aa-e2b32f52aeaa', N'7f60444b-ea06-42b2-b598-6f88795727dc', N'1234567890', 0, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[BillBorrow] ON 

INSERT [dbo].[BillBorrow] ([BID], [SID], [BorrowDate], [ReturnDate], [ReceiveDay], [Note], [SupplierID], [FeeShip], [Total], [Status], [DepositPriceOnBill]) VALUES (1, N'22011127       ', CAST(N'2023-08-23T00:00:00.000' AS DateTime), NULL, NULL, NULL, 1, NULL, 62.0000, 0, NULL)
INSERT [dbo].[BillBorrow] ([BID], [SID], [BorrowDate], [ReturnDate], [ReceiveDay], [Note], [SupplierID], [FeeShip], [Total], [Status], [DepositPriceOnBill]) VALUES (2, N'22012597       ', CAST(N'2023-09-14T00:00:00.000' AS DateTime), CAST(N'2024-01-29T00:00:00.000' AS DateTime), CAST(N'2023-09-15T00:00:00.000' AS DateTime), N'Giao nhanh trong ngày', 1, NULL, 300.0000, 1, NULL)
INSERT [dbo].[BillBorrow] ([BID], [SID], [BorrowDate], [ReturnDate], [ReceiveDay], [Note], [SupplierID], [FeeShip], [Total], [Status], [DepositPriceOnBill]) VALUES (3, N'2154756        ', CAST(N'2023-01-10T00:00:00.000' AS DateTime), CAST(N'2024-09-01T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, 1, NULL, 500.0000, 2, NULL)
SET IDENTITY_INSERT [dbo].[BillBorrow] OFF
GO
SET IDENTITY_INSERT [dbo].[BorrowDetail] ON 

INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (1, 1, N'1         ', 1, 30.0000, 30.0000, 0, 0, NULL)
INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (2, 1, N'2         ', 1, 32.0000, 32.0000, 0, 0, NULL)
INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (4, 2, N'8         ', 1, 100.0000, 100.0000, 0, 0, NULL)
INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (5, 2, N'14        ', 2, 30.0000, 60.0000, 2, 0, NULL)
INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (6, 2, N'20        ', 3, 40.0000, 40.0000, 2, 1, NULL)
INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (7, 3, N'14        ', 5, 30.0000, 150.0000, 5, 1, NULL)
INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (8, 3, N'8         ', 2, 100.0000, 200.0000, 2, 0, NULL)
INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (9, 3, N'1         ', 2, 30.0000, 60.0000, 2, 0, NULL)
INSERT [dbo].[BorrowDetail] ([BorrowDetailID], [BID], [DeviceID], [Quantity], [price], [SubTotal], [ReturnQuantity], [QtyDamage], [DepositPrice]) VALUES (10, 3, N'9         ', 3, 30.0000, 90.0000, 3, 0, NULL)
SET IDENTITY_INSERT [dbo].[BorrowDetail] OFF
GO
INSERT [dbo].[CategoryDevice] ([CategoryID], [CategoryName]) VALUES (N'1         ', N'Cảm biến  ')
INSERT [dbo].[CategoryDevice] ([CategoryID], [CategoryName]) VALUES (N'2         ', N'Phần cứng ')
INSERT [dbo].[CategoryDevice] ([CategoryID], [CategoryName]) VALUES (N'3         ', N'Kết nối   ')
GO
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'1', N'Cảm Biến nhiệt độ', 8, NULL, N'dht11.jpg', 1, N'1', 3, 56.0000, 15)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'10', N'Cảm biến mưa', 15, NULL, N'cam-bien-mua-5jdk.jpg', 1, N'1', 0, 80.0000, 7)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'11    ', N'Cáp nối cái cái', 15, NULL, N'cap-cai-cai.jpg', 1, N'3', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'12 ', N'Cáp nối đực cái', 15, NULL, N'cap-duc-cai.jpg', 1, N'3', 0, 80.0000, 9)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'13', N'Cáp nối đực đực', 15, NULL, N'cap-duc-duc.jpg', 1, N'3', 0, 80.0000, 10)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'14', N'Cảm biến nhiệt độ', 15, NULL, N'dht22.jpg', 1, N'1', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'15', N'Điện trở', 15, NULL, N'dientro220.jpg', 1, N'3', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'16', N'Cảm biến dò line', 15, NULL, N'do-line.jpg', 1, N'1', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'17', N'Cảm biến hồng ngoại', 15, NULL, N'fm52.jpg', 1, N'1', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'18', N'Cảm biến siêu âm', 15, NULL, N'HC-SR04.jpg', 1, N'1', 0, 80.0000, 18)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'19', N'Màn hình LCD - 16x2', 15, NULL, N'LCD-1602-I2C.jpg', 1, N'3', 0, 80.0000, 6)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'2', N'Bluetooth', 15, NULL, N'bluth.jpg', 1, N'3', 0, 80.0000, 12)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'20', N'Màn hình LCD - TFT', 15, NULL, N'lcd-tft.jpg', 1, N'3', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'200', N'Ras', 1, NULL, N'Raspery_Pi_4.jpg', 1, N'1', 0, 100.0000, 20)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'21', N'Đèn led 7 đoạn', 15, NULL, N'led7doan.jpg', 1, N'3', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'22', N'Cảm biến đất', 15, NULL, N'm9bi.jpg', 1, N'1', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'23', N'Mega', 15, NULL, N'mega-arduino.jpg', 1, N'2', 0, 500.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'24', N'Nút nhấn', 15, NULL, N'nutnhan4chan.jpg', 1, N'2', 0, 80.0000, 4)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'25', N'Cảm biến nhiệt', 15, NULL, N'pir.jpg', 1, N'1', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'26', N'Mạch RFID', 15, NULL, N'rfid.jpg', 1, N'2', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'27', N'Servo MG90', 15, NULL, N'servo-mg90.jpg', 1, N'2', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'28', N'Servo SG90', 15, NULL, N'servo-sg90.jpg', 1, N'2', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'29', N'Wemos D1R2', 15, NULL, N'wemosD1R2.jpg', 1, N'2', 0, 100.0000, 20)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'3', N'Bo cấm dây', 15, NULL, N'breadboard.jpg', 1, N'2', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'30', N'Máy bơm nước', 15, NULL, N'may-bom-nuoc-mini.jpg', 1, N'2', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'31', N'Servo 20kg', 20, NULL, N'servo20kg.jpg', 1, N'2', 0, 30.0000, 1)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'4', N'Còi', 15, NULL, N'buzzer.jpg', 1, N'2', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'5', N'Đèn led', 15, NULL, N'led.jpg', 1, N'2', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'6', N'Cảm biến khí gas', 15, NULL, N'mq-2.jpg', 1, N'1', 0, 80.0000, 24)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'7', N'Cảm biến âm thanh', 15, NULL, N'8ICG.jpg', 1, N'1', 0, 80.0000, 5)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'8', N'Arduino Uno R3', 15, NULL, N'ArduinoUnoR3.jpg', 1, N'2', 0, 100.0000, 8)
INSERT [dbo].[Device] ([DeviceID], [Name], [Quantity], [Describe], [ImagePath], [Status], [CategoryID], [QtyBorrowed], [Price], [BorrowRate]) VALUES (N'9', N'Cảm biến ánh sáng', 15, NULL, N'cam-bien-anh-sang.jpg', 1, N'1', 0, 30.0000, 7)
GO
INSERT [dbo].[Device_SheetPrice] ([SheetPriceID], [Price], [StartDate], [EndDate], [DeviceID]) VALUES (N'1         ', 50, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-31' AS Date), N'1         ')
GO
INSERT [dbo].[OrderDevice] ([OID], [SupplierName], [SupplierPhone], [SupplierAddress], [DateOrder], [Total]) VALUES (N'1         ', N'Chợ Nhật Tảo', N'00511133478', N'16 Lê Minh Huyền, Q.7', CAST(N'2023-04-08' AS Date), 128)
GO
INSERT [dbo].[OrderDeviceDetail] ([ODID], [OID], [DeviceID], [Quantity], [Price], [SubTotal]) VALUES (N'1         ', N'1         ', N'1         ', 5, 30, 150)
GO
INSERT [dbo].[Position] ([PositionID], [PositionName]) VALUES (N'MB   ', N'Member')
INSERT [dbo].[Position] ([PositionID], [PositionName]) VALUES (N'STU  ', N'Student')
INSERT [dbo].[Position] ([PositionID], [PositionName]) VALUES (N'TC   ', N'Teacher')
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [SupplierPhone], [SupplierAddress], [Room]) VALUES (1, N'FlyBug Club', N'0522925104 ', N'7/1 Đ. Thành Thái, Phường 14, Quận 10,', NULL)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
INSERT [dbo].[User] ([StudentID], [Name], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID], [Account]) VALUES (N'2154756        ', N'Trần Thị Trương Thi', N'N?   ', N'01245', N'96 Bến Phú Định', N'thi.t', N'Công nghệ thông tin', N'Công nghệ thông tin', N'TC   ', NULL)
INSERT [dbo].[User] ([StudentID], [Name], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID], [Account]) VALUES (N'22011127       ', N'Nguyễn Quốc Duy', N'Nam  ', N'01255', N'120/18 Lê Duẫn, Q.1', N'duy.n', N'Công nghệ thông tin', N'Công nghệ thông tin', N'MB   ', NULL)
INSERT [dbo].[User] ([StudentID], [Name], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID], [Account]) VALUES (N'22012597       ', N'Nguyễn Thị Linh', N'N?   ', N'02564', N'195 Bùi Thị Xuân', N'linh.', N'Công nghệ thông tin', N'Cong nghệ phần mềm', N'STU  ', NULL)
INSERT [dbo].[User] ([StudentID], [Name], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID], [Account]) VALUES (N'22111547', N'Cô thi', NULL, N'0251475896', N'Q5', N'thitruong11@gmai.com', NULL, NULL, N'MB   ', N'thitruong11@gmai.com')
INSERT [dbo].[User] ([StudentID], [Name], [Gender], [Phone], [Address], [Email], [Major], [Faculty], [PositionID], [Account]) VALUES (N'22111548       ', N'Danny Nguyễn', NULL, N'0251475896', N'Q11', N'thitruong@gmai.com', NULL, NULL, N'MB   ', N'thitruong@gmai.com')
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BillBorrow]  WITH CHECK ADD  CONSTRAINT [FK_BillBorrow_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[BillBorrow] CHECK CONSTRAINT [FK_BillBorrow_Supplier]
GO
ALTER TABLE [dbo].[BillBorrow]  WITH CHECK ADD  CONSTRAINT [FK_BillBorrow_User1] FOREIGN KEY([SID])
REFERENCES [dbo].[User] ([StudentID])
GO
ALTER TABLE [dbo].[BillBorrow] CHECK CONSTRAINT [FK_BillBorrow_User1]
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
ALTER TABLE [dbo].[BorrowRate]  WITH CHECK ADD  CONSTRAINT [FK_BorrowRate_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([DeviceID])
GO
ALTER TABLE [dbo].[BorrowRate] CHECK CONSTRAINT [FK_BorrowRate_Device]
GO
ALTER TABLE [dbo].[BorrowRate]  WITH CHECK ADD  CONSTRAINT [FK_BorrowRate_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([StudentID])
GO
ALTER TABLE [dbo].[BorrowRate] CHECK CONSTRAINT [FK_BorrowRate_User]
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
ALTER TABLE [dbo].[HistoryUpdate]  WITH CHECK ADD  CONSTRAINT [FK_HistoryUpdate_BillBorrow] FOREIGN KEY([BorrowDetailID])
REFERENCES [dbo].[BillBorrow] ([BID])
GO
ALTER TABLE [dbo].[HistoryUpdate] CHECK CONSTRAINT [FK_HistoryUpdate_BillBorrow]
GO
ALTER TABLE [dbo].[HistoryUpdate]  WITH CHECK ADD  CONSTRAINT [FK_HistoryUpdate_BorrowDetail] FOREIGN KEY([BorrowDetailID])
REFERENCES [dbo].[BorrowDetail] ([BorrowDetailID])
GO
ALTER TABLE [dbo].[HistoryUpdate] CHECK CONSTRAINT [FK_HistoryUpdate_BorrowDetail]
GO
ALTER TABLE [dbo].[HistoryUpdate]  WITH CHECK ADD  CONSTRAINT [FK_HistoryUpdate_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([StudentID])
GO
ALTER TABLE [dbo].[HistoryUpdate] CHECK CONSTRAINT [FK_HistoryUpdate_User]
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
