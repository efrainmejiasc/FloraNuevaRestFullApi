USE [FloraNueva]
GO

/****** Object:  Table [dbo].[MeliponarioCosechaDetalleCajaTrack]    Script Date: 28/11/2018 12:28:21 ******/
DROP TABLE [dbo].[MeliponarioCosechaDetalleCajaTrack]
GO

/****** Object:  Table [dbo].[MeliponarioCosechaDetalleCajaTrack]    Script Date: 28/11/2018 12:28:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MeliponarioCosechaDetalleCajaTrack](
	[IdMeliponarioCosechaDetalleCaja] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdMeliponarioCosechaDetalle] [int] NULL,
	[IdMeliponarioCaja] [int] NULL,
	[NumeroCaja] [int] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCosechaDetalleCajaTrack] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosechaDetalleCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

