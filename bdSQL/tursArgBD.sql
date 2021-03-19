USE [master]
GO
/****** Object:  Database [tursArgBD]    Script Date: 19/03/2021 10:57:50 ******/
CREATE DATABASE [tursArgBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tursArgBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\tursArgBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tursArgBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\tursArgBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [tursArgBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tursArgBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tursArgBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tursArgBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tursArgBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tursArgBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tursArgBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [tursArgBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tursArgBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tursArgBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tursArgBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tursArgBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tursArgBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tursArgBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tursArgBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tursArgBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tursArgBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [tursArgBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tursArgBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tursArgBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tursArgBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tursArgBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tursArgBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tursArgBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tursArgBD] SET RECOVERY FULL 
GO
ALTER DATABASE [tursArgBD] SET  MULTI_USER 
GO
ALTER DATABASE [tursArgBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tursArgBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tursArgBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tursArgBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tursArgBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tursArgBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'tursArgBD', N'ON'
GO
ALTER DATABASE [tursArgBD] SET QUERY_STORE = OFF
GO
USE [tursArgBD]
GO
/****** Object:  Table [dbo].[Atractivo_Turisticos]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atractivo_Turisticos](
	[atractivo_turistico_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NOT NULL,
	[descripcion] [varchar](5000) NULL,
	[imagen] [image] NULL,
	[localidad_id] [int] NOT NULL,
	[categoria_id] [int] NOT NULL,
 CONSTRAINT [PK_Atractivo_Turisticos] PRIMARY KEY CLUSTERED 
(
	[atractivo_turistico_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[categoria_id] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[categoria_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chat]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[chat_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_usuario_no_reg] [varchar](250) NULL,
	[emial_usuario_no_reg] [varchar](250) NOT NULL,
	[fecha] [date] NOT NULL,
	[consulta] [varchar](500) NULL,
	[respuesta] [varchar](500) NULL,
	[usuario_id] [int] NULL,
 CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[departamento_id] [int] IDENTITY(1,1) NOT NULL,
	[departamento] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[departamento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Excursiones]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Excursiones](
	[excursion_id] [int] NOT NULL,
	[atractivo_turistico_id] [int] NOT NULL,
	[detalle] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Excursiones]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excursiones](
	[excursion_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NOT NULL,
	[descripcion] [varchar](5000) NULL,
	[tipo_excursion_id] [int] NOT NULL,
 CONSTRAINT [PK_Excursiones] PRIMARY KEY CLUSTERED 
(
	[excursion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foro]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foro](
	[foro_id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[titulo_tema] [varchar](250) NOT NULL,
	[descripcion_tema] [varchar](250) NULL,
	[fecha_ini] [date] NOT NULL,
	[fecha_cierre] [date] NULL,
 CONSTRAINT [PK_Foro] PRIMARY KEY CLUSTERED 
(
	[foro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foro_Debate]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foro_Debate](
	[foro_id] [int] NOT NULL,
	[usuario_id] [int] NOT NULL,
	[mensaje] [varchar](500) NULL,
	[fecha] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[localidad_id] [int] IDENTITY(1,1) NOT NULL,
	[localidad] [varchar](250) NOT NULL,
	[departamento_id] [int] NOT NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[localidad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[perfil_id] [int] IDENTITY(1,1) NOT NULL,
	[perfil] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[perfil_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Excursiones]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Excursiones](
	[tipo_excursion_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Tipo_Excursiones] PRIMARY KEY CLUSTERED 
(
	[tipo_excursion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 19/03/2021 10:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[usuario_id] [int] IDENTITY(1,1) NOT NULL,
	[perfil_id] [int] NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[fecha_alta] [date] NOT NULL,
	[fecha_baja] [date] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Atractivo_Turisticos]  WITH CHECK ADD  CONSTRAINT [FK_Atractivo_Turisticos_Categoria] FOREIGN KEY([categoria_id])
REFERENCES [dbo].[Categoria] ([categoria_id])
GO
ALTER TABLE [dbo].[Atractivo_Turisticos] CHECK CONSTRAINT [FK_Atractivo_Turisticos_Categoria]
GO
ALTER TABLE [dbo].[Atractivo_Turisticos]  WITH CHECK ADD  CONSTRAINT [FK_Atractivo_Turisticos_Localidad] FOREIGN KEY([localidad_id])
REFERENCES [dbo].[Localidad] ([localidad_id])
GO
ALTER TABLE [dbo].[Atractivo_Turisticos] CHECK CONSTRAINT [FK_Atractivo_Turisticos_Localidad]
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD  CONSTRAINT [FK_Chat_Usuarios] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuarios] ([usuario_id])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [FK_Chat_Usuarios]
GO
ALTER TABLE [dbo].[Detalle_Excursiones]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Excursiones_Atractivo_Turisticos] FOREIGN KEY([atractivo_turistico_id])
REFERENCES [dbo].[Atractivo_Turisticos] ([atractivo_turistico_id])
GO
ALTER TABLE [dbo].[Detalle_Excursiones] CHECK CONSTRAINT [FK_Detalle_Excursiones_Atractivo_Turisticos]
GO
ALTER TABLE [dbo].[Detalle_Excursiones]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Excursiones_Excursiones] FOREIGN KEY([excursion_id])
REFERENCES [dbo].[Excursiones] ([excursion_id])
GO
ALTER TABLE [dbo].[Detalle_Excursiones] CHECK CONSTRAINT [FK_Detalle_Excursiones_Excursiones]
GO
ALTER TABLE [dbo].[Excursiones]  WITH CHECK ADD  CONSTRAINT [FK_Excursiones_Tipo_Excursiones] FOREIGN KEY([tipo_excursion_id])
REFERENCES [dbo].[Tipo_Excursiones] ([tipo_excursion_id])
GO
ALTER TABLE [dbo].[Excursiones] CHECK CONSTRAINT [FK_Excursiones_Tipo_Excursiones]
GO
ALTER TABLE [dbo].[Foro]  WITH CHECK ADD  CONSTRAINT [FK_Foro_Usuarios] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuarios] ([usuario_id])
GO
ALTER TABLE [dbo].[Foro] CHECK CONSTRAINT [FK_Foro_Usuarios]
GO
ALTER TABLE [dbo].[Foro_Debate]  WITH CHECK ADD  CONSTRAINT [FK_Foro_Debate_Foro] FOREIGN KEY([foro_id])
REFERENCES [dbo].[Foro] ([foro_id])
GO
ALTER TABLE [dbo].[Foro_Debate] CHECK CONSTRAINT [FK_Foro_Debate_Foro]
GO
ALTER TABLE [dbo].[Foro_Debate]  WITH CHECK ADD  CONSTRAINT [FK_Foro_Debate_Usuarios] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuarios] ([usuario_id])
GO
ALTER TABLE [dbo].[Foro_Debate] CHECK CONSTRAINT [FK_Foro_Debate_Usuarios]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Localidad_Departamentos] FOREIGN KEY([departamento_id])
REFERENCES [dbo].[Departamentos] ([departamento_id])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Localidad_Departamentos]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_perfil] FOREIGN KEY([perfil_id])
REFERENCES [dbo].[Perfil] ([perfil_id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_perfil]
GO
USE [master]
GO
ALTER DATABASE [tursArgBD] SET  READ_WRITE 
GO
