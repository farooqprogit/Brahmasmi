USE [master]
GO
/****** Object:  Database [Brahmasmi]    Script Date: 10/9/2020 5:56:46 PM ******/
CREATE DATABASE [Brahmasmi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Brahmasmi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Brahmasmi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Brahmasmi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Brahmasmi_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Brahmasmi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Brahmasmi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Brahmasmi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Brahmasmi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Brahmasmi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Brahmasmi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Brahmasmi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Brahmasmi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Brahmasmi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Brahmasmi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Brahmasmi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Brahmasmi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Brahmasmi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Brahmasmi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Brahmasmi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Brahmasmi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Brahmasmi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Brahmasmi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Brahmasmi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Brahmasmi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Brahmasmi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Brahmasmi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Brahmasmi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Brahmasmi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Brahmasmi] SET RECOVERY FULL 
GO
ALTER DATABASE [Brahmasmi] SET  MULTI_USER 
GO
ALTER DATABASE [Brahmasmi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Brahmasmi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Brahmasmi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Brahmasmi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Brahmasmi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Brahmasmi] SET QUERY_STORE = OFF
GO
USE [Brahmasmi]
GO
/****** Object:  UserDefinedTableType [dbo].[testtype]    Script Date: 10/9/2020 5:56:46 PM ******/
CREATE TYPE [dbo].[testtype] AS TABLE(
	[ActivityName] [varchar](50) NULL,
	[Rating] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TT_VendorCertifications]    Script Date: 10/9/2020 5:56:46 PM ******/
