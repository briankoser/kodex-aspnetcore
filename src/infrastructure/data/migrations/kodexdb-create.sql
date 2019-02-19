USE [master]
GO

/****** Object:  Database [kodexdb]    Script Date: 2/19/2019 10:43:54 AM ******/
CREATE DATABASE [kodexdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kodexdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\kodexdb.mdf' , SIZE = 8192KB , MAXSIZE = 4194304KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kodexdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\kodexdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [kodexdb] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kodexdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [kodexdb] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [kodexdb] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [kodexdb] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [kodexdb] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [kodexdb] SET ARITHABORT OFF 
GO

ALTER DATABASE [kodexdb] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [kodexdb] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [kodexdb] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [kodexdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [kodexdb] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [kodexdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [kodexdb] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [kodexdb] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [kodexdb] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [kodexdb] SET  ENABLE_BROKER 
GO

ALTER DATABASE [kodexdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [kodexdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [kodexdb] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [kodexdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [kodexdb] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [kodexdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [kodexdb] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [kodexdb] SET RECOVERY FULL 
GO

ALTER DATABASE [kodexdb] SET  MULTI_USER 
GO

ALTER DATABASE [kodexdb] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [kodexdb] SET DB_CHAINING OFF 
GO

ALTER DATABASE [kodexdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [kodexdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [kodexdb] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [kodexdb] SET QUERY_STORE = OFF
GO

USE [kodexdb]
GO

ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [kodexdb] SET  READ_WRITE 
GO