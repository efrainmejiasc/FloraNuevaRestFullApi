USE [FloraNueva]
GO

/****** Object:  Table [dbo].[MeliponarioCosechaTrack]    Script Date: 26/11/2018 18:28:01 ******/
DROP TABLE [dbo].[MeliponarioCosechaTrack]
GO

/****** Object:  Table [dbo].[MeliponarioCosechaTrack]    Script Date: 26/11/2018 18:28:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MeliponarioCosechaTrack](
	[IdMeliponarioCosecha] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdMeliponario] [int] NULL,
	[IdUsuarioResponsable] [int] NULL,
	[PrecioCompra] [decimal](20, 6) NULL,
	[Comentario] [varchar](max) NULL,
	[FechaCosecha] [datetime] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCosechaTrack] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

