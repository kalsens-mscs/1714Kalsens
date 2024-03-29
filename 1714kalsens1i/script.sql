USE [master]
GO
/****** Object:  Database [PropertyManager]    Script Date: 10/9/2019 7:14:30 AM ******/
CREATE DATABASE [PropertyManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PropertyManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PropertyManager.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PropertyManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PropertyManager_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PropertyManager] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PropertyManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PropertyManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PropertyManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PropertyManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PropertyManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PropertyManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [PropertyManager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PropertyManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PropertyManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PropertyManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PropertyManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PropertyManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PropertyManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PropertyManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PropertyManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PropertyManager] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PropertyManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PropertyManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PropertyManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PropertyManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PropertyManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PropertyManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PropertyManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PropertyManager] SET RECOVERY FULL 
GO
ALTER DATABASE [PropertyManager] SET  MULTI_USER 
GO
ALTER DATABASE [PropertyManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PropertyManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PropertyManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PropertyManager] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PropertyManager] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PropertyManager', N'ON'
GO
ALTER DATABASE [PropertyManager] SET QUERY_STORE = OFF
GO
USE [PropertyManager]
GO
/****** Object:  Table [dbo].[Apartment]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartment](
	[ApartmentId] [int] IDENTITY(1,1) NOT NULL,
	[BuildingId] [int] NOT NULL,
	[ApartmentNum] [nvarchar](5) NOT NULL,
	[SquareFeet] [int] NOT NULL,
	[Bathrooms] [int] NOT NULL,
	[Rent] [smallmoney] NOT NULL,
	[TenantId] [int] NULL,
	[AdminId] [int] NULL,
 CONSTRAINT [PK_Apartment_1] PRIMARY KEY CLUSTERED 
(
	[ApartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Apartmentex1b]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartmentex1b](
	[ApartmentId] [int] IDENTITY(1,1) NOT NULL,
	[BuildingName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[ApartmentNum] [nvarchar](5) NOT NULL,
	[SquareFeet] [int] NOT NULL,
	[Bathrooms] [int] NOT NULL,
	[Rent] [smallmoney] NOT NULL,
	[TenantName] [nvarchar](50) NULL,
	[AdminName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Apartment] PRIMARY KEY CLUSTERED 
(
	[ApartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Building]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building](
	[BuildingId] [int] IDENTITY(1,1) NOT NULL,
	[BuildingName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](15) NOT NULL,
	[Zip] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED 
(
	[BuildingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Client ID] [int] NOT NULL,
	[First Name] [nvarchar](12) NOT NULL,
	[Last Name] [nvarchar](12) NOT NULL,
	[Phone Number] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Client ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice1]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice1](
	[InvoiceId] [int] NOT NULL,
	[ApartmentId] [int] NOT NULL,
	[InvoiceDate] [smalldatetime] NOT NULL,
	[DueDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Invoice1] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoicePhoto]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoicePhoto](
	[Invoice ID] [int] NOT NULL,
	[Session Type] [nvarchar](50) NOT NULL,
	[Session Hours] [nchar](10) NOT NULL,
	[Number of Photos] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Due Date] [date] NOT NULL,
	[Amount] [smallmoney] NOT NULL,
 CONSTRAINT [PK_InvoicePhoto] PRIMARY KEY CLUSTERED 
(
	[Invoice ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineItem1]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItem1](
	[LineItemId] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[Description] [nvarchar](25) NOT NULL,
	[Amount] [smallmoney] NOT NULL,
 CONSTRAINT [PK_LineItem1] PRIMARY KEY CLUSTERED 
(
	[LineItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineItemPhoto]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItemPhoto](
	[Line Item ID] [int] NOT NULL,
	[Invoice ID] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Amount] [smallmoney] NOT NULL,
 CONSTRAINT [PK_LineItemPhoto] PRIMARY KEY CLUSTERED 
(
	[Line Item ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [nchar](50) NOT NULL,
	[FirstName] [nchar](50) NOT NULL,
	[LastName] [nchar](50) NOT NULL,
	[Phone] [nchar](12) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photographer]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photographer](
	[Photographer ID] [int] NOT NULL,
	[First Name] [nvarchar](15) NOT NULL,
	[Last Name] [nvarchar](15) NOT NULL,
	[Session Type] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Phone Number] [nvarchar](12) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Photographer] PRIMARY KEY CLUSTERED 
(
	[Photographer ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt1]    Script Date: 10/9/2019 7:14:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt1](
	[ReceiptId] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ReceiptDate] [smalldatetime] NOT NULL,
	[Amount] [smallmoney] NOT NULL,
 CONSTRAINT [PK_Receipt1] PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Apartment] ON 

INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (1, 1, N'101', 400, 1, 550.0000, 1, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (2, 1, N'102', 550, 1, 700.0000, 2, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (3, 1, N'103', 550, 2, 750.0000, 3, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (4, 1, N'104', 650, 1, 800.0000, 4, 5)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (5, 1, N'105', 650, 1, 800.0000, 5, 6)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (6, 2, N'201', 600, 1, 700.0000, 6, 6)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (7, 2, N'202', 750, 1, 800.0000, 7, 6)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (8, 2, N'203', 800, 2, 900.0000, 8, 6)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (9, 2, N'204', 800, 2, 900.0000, 9, 6)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (10, 3, N'101', 400, 1, 500.0000, 10, 7)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (11, 3, N'102', 500, 1, 600.0000, 11, 7)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (12, 3, N'103', 600, 2, 700.0000, 12, 7)
INSERT [dbo].[Apartment] ([ApartmentId], [BuildingId], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantId], [AdminId]) VALUES (13, 3, N'104', 600, 2, 700.0000, 13, 7)
SET IDENTITY_INSERT [dbo].[Apartment] OFF
SET IDENTITY_INSERT [dbo].[Apartmentex1b] ON 

INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Rd', N'101', 400, 1, 550.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (2, N'Southeast Apartments', N'308 Pioneer Rd', N'102', 550, 1, 700.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (3, N'Southeast Apartments', N'308 Pioneer Rd', N'103', 550, 2, 750.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (4, N'Southeast Apartments', N'308 Pioneer Rd', N'104', 650, 2, 850.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (8, N'Southeast Apartments', N'308 Pioneer Rd', N'105', 650, 1, 800.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (9, N'Southwest Apartments', N'1250 Homer Rd', N'201', 600, 1, 700.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (10, N'Southwest Apartments', N'1250 Homer Rd', N'202', 750, 1, 800.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (11, N'Southwest Apartments', N'1250 Homer Rd', N'203', 800, 2, 850.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (12, N'Southwest Apartments', N'1250 Homer Rd', N'204', 800, 1, 800.0000, NULL, N'Swanson')
INSERT [dbo].[Apartmentex1b] ([ApartmentId], [BuildingName], [Address], [ApartmentNum], [SquareFeet], [Bathrooms], [Rent], [TenantName], [AdminName]) VALUES (13, N'Southwest Apartments', N'1250 Homer Rd', N'205', 900, 2, 900.0000, NULL, N'Swanson')
SET IDENTITY_INSERT [dbo].[Apartmentex1b] OFF
SET IDENTITY_INSERT [dbo].[Building] ON 

INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (1, N'Southeast Apartments', N'308 Pioneer Rd', N'Red Wing', N'MN', N'55066     ')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (3, N'Southwest Apartments', N'1250 Homer Rd', N'Winona', N'MN', N'55987     ')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (4, N'Northeast Apartments', N'1750 Broadway', N'Winona ', N'MN', N'55987     ')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (5, N'Northwest Apartments', N'221 Gold St', N'Winona', N'MN', N'55987     ')
INSERT [dbo].[Building] ([BuildingId], [BuildingName], [Address], [City], [State], [Zip]) VALUES (6, N'Eagle Apartments', N'123 Main St', N'Winona', N'MN', N'55987     ')
SET IDENTITY_INSERT [dbo].[Building] OFF
INSERT [dbo].[Client] ([Client ID], [First Name], [Last Name], [Phone Number], [Email]) VALUES (1, N'Sebastian', N'Welp', N'5074527217', N'sebastianwelp@gmail.com')
INSERT [dbo].[Client] ([Client ID], [First Name], [Last Name], [Phone Number], [Email]) VALUES (2, N'Sam', N'Ferguson', N'5074527128', N'samferguson@gmail.com')
INSERT [dbo].[Client] ([Client ID], [First Name], [Last Name], [Phone Number], [Email]) VALUES (3, N'Kailee', N'Alsens', N'5074527219', N'kaileealsens@gmail.com')
INSERT [dbo].[Client] ([Client ID], [First Name], [Last Name], [Phone Number], [Email]) VALUES (4, N'Zac', N'Alsens', N'5074527220', N'zacalsens@gmail.com')
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10001, 1, CAST(N'2018-09-15T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10002, 2, CAST(N'2018-09-15T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10003, 3, CAST(N'2018-09-15T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10004, 4, CAST(N'2018-09-15T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10005, 5, CAST(N'2018-09-15T00:00:00' AS SmallDateTime), CAST(N'2018-10-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10006, 1, CAST(N'2018-10-15T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10007, 2, CAST(N'2018-10-15T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10008, 3, CAST(N'2018-10-15T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10009, 4, CAST(N'2018-10-15T00:00:00' AS SmallDateTime), CAST(N'2018-11-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Invoice1] ([InvoiceId], [ApartmentId], [InvoiceDate], [DueDate]) VALUES (10010, 5, CAST(N'2018-10-15T00:00:00' AS SmallDateTime), CAST(N'2019-03-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[InvoicePhoto] ([Invoice ID], [Session Type], [Session Hours], [Number of Photos], [Date], [Due Date], [Amount]) VALUES (1, N'Maternity', N'2         ', 75, CAST(N'2019-10-01' AS Date), CAST(N'2019-11-01' AS Date), 250.0000)
INSERT [dbo].[InvoicePhoto] ([Invoice ID], [Session Type], [Session Hours], [Number of Photos], [Date], [Due Date], [Amount]) VALUES (2, N'Senior', N'1         ', 50, CAST(N'2019-10-01' AS Date), CAST(N'2019-11-01' AS Date), 150.0000)
INSERT [dbo].[InvoicePhoto] ([Invoice ID], [Session Type], [Session Hours], [Number of Photos], [Date], [Due Date], [Amount]) VALUES (3, N'Family', N'2         ', 100, CAST(N'2019-10-01' AS Date), CAST(N'2019-11-01' AS Date), 250.0000)
INSERT [dbo].[InvoicePhoto] ([Invoice ID], [Session Type], [Session Hours], [Number of Photos], [Date], [Due Date], [Amount]) VALUES (4, N'Senior', N'1         ', 100, CAST(N'2019-10-01' AS Date), CAST(N'2019-11-01' AS Date), 150.0000)
INSERT [dbo].[InvoicePhoto] ([Invoice ID], [Session Type], [Session Hours], [Number of Photos], [Date], [Due Date], [Amount]) VALUES (5, N'Fashion', N'2         ', 200, CAST(N'2019-10-01' AS Date), CAST(N'2019-11-01' AS Date), 300.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10001, 10001, N'Rent, October 2018', 550.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10002, 10001, N'Electricity', 50.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10003, 10001, N'Gas', 40.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10004, 10001, N'Garage', 60.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10005, 10001, N'Cable TV/Internet', 70.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10006, 10002, N'Rent, October 2018', 700.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10007, 10002, N'Electricity', 60.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10008, 10002, N'Gas', 45.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10009, 10002, N'Garage', 90.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10010, 10003, N'Rent, October 2018', 500.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10011, 10003, N'Electricity', 55.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10012, 10003, N'Gas', 50.0000)
INSERT [dbo].[LineItem1] ([LineItemId], [InvoiceId], [Description], [Amount]) VALUES (10013, 10003, N'Cable TV/Internet', 70.0000)
INSERT [dbo].[LineItemPhoto] ([Line Item ID], [Invoice ID], [Description], [Amount]) VALUES (1, 1, N'Maternity', 250.0000)
INSERT [dbo].[LineItemPhoto] ([Line Item ID], [Invoice ID], [Description], [Amount]) VALUES (2, 2, N'Senior', 150.0000)
INSERT [dbo].[LineItemPhoto] ([Line Item ID], [Invoice ID], [Description], [Amount]) VALUES (3, 3, N'Family', 250.0000)
INSERT [dbo].[LineItemPhoto] ([Line Item ID], [Invoice ID], [Description], [Amount]) VALUES (4, 4, N'Senior', 150.0000)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'1                                                 ', N'Sheela                                            ', N'Word                                              ', N'111-111-1111', N'sheela.word@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'10                                                ', N'Adam                                              ', N'Strunkman                                         ', N'111-111-1120', N'adam.strunkman@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'11                                                ', N'Kailey                                            ', N'Kronebusch                                        ', N'111-111-1121', N'kailey.kronebusch@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'12                                                ', N'Jenna                                             ', N'Kronebusch                                        ', N'111-111-1122', N'jenna.kronebusch@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'13                                                ', N'Cassie                                            ', N'Schumann                                          ', N'111-111-1123', N'cassie.schumann@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'2                                                 ', N'Michael                                           ', N'Sandberg                                          ', N'111-111-1112', N'michael.sandberg@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'3                                                 ', N'Arvind                                            ', N'Rao                                               ', N'111-111-1113', N'arvind.rao@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'4                                                 ', N'Linda                                             ', N'Meisner                                           ', N'111-111-1114', N'linda.meisner@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'5                                                 ', N'Mark                                              ', N'Swanson                                           ', N'111-111-1115', N'mswanson@southeastmn.edu')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'6                                                 ', N'Kailee                                            ', N'Alsens                                            ', N'111-111-1116', N'kailee.alsens@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'7                                                 ', N'Sebastian                                         ', N'Johnson                                           ', N'111-111-1117', N'sebastian.johnson@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'8                                                 ', N'Sam                                               ', N'Ferguson                                          ', N'111-111-1118', N'sam.ferguson@email.com')
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Phone], [Email]) VALUES (N'9                                                 ', N'Josh                                              ', N'Salwey                                            ', N'111-111-1119', N'josh.salwey@email.com')
INSERT [dbo].[Photographer] ([Photographer ID], [First Name], [Last Name], [Session Type], [State], [Phone Number], [Email]) VALUES (1, N'Bobby', N'Alsens', N'Maternity', N'MN', N'507-444-1111', N'bobbyalsens@gmail.com')
INSERT [dbo].[Photographer] ([Photographer ID], [First Name], [Last Name], [Session Type], [State], [Phone Number], [Email]) VALUES (2, N'Jenna', N'Kronebusch', N'Senior', N'WI', N'608-444-1112', N'jennakronebusch@gmail.com')
INSERT [dbo].[Photographer] ([Photographer ID], [First Name], [Last Name], [Session Type], [State], [Phone Number], [Email]) VALUES (3, N'Alyssa', N'Eastep', N'Family', N'MN', N'507-555-1111', N'alyssaeastep@gmail.com')
INSERT [dbo].[Photographer] ([Photographer ID], [First Name], [Last Name], [Session Type], [State], [Phone Number], [Email]) VALUES (4, N'Liz', N'Johnson', N'Senior', N'IA', N'405-111-2222', N'lizjohnson@gmail.com')
INSERT [dbo].[Receipt1] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (1, 10001, CAST(N'2019-01-15T00:00:00' AS SmallDateTime), 770.0000)
INSERT [dbo].[Receipt1] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (2, 10002, CAST(N'2019-01-15T00:00:00' AS SmallDateTime), 895.0000)
INSERT [dbo].[Receipt1] ([ReceiptId], [InvoiceId], [ReceiptDate], [Amount]) VALUES (3, 10003, CAST(N'2019-01-15T00:00:00' AS SmallDateTime), 675.0000)
USE [master]
GO
ALTER DATABASE [PropertyManager] SET  READ_WRITE 
GO
