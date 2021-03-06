USE [master]
GO
/****** Object:  Database [PPPK]    Script Date: 1/23/2020 12:45:47 PM ******/
CREATE DATABASE [PPPK]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PPPK', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PPPK.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PPPK_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PPPK_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PPPK] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PPPK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PPPK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PPPK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PPPK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PPPK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PPPK] SET ARITHABORT OFF 
GO
ALTER DATABASE [PPPK] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PPPK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PPPK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PPPK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PPPK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PPPK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PPPK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PPPK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PPPK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PPPK] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PPPK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PPPK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PPPK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PPPK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PPPK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PPPK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PPPK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PPPK] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PPPK] SET  MULTI_USER 
GO
ALTER DATABASE [PPPK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PPPK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PPPK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PPPK] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PPPK] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PPPK] SET QUERY_STORE = OFF
GO
USE [PPPK]
GO
/****** Object:  Table [dbo].[Drzava]    Script Date: 1/23/2020 12:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drzava](
	[IDDrzava] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDrzava] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grad]    Script Date: 1/23/2020 12:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grad](
	[IDGrad] [int] IDENTITY(1,1) NOT NULL,
	[DrzavaID] [int] NULL,
	[Naziv] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDGrad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KategorijaServis]    Script Date: 1/23/2020 12:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KategorijaServis](
	[IDKategorijaServis] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKategorijaServis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KategorijaTrosak]    Script Date: 1/23/2020 12:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KategorijaTrosak](
	[IDKategorijaTrosak] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKategorijaTrosak] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PutniNalog]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PutniNalog](
	[IDPutniNalog] [int] IDENTITY(1,1) NOT NULL,
	[VozacID] [int] NULL,
	[DatumOdlaska] [datetime] NULL,
	[DatumDolaska] [datetime] NULL,
	[BrojSati] [int] NULL,
	[BrojDnevnica] [int] NULL,
	[IznosDnevnice] [int] NULL,
	[Opis] [nvarchar](100) NULL,
	[VoziloID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPutniNalog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PutniNalogVozilo]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PutniNalogVozilo](
	[IDPutniNalogVozila] [int] IDENTITY(1,1) NOT NULL,
	[PutniNalogID] [int] NULL,
	[VoziloID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPutniNalogVozila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relacija]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relacija](
	[IDRelacija] [int] IDENTITY(1,1) NOT NULL,
	[GradPolazakID] [int] NULL,
	[GradDolazakID] [int] NULL,
	[PutniNalogID] [int] NULL,
	[Kilometraza] [int] NULL,
	[PrijevozIznos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDRelacija] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servis]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servis](
	[IDServis] [int] IDENTITY(1,1) NOT NULL,
	[VoziloID] [int] NULL,
	[Cijena] [float] NULL,
	[Opis] [nvarchar](200) NULL,
	[Datum] [date] NULL,
	[KategorijaServisID] [int] NOT NULL,
 CONSTRAINT [PK__Servis__076CF51403E29FD9] PRIMARY KEY CLUSTERED 
(
	[IDServis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trosak]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trosak](
	[IDTrosak] [int] IDENTITY(1,1) NOT NULL,
	[KategorijaTrosakID] [int] NULL,
	[PutniNalogID] [int] NULL,
	[Cijena] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTrosak] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vozac]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vozac](
	[IDVozac] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[Mobitel] [nvarchar](15) NULL,
	[VozackaDozvola] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVozac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vozilo]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vozilo](
	[IDVozilo] [int] IDENTITY(1,1) NOT NULL,
	[Tip] [nvarchar](30) NULL,
	[Marka] [nvarchar](30) NULL,
	[StanjeKilometra] [int] NULL,
	[GodinaProizvodnje] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVozilo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Grad]  WITH CHECK ADD FOREIGN KEY([DrzavaID])
REFERENCES [dbo].[Drzava] ([IDDrzava])
GO
ALTER TABLE [dbo].[PutniNalog]  WITH CHECK ADD FOREIGN KEY([VozacID])
REFERENCES [dbo].[Vozac] ([IDVozac])
GO
ALTER TABLE [dbo].[PutniNalog]  WITH CHECK ADD FOREIGN KEY([VoziloID])
REFERENCES [dbo].[Vozilo] ([IDVozilo])
GO
ALTER TABLE [dbo].[PutniNalogVozilo]  WITH CHECK ADD FOREIGN KEY([PutniNalogID])
REFERENCES [dbo].[PutniNalog] ([IDPutniNalog])
GO
ALTER TABLE [dbo].[PutniNalogVozilo]  WITH CHECK ADD FOREIGN KEY([VoziloID])
REFERENCES [dbo].[Vozilo] ([IDVozilo])
GO
ALTER TABLE [dbo].[Relacija]  WITH CHECK ADD FOREIGN KEY([GradDolazakID])
REFERENCES [dbo].[Grad] ([IDGrad])
GO
ALTER TABLE [dbo].[Relacija]  WITH CHECK ADD FOREIGN KEY([GradPolazakID])
REFERENCES [dbo].[Grad] ([IDGrad])
GO
ALTER TABLE [dbo].[Relacija]  WITH CHECK ADD FOREIGN KEY([PutniNalogID])
REFERENCES [dbo].[PutniNalog] ([IDPutniNalog])
GO
ALTER TABLE [dbo].[Servis]  WITH CHECK ADD  CONSTRAINT [FK_ServisKategorija] FOREIGN KEY([KategorijaServisID])
REFERENCES [dbo].[KategorijaServis] ([IDKategorijaServis])
GO
ALTER TABLE [dbo].[Servis] CHECK CONSTRAINT [FK_ServisKategorija]
GO
ALTER TABLE [dbo].[Servis]  WITH CHECK ADD  CONSTRAINT [FK_ServisVozilo] FOREIGN KEY([VoziloID])
REFERENCES [dbo].[Vozilo] ([IDVozilo])
GO
ALTER TABLE [dbo].[Servis] CHECK CONSTRAINT [FK_ServisVozilo]
GO
ALTER TABLE [dbo].[Trosak]  WITH CHECK ADD FOREIGN KEY([KategorijaTrosakID])
REFERENCES [dbo].[KategorijaTrosak] ([IDKategorijaTrosak])
GO
ALTER TABLE [dbo].[Trosak]  WITH CHECK ADD FOREIGN KEY([PutniNalogID])
REFERENCES [dbo].[PutniNalog] ([IDPutniNalog])
GO
/****** Object:  StoredProcedure [dbo].[AddDrzava]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddDrzava]
	@IDDrzava int,
	@Naziv nvarchar(30)
AS
	IF @IDDrzava IS NOT NULL
	BEGIN
		SET IDENTITY_INSERT dbo.Drzava ON
		INSERT INTO dbo.Drzava(IDDrzava,Naziv) VALUES(@IDDrzava,@Naziv)
		SET IDENTITY_INSERT dbo.Drzava OFF
	END
	ELSE
	BEGIN
		INSERT INTO dbo.Drzava(Naziv) VALUES(@Naziv)
	END

GO
/****** Object:  StoredProcedure [dbo].[AddGrad]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddGrad]
	@IDGrad int,
	@DrzavaID int,
	@Naziv nvarchar(30)
AS
IF @IDGrad IS NOT NULL
BEGIN
SET IDENTITY_INSERT dbo.Grad ON
INSERT INTO Grad(IDGrad, DrzavaID, Naziv) VALUES(@IDGrad,@DrzavaID,@Naziv)
SET IDENTITY_INSERT dbo.Grad OFF
END
ELSE
BEGIN
INSERT INTO Grad(DrzavaID, Naziv) VALUES(@DrzavaID,@Naziv)
END

GO
/****** Object:  StoredProcedure [dbo].[AddKategorijaServis]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddKategorijaServis]
	@IDKategorijaServis int,
	@Naziv nvarchar(30)
AS
BEGIN
	IF @IDKategorijaServis IS NOT NULL
		BEGIN
		SET IDENTITY_INSERT dbo.KategorijaServis ON
		INSERT INTO KategorijaServis(IDKategorijaServis, Naziv) VALUES(@IDKategorijaServis, @Naziv)
		SET IDENTITY_INSERT dbo.KategorijaServis OFF
		END
	ELSE
		BEGIN
		INSERT INTO KategorijaServis VALUES(@Naziv)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[AddKategorijaTrosak]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddKategorijaTrosak]
	@IDKategorijaTrosak int,
	@Naziv nvarchar(30)
AS
BEGIN
	IF @IDKategorijaTrosak IS NOT NULL
		BEGIN
		SET IDENTITY_INSERT dbo.KategorijaTrosak ON
		INSERT INTO KategorijaTrosak(IDKategorijaTrosak, Naziv) VALUES(@IDKategorijaTrosak, @Naziv)
		SET IDENTITY_INSERT dbo.KategorijaTrosak OFF
		END
	ELSE
		BEGIN
		INSERT INTO KategorijaTrosak VALUES(@Naziv)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[AddPutniNalog]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddPutniNalog]
	@IDPutniNalog int,
	@VozacID int,
	@DatumOdlaska datetime,
	@DatumDolaska datetime,
	@BrojSati int,
	@BrojDnevnica int,
	@IznosDnevnice int,
	@Opis nvarchar(100),
	@VoziloID int
AS
BEGIN
	IF @IDPutniNalog IS NOT NULL
		BEGIN
		SET IDENTITY_INSERT dbo.PutniNalog ON
		INSERT INTO PutniNalog(IDPutniNalog, VozacID, DatumOdlaska, DatumDolaska, BrojSati, BrojDnevnica, IznosDnevnice, Opis, VoziloID) VALUES (@IDPutniNalog, @VozacID, @DatumOdlaska, @DatumDolaska, @BrojSati, @BrojDnevnica, @IznosDnevnice, @Opis, @VoziloID)
		SET IDENTITY_INSERT dbo.PutniNalog OFF
		END
	ELSE
		BEGIN
		INSERT INTO PutniNalog VALUES(@VozacID, @DatumOdlaska, @DatumDolaska, @BrojSati, @BrojDnevnica, @IznosDnevnice, @Opis, @VoziloID)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[AddRelacija]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddRelacija]
	@IDRelacija int,
	@GradPolazakID int,
	@GradDolazakID int,
	@PutniNalogID int,
	@Kilometraza int,
	@PrijevozIznos int
AS
BEGIN
	IF @IDRelacija IS NOT NULL
		BEGIN
		SET IDENTITY_INSERT dbo.Relacija ON
		INSERT INTO Relacija(IDRelacija, GradPolazakID, GradDolazakID, PutniNalogID, Kilometraza, PrijevozIznos) VALUES(@IDRelacija,@GradPolazakID,@GradDolazakID,@PutniNalogID,@Kilometraza,@PrijevozIznos)
		SET IDENTITY_INSERT dbo.Relacija OFF
		END
	ELSE
		BEGIN
		INSERT INTO Relacija VALUES(@GradPolazakID,@GradDolazakID,@PutniNalogID,@Kilometraza,@PrijevozIznos)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[AddServis]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddServis]
	@IDServis int,
	@VoziloID int,
	@Cijena float,
	@Opis nvarchar(200),
	@Datum datetime,
	@KategorijaServisID int
AS
BEGIN
	IF @IDServis IS NOT NULL
		BEGIN
		SET IDENTITY_INSERT dbo.Servis ON
		INSERT INTO Servis(IDServis, VoziloID, Cijena, Opis, Datum, KategorijaServisID) VALUES (@IDServis, @VoziloID, @Cijena, @Opis, @Datum, @KategorijaServisID)
		SET IDENTITY_INSERT dbo.Servis OFF
		END
	ELSE
		BEGIN
		INSERT INTO Servis VALUES (@VoziloID, @Cijena, @Opis, @Datum, @KategorijaServisID)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[AddVozac]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddVozac]
	@IDVozac int,
	@FirstName nvarchar(30),
	@LastName nvarchar(30),
	@Mobitel nvarchar(15),
	@VozackaDozvola nvarchar(15)
AS
BEGIN
	IF @IDVozac IS NOT NULL
		BEGIN
		SET IDENTITY_INSERT dbo.Vozac ON
		INSERT INTO Vozac(IDVozac, FirstName, LastName, Mobitel, VozackaDozvola) VALUES (@IDVozac, @FirstName, @LastName, @Mobitel, @VozackaDozvola)
		SET IDENTITY_INSERT dbo.Vozac OFF
		END
	ELSE
		BEGIN
		INSERT INTO Vozac(FirstName, LastName, Mobitel, VozackaDozvola) VALUES (@FirstName, @LastName, @Mobitel, @VozackaDozvola)
		END

END
GO
/****** Object:  StoredProcedure [dbo].[AddVozilo]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddVozilo]
	@IDVozilo int,
	@Tip nvarchar(30),
	@Marka nvarchar(30),
	@GodinaProizvodnje int,
	@StanjeKilometra int
AS
BEGIN
	IF @IDVozilo IS NOT NULL
		BEGIN
		SET IDENTITY_INSERT dbo.Vozilo ON
		INSERT INTO Vozilo(IDVozilo, Tip, Marka, GodinaProizvodnje, StanjeKilometra) VALUES (@IDVozilo, @Tip, @Marka, @GodinaProizvodnje, @StanjeKilometra)
		SET IDENTITY_INSERT dbo.Vozilo OFF
		END
	ELSE
		BEGIN
		INSERT INTO Vozilo VALUES(@Tip,@Marka,@GodinaProizvodnje,@StanjeKilometra)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[ClearBaza]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ClearBaza]
AS
DELETE FROM Relacija
DBCC CHECKIDENT ('PPPK.dbo.Relacija',RESEED, 0)
DELETE FROM PutniNalog
DBCC CHECKIDENT ('PPPK.dbo.PutniNalog',RESEED, 0)
DELETE FROM Vozac
DBCC CHECKIDENT ('PPPK.dbo.Vozac',RESEED, 0)
DELETE FROM Grad
DBCC CHECKIDENT ('PPPK.dbo.Grad',RESEED, 0)
DELETE FROM Drzava
DBCC CHECKIDENT ('PPPK.dbo.Drzava',RESEED, 0)
DELETE FROM Trosak
DBCC CHECKIDENT ('PPPK.dbo.Trosak',RESEED, 0)
DELETE FROM KategorijaTrosak
DBCC CHECKIDENT ('PPPK.dbo.KategorijaTrosak',RESEED, 0)
DELETE FROM Vozilo
DBCC CHECKIDENT ('PPPK.dbo.Vozilo',RESEED, 0)
DELETE FROM Servis
DBCC CHECKIDENT ('PPPK.dbo.Servis',RESEED, 0)
DELETE FROM KategorijaServis
DBCC CHECKIDENT ('PPPK.dbo.KategorijaServis',RESEED, 0)

GO
/****** Object:  StoredProcedure [dbo].[DeleteDrzava]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteDrzava]
	@IDDrzava int
AS
DELETE FROM Relacija WHERE Relacija.GradDolazakID IN(SELECT Grad.IDGrad FROM Grad WHERE Grad.DrzavaID=@IDDrzava )
DELETE FROM Relacija WHERE Relacija.GradPolazakID IN(SELECT Grad.IDGrad FROM Grad WHERE Grad.DrzavaID=@IDDrzava )
DELETE FROM Grad WHERE Grad.DrzavaID = @IDDrzava
DELETE FROM Drzava WHERE Drzava.IDDrzava = @IDDrzava

GO
/****** Object:  StoredProcedure [dbo].[DeleteGrad]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteGrad]
	@IDGrad int
AS
DELETE FROM Relacija WHERE Relacija.GradDolazakID = @IDGrad
DELETE FROM Relacija WHERE Relacija.GradPolazakID = @IDGrad
DELETE FROM Grad WHERE Grad.IDGrad = @IDGrad
GO
/****** Object:  StoredProcedure [dbo].[DeleteKategorijaServis]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteKategorijaServis]
	@IDKategorijaServis int
AS
BEGIN
DELETE FROM Servis WHERE Servis.KategorijaServisID = @IDKategorijaServis
DELETE FROM KategorijaServis WHERE KategorijaServis.IDKategorijaServis = @IDKategorijaServis
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePutniNalog]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePutniNalog]
	@IDPutniNalog int
AS
UPDATE PutniNalog SET VozacID=NULL,VoziloID=NULL WHERE IDPutniNalog = @IDPutniNalog 
UPDATE Relacija SET PutniNalogID=NULL WHERE PutniNalogID = @IDPutniNalog
DELETE FROM PutniNalog WHERE IDPutniNalog = @IDPutniNalog
GO
/****** Object:  StoredProcedure [dbo].[DeleteRelacija]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteRelacija]
	@IDRelacija int
AS
DELETE FROM Relacija WHERE Relacija.IDRelacija = @IDRelacija
GO
/****** Object:  StoredProcedure [dbo].[DeleteServis]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteServis]
	@IDServis int
AS
DELETE FROM Servis WHERE Servis.IDServis = @IDServis
GO
/****** Object:  StoredProcedure [dbo].[DeleteVozac]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteVozac]
	@IDVozac int
AS
DELETE FROM Relacija WHERE PutniNalogID  IN (SELECT p.IDPutniNalog FROM PutniNalog as p WHERE p.VozacID = @IDVozac)
DELETE FROM PutniNalog WHERE VozacID = @IDVozac
DELETE FROM Vozac WHERE Vozac.IDVozac = @IDVozac
GO
/****** Object:  StoredProcedure [dbo].[DeleteVozilo]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteVozilo]
	@IDVozilo int
AS
--DELETE FROM Relacija WHERE Relacija.PutniNalogID IN (SELECT PutniNalog.IDPutniNalog FROM PutniNalog WHERE PutniNalog.VoziloID = @IDVozilo)
UPDATE PutniNalog SET PutniNalog.VoziloID = NULL WHERE PutniNalog.VoziloID = @IDVozilo
UPDATE Servis SET Servis.VoziloID = NULL WHERE Servis.VoziloID = @IDVozilo
DELETE FROM Vozilo WHERE Vozilo.IDVozilo = @IDVozilo
GO
/****** Object:  StoredProcedure [dbo].[GET_VOZACI]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GET_VOZACI]
AS
SELECT * FROM Driver
GO
/****** Object:  StoredProcedure [dbo].[GetDrzave]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDrzave]
AS
SELECT * FROM Drzava
GO
/****** Object:  StoredProcedure [dbo].[GetGrad]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetGrad]
	@IDGrad int
AS
SELECT * FROM Grad WHERE Grad.IDGrad = @IDGrad
GO
/****** Object:  StoredProcedure [dbo].[GetGradovi]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetGradovi]
AS
SELECT * FROM Grad
GO
/****** Object:  StoredProcedure [dbo].[GetGradoviZaDrzavu]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetGradoviZaDrzavu]
	@IDDrzava int
AS
SELECT * FROM Grad WHERE Grad.DrzavaID = @IDDrzava
GO
/****** Object:  StoredProcedure [dbo].[GetKategorijaServis]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetKategorijaServis]
	@IDKategorijaServis int
AS
SELECT * FROM KategorijaServis WHERE KategorijaServis.IDKategorijaServis = @IDKategorijaServis
GO
/****** Object:  StoredProcedure [dbo].[GetKategorijaTroska]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetKategorijaTroska]
	@IDKategorijaTrosak int
AS
SELECT * FROM KategorijaTrosak WHERE KategorijaTrosak.IDKategorijaTrosak = @IDKategorijaTrosak
GO
/****** Object:  StoredProcedure [dbo].[GetKategorijeServisa]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetKategorijeServisa]
AS
SELECT * FROM KategorijaServis
GO
/****** Object:  StoredProcedure [dbo].[GetKategorijeTroskova]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetKategorijeTroskova]
AS
SELECT * FROM KategorijaTrosak
GO
/****** Object:  StoredProcedure [dbo].[GetPutniNalog]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPutniNalog]
	@IDPutniNalog int
AS
SELECT * FROM PutniNalog WHERE PutniNalog.IDPutniNalog = @IDPutniNalog
GO
/****** Object:  StoredProcedure [dbo].[GetPutniNalozi]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPutniNalozi]
AS
SELECT * FROM PutniNalog
GO
/****** Object:  StoredProcedure [dbo].[GetRelacija]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRelacija]
	@IDRelacija int
AS
SELECT * FROM Relacija WHERE Relacija.IDRelacija = @IDRelacija
GO
/****** Object:  StoredProcedure [dbo].[GetRelacije]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRelacije]
AS
SELECT * FROM Relacija
GO
/****** Object:  StoredProcedure [dbo].[GetServis]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetServis]
	@IDServis int
AS
SELECT * FROM Servis WHERE Servis.IDServis = @IDServis
GO
/****** Object:  StoredProcedure [dbo].[GetServisi]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetServisi]
AS
SELECT * FROM Servis
GO
/****** Object:  StoredProcedure [dbo].[GetVozac]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetVozac]
	@IDVozac int
AS
SELECT * FROM Vozac WHERE Vozac.IDVozac = @IDVozac
GO
/****** Object:  StoredProcedure [dbo].[GetVozaci]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetVozaci]
AS
SELECT * FROM Vozac
GO
/****** Object:  StoredProcedure [dbo].[GetVozila]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetVozila]
AS
SELECT * FROM Vozilo
GO
/****** Object:  StoredProcedure [dbo].[GetVozilo]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetVozilo]
	@IDVozilo int
AS
SELECT * FROM Vozilo WHERE Vozilo.IDVozilo = @IDVozilo
GO
/****** Object:  StoredProcedure [dbo].[UpdatePutniNalog]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdatePutniNalog]
	@IDPutniNalog int,
	@VozacID int,
	@DatumOdlaska datetime,
	@DatumDolaska datetime,
	@BrojSati int,
	@BrojDnevnica int,
	@IznosDnevnice int,
	@Opis nvarchar(100),
	@VoziloID int
AS
BEGIN
UPDATE PutniNalog SET 
VozacID=@VozacID, 
DatumOdlaska=@DatumOdlaska, 
DatumDolaska=@DatumDolaska, 
BrojSati=@BrojSati, 
BrojDnevnica=@BrojDnevnica, 
IznosDnevnice=@IznosDnevnice,
Opis=@Opis, 
VoziloID=@VoziloID 
WHERE PutniNalog.IDPutniNalog = @IDPutniNalog
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateServis]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateServis]
	@IDServis int,
	@VoziloID int,
	@Cijena float,
	@Opis nvarchar(200),
	@Datum datetime,
	@KategorijaServisID int
AS
BEGIN
UPDATE Servis SET 
VoziloID=@VoziloID, 
Cijena=@Cijena, 
Opis=@Opis, 
Datum=@Datum, 
KategorijaServisID=@KategorijaServisID
WHERE Servis.IDServis = @IDServis
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateVozac]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateVozac]
	@IDVozac int,
	@FirstName nvarchar(30),
	@LastName nvarchar(30),
	@Mobitel nvarchar(15),
	@VozackaDozvola nvarchar(15)
AS
UPDATE Vozac SET FirstName=@FirstName, LastName=@LastName, Mobitel=@Mobitel, VozackaDozvola=@VozackaDozvola WHERE Vozac.IDVozac = @IDVozac
GO
/****** Object:  StoredProcedure [dbo].[UpdateVozilo]    Script Date: 1/23/2020 12:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateVozilo]
	@IDVozilo int,
	@Tip nvarchar(30),
	@Marka nvarchar(30),
	@GodinaProizvodnje int,
	@StanjeKilometra int
AS
UPDATE Vozilo SET Tip=@Tip, Marka=@Marka, GodinaProizvodnje=@GodinaProizvodnje,StanjeKilometra=@StanjeKilometra WHERE Vozilo.IDVozilo = @IDVozilo
GO
USE [master]
GO
ALTER DATABASE [PPPK] SET  READ_WRITE 
GO