CREATE TYPE [dbo].[TT_VendorCertifications] AS TABLE(
	[VendorID] [int] NULL,
	[CertificationID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TT_VendorRelationShip]    Script Date: 10/9/2020 5:56:46 PM ******/
CREATE TYPE [dbo].[TT_VendorRelationShip] AS TABLE(
	[RelationShipName] [nvarchar](50) NULL,
	[VendorID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TT_VendorSocialNetworks]    Script Date: 10/9/2020 5:56:46 PM ******/
CREATE TYPE [dbo].[TT_VendorSocialNetworks] AS TABLE(
	[VendorID] [int] NULL,
	[SocialNetworkID] [int] NULL,
	[SocialNetworkURL] [nvarchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TT_VendorSpecialization]    Script Date: 10/9/2020 5:56:46 PM ******/
CREATE TYPE [dbo].[TT_VendorSpecialization] AS TABLE(
	[VendorID] [int] NULL,
	[SpecializationName] [int] NULL
)
GO
/****** Object:  Table [dbo].[Login]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[MobileNumber] [varchar](50) NULL,
	[Password] [varchar](256) NULL,
	[FirstName] [varchar](150) NULL,
	[LastName] [varchar](150) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBadge]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBadge](
	[BadgeID] [int] IDENTITY(1,1) NOT NULL,
	[BadgeName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblBadge] PRIMARY KEY CLUSTERED 
(
	[BadgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBilling]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBilling](
	[BillingId] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NULL,
	[UserId] [int] NULL,
	[BillingAddress] [nvarchar](100) NULL,
	[CityId] [int] NULL,
	[PinCode] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBooking]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBooking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[BookingDate] [datetime] NULL,
	[VendorID] [int] NULL,
	[BookingType] [nvarchar](50) NULL,
	[ServiceTypeID] [int] NULL,
	[ServiceID] [int] NULL,
	[BookingStatusID] [int] NULL,
	[UserID] [int] NULL,
	[BookingLocation] [nvarchar](150) NULL,
	[PaymentID] [int] NULL,
	[RatingsID] [int] NULL,
	[ReviewComments] [nvarchar](250) NULL,
	[BookingTime] [time](7) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[PACKAGEID] [int] NULL,
	[ORDERNO] [nvarchar](50) NULL,
	[BOOKINGAMOUNT] [int] NULL,
	[TimeIn] [time](7) NULL,
	[TimeOut] [time](7) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBookingStatus]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBookingStatus](
	[BookingStatusID] [int] IDENTITY(1,1) NOT NULL,
	[BookingStatusName] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblBookingStatus] PRIMARY KEY CLUSTERED 
(
	[BookingStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCertifications]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCertifications](
	[CertificationID] [int] IDENTITY(1,1) NOT NULL,
	[CertificationName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblCertifications] PRIMARY KEY CLUSTERED 
(
	[CertificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[StateID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCountries]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblCountries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFAQ]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFAQ](
	[FAQID] [int] IDENTITY(1,1) NOT NULL,
	[FAQ] [nvarchar](150) NULL,
	[FAQAnswer] [nvarchar](150) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblFAQ] PRIMARY KEY CLUSTERED 
(
	[FAQID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKeyInsights]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKeyInsights](
	[InsightsID] [int] IDENTITY(1,1) NOT NULL,
	[InsightName] [nvarchar](150) NULL,
	[ServiceID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblKeyInsights] PRIMARY KEY CLUSTERED 
(
	[InsightsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLanguage]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLanguage](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblLanguage] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModeOfPayment]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModeOfPayment](
	[ModeOfPaymentID] [int] IDENTITY(1,1) NOT NULL,
	[ModeOfPayment] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblModeOfPayment] PRIMARY KEY CLUSTERED 
(
	[ModeOfPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNetBanking]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNetBanking](
	[NetbankingID] [int] IDENTITY(1,1) NOT NULL,
	[NetBankingName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblNetBanking] PRIMARY KEY CLUSTERED 
(
	[NetbankingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOccupation]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOccupation](
	[OccupationID] [int] IDENTITY(1,1) NOT NULL,
	[OccupationName] [nvarchar](70) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblOccupation] PRIMARY KEY CLUSTERED 
(
	[OccupationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPackages]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPackages](
	[PackageID] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [nvarchar](200) NULL,
	[ServiceId] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_tblPackages] PRIMARY KEY CLUSTERED 
(
	[PackageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPatient]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPatient](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [nvarchar](50) NULL,
	[PatientIllness] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPayment]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ModeofPaymentID] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[VendorID] [int] NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[INVOICENO] [nvarchar](50) NULL,
	[BOOKINGID] [int] NULL,
 CONSTRAINT [PK_tblPayment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaymentHistory]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaymentHistory](
	[PaymentHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[InvoiceNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPaymentHistory] PRIMARY KEY CLUSTERED 
(
	[PaymentHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaymentStatus]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaymentStatus](
	[PaymentStatusId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentStatusName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPoojaItem]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPoojaItem](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemPrice] [int] NULL,
	[PackageId] [int] NULL,
	[ServiceId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProcedure]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProcedure](
	[ProcedureId] [int] IDENTITY(1,1) NOT NULL,
	[ProcedureName] [nvarchar](50) NULL,
	[PackageId] [int] NULL,
	[ServiceId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRatings]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRatings](
	[RatingsID] [int] IDENTITY(1,1) NOT NULL,
	[RatingName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblRatings] PRIMARY KEY CLUSTERED 
(
	[RatingsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRelationShip]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRelationShip](
	[RelationShipID] [int] IDENTITY(1,1) NOT NULL,
	[RelationShipName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[VendorID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblRelationShip] PRIMARY KEY CLUSTERED 
(
	[RelationShipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblService]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblService](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceTypeID] [int] NULL,
	[ServiceName] [nvarchar](100) NULL,
	[Service_Short_Description] [nvarchar](2000) NULL,
	[Service_Long_Description] [nvarchar](2000) NULL,
	[Keyword] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblService] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServiceCity]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServiceCity](
	[ServiceCityId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[CityId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceCityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServiceType]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServiceType](
	[ServiceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblServiceType] PRIMARY KEY CLUSTERED 
(
	[ServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServiceTypeCity]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServiceTypeCity](
	[ServiceTypeCityId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceTypeId] [int] NULL,
	[CityId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceTypeCityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSocialNetwork]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSocialNetwork](
	[SocialNetworkID] [int] IDENTITY(1,1) NOT NULL,
	[SocialNetworkName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblSocialNetwork] PRIMARY KEY CLUSTERED 
(
	[SocialNetworkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSpecialization]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSpecialization](
	[SpecializationID] [int] IDENTITY(1,1) NOT NULL,
	[SpecializationName] [nvarchar](50) NULL,
	[VendorID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblSpecialization] PRIMARY KEY CLUSTERED 
(
	[SpecializationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTitle]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTitle](
	[TitleID] [int] IDENTITY(1,1) NOT NULL,
	[TitleName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblTitle] PRIMARY KEY CLUSTERED 
(
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[LanguageID] [int] NULL,
	[StateID] [int] NULL,
	[CountryCode] [nvarchar](50) NULL,
	[User_MobileNumber] [nvarchar](50) NULL,
	[User_Name] [nvarchar](50) NULL,
	[User_EmailID] [nvarchar](100) NULL,
	[User_Address1] [nvarchar](500) NULL,
	[User_Address2] [nvarchar](500) NULL,
	[User_Address3] [nvarchar](500) NULL,
	[User_PinCode] [nvarchar](50) NULL,
	[User_Latitude] [nvarchar](50) NULL,
	[User_Longitude] [nvarchar](50) NULL,
	[User_Status] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserHistory]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserHistory](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[UserLoginDate] [datetime] NULL,
	[UserLogOffDate] [datetime] NULL,
	[User_Latitude] [nvarchar](50) NULL,
	[User_Longitude] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblUserHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserType]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblUserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVendor]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVendor](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[TitleID] [int] NULL,
	[CertificationID] [int] NULL,
	[FamilyID] [int] NULL,
	[LanguageID] [int] NULL,
	[StateID] [int] NULL,
	[Vendor_PassportNumber] [nvarchar](50) NULL,
	[Vendor_MobileNumber] [nvarchar](50) NULL,
	[Vendor_Address1] [nvarchar](500) NULL,
	[Vendor_PinCode1] [nvarchar](50) NULL,
	[NewMemberShip] [nvarchar](50) NULL,
	[Renewal] [nvarchar](50) NULL,
	[MemberShipDate] [datetime] NULL,
	[RenewalDate] [datetime] NULL,
	[Vendor_FirstName] [nvarchar](50) NULL,
	[Vendor_Address2] [nvarchar](500) NULL,
	[Vendor_PinCode2] [nvarchar](50) NULL,
	[Vendor_Address3] [nvarchar](500) NULL,
	[Vendor_MiddleName] [nvarchar](50) NULL,
	[Vendor_LastName] [nvarchar](50) NULL,
	[Vendor_NickName] [nvarchar](50) NULL,
	[Vendor_Gothram] [nvarchar](50) NULL,
	[Vendor_FatherName] [nvarchar](50) NULL,
	[Vendor_Height] [decimal](18, 2) NULL,
	[Vendor_Weight] [decimal](18, 2) NULL,
	[Vendor_DOB] [datetime] NULL,
	[Vendor_PlaceofBirth] [nvarchar](50) NULL,
	[Vendor_AlternateNumber] [nvarchar](50) NULL,
	[Vendor_EmailID] [nvarchar](50) NULL,
	[Vendor_PANNumber] [nvarchar](50) NULL,
	[Vendor_AadharNumber] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Vendor_Latitude] [nvarchar](50) NULL,
	[Vendor_Longitude] [nvarchar](50) NULL,
	[Vendor_Status] [nvarchar](50) NULL,
	[Vendor_Abroad] [nvarchar](50) NULL,
	[Photo] [image] NULL,
	[Vendor_Age] [int] NULL,
	[Vendor_IdentificationMark1] [nvarchar](150) NULL,
	[Vendor_IdentificationMark2] [nvarchar](150) NULL,
	[Vendor_BankName] [nvarchar](50) NULL,
	[Vendor_BankBranch] [nvarchar](50) NULL,
	[Vendor_AccountNumber] [nvarchar](50) NULL,
	[Vendor_IFSCCode] [nvarchar](50) NULL,
	[Vendor_MICRCode] [nvarchar](50) NULL,
	[Vendor_NameOnPassBook] [nvarchar](50) NULL,
	[Vendor_Gender] [nvarchar](10) NULL,
	[Vendor_Occupation] [nvarchar](50) NULL,
	[Vendor_EmergencyContactPerson] [nvarchar](50) NULL,
	[Vendor_EmergencyContactNumber] [nvarchar](50) NULL,
	[Vendor_AreasOfActivity] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblVendor] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVendorCertifications]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVendorCertifications](
	[VendorCertificationID] [int] IDENTITY(1,1) NOT NULL,
	[VendorID] [int] NULL,
	[CertificationID] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tblVendorCertifications] PRIMARY KEY CLUSTERED 
(
	[VendorCertificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVendorEnquiry]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVendorEnquiry](
	[EnquiryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[Createdate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CityID] [int] NULL,
 CONSTRAINT [PK_tblVendorEnquiry] PRIMARY KEY CLUSTERED 
(
	[EnquiryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVendorService]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVendorService](
	[VendorServiceId] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [int] NULL,
	[ServiceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VendorServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVendorSocialNetwork]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVendorSocialNetwork](
	[VendorSocialNetworkID] [int] IDENTITY(1,1) NOT NULL,
	[VendorID] [int] NULL,
	[SocialNetworkID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[SocialNetworkURL] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblVendorSocialNetwork] PRIMARY KEY CLUSTERED 
(
	[VendorSocialNetworkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] NULL,
	[ActivityName] [nvarchar](50) NULL,
	[Rating] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorRegistration]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorRegistration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[Contact] [varchar](50) NULL,
	[Qualification] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](50) NULL,
	[test] [nvarchar](50) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_VendorRegistration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblBadge] ADD  CONSTRAINT [DF_tblBadge_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblBookingStatus] ADD  CONSTRAINT [DF_tblBookingStatus_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblCertifications] ADD  CONSTRAINT [DF_tblCertifications_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblCity] ADD  CONSTRAINT [DF_tblCity_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblCountries] ADD  CONSTRAINT [DF_tblCountries_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblFAQ] ADD  CONSTRAINT [DF_tblFAQ_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblKeyInsights] ADD  CONSTRAINT [DF_tblKeyInsights_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblLanguage] ADD  CONSTRAINT [DF_tblLanguage_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblRatings] ADD  CONSTRAINT [DF_tblRatings_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblRelationShip] ADD  CONSTRAINT [DF_tblRelationShip_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblServiceType] ADD  CONSTRAINT [DF_tblServiceType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblSocialNetwork] ADD  CONSTRAINT [DF_tblSocialNetwork_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblState] ADD  CONSTRAINT [DF_tblState_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblTitle] ADD  CONSTRAINT [DF_tblTitle_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblUserHistory] ADD  CONSTRAINT [DF_tblUserHistory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblUserType] ADD  CONSTRAINT [DF_tblUserType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblVendor] ADD  CONSTRAINT [DF_tblVendor_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblVendorEnquiry] ADD  CONSTRAINT [DF_tblVendorEnquiry_Createdate]  DEFAULT (getdate()) FOR [Createdate]
GO
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_tblBookingStatus] FOREIGN KEY([BookingStatusID])
REFERENCES [dbo].[tblBookingStatus] ([BookingStatusID])
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_Table_1_tblBookingStatus]
GO
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_tblRatings] FOREIGN KEY([RatingsID])
REFERENCES [dbo].[tblRatings] ([RatingsID])
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_Table_1_tblRatings]
GO
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_tblService] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[tblService] ([ServiceID])
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_Table_1_tblService]
GO
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_tblServiceType] FOREIGN KEY([ServiceTypeID])
REFERENCES [dbo].[tblServiceType] ([ServiceTypeID])
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_Table_1_tblServiceType]
GO
ALTER TABLE [dbo].[tblCity]  WITH CHECK ADD FOREIGN KEY([StateID])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblKeyInsights]  WITH CHECK ADD  CONSTRAINT [FK_tblKeyInsights_tblService] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[tblService] ([ServiceID])
GO
ALTER TABLE [dbo].[tblKeyInsights] CHECK CONSTRAINT [FK_tblKeyInsights_tblService]
GO
ALTER TABLE [dbo].[tblService]  WITH CHECK ADD  CONSTRAINT [FK_tblService_tblServiceType] FOREIGN KEY([ServiceTypeID])
REFERENCES [dbo].[tblServiceType] ([ServiceTypeID])
GO
ALTER TABLE [dbo].[tblService] CHECK CONSTRAINT [FK_tblService_tblServiceType]
GO
ALTER TABLE [dbo].[tblState]  WITH CHECK ADD FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([CountryID])
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblCity] FOREIGN KEY([CityID])
REFERENCES [dbo].[tblCity] ([CityID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblCity]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblCountries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[tblCountries] ([CountryID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblCountries]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblLanguage] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[tblLanguage] ([LanguageID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblLanguage]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblState] FOREIGN KEY([StateID])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblState]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblUserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[tblUserType] ([UserTypeID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblUserType]
GO
ALTER TABLE [dbo].[VendorRegistration]  WITH CHECK ADD  CONSTRAINT [FK_VendorRegistration_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[VendorRegistration] CHECK CONSTRAINT [FK_VendorRegistration_tblUser]
GO
/****** Object:  StoredProcedure [dbo].[InsertVendor]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertVendor]  
(
@Name nvarchar(50),
@Email nvarchar(250),
@Contact varchar(50),
@Qualification nvarchar(100),

@Password nvarchar(50)
)
AS  
BEGIN  
     Insert into VendorRegistration(Name,Email,Contact,Qualification,Password) values(@Name,@Email,@Contact,@Qualification,@Password)  
END  

GO
/****** Object:  StoredProcedure [dbo].[SP_Admin_GetVendorEnquiry]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Admin_GetVendorEnquiry]

AS  
BEGIN  
     SELECT  Name,MobileNumber,EmailID,CityName,Description from dbo.tblVendorEnquiry inner join tblCity on tblCity.CityID=tblVendorEnquiry.CityID
END 
GO
/****** Object:  StoredProcedure [dbo].[SP_ADMINDASHBOARD]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ADMINDASHBOARD]
(
@STATUSID INT NULL,
@BOOKINGDATE NVARCHAR(50) NULL
)
AS
BEGIN
print @STATUSID
print @BOOKINGDATE
IF(@STATUSID <> 0)
BEGIN
SELECT BK.BookingStatusID,BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,BK.BOOKINGLOCATION,CONVERT(VARCHAR,BK.BOOKINGTIME,8) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS 
ON	BK.BookingStatusID=BS.BookingStatusID 
WHERE BK.BookingStatusID=@STATUSID ORDER BY BK.UpdatedDate DESC
END
ELSE IF(@BOOKINGDATE IS NOT NULL AND @BOOKINGDATE <> 'NULL')
BEGIN
SELECT BK.BookingStatusID,BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,BK.BOOKINGLOCATION,CONVERT(VARCHAR,BK.BOOKINGTIME,8) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS 
ON	BK.BookingStatusID=BS.BookingStatusID 
WHERE BK.BookingDate=convert(date,@BOOKINGDATE,102) ORDER BY BK.UpdatedDate DESC
END
ELSE
BEGIN
SELECT BK.BOOKINGAMOUNT, M.MODEOFPAYMENT as PAYMENTMODE, BK.BookingStatusID,BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,BK.BOOKINGLOCATION,CONVERT(VARCHAR,BK.BOOKINGTIME,8) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS 
ON	BK.BookingStatusID=BS.BookingStatusID JOIN DBO.TBLPAYMENT P ON BK.BookingID=P.BOOKINGID JOIN DBO.TBLMODEOFPAYMENT M ON P.MODEOFPAYMENTID=M.MODEOFPAYMENTID
WHERE  BK.BookingStatusID IN (1,4,5,6,7) ORDER BY BK.UpdatedDate DESC
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CHANGEBOOKINGSTATUS]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CHANGEBOOKINGSTATUS]  
(  
@BOOKINGID INT,  
@BOOKINGSTATUSID INT  
)  
AS  
BEGIN  
BEGIN TRY  
UPDATE DBO.TBLBOOKING SET BOOKINGSTATUSID=@BOOKINGSTATUSID,UpdatedDate=GETDATE(),
TimeIn=CASE WHEN @BOOKINGSTATUSID = 3 THEN GETDATE() ELSE  TimeIn END,
TimeOut=CASE WHEN @BOOKINGSTATUSID = 6 THEN GETDATE() ELSE TimeOut END
WHERE BOOKINGID=@BOOKINGID  
RETURN 1  
END TRY  
BEGIN CATCH  
RETURN 0  
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Certifications]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Get_Certifications]

AS  
BEGIN  
     SELECT CertificationID,CertificationName from tblCertifications
END  

GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Cities]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Get_Cities]  
(  
@StateID int  
)  
AS    
BEGIN 
	if(@StateID <> 0)
	begin
     SELECT CityID,CityName from tblCity where StateID=@StateID  
	end
	else
	begin
		SELECT CityID,CityName from tblCity
	end
END  
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Languages]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_Get_Languages]

AS  
BEGIN  
     SELECT LanguageID,LanguageName from tblLanguage
END  
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_ModeOfPayment]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_Get_ModeOfPayment]

AS  
BEGIN  
     SELECT ModeOfPaymentID,ModeOfPayment from tblModeOfPayment
END  
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Occupation]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Get_Occupation]

AS  
BEGIN  
     SELECT OccupationID,OccupationName from tblOccupation
END  
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_SocialNetwork]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Get_SocialNetwork]

AS  
BEGIN  
     SELECT SocialNetworkID,SocialNetworkName from tblSocialNetwork
END  

GO
/****** Object:  StoredProcedure [dbo].[SP_Get_States]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Get_States]

AS  
BEGIN  
     SELECT StateID,StateName from tblState where CountryID=1
END 
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Title]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_Get_Title]

AS  
BEGIN  
     SELECT TitleID,TitleName from tblTitle
END  
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_User]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Get_User]  
(  
@User_MobileNumber nvarchar(50)  
)  
AS    
BEGIN    
     SELECT UserID,UserTypeID,User_MobileNumber  from dbo.tblUser where User_MobileNumber=@User_MobileNumber and User_Status=1 
END 
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Vendor]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Get_Vendor]  
(  
@Vendor_MobileNumber nvarchar(50)  
)  
AS    
BEGIN    
     SELECT VendorID,UserTypeID, Vendor_MobileNumber  from dbo.tblVendor where Vendor_MobileNumber=@Vendor_MobileNumber and Vendor_Status=1
END 
GO
/****** Object:  StoredProcedure [dbo].[SP_GETORDERDETAILS]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GETORDERDETAILS]
(
@USERID INT NULL,
@BOOKINGID INT NULL,
@ORDERNO NVARCHAR(50) NULL,
@INVOICENO  NVARCHAR(50) NULL
)
AS
BEGIN
SELECT S.SERVICENAME,B.ORDERNO,CONVERT(VARCHAR,P.PAYMENTDATE,103) AS PAYMENTDATE,U.USER_EMAILID AS EMAILID,P.AMOUNTPAID AS TOTAL,M.MODEOFPAYMENT FROM DBO.TBLPAYMENT P JOIN DBO.TBLBOOKING B ON P.BOOKINGID=B.BOOKINGID JOIN DBO.TBLBILLING L ON 
L.BOOKINGID=P.BOOKINGID JOIN DBO.TBLUSER U ON U.USERID=P.USERID JOIN DBO.TBLMODEOFPAYMENT M ON P.MODEOFPAYMENTID=M.MODEOFPAYMENTID
JOIN DBO.TBLSERVICE S ON S.SERVICEID=B.SERVICEID
WHERE P.INVOICENO=@INVOICENO
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPatientData]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GetPatientData]
AS
BEGIN
SELECT PatientName,PatientIllness FROM DBO.TBLPATIENT
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GETSERVICEDETAILS]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GETSERVICEDETAILS]  
@SERVICEID INT  
AS  
BEGIN  
SELECT DISTINCT VS.VENDORID,S.SERVICEID,SERVICETYPEID, SERVICENAME, SERVICE_SHORT_DESCRIPTION AS ShortDescription, SERVICE_LONG_DESCRIPTION AS LongDescription, K.INSIGHTNAME AS Insight FROM DBO.TBLSERVICE S   
JOIN DBO.[TBLKEYINSIGHTS] K ON K.SERVICEID=S.SERVICEID  
JOIN DBO.TBLVENDORSERVICE VS ON VS.SERVICEID=S.SERVICEID WHERE S.SERVICEID=  @SERVICEID 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GETSERVICES]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GETSERVICES]  
@SERVICETYPEID INT,  
@CITYID INT  
AS  
BEGIN  
SELECT S.SERVICEID,S.SERVICENAME FROM DBO.TBLSERVICE S JOIN DBO.TBLSERVICECITY C ON 
S.SERVICEID  = C.SERVICEID WHERE C.CITYID=@CITYID AND SERVICETYPEID=@SERVICETYPEID  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GETSERVICETYPES]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GETSERVICETYPES]
@CITYID INT
AS
BEGIN
SELECT S.SERVICETYPEID,S.SERVICENAME FROM DBO.TBLSERVICETYPE S JOIN DBO.TBLSERVICETYPECITY C ON 
S.ServiceTypeID  = C.ServiceTypeId WHERE C.CITYID=@CITYID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GETUSERDETAILS]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GETUSERDETAILS]
(
@USERID INT
)
AS
BEGIN
SELECT T.USER_NAME AS USERNAME,User_MobileNumber AS MOBILENUMBER,User_Address1 AS ADDRESS,User_EmailID AS EMAILID,
USER_PINCODE AS PINCODE, C.CityID,C.CityName
FROM DBO.TBLUSER T JOIN DBO.tblCity C ON C.CityID=T.CityID
WHERE USERID=@USERID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_User]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Insert_User]    
(  
@User_MobileNumber nvarchar(50)  
)  
AS  
BEGIN  
SET NOCOUNT ON;  
BEGIN  
TRY   
	Declare @UserId int
     Insert into dbo.tblUser(User_MobileNumber,UserTypeID,User_Status,CreatedDate) values(@User_MobileNumber,1,1,GETDATE())    
	SET @UserId=SCOPE_IDENTITY()
	Select UserID,UserTypeID from tblUser where UserID=@UserId
END TRY  
BEGIN CATCH  
return 0  
END CATCH  
END 
GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_Vendor]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Insert_Vendor]
(
@TitleID int,@Vendor_FirstName nvarchar(50),@Vendor_MiddleName nvarchar(50),@Vendor_LastName nvarchar(50),
@Vendor_NickName nvarchar(50),@Vendor_Gothram nvarchar(50),@Vendor_FatherName nvarchar(50) ,@Vendor_Gender nvarchar(10),
@Vendor_Occupation nvarchar(50),@Vendor_Height decimal(18,2),@Vendor_Weight decimal(18,2),@Vendor_DOB nvarchar(50)
,@Vendor_Age int,@Vendor_PlaceofBirth nvarchar(50),@Vendor_Address1 nvarchar(500),@Vendor_PinCode1 nvarchar(50)
,@Vendor_Address2 nvarchar(500),@Vendor_PinCode2 nvarchar(50),@Vendor_MobileNumber nvarchar(50),
@Vendor_AlternateNumber nvarchar(50),@Vendor_EmailID nvarchar(50),@Vendor_PANNumber nvarchar(50),
@Vendor_AadharNumber nvarchar(50),@Vendor_IdentificationMark1 nvarchar(50),@Vendor_IdentificationMark2 nvarchar(50),
@Vendor_EmergencyContactPerson nvarchar(50),@Vendor_EmergencyContactNumber nvarchar(50),
@Vendor_NameOnPassBook nvarchar(50),@Vendor_BankName nvarchar(50),@Vendor_AccountNumber nvarchar(50)
,@Vendor_IFSCCode nvarchar(50)
,@Vendor_MICRCode nvarchar(50),@Vendor_AreasOfActivity nvarchar(50),
@VendorCertifications TT_VendorCertifications READONLY ,
@VendorSocialNetworks TT_VendorSocialNetworks READONLY
--@VendorRelationShips TT_VendorRelationShip READONLY,
--@VendorSpecializations TT_VendorSpecialization READONLY

)
AS
BEGIN
SET NOCOUNT ON;
BEGIN
TRY
DECLARE @VendorID int
INSERT INTO dbo.tblVendor (TitleID,Vendor_FirstName,Vendor_MiddleName,Vendor_LastName,
                           Vendor_NickName,Vendor_Gothram,Vendor_FatherName,Vendor_Gender,
						   Vendor_Occupation,Vendor_Height,Vendor_Weight,Vendor_DOB,Vendor_Age,
						   Vendor_PlaceofBirth,Vendor_Address1,Vendor_PinCode1,Vendor_Address2,Vendor_PinCode2,
						   Vendor_MobileNumber,Vendor_AlternateNumber,Vendor_EmailID,Vendor_PANNumber,
                           Vendor_AadharNumber,Vendor_IdentificationMark1,Vendor_IdentificationMark2,
						   Vendor_EmergencyContactPerson,Vendor_EmergencyContactNumber,
						   Vendor_NameOnPassBook,Vendor_BankName,Vendor_AccountNumber,Vendor_IFSCCode,Vendor_MICRCode,
						   Vendor_AreasOfActivity,UserTypeID,Vendor_Status,CreatedDate)
VALUES (@TitleID,@Vendor_FirstName,@Vendor_MiddleName,@Vendor_LastName,
                           @Vendor_NickName,@Vendor_Gothram,@Vendor_FatherName,@Vendor_Gender,
						   @Vendor_Occupation,@Vendor_Height,@Vendor_Weight,@Vendor_DOB,@Vendor_Age,
						   @Vendor_PlaceofBirth,@Vendor_Address1,@Vendor_PinCode1,@Vendor_Address2,@Vendor_PinCode2,
						   @Vendor_MobileNumber,@Vendor_AlternateNumber,@Vendor_EmailID,@Vendor_PANNumber,
                           @Vendor_AadharNumber,@Vendor_IdentificationMark1,@Vendor_IdentificationMark2,
						   @Vendor_EmergencyContactPerson,@Vendor_EmergencyContactNumber,
						   @Vendor_NameOnPassBook,@Vendor_BankName,@Vendor_AccountNumber,@Vendor_IFSCCode,@Vendor_MICRCode,
						   @Vendor_AreasOfActivity,2,1,GETDATE())



SELECT @VendorID=@@IDENTITY
IF(SELECT COUNT(*)  FROM @VendorCertifications) > 0
BEGIN
INSERT INTO dbo.tblVendorCertifications(VendorID,CertificationID,createddate)
SELECT @VendorID,CertificationID,GETDATE()  FROM @VendorCertifications 
END

IF(SELECT COUNT(*)  FROM @VendorSocialNetworks) > 0
BEGIN
INSERT INTO [dbo].[tblVendorSocialNetwork] (VendorID,SocialNetworkID,SocialNetworkURL)
SELECT  @VendorID,SocialNetworkID,SocialNetworkURL FROM @VendorSocialNetworks 
END
 
--BEGIN
--INSERT INTO tblRelationShip (RelationShipName,VendorID,Name,Gender)
--SELECT RelationShipName,@VendorID,Name,Gender FROM @VendorRelationShips

--END

--BEGIN
--INSERT INTO tblSpecialization(VendorID,SpecializationName)
--SELECT @VendorID,SpecializationName FROM @VendorSpecializations 

--END

return 1
END TRY
BEGIN CATCH
return 0
END CATCH
--SET @id=SCOPE_IDENTITY()
--      RETURN  @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertVendorEnquiry]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_InsertVendorEnquiry]  
(
@Name nvarchar(50),
@MobileNumber nvarchar(250),
@EmailID varchar(50),
@Description nvarchar(200),
@CityID int
)
AS
BEGIN
SET NOCOUNT ON;
BEGIN
TRY  
     Insert into dbo.tblVendorEnquiry(Name,MobileNumber,EmailID,CityID,Description) values(@Name,@MobileNumber,@EmailID,@CityID,@Description)  
	 return 1
END TRY
BEGIN CATCH
return 0
END CATCH
END  
GO
/****** Object:  StoredProcedure [dbo].[sp_RegisterUser]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_RegisterUser]
(
@name nvarchar(50),
@email nvarchar(50)
--@id int output
)
AS
BEGIN
SET NOCOUNT ON;
BEGIN
TRY
INSERT INTO dbo.tblUser (User_Name,User_EmailID)
VALUES (@name,@email)
return 1
END TRY
BEGIN CATCH
return 0
END CATCH
--SET @id=SCOPE_IDENTITY()
--      RETURN  @id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_savepatient]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_savepatient]
(
@PatientName NVARCHAR(50),
@PatientIllness nvarchar(50)
)
as
begin
insert into dbo.tblPatient values (@PatientName,@PatientIllness)
return 1
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SEARCHSERVICE]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_SEARCHSERVICE]
(
@SEARCH NVARCHAR(50)
)
AS
BEGIN
SELECT * FROM DBO.tblService WHERE SERVICENAME LIKE '%' + @SEARCH + '%' OR KEYWORD LIKE '%' + @SEARCH + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_test]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_test]
(
@testtype testtype READONLY
)
as
begin
insert into test 
select 4, ActivityName, Rating from  @testtype
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Update_UserProfile]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Update_UserProfile]    
(  
@UserId int,
@User_MobileNumber nvarchar(50),  
@CountryID int,@StateID int,@CityID int,  
--@User_Name nvarchar(50),  
@User_EmailID nvarchar(50),@User_Address1 nvarchar(50),@User_PinCode nvarchar(50)  
--@User_Status nvarchar(50),@User_Latitude nvarchar(50),@User_Longitude nvarchar(50)  
)  
AS  
BEGIN  
SET NOCOUNT ON;  
BEGIN  
TRY   
     update dbo.tblUser set CountryID=@CountryID,StateID=@StateID,CityID=@CityID,User_EmailID=@User_EmailID,  
  User_Address1=@User_Address1,User_PinCode=@User_PinCode,User_Status='1', User_MobileNumber=@User_MobileNumber,
	modifieddate=getdate()
   where UserId=@UserId  
  return 1  
END TRY  
BEGIN CATCH  
return 0  
END CATCH  
END 
GO
/****** Object:  StoredProcedure [dbo].[SP_USERBOOKING]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_USERBOOKING]
(
@BOOKINGDATE DATETIME,
@VENDORID INT,
@BOOKINGTYPE NVARCHAR(50),
@SERVICETYPEID INT,
@SERVICEID INT,
@BOOKINGSTATUSID INT,
@USERID INT,
@BOOKINGLOCATION NVARCHAR(100),
@BOOKINGTIME TIME,
@ReviewComments NVARCHAR(100),
@ISDIFFERENTLOCATION NVARCHAR(1),
@CITYID INT,
@PINCODE NVARCHAR(20),
@NEWCITYID INT,
@NEWPINCODE NVARCHAR(20),
@NEWADDRESS NVARCHAR(100),
@USERNAME NVARCHAR(50),
@MOBILENUMBER NVARCHAR(50),
@EMAILID NVARCHAR(50),
@PACKAGEID INT,
@ORDERNO NVARCHAR(50),
@PAYMENTMODE INT,
@PAYMENTSTATUS INT,
@INVOICENO NVARCHAR(50),
@TOTALAMOUNT INT

)
AS
BEGIN
SET NOCOUNT ON;
BEGIN
TRY
DECLARE @BOOKINGID INT

IF(@USERID <> 0)
BEGIN
UPDATE DBO.TBLUSER SET USER_NAME=@USERNAME,USER_MOBILENUMBER=@MOBILENUMBER,USER_EMAILID=@EMAILID,
	CITYID=@CITYID, USER_ADDRESS1=@BOOKINGLOCATION, USER_PINCODE=@PINCODE, MODIFIEDDATE=GETDATE()
	WHERE USERID=@USERID
END
ELSE
BEGIN
INSERT INTO DBO.TBLUSER (USER_NAME,USER_MOBILENUMBER,USER_EMAILID,CITYID,USER_ADDRESS1,USER_PINCODE,CREATEDDATE)
VALUES (@USERNAME,@MOBILENUMBER,@EMAILID,@CITYID,@BOOKINGLOCATION,@PINCODE,GETDATE())
SET @USERID=SCOPE_IDENTITY()
END

INSERT INTO [dbo].[tblBooking]
           ([BookingDate]
           ,[VendorID]
           ,[BookingType]
           ,[ServiceTypeID]
           ,[ServiceID]
           ,[BookingStatusID]
           ,[UserID]
           ,[BookingLocation]
           ,[ReviewComments]
           ,[BookingTime]
		   ,PACKAGEID
		   ,CREATEDDATE
		   ,UPDATEDDATE
		   ,BOOKINGAMOUNT
		   ,ORDERNO)
     VALUES(
           @BookingDate,
           @VendorID,
           @BookingType,
           @ServiceTypeID, 
           @ServiceID, 
           @BookingStatusID, 
           @UserID, 
           @BookingLocation,
           @ReviewComments, 
           @BookingTime,
		   @PACKAGEID,
		   GETDATE(),
		   GETDATE(),
		   @TOTALAMOUNT,
		   @ORDERNO
		   )

SET @BOOKINGID=SCOPE_IDENTITY()

INSERT INTO DBO.TBLBILLING(BOOKINGID,USERID,BILLINGADDRESS,CITYID,PINCODE,CREATEDDATE,UPDATEDDATE)
VALUES (@BOOKINGID,@USERID,
		CASE WHEN @ISDIFFERENTLOCATION = 'Y' THEN @NEWADDRESS ELSE @BOOKINGLOCATION END,
		CASE WHEN @ISDIFFERENTLOCATION = 'Y' THEN @NEWCITYID ELSE @CITYID END,
		CASE WHEN @ISDIFFERENTLOCATION = 'Y' THEN @NEWPINCODE ELSE @PINCODE END,
		GETDATE(),
		GETDATE()
		)

INSERT INTO DBO.TBLPAYMENT(USERID,MODEOFPAYMENTID,PAYMENTDATE,PAYMENTSTATUS,VENDORID,AMOUNTPAID,INVOICENO,BOOKINGID)
VALUES (@USERID,@PAYMENTMODE,GETDATE(),@PAYMENTSTATUS,@VENDORID,@TOTALAMOUNT,@INVOICENO,@BOOKINGID)



return 1
END TRY
BEGIN CATCH
return 0
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_USERONGOING]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_USERONGOING]
(
@USERID INT
)
AS
BEGIN
SELECT BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,BK.BOOKINGLOCATION,CONVERT(VARCHAR,BK.BOOKINGTIME,8) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS 
ON	BK.BookingStatusID=BS.BookingStatusID
WHERE U.USERID=@USERID ORDER BY BK.CREATEDDATE DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_USERPACKAGES]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_USERPACKAGES]  
(  
@SERVICEID INT  
)  
AS  
BEGIN  
SELECT P.PackageID,P.PackageName,P.PRICE,R.PROCEDURENAME,I.ITEMNAME,I.ITEMPRICE,S.SERVICENAME,C.CITYNAME FROM DBO.TBLPACKAGES P JOIN DBO.TBLPROCEDURE R ON P.PackageID=R.PACKAGEID   
JOIN  DBO.TBLPOOJAITEM I ON I.PACKAGEID=P.PackageID JOIN DBO.TBLSERVICE S ON P.ServiceId=S.ServiceId JOIN DBO.TBLSERVICECITY SC ON  S.ServiceID=SC.ServiceId 
JOIN DBO.TBLCITY C ON C.CityID=SC.CITYID WHERE P.ServiceId=@SERVICEID  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_VENDORONGOING]    Script Date: 10/9/2020 5:56:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_VENDORONGOING]  
(  
@VENDORID INT,  
@CALENDARTYPE NVARCHAR(50)  
)  
AS  
BEGIN  
IF(@CALENDARTYPE = 'CURRENT')  
BEGIN  
SELECT BK.BOOKINGAMOUNT AS TOTAL, CONVERT(varchar(15),BK.TIMEIN,100) AS TIMEIN,CONVERT(varchar(15),BK.TIMEOUT,100) AS TIMEOUT,U.User_MobileNumber AS MOBILENUMBER,U.USER_EMAILID AS EMAILID,PK.PackageName,BK.RatingsID,BK.ReviewComments,C.CityName,L.PinCode,
BK.BookingStatusID, BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,L.BillingAddress AS BookingLocation,CONVERT(varchar(15),BK.BOOKINGTIME,100) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID  
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS ON BK.BookingStatusID=BS.BookingStatusID   
JOIN DBO.TBLBILLING L ON L.BOOKINGID=BK.BOOKINGID JOIN tblCity C ON C.CityID=L.CityId   
JOIN tblPackages PK ON PK.PackageID=BK.PACKAGEID   
WHERE V.VENDORID=@VENDORID AND BK.BookingStatusID <> 7 AND  CAST(BK.BookingDate AS DATE) = CAST(GETDATE() AS DATE)  
ORDER BY BK.CREATEDDATE DESC  
  
  
END  
IF(@CALENDARTYPE = 'TOMORROW')  
BEGIN  
SELECT BK.BOOKINGAMOUNT AS TOTAL, CONVERT(varchar(15),BK.TIMEIN,100) AS TIMEIN,CONVERT(varchar(15),BK.TIMEOUT,100) AS TIMEOUT,U.User_MobileNumber AS MOBILENUMBER,U.USER_EMAILID AS EMAILID,PK.PackageName,BK.RatingsID,BK.ReviewComments,C.CityName,L.PinCode,
BK.BookingStatusID, BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,L.BillingAddress AS BookingLocation,CONVERT(varchar(15),BK.BOOKINGTIME,100) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID  
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS ON BK.BookingStatusID=BS.BookingStatusID   
JOIN DBO.TBLBILLING L ON L.BOOKINGID=BK.BOOKINGID JOIN tblCity C ON C.CityID=L.CityId   
JOIN tblPackages PK ON PK.PackageID=BK.PACKAGEID   
WHERE V.VENDORID=@VENDORID AND BK.BookingStatusID <> 7 AND  CAST(BK.BookingDate AS DATE) = CAST(GETDATE() + 1 AS DATE)  
ORDER BY BK.CREATEDDATE DESC  
END  
IF(@CALENDARTYPE = 'WEEK')  
BEGIN  
SELECT BK.BOOKINGAMOUNT AS TOTAL, CONVERT(varchar(15),BK.TIMEIN,100) AS TIMEIN,CONVERT(varchar(15),BK.TIMEOUT,100) AS TIMEOUT,U.User_MobileNumber AS MOBILENUMBER,U.USER_EMAILID AS EMAILID,PK.PackageName,BK.RatingsID,BK.ReviewComments,C.CityName,L.PinCode,
BK.BookingStatusID, BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,L.BillingAddress AS BookingLocation,CONVERT(varchar(15),BK.BOOKINGTIME,100) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID  
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS ON BK.BookingStatusID=BS.BookingStatusID   
JOIN DBO.TBLBILLING L ON L.BOOKINGID=BK.BOOKINGID JOIN tblCity C ON C.CityID=L.CityId   
JOIN tblPackages PK ON PK.PackageID=BK.PACKAGEID  
WHERE V.VENDORID=@VENDORID AND BK.BookingStatusID <> 7 AND  DATEPART(wk, bk.BOOKINGDATE) = DATEPART(wk, GETDATE())  
ORDER BY BK.CREATEDDATE DESC  
END  
IF(@CALENDARTYPE = 'UPCOMING')  
BEGIN  
SELECT BK.BOOKINGAMOUNT AS TOTAL, CONVERT(varchar(15),BK.TIMEIN,100) AS TIMEIN,CONVERT(varchar(15),BK.TIMEOUT,100) AS TIMEOUT,U.User_MobileNumber AS MOBILENUMBER,U.USER_EMAILID AS EMAILID,PK.PackageName,BK.RatingsID,BK.ReviewComments,C.CityName,L.PinCode,
BK.BookingStatusID, BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,L.BillingAddress AS BookingLocation,CONVERT(varchar(15),BK.BOOKINGTIME,100) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID  
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS ON BK.BookingStatusID=BS.BookingStatusID   
JOIN DBO.TBLBILLING L ON L.BOOKINGID=BK.BOOKINGID JOIN tblCity C ON C.CityID=L.CityId   
JOIN tblPackages PK ON PK.PackageID=BK.PACKAGEID   
WHERE V.VENDORID=@VENDORID AND BK.BookingStatusID <> 7 AND  DATEPART(wk, bk.BOOKINGDATE) > DATEPART(wk, GETDATE()) AND  
BK.BookingStatusID NOT IN (4,5)    
ORDER BY BK.CREATEDDATE DESC  
END  
IF(@CALENDARTYPE = 'HISTORY')  
BEGIN  
SELECT BK.BOOKINGAMOUNT AS TOTAL, CONVERT(varchar(15),BK.TIMEIN,100) AS TIMEIN,CONVERT(varchar(15),BK.TIMEOUT,100) AS TIMEOUT,U.User_MobileNumber AS MOBILENUMBER,U.USER_EMAILID AS EMAILID,PK.PackageName,BK.RatingsID,BK.ReviewComments,C.CityName,L.PinCode
,BK.BookingStatusID, BK.BOOKINGID,CONVERT(VARCHAR,BK.BOOKINGDATE,103) AS BOOKINGDATE,L.BillingAddress AS BookingLocation,CONVERT(varchar(15),BK.BOOKINGTIME,100) AS BOOKINGTIME,U.USER_NAME AS USERNAME,V.VENDOR_FIRSTNAME AS VENDORNAME,S.SERVICENAME,BK.SERVICEID,BS.BOOKINGSTATUSNAME AS BOOKINGSTATUS FROM DBO.TBLBOOKING BK WITH (NOLOCK) JOIN DBO.TBLUSER U ON BK.USERID=U.USERID  
JOIN TBLVENDOR V ON V.VENDORID=BK.VENDORID JOIN TBLSERVICE S ON S.SERVICEID=BK.SERVICEID JOIN TBLBOOKINGSTATUS BS ON BK.BookingStatusID=BS.BookingStatusID   
JOIN DBO.TBLBILLING L ON L.BOOKINGID=BK.BOOKINGID JOIN tblCity C ON C.CityID=L.CityId   
JOIN tblPackages PK ON PK.PackageID=BK.PACKAGEID   
WHERE V.VENDORID=@VENDORID AND BK.BookingStatusID in (4,5)    
ORDER BY BK.CREATEDDATE DESC  
END  
END
GO
USE [master]
GO
ALTER DATABASE [Brahmasmi] SET  READ_WRITE 
GO
