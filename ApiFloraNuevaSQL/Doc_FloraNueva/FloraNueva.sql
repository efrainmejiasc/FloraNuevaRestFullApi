USE [FloraNueva]
GO
/****** Object:  Table [dbo].[AbejasNativasVisitaGrupal]    Script Date: 27/11/2018 12:02:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbejasNativasVisitaGrupal](
	[IdAbejasNativasVisitaGrupal] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NOT NULL,
	[EquipoFloraNuevaPresente] [varchar](500) NOT NULL,
	[OtrosParticipantes] [varchar](500) NOT NULL,
	[TemaYObjetivoDeLaVisita] [varchar](500) NOT NULL,
	[DesarrolloDeLaVisitaAcciones] [varchar](500) NOT NULL,
	[MaterialEntregado] [varchar](500) NOT NULL,
	[ProblemasDetectados] [varchar](500) NOT NULL,
	[RecomendacionesProximaVisita] [varchar](500) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AbejasNativasVisitaGrupal] PRIMARY KEY CLUSTERED 
(
	[IdAbejasNativasVisitaGrupal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AbejasNativasVisitaGrupalParticipante]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbejasNativasVisitaGrupalParticipante](
	[IdAbejasNativasVisitaGrupalParticipante] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdAbejasNativasVisitaGrupal] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[Observaciones] [varchar](500) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AbejasNativasVisitaGrupalParticipante] PRIMARY KEY CLUSTERED 
(
	[IdAbejasNativasVisitaGrupalParticipante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AbejasNativasVisitaGrupalParticipanteTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbejasNativasVisitaGrupalParticipanteTrack](
	[IdAbejasNativasVisitaGrupalParticipante] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdAbejasNativasVisitaGrupal] [int] NULL,
	[IdProductor] [int] NULL,
	[Observaciones] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AbejasNativasVisitaGrupalParticipanteTrack] PRIMARY KEY CLUSTERED 
(
	[IdAbejasNativasVisitaGrupalParticipante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AbejasNativasVisitaGrupalTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbejasNativasVisitaGrupalTrack](
	[IdAbejasNativasVisitaGrupal] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdGrupo] [int] NULL,
	[FechaDesde] [datetime] NULL,
	[FechaHasta] [datetime] NULL,
	[EquipoFloraNuevaPresente] [varchar](max) NULL,
	[OtrosParticipantes] [varchar](max) NULL,
	[TemaYObjetivoDeLaVisita] [varchar](max) NULL,
	[DesarrolloDeLaVisitaAcciones] [varchar](max) NULL,
	[MaterialEntregado] [varchar](max) NULL,
	[ProblemasDetectados] [varchar](max) NULL,
	[RecomendacionesProximaVisita] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AbejasNativasVisitaGrupalTrack] PRIMARY KEY CLUSTERED 
(
	[IdAbejasNativasVisitaGrupal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Abono]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Abono](
	[IdAbono] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Abono] PRIMARY KEY CLUSTERED 
(
	[IdAbono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ActividadAgricola]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActividadAgricola](
	[IdActividadAgricola] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ActvidadAgricola] PRIMARY KEY CLUSTERED 
(
	[IdActividadAgricola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AmbienteSocialComunidad]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AmbienteSocialComunidad](
	[IdAmbienteSocialComunidad] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_AmbienteSocialComunidad] PRIMARY KEY CLUSTERED 
(
	[IdAmbienteSocialComunidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Animales]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Animales](
	[IdAnimales] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Animales] PRIMARY KEY CLUSTERED 
(
	[IdAnimales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AplicacionOrigen]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AplicacionOrigen](
	[IdAplicacionOrigen] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_AplicacionOrigen] PRIMARY KEY CLUSTERED 
(
	[IdAplicacionOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApoyoVecinosCasoNecesidad]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApoyoVecinosCasoNecesidad](
	[IdApoyoVecinosCasoNecesidad] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ApoyoVecinosCasoNecesidad] PRIMARY KEY CLUSTERED 
(
	[IdApoyoVecinosCasoNecesidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUstedLeGustaria]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUstedLeGustaria](
	[IdAUstedLeGustaria] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_AUstedLeGustaria] PRIMARY KEY CLUSTERED 
(
	[IdAUstedLeGustaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bitacora](
	[IdBitacora] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoEvento] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdLocal] [int] NULL,
	[IdAplicacionOrigen] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[Entidad] [varchar](100) NOT NULL,
	[Accion] [varchar](100) NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[IP] [varchar](30) NOT NULL,
	[Dispositivo] [varchar](250) NOT NULL,
 CONSTRAINT [PK_BITACORA] PRIMARY KEY NONCLUSTERED 
(
	[IdBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaActividadPrincipal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaActividadPrincipal](
	[IdCategoriaActividadPrincipal] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CategoriaActividadPrincipal] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaActividadPrincipal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaExplotacionAgricola]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaExplotacionAgricola](
	[IdCategoriaExplotacionAgricola] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CategoriaExplotacionAgricola] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaExplotacionAgricola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaInfraestructura]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaInfraestructura](
	[IdCategoriaInfraestructura] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CategoriaInfraestructura] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaInfraestructura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaManejo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaManejo](
	[IdCategoriaManejo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CategoriaManejo] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaManejo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaMecanizacion]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaMecanizacion](
	[IdCategoriaMecanizacion] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CategoriaMecanizacion] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaMecanizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaUsoSuelo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaUsoSuelo](
	[IdCategoriaUsoSuelo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CategoriaUsoSuelo] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaUsoSuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CondicionAseguramiento]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CondicionAseguramiento](
	[IdCondicionAseguramiento] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CondicionAseguramiento] PRIMARY KEY CLUSTERED 
(
	[IdCondicionAseguramiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CondicionLaboral]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CondicionLaboral](
	[IdCondicionLaboral] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CondicionLaboral] PRIMARY KEY CLUSTERED 
(
	[IdCondicionLaboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConLaActualSituacionEconomica]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConLaActualSituacionEconomica](
	[IdConLaActualSituacionEconomica] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ConLaActualSituacionEconomica] PRIMARY KEY CLUSTERED 
(
	[IdConLaActualSituacionEconomica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConLosIngresosUstedEstimaQue]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConLosIngresosUstedEstimaQue](
	[IdConLosIngresosUstedEstimaQue] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ConLosIngresosUstedEstimaQue] PRIMARY KEY CLUSTERED 
(
	[IdConLosIngresosUstedEstimaQue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ControlDeMaleza]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ControlDeMaleza](
	[IdControlDeMaleza] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ControlDeMaleza] PRIMARY KEY CLUSTERED 
(
	[IdControlDeMaleza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CuentaCorreo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CuentaCorreo](
	[IdCuentaCorreo] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Password] [varchar](1000) NOT NULL,
	[Servidor] [varchar](100) NOT NULL,
	[Puerto] [int] NOT NULL,
	[SSL] [bit] NOT NULL,
	[Orden] [int] NOT NULL,
 CONSTRAINT [PK_CuentaCorreo] PRIMARY KEY CLUSTERED 
(
	[IdCuentaCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DestinoDeLaProduccion]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DestinoDeLaProduccion](
	[IdDestinoDeLaProduccion] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DestinoDeLaProduccion] PRIMARY KEY CLUSTERED 
(
	[IdDestinoDeLaProduccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DestinoMiel]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DestinoMiel](
	[IdDestinoMiel] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DestinoMiel] PRIMARY KEY CLUSTERED 
(
	[IdDestinoMiel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DivisionAdministrativa1]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DivisionAdministrativa1](
	[IdDivisionAdministrativa1] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DivisionAdministrativa1] PRIMARY KEY CLUSTERED 
(
	[IdDivisionAdministrativa1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DivisionAdministrativa2]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DivisionAdministrativa2](
	[IdDivisionAdministrativa2] [int] NOT NULL,
	[IdDivisionAdministrativa1] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DivisionAdministrativa2] PRIMARY KEY CLUSTERED 
(
	[IdDivisionAdministrativa2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DivisionAdministrativa3]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DivisionAdministrativa3](
	[IdDivisionAdministrativa3] [int] NOT NULL,
	[IdDivisionAdministrativa2] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DivisionAdministrativa3] PRIMARY KEY CLUSTERED 
(
	[IdDivisionAdministrativa3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DondeColocaLasColmenas]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DondeColocaLasColmenas](
	[IdDondeColocaLasColmenas] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DondeColocaLasColmenas] PRIMARY KEY CLUSTERED 
(
	[IdDondeColocaLasColmenas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DondeUstedProduce]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DondeUstedProduce](
	[IdDondeUstedProduce] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DondeUstedProduce] PRIMARY KEY CLUSTERED 
(
	[IdDondeUstedProduce] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ElTamannoDeSuParcelaEs]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ElTamannoDeSuParcelaEs](
	[IdElTamannoDeSuParcelaEs] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ElTamannoDeSuParcelaEs] PRIMARY KEY CLUSTERED 
(
	[IdElTamannoDeSuParcelaEs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[IdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[IdMonedaBaseVentas] [int] NOT NULL,
	[IdTipoEmpresa] [int] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdTemaVisual] [int] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Logo] [image] NULL,
	[Activo] [bit] NOT NULL,
	[Direccion] [varchar](250) NOT NULL,
	[SitioWeb] [varchar](250) NULL,
	[Observaciones] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entidad]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entidad](
	[IdEntidad] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descrpcion] [varchar](250) NOT NULL,
	[Orden] [int] NOT NULL,
 CONSTRAINT [PK_TipoEstadoEntidad] PRIMARY KEY CLUSTERED 
(
	[IdEntidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EntidadJuridica]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EntidadJuridica](
	[IdEntidadJuridica] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoPeriodoFiscal] [int] NOT NULL,
	[IdMonedaBaseContabilidad] [int] NOT NULL,
	[IdPais] [int] NULL,
	[IdUbicacionFisica] [int] NULL,
	[IdTipoIdentificacion] [int] NULL,
	[Identificacion] [varchar](100) NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[RazonSocial] [varchar](250) NOT NULL,
	[NombreContacto] [varchar](100) NOT NULL,
	[CorreoElectronicoContacto] [varchar](100) NOT NULL,
	[CodigoPaisTelefonoContacto] [varchar](3) NULL,
	[TelefonoContacto] [varchar](20) NOT NULL,
	[InformacionCuentasBancarias] [varchar](250) NULL,
	[OtrasSennas] [varchar](150) NULL,
	[Observaciones] [varchar](250) NOT NULL,
	[Activo] [bit] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[CRIEmitirComprobantesElectronicos] [bit] NULL,
	[CRIFacturaUtilizandoTiqueteElectronico] [bit] NULL,
	[CRIATVUsuario] [varchar](100) NULL,
	[CRIATVContrasenna] [varchar](max) NULL,
	[CRIATVLlaveCriptograficaNombre] [varchar](250) NULL,
	[CRIATVLlaveCriptograficaArchivo] [varbinary](max) NULL,
	[CRIATVPIN] [varchar](4) NULL,
 CONSTRAINT [PK_EntidadJuridica] PRIMARY KEY CLUSTERED 
(
	[IdEntidadJuridica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EspecieAbeja]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EspecieAbeja](
	[IdEspecieAbeja] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_EspecieAbeja] PRIMARY KEY CLUSTERED 
(
	[IdEspecieAbeja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[IdEstadoCivil] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[IdEstadoCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoDiagnostico]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoDiagnostico](
	[IdEstadoDiagnostico] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_EstadoDiagnostico] PRIMARY KEY CLUSTERED 
(
	[IdEstadoDiagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoEntidad]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoEntidad](
	[IdEstadoEntidad] [int] NOT NULL,
	[IdEntidad] [int] NOT NULL,
 CONSTRAINT [PK_EstadoEntidad] PRIMARY KEY CLUSTERED 
(
	[IdEstadoEntidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EstadoEntidadIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoEntidadIdioma](
	[IdEstadoEntidad] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[HTML] [varchar](max) NOT NULL,
 CONSTRAINT [PK_EstadoEntidadIdioma] PRIMARY KEY CLUSTERED 
(
	[IdEstadoEntidad] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoEntidadPorEmpresa]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoEntidadPorEmpresa](
	[IdEstadoEntidad] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[Orden] [int] NOT NULL,
 CONSTRAINT [PK_EstadoEntidadPorEmpresa] PRIMARY KEY CLUSTERED 
(
	[IdEstadoEntidad] ASC,
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EstadoGeneralViviendaACFN]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoGeneralViviendaACFN](
	[IdEstadoGeneralViviendaACFN] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_EstadoGeneralViviendaACFN] PRIMARY KEY CLUSTERED 
(
	[IdEstadoGeneralViviendaACFN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoGeneralViviendaProductor]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoGeneralViviendaProductor](
	[IdEstadoGeneralViviendaProductor] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_EstadoGeneralViviendaProductor] PRIMARY KEY CLUSTERED 
(
	[IdEstadoGeneralViviendaProductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoMensaje]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoMensaje](
	[IdEstadoMensaje] [int] NOT NULL,
 CONSTRAINT [PK_EstadoMensaje] PRIMARY KEY CLUSTERED 
(
	[IdEstadoMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EstadoMensajeIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoMensajeIdioma](
	[IdEstadoMensaje] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_EstadoMensajeIdioma] PRIMARY KEY CLUSTERED 
(
	[IdEstadoMensaje] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstructuraGeneracionalHogar]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstructuraGeneracionalHogar](
	[IdEstructuraGeneracionalHogar] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_EstructuraGeneracionalHogar] PRIMARY KEY CLUSTERED 
(
	[IdEstructuraGeneracionalHogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExistenciaTransportePublico]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExistenciaTransportePublico](
	[IdExistenciaTransportePublico] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ExistenciaTransportePublico] PRIMARY KEY CLUSTERED 
(
	[IdExistenciaTransportePublico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacilidadAccesoComunidad]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacilidadAccesoComunidad](
	[IdFacilidadAccesoComunidad] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_FacilidadAccesoComunidad] PRIMARY KEY CLUSTERED 
(
	[IdFacilidadAccesoComunidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacilidadAccesoVivienda]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacilidadAccesoVivienda](
	[IdFacilidadAccesoVivienda] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_FacilidadAccesoVivienda] PRIMARY KEY CLUSTERED 
(
	[IdFacilidadAccesoVivienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormaJuridicaExplotacion]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormaJuridicaExplotacion](
	[IdFormaJuridicaExplotacion] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_FormaJuridicaExplotacion] PRIMARY KEY CLUSTERED 
(
	[IdFormaJuridicaExplotacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FuenteAguaVivienda]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FuenteAguaVivienda](
	[IdFuenteAguaVivienda] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_FuenteAguaVivienda] PRIMARY KEY CLUSTERED 
(
	[IdFuenteAguaVivienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[IdGenero] [int] NOT NULL,
	[AplicaParaAnimales] [bit] NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GeneroIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GeneroIdioma](
	[IdGenero] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_GeneroIdioma] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[IdGrupo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Idioma](
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Codigo] [varchar](10) NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LaViviendaEsANombreSuyo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LaViviendaEsANombreSuyo](
	[IdLaViviendaEsANombreSuyo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_LaViviendaEsANombreSuyo] PRIMARY KEY CLUSTERED 
(
	[IdLaViviendaEsANombreSuyo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Local]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Local](
	[IdLocal] [int] IDENTITY(1,1) NOT NULL,
	[IdEntidadJuridica] [int] NULL,
	[IdEmpresa] [int] NOT NULL,
	[IdTerritorio] [int] NULL,
	[IdUbicacionFisica] [int] NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Direccion] [varchar](250) NOT NULL,
	[CorreoElectronico] [varchar](100) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Observaciones] [varchar](250) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Latitud] [decimal](20, 6) NULL,
	[Longitud] [decimal](20, 6) NULL,
	[UsuariosNoFacturables] [int] NOT NULL,
	[CostoUsuarioMensual] [decimal](20, 6) NOT NULL,
	[IdMonedaCostoUsuarioMensual] [int] NOT NULL,
	[Moroso] [bit] NULL,
 CONSTRAINT [PK_Local] PRIMARY KEY CLUSTERED 
(
	[IdLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LograProducir]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LograProducir](
	[IdLograProducir] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_LograProducir] PRIMARY KEY CLUSTERED 
(
	[IdLograProducir] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Meliponario]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Meliponario](
	[IdMeliponario] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[NumeroMeliponario] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[GPSLatitud] [decimal](20, 6) NOT NULL,
	[GPSLongitud] [decimal](20, 6) NOT NULL,
	[ValidadoParaRecibirCajasFloraNueva] [bit] NOT NULL,
	[IdTipoMeliponario] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Observaciones] [varchar](500) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Meliponario] PRIMARY KEY CLUSTERED 
(
	[IdMeliponario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCaja]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCaja](
	[IdMeliponarioCaja] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[NumeroCaja] [int] NULL,
	[IdMeliponario] [int] NOT NULL,
	[IdEspecieAbeja] [int] NOT NULL,
	[FechaEntregaAlProductor] [datetime] NOT NULL,
	[Comentario] [varchar](500) NOT NULL,
	[IdOrigenColonia] [int] NOT NULL,
	[Activa] [bit] NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCaja] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCajaAccion]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCajaAccion](
	[IdMeliponarioCajaAccion] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdMeliponarioCaja] [int] NOT NULL,
	[IdTipoAccionMeliponario] [int] NOT NULL,
	[IdOrigenColonia] [int] NOT NULL,
	[IdUsuarioResponsable] [int] NOT NULL,
	[FechaAccion] [datetime] NOT NULL,
	[Comentario] [varchar](500) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCajaAccion] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCajaAccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCajaAccionTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCajaAccionTrack](
	[IdMeliponarioCajaAccion] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdMeliponarioCaja] [int] NULL,
	[IdTipoAccionMeliponario] [int] NULL,
	[IdOrigenColonia] [int] NULL,
	[IdUsuarioResponsable] [int] NULL,
	[FechaAccion] [datetime] NULL,
	[Comentario] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCajaAccionTrack] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCajaAccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCajaHistorial]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCajaHistorial](
	[IdMeliponarioCajaHistorial] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[NumeroCaja] [int] NULL,
	[IdMeliponarioCaja] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NULL,
	[Actual] [bit] NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCajaHistorial] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCajaHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCajaHistorialTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCajaHistorialTrack](
	[IdMeliponarioCajaHistorial] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NULL,
	[NumeroCaja] [int] NULL,
	[IdMeliponarioCaja] [int] NULL,
	[IdProductor] [int] NULL,
	[FechaDesde] [datetime] NULL,
	[FechaHasta] [datetime] NULL,
	[Actual] [bit] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechamodificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCajaHistorialTrack] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCajaHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCajaTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCajaTrack](
	[IdMeliponarioCaja] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NULL,
	[NumeroCaja] [int] NULL,
	[IdMeliponario] [int] NULL,
	[IdEspecieAbeja] [int] NULL,
	[FechaEntregaAlProductor] [datetime] NULL,
	[Comentario] [varchar](max) NULL,
	[IdorigenColonia] [int] NULL,
	[Activa] [bit] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCajaTrack] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCosecha]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCosecha](
	[IdMeliponarioCosecha] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdMeliponario] [int] NULL,
	[IdUsuarioResponsable] [int] NULL,
	[PrecioCompra] [decimal](20, 6) NULL,
	[Comentario] [varchar](500) NULL,
	[FechaCosecha] [datetime] NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCosecha] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCosechaDetalle]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCosechaDetalle](
	[IdMeliponarioCosechaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdMeliponarioCosecha] [int] NULL,
	[Lote] [varchar](50) NULL,
	[IdEspecieAbeja] [int] NULL,
	[Alzas] [decimal](20, 6) NULL,
	[PesoKg] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCosechaDetalle] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosechaDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCosechaDetalleCaja]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCosechaDetalleCaja](
	[IdMeliponarioCosechaDetalleCaja] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdMeliponarioCosechaDetalle] [int] NULL,
	[IdMeliponarioCaja] [int] NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCosechaDetalleCaja] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosechaDetalleCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCosechaDetalleCajaTrack]    Script Date: 27/11/2018 12:02:06 ******/
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
/****** Object:  Table [dbo].[MeliponarioCosechaDetalleTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioCosechaDetalleTrack](
	[IdMeliponarioCosechaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdMeliponarioCosecha] [int] NULL,
	[Lote] [varchar](50) NULL,
	[IdEspecieAbeja] [int] NULL,
	[Alzas] [decimal](20, 6) NULL,
	[PesoKg] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioCosechaDetalleTrack] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosechaDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeliponarioCosechaTrack]    Script Date: 27/11/2018 12:02:06 ******/
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
/****** Object:  Table [dbo].[MeliponarioTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeliponarioTrack](
	[IdMeliponario] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[NumeroMeliponario] [int] NULL,
	[IdProductor] [int] NULL,
	[GPSLatitud] [decimal](20, 6) NULL,
	[GPSLongitud] [decimal](20, 6) NULL,
	[ValidadoParaRecibirCajasFloraNueva] [bit] NULL,
	[IdTipoMeliponario] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[Observaciones] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MeliponarioTrack] PRIMARY KEY CLUSTERED 
(
	[IdMeliponario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mensaje]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensaje](
	[IdMensaje] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[IdUsuarioEnviador] [int] NOT NULL,
	[IdTipoMensaje] [int] NOT NULL,
	[IdEstadoMensaje] [int] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[FechaDeEnvio] [datetime] NULL,
 CONSTRAINT [PK_Mensaje] PRIMARY KEY CLUSTERED 
(
	[IdMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MensajeArchivo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MensajeArchivo](
	[IdMensajeArchivo] [int] IDENTITY(1,1) NOT NULL,
	[IdMensaje] [int] NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[Archivo] [varbinary](max) NOT NULL,
	[Observaciones] [varchar](250) NULL,
 CONSTRAINT [PK_MensajeArchivo] PRIMARY KEY CLUSTERED 
(
	[IdMensajeArchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MensajeBitacora]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MensajeBitacora](
	[IdMensajeBitacora] [int] IDENTITY(1,1) NOT NULL,
	[IdMensaje] [int] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[Texto] [varchar](max) NOT NULL,
 CONSTRAINT [PK_MensajeBitacora] PRIMARY KEY CLUSTERED 
(
	[IdMensajeBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MensajeCorreoElectronico]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MensajeCorreoElectronico](
	[IdMensaje] [int] NOT NULL,
	[IdCuentaCorreoSalida] [int] NOT NULL,
	[Para] [varchar](100) NOT NULL,
	[CC] [varchar](100) NOT NULL,
	[BCC] [varchar](100) NOT NULL,
	[Asunto] [varchar](100) NOT NULL,
	[Texto] [varchar](max) NOT NULL,
 CONSTRAINT [PK_MensajeCorreoElectronico] PRIMARY KEY CLUSTERED 
(
	[IdMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MensajeSMS]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MensajeSMS](
	[IdMensaje] [int] NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Texto] [varchar](160) NOT NULL,
 CONSTRAINT [PK_MensajeSMS] PRIMARY KEY CLUSTERED 
(
	[IdMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MensajeVoz]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MensajeVoz](
	[IdMensaje] [int] NOT NULL,
 CONSTRAINT [PK_MensajeVoz] PRIMARY KEY CLUSTERED 
(
	[IdMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mes]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mes](
	[IdMes] [int] NOT NULL,
 CONSTRAINT [PK_Mes] PRIMARY KEY CLUSTERED 
(
	[IdMes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MesIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MesIdioma](
	[IdMes] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MesIdioma] PRIMARY KEY CLUSTERED 
(
	[IdMes] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulo](
	[IdModulo] [int] NOT NULL,
	[IdTipoModulo] [int] NOT NULL,
 CONSTRAINT [PK_MODULO] PRIMARY KEY NONCLUSTERED 
(
	[IdModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Moneda](
	[IdMoneda] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Simbolo] [varchar](3) NOT NULL,
	[ISO4217] [varchar](3) NOT NULL,
 CONSTRAINT [PK_Moneda] PRIMARY KEY CLUSTERED 
(
	[IdMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NivelConocimientoMeliponicultura]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NivelConocimientoMeliponicultura](
	[IdNivelConocimientoMeliponicultura] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NivelConocimientoMeliponicultura] PRIMARY KEY CLUSTERED 
(
	[IdNivelConocimientoMeliponicultura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NivelEscolar]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NivelEscolar](
	[IdNivelEscolar] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NivelEscolar] PRIMARY KEY CLUSTERED 
(
	[IdNivelEscolar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrientacionTecnicoEco]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrientacionTecnicoEco](
	[IdOrientacionTecnicoEco] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_OrientacionTecnicoEco] PRIMARY KEY CLUSTERED 
(
	[IdOrientacionTecnicoEco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrigenColonia]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrigenColonia](
	[IdOrigenColonia] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_OrigenColonia] PRIMARY KEY CLUSTERED 
(
	[IdOrigenColonia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrigenDeLasSemillas]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrigenDeLasSemillas](
	[IdOrigenDeLasSemillas] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_OrigenDeLasSemillas] PRIMARY KEY CLUSTERED 
(
	[IdOrigenDeLasSemillas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[ISO3] [char](3) NOT NULL,
	[IdMonedaOficial] [int] NOT NULL,
	[CodigoPaisTelefono] [char](3) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parametro]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parametro](
	[Llave] [varchar](100) NOT NULL,
	[IdTipoParametro] [int] NOT NULL,
	[Descripcion] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Parametro] PRIMARY KEY CLUSTERED 
(
	[Llave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ParametroEmpresa]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParametroEmpresa](
	[Llave] [varchar](100) NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[Valor] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ParametroEmpresa] PRIMARY KEY CLUSTERED 
(
	[Llave] ASC,
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ParametroGlobal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParametroGlobal](
	[Llave] [varchar](100) NOT NULL,
	[Valor] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ParametroGlobal] PRIMARY KEY CLUSTERED 
(
	[Llave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ParametroLocal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParametroLocal](
	[Llave] [varchar](100) NOT NULL,
	[IdLocal] [int] NOT NULL,
	[Valor] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ParametroLocal] PRIMARY KEY CLUSTERED 
(
	[Llave] ASC,
	[IdLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parentezco]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parentezco](
	[IdParentezco] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Parentezco] PRIMARY KEY CLUSTERED 
(
	[IdParentezco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfil](
	[IdPerfil] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[SuperAdministrador] [bit] NOT NULL,
	[Visible] [bit] NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[IdPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PertenenciaGrupoComunitario]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PertenenciaGrupoComunitario](
	[IdPertenenciaGrupoComunitario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PertenenciaGrupoComunitario] PRIMARY KEY CLUSTERED 
(
	[IdPertenenciaGrupoComunitario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plaguicidas]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plaguicidas](
	[IdPlaguicidas] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Plaguicidas] PRIMARY KEY CLUSTERED 
(
	[IdPlaguicidas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PosesionMedioTransportePublico]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PosesionMedioTransportePublico](
	[IdPosesionMedioTransportePublico] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PosesionMedioTransportePublico] PRIMARY KEY CLUSTERED 
(
	[IdPosesionMedioTransportePublico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PotencialLugarParaTenerAbejas]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PotencialLugarParaTenerAbejas](
	[IdPotencialLugarParaTenerAbejas] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PotencialLugarParaTenerAbejas] PRIMARY KEY CLUSTERED 
(
	[IdPotencialLugarParaTenerAbejas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productor]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productor](
	[IdProductor] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdUsuarioEncuestador] [int] NULL,
	[FechaEncuesta] [datetime] NULL,
	[VisitaALaCasa] [bit] NULL,
	[IdEstadoDiagnostico] [int] NULL,
	[Nombres] [varchar](100) NULL,
	[Apellido1] [varchar](100) NULL,
	[Apellido2] [varchar](100) NULL,
	[Foto] [image] NULL,
	[CodigoFloraNueva] [varchar](50) NULL,
	[Sexo] [bit] NULL,
	[NumeroCedula] [varchar](50) NULL,
	[FechaNacimiento] [datetime] NULL,
	[IdEstadoCivil] [int] NULL,
	[PerteneceAAlgunGrupoEtnico] [varchar](500) NULL,
	[IdPais] [int] NULL,
	[IdGrupo] [int] NULL,
	[IdDivisionAdministrativa1] [int] NULL,
	[IdDivisionAdministrativa2] [int] NULL,
	[IdDivisionAdministrativa3] [int] NULL,
	[DivisionAdministrativa4] [varchar](250) NULL,
	[DireccionExacta] [varchar](500) NULL,
	[IdTerritorio] [int] NULL,
	[GPSLatitud] [decimal](20, 6) NULL,
	[GPSLongitud] [decimal](20, 6) NULL,
	[Altitud] [decimal](20, 6) NULL,
	[ComentariosUbicacion] [varchar](500) NULL,
	[ActividadLaboralPrincipal] [varchar](500) NULL,
	[ActividadLaboralSecundaria] [varchar](500) NULL,
	[IdCategoriaActividadPrincipal] [int] NULL,
	[IdActividadAgricola] [int] NULL,
	[TotalPersonasHogar] [int] NULL,
	[TotalPersonasActivasEconomicamente] [int] NULL,
	[TotalPersonasDependientes] [int] NULL,
	[IndiceInsercionLaboralProductor] [decimal](20, 6) NULL,
	[IndiceNivelEducativoProductor] [decimal](20, 6) NULL,
	[IndiceCiudadaniaSocialProductor] [decimal](20, 6) NULL,
	[IndiceInsercionProductivaProductor] [decimal](20, 6) NULL,
	[IndiceInclusionSocialProductor] [decimal](20, 6) NULL,
	[IndiceInsercionLaboralHogar] [decimal](20, 6) NULL,
	[IndiceNivelEducativoHogar] [decimal](20, 6) NULL,
	[IndiceCiudadaniaSocialHogar] [decimal](20, 6) NULL,
	[IndiceInsercionProductivaHogar] [decimal](20, 6) NULL,
	[TasaActividadEconomicaHogar] [decimal](20, 6) NULL,
	[IndiceInclusionSocialHogar] [decimal](20, 6) NULL,
	[IdFacilidadAccesoComunidad] [int] NULL,
	[IdFacilidadAccesoVivienda] [int] NULL,
	[IndiceFacilidadAcceso] [decimal](20, 6) NULL,
	[IdTiempoLlegarCentroEducativo] [int] NULL,
	[IdTiempoLlegarCentroSalud] [int] NULL,
	[IndiceCercaniaCentrosBasicos] [decimal](20, 6) NULL,
	[IdExistenciaTransportePublico] [int] NULL,
	[IdPosesionMedioTransportePublico] [int] NULL,
	[EspecificarMediosTransporte] [varchar](500) NULL,
	[IndiceCapacidadDesplazamiento] [decimal](20, 6) NULL,
	[IndiceConexionProximidadGeografica] [decimal](20, 6) NULL,
	[IdEstructuraGeneracionalHogar] [int] NULL,
	[OtrosFamiliaresVivenEnLaMismaComunidad] [bit] NULL,
	[IdUstedConsideraContarConApoyoDeSuFamilia] [int] NULL,
	[IndiceCercaniaRelacionFamiliar] [decimal](20, 6) NULL,
	[IdApoyoVecinosCasoNecesidad] [int] NULL,
	[IdAmbienteSocialComunidad] [int] NULL,
	[SeSienteUstedRealmenteParteComunidad] [bit] NULL,
	[UstedEsUnMiembroActivoDeAlgunGrupo] [bit] NULL,
	[MiembroActivoEspecificar] [varchar](500) NULL,
	[IndiceCercaniaRelacionComunidad] [decimal](20, 6) NULL,
	[IndiceRelacionesSociales] [decimal](20, 6) NULL,
	[IndiceGlobalBienestarSocialFamiliar] [decimal](20, 6) NULL,
	[IdSuViviendaEs] [int] NULL,
	[IdLaViviendaEsANombreSuyo] [int] NULL,
	[LaViviendaEsANombreSuyoEspecificar] [varchar](500) NULL,
	[IdEstadoGeneralViviendaACFN] [int] NULL,
	[IdEstadoGeneralViviendaProductor] [int] NULL,
	[CantidadDormitorios] [int] NULL,
	[HacinamientoPorDormitorios] [int] NULL,
	[IndiceHacinamiento] [decimal](20, 6) NULL,
	[IndiceEstadoVivienda] [decimal](20, 6) NULL,
	[IndiceVivienda] [decimal](20, 6) NULL,
	[IdFuenteAguaVivienda] [int] NULL,
	[AccesoALaElectricidad] [bit] NULL,
	[IndiceServiciosBasicos] [decimal](20, 6) NULL,
	[TieneTelefonoResidencial] [bit] NULL,
	[TieneTelefonoCelular] [bit] NULL,
	[TieneSennalTelefoniaMovilEnSuCasa] [bit] NULL,
	[TieneAccesoAInternet] [bit] NULL,
	[IndiceServiciosComunicacion] [decimal](20, 6) NULL,
	[IndiceAccesoAServicios] [decimal](20, 6) NULL,
	[RecibeAyudaFinanciera] [bit] NULL,
	[RecibeAyudaFinancieraEspecificar] [varchar](500) NULL,
	[PresupuestoSuficienteCubrirGastosBasicos] [bit] NULL,
	[ParaQueNoAlcanzaPresupuestoHogar] [varchar](500) NULL,
	[IdConLosIngresosUstedEstimaQue] [int] NULL,
	[MontoMinimoMensualParaVivir] [decimal](20, 6) NULL,
	[IdConLaActualSituacionEconomica] [int] NULL,
	[IdUstedConsideraQueSuHogarEs] [int] NULL,
	[IndiceNivelVida] [decimal](20, 6) NULL,
	[IndiceBienestarEconomicoMaterialHogar] [decimal](20, 6) NULL,
	[UstedProduceAlimentosParaSuHogar] [bit] NULL,
	[GranosBasicos] [bit] NULL,
	[Hortalizas] [bit] NULL,
	[Frutas] [bit] NULL,
	[AnimalesYSusProductos] [bit] NULL,
	[ProductosTransformados] [bit] NULL,
	[PlantasAromaticasYMedicinales] [bit] NULL,
	[QueProduceParaSuHogarOtros] [bit] NULL,
	[IdProporcionAutoconsumoAlimentosHogar] [int] NULL,
	[IdLograProducir] [int] NULL,
	[IdDondeUstedProduce] [int] NULL,
	[IdElTamannoDeSuParcelaEs] [int] NULL,
	[IdAUstedLeGustaria] [int] NULL,
	[TamannoParcela] [bit] NULL,
	[ManoObra] [bit] NULL,
	[FertilidadSuelos] [bit] NULL,
	[TiempoDisponible] [bit] NULL,
	[RecursosFinancierosInvertirYTrabajar] [bit] NULL,
	[RiesgosNaturalesMuyFrecuentes] [bit] NULL,
	[OtrasLimitantes] [bit] NULL,
	[NoPoseeTierras] [bit] NULL,
	[NoPoseeConocimientos] [bit] NULL,
	[TrabajaEnOtroSectorYNoTieneTiempo] [bit] NULL,
	[NoLeInteresaPrefiereComprar] [bit] NULL,
	[ElLugarNoEsAptoParaCultivar] [bit] NULL,
	[OtrasRazones] [bit] NULL,
	[IndiceSoberaniaAlimenticia] [decimal](20, 6) NULL,
	[FelicidadSuTrabajo] [decimal](20, 6) NULL,
	[FelicidadSuSituacionFinanciera] [decimal](20, 6) NULL,
	[FelicidadSuEstadoSalud] [decimal](20, 6) NULL,
	[FelicidadSuVivienda] [decimal](20, 6) NULL,
	[FelicidadSuTiempoLibre] [decimal](20, 6) NULL,
	[FelicidadSuFamilia] [decimal](20, 6) NULL,
	[FelicidadSuEducacion] [decimal](20, 6) NULL,
	[FelicidadElMedioAmbiente] [decimal](20, 6) NULL,
	[FelicidadSuVidaSocial] [decimal](20, 6) NULL,
	[FelicidadSuParticipacionDentroComunidad] [decimal](20, 6) NULL,
	[IndiceFelicidad] [decimal](20, 6) NULL,
	[IdFormaJuridicaExplotacion] [int] NULL,
	[PerteneceAUnaOrganizacionAgropecuaria] [bit] NULL,
	[NombreOrganizacionAgropecuaria] [varchar](500) NULL,
	[IdTenenciaDeLaTierra] [int] NULL,
	[ANombreDeQuienEstaElTerreno] [bit] NULL,
	[SiEsANombreDeOtraPersonaEspecificar] [varchar](500) NULL,
	[EspecificarUbicacionDeLaTierra] [varchar](500) NULL,
	[SuperficieDeLaParcela] [decimal](20, 6) NULL,
	[MiniDescripcionDeLaFinca] [varchar](500) NULL,
	[FotoParcela] [image] NULL,
	[CualEsSuProduccionPrincipal] [varchar](500) NULL,
	[CualesSonLasOtrasProduccionesQueTiene] [varchar](500) NULL,
	[IdAbono] [int] NULL,
	[IdControlDeMaleza] [int] NULL,
	[IdPlaguicidas] [int] NULL,
	[IdOrigenDeLasSemillas] [int] NULL,
	[IdSistemaRiegoCultivos] [int] NULL,
	[PoseeUnaCertificacion] [bit] NULL,
	[CertificacionEspecificar] [varchar](500) NULL,
	[IdCategoriaManejo] [int] NULL,
	[ComentarioDeManejo] [varchar](500) NULL,
	[ListaMaquinariaDisponibleEnLaFinca] [varchar](500) NULL,
	[IdCategoriaMecanizacion] [int] NULL,
	[ListaInfraestructuraDisponibleEnLaFinca] [varchar](500) NULL,
	[IdCategoriaInfraestructura] [int] NULL,
	[RealizaAlgunProcesoTransformacionOValorAgregado] [bit] NULL,
	[ProcesoTransformacionOValorAgregadoEspecificar] [varchar](500) NULL,
	[IdDestinoDeLaProduccion] [int] NULL,
	[SiVentaEspecificarCanalesComercializacion] [varchar](500) NULL,
	[IdCategoriaExplotacionAgricola] [int] NULL,
	[IdOrientacionTecnicoEco] [int] NULL,
	[ComentarioExplotacionAgricola] [varchar](500) NULL,
	[TieneAbejasSinAguijon] [bit] NULL,
	[DesdeCuandoLasTiene] [datetime] NULL,
	[OtrasEspeciesAbeja] [varchar](500) NULL,
	[DondeYComoObtuvoEsasColmenas] [varchar](500) NULL,
	[ProduceMiel] [bit] NULL,
	[ComoCosechaLaMiel] [varchar](500) NULL,
	[IdDestinoMiel] [int] NULL,
	[DondeSeVendeMielEspecificar] [varchar](500) NULL,
	[PrecioVentaMiel] [decimal](20, 6) NULL,
	[IdDondeColocaLasColmenas] [int] NULL,
	[DondeSeUbicanLasColmenas] [varchar](500) NULL,
	[DiagnosticoVisualDelMeliponarioYSuEntorno] [varchar](500) NULL,
	[IdPotencialLugarParaTenerAbejas] [int] NULL,
	[IdRiesgoRoboColmenas] [int] NULL,
	[FotoMeliponario] [image] NULL,
	[CualEsSuMotivacionParaTenerLasAbejas] [varchar](500) NULL,
	[ComoAprendioACriarLasAbejas] [varchar](500) NULL,
	[IdNivelConocimientoMeliponicultura] [int] NULL,
	[ComentariosMeliponicultura] [varchar](500) NULL,
	[QueEsLoQueMejorariaSuCalidadDeVida] [varchar](500) NULL,
	[CualesSonLosFrenosCalidadDeVida] [varchar](500) NULL,
	[ComoMejorariaSuActividadAgricola] [varchar](500) NULL,
	[CualesSonLosFrenosActividadAgricola] [varchar](500) NULL,
	[EnQueLeGustariaQueACFNLoPuedaApoyar] [varchar](500) NULL,
	[CualesSon3FortalezasDeSuComunidad] [varchar](500) NULL,
	[CualesSon3PrincipalesProblemasComunidad] [varchar](500) NULL,
	[QueSolucionesPropondriaMejorarComunidad] [varchar](500) NULL,
	[CualesSonLosFrenosImpidenHacerEsasSoluciones] [varchar](500) NULL,
	[Fortalezas] [varchar](500) NULL,
	[Debilidades] [varchar](500) NULL,
	[Oportunidades] [varchar](500) NULL,
	[Amenazas] [varchar](500) NULL,
	[ProyectosPotenciales] [varchar](500) NULL,
	[ComentarioGeneral] [varchar](500) NULL,
	[IndicadorBienestarSocialYFamiliarDelHogar] [decimal](20, 6) NULL,
	[IndicadorBienestarEconomicoYMaterialDelHogar] [decimal](20, 6) NULL,
	[IndicadorSoberaniaAlimenticia] [decimal](20, 6) NULL,
	[IndicadorFelicidad] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Productor] PRIMARY KEY CLUSTERED 
(
	[IdProductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasMaterialEntregado]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasMaterialEntregado](
	[IdProductorAbejasNativasMaterialEntregado] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[Fecha] [datetime] NULL,
	[NumeroBoleta] [int] NULL,
	[IdTipoMaterialEntregado] [int] NULL,
	[Cantidad] [int] NULL,
	[Comentario] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasMaterialEntregado] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasMaterialEntregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasMaterialEntregadoTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasMaterialEntregadoTrack](
	[IdProductorAbejasNativasMaterialEntregado] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[Fecha] [datetime] NULL,
	[NumeroBoleta] [int] NULL,
	[IdTipoMaterialEntregado] [int] NULL,
	[Cantidad] [int] NULL,
	[Comentario] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasMaterialEntregadoTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasMaterialEntregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividual]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividual](
	[IdProductorAbejasNativasVisitaIndividual] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[Fecha] [datetime] NULL,
	[ElMeliponicultorEstaPresente] [bit] NULL,
	[OtraPersonaPresente] [varchar](500) NULL,
	[Motivo] [varchar](500) NULL,
	[Observaciones] [varchar](500) NULL,
	[Recomendaciones] [varchar](500) NULL,
	[Otros] [varchar](500) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividual] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria](
	[IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NULL,
	[AccionCorrectivaObligatoria] [varchar](500) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoriaTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoriaTrack](
	[IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NULL,
	[AccionCorrectivaObligatoria] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoriaTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCaja]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCaja](
	[IdProductorAbejasNativasVisitaIndividualColmenasEnCaja] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NULL,
	[IdEspecieAbeja] [int] NULL,
	[ACFN] [float] NULL,
	[Rustica] [float] NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualColmenasEnCaja] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividualColmenasEnCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCajaTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCajaTrack](
	[Numero] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NULL,
	[IdEspecieAbeja] [int] NULL,
	[ACFN] [float] NULL,
	[Rustica] [float] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualColmenasEnCajaTrack] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampa]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampa](
	[IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NULL,
	[IdEspecieAbeja] [int] NULL,
	[EnMeliponario] [float] NULL,
	[EnCampo] [float] NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualColmenasEnTrampa] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampaTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampaTrack](
	[IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NULL,
	[IdEspecieAbeja] [int] NULL,
	[EnMeliponario] [float] NULL,
	[EnCampo] [float] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualColmenasEnTrampaTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualTrack](
	[IdProductorAbejasNativasVisitaIndividual] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[Fecha] [datetime] NULL,
	[ElMeliponicultorEstaPresente] [bit] NULL,
	[OtraPersonaPresente] [varchar](max) NULL,
	[Motivo] [varchar](max) NULL,
	[Observaciones] [varchar](max) NULL,
	[Recomendaciones] [varchar](max) NULL,
	[Otros] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorContacto]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorContacto](
	[IdProductorContacto] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdTipoContacto] [int] NULL,
	[Contacto] [varchar](250) NULL,
	[Detalle] [varchar](500) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorContacto] PRIMARY KEY CLUSTERED 
(
	[IdProductorContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorContactoTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorContactoTrack](
	[IdProductorContacto] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[idTipoContacto] [int] NULL,
	[Contacto] [varchar](max) NULL,
	[Detalle] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorContactoTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorDetalleProduccionAnimal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorDetalleProduccionAnimal](
	[IdProductorDetalleProduccionAnimal] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdAnimales] [int] NULL,
	[Detalles] [varchar](500) NULL,
	[Cantidad] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorDetalleProduccionAnimal] PRIMARY KEY CLUSTERED 
(
	[IdProductorDetalleProduccionAnimal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorDetalleProduccionAnimalTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorDetalleProduccionAnimalTrack](
	[IdProductorDetalleProduccionAnimal] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdAnimales] [int] NULL,
	[Detalles] [varchar](max) NULL,
	[Cantidad] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorDetalleProduccionAnimalTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorDetalleProduccionAnimal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorDetalleProduccionVegetal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorDetalleProduccionVegetal](
	[IdProductorDetalleProduccionVegetal] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdCategoriaUsoSuelo] [int] NULL,
	[Detalles] [varchar](500) NULL,
	[Superficie] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorDetalleProduccionVegetal] PRIMARY KEY CLUSTERED 
(
	[IdProductorDetalleProduccionVegetal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorDetalleProduccionVegetalTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorDetalleProduccionVegetalTrack](
	[IdProductorDetalleProduccionVegetal] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdCategoriaUsoSuelo] [int] NULL,
	[Detalles] [varchar](max) NULL,
	[Superficie] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorDetalleProduccionVegetalTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorDetalleProduccionVegetal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorDocumentoEntregado]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorDocumentoEntregado](
	[IdProductorDocumentoEntregado] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdTipoDocumento] [int] NULL,
	[Detalle] [varchar](500) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorDocumentoEntregado] PRIMARY KEY CLUSTERED 
(
	[IdProductorDocumentoEntregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorDocumentoEntregadoTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorDocumentoEntregadoTrack](
	[IdProductorDocumentoEntregado] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdTipoDocumento] [int] NULL,
	[Detalle] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorDocumentoEntregadoTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorDocumentoEntregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorInventarioEspecies]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorInventarioEspecies](
	[IdProductorInventarioEspecies] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdEspecieAbeja] [int] NULL,
	[CantidadEnTronco] [int] NULL,
	[CantidadEnNidoArtificial] [int] NULL,
	[CantidadEnCajaRustica] [int] NULL,
	[CantidadEnCajaTecnificada] [int] NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorInventarioEspecies_1] PRIMARY KEY CLUSTERED 
(
	[IdProductorInventarioEspecies] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorInventarioEspeciesTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorInventarioEspeciesTrack](
	[IdProductorInventarioEspecies] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NULL,
	[IdProductor] [int] NULL,
	[IdEspecieAbeja] [int] NULL,
	[CantidadEnTronco] [int] NULL,
	[CantidadEnNidoArtificial] [int] NULL,
	[CantidadEnCajaRustica] [int] NULL,
	[CantidadEnCajaTecnificada] [int] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorInventarioEspeciesTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorInventarioEspecies] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorMiembroHogar]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorMiembroHogar](
	[IdProductorMiembroHogar] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[Nombre] [varchar](250) NULL,
	[IdParentezco] [int] NULL,
	[Sexo] [bit] NULL,
	[Edad] [int] NULL,
	[TieneAlgunaDiscapacidadOEnfermedadGrave] [bit] NULL,
	[Ocupacion] [varchar](100) NULL,
	[IdCondicionLaboral] [int] NULL,
	[SeguridadTrabajaTodoElAnno] [bit] NULL,
	[SeguridadTrabajaEntre48Y40Horas] [bit] NULL,
	[SeguridadCotizaALaCaja] [bit] NULL,
	[SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales] [bit] NULL,
	[SeguridadPercibeSuEmpleoComoSeguro] [bit] NULL,
	[IndiceSeguridad] [decimal](20, 6) NULL,
	[IdSituacionAutoempleo] [int] NULL,
	[IndiceInsercionLaboral] [decimal](20, 6) NULL,
	[IdSabeLeerYEscribir] [int] NULL,
	[IdNivelEscolar] [int] NULL,
	[IndiceNivelEducativo] [decimal](20, 6) NULL,
	[IdCondicionAseguramiento] [int] NULL,
	[IndiceCiudadaniaSocial] [decimal](20, 6) NULL,
	[IdPertenenciaGrupoComunitario] [int] NULL,
	[PertenenciaGrupoComunitarioEspecificar] [varchar](500) NULL,
	[IndiceInclusionSocialPersona] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorMiembroHogar] PRIMARY KEY CLUSTERED 
(
	[IdProductorMiembroHogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorMiembroHogarTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorMiembroHogarTrack](
	[IdProductorMiembroHogar] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[Nombre] [varchar](250) NULL,
	[IdParentezco] [int] NULL,
	[Sexo] [bit] NULL,
	[Edad] [int] NULL,
	[TieneAlgunaDiscapacidadOEnfermedadGrave] [bit] NULL,
	[Ocupacion] [varchar](100) NULL,
	[IdCondicionLaboral] [int] NULL,
	[SeguridadTrabajaTodoElAnno] [bit] NULL,
	[SeguridadTrabajaEntre48Y40Horas] [bit] NULL,
	[SeguridadCotizaALaCaja] [bit] NULL,
	[SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales] [bit] NULL,
	[SeguridadPercibeSuEmpleoComoSeguro] [bit] NULL,
	[IndiceSeguridad] [decimal](20, 6) NULL,
	[IdSituacionAutoempleo] [int] NULL,
	[IndiceInsercionLaboral] [decimal](20, 6) NULL,
	[IdSabeLeerYEscribir] [int] NULL,
	[IdNivelEscolar] [int] NULL,
	[IndiceNivelEducativo] [decimal](20, 6) NULL,
	[IdCondicionAseguramiento] [int] NULL,
	[IndiceCiudadaniaSocial] [decimal](20, 6) NULL,
	[IdPertenenciaGrupoComunitario] [int] NULL,
	[PertenenciaGrupoComunitarioEspecificar] [varchar](500) NULL,
	[IndiceInclusionSocialPersona] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorMiembroHogarTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorMiembroHogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorProyecto]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorProyecto](
	[IdProductorProyecto] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdProductor] [int] NULL,
	[IdProyecto] [int] NULL,
	[EstatusIntegracion] [bit] NULL,
	[FechaIntegracion] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[RazonSalida] [varchar](500) NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorProyecto] PRIMARY KEY CLUSTERED 
(
	[IdProductorProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorProyectoTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorProyectoTrack](
	[IdProductorProyecto] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[Idproductor] [int] NULL,
	[IdProyecto] [int] NULL,
	[EstatusIntegracion] [bit] NULL,
	[FechaIntegracion] [datetime] NULL,
	[Fechasalida] [datetime] NULL,
	[Razonsalida] [varchar](max) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorProyectoTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductorProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductorTrack]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductorTrack](
	[IdProductor] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [uniqueidentifier] NOT NULL,
	[IdUsuarioEncuestador] [int] NULL,
	[FechaEncuesta] [datetime] NULL,
	[VisitaALaCasa] [bit] NULL,
	[IdEstadoDiagnostico] [int] NULL,
	[Nombres] [varchar](100) NULL,
	[Apellido1] [varchar](100) NULL,
	[Apellido2] [varchar](100) NULL,
	[Foto] [image] NULL,
	[CodigoFloraNueva] [varchar](50) NULL,
	[Sexo] [bit] NULL,
	[NumeroCedula] [varchar](50) NULL,
	[FechaNacimiento] [datetime] NULL,
	[IdEstadoCivil] [int] NULL,
	[PerteneceAAlgunGrupoEtnico] [varchar](500) NULL,
	[IdPais] [int] NULL,
	[IdGrupo] [int] NULL,
	[IdDivisionAdministrativa1] [int] NULL,
	[IdDivisionAdministrativa2] [int] NULL,
	[IdDivisionAdministrativa3] [int] NULL,
	[DivisionAdministrativa4] [varchar](250) NULL,
	[DireccionExacta] [varchar](500) NULL,
	[IdTerritorio] [int] NULL,
	[GPSLatitud] [decimal](20, 6) NULL,
	[GPSLongitud] [decimal](20, 6) NULL,
	[Altitud] [decimal](20, 6) NULL,
	[ComentariosUbicacion] [varchar](500) NULL,
	[ActividadLaboralPrincipal] [varchar](500) NULL,
	[ActividadLaboralSecundaria] [varchar](500) NULL,
	[IdCategoriaActividadPrincipal] [int] NULL,
	[IdActividadAgricola] [int] NULL,
	[TotalPersonasHogar] [int] NULL,
	[TotalPersonasActivasEconomicamente] [int] NULL,
	[TotalPersonasDependientes] [int] NULL,
	[IndiceInsercionLaboralProductor] [decimal](20, 6) NULL,
	[IndiceNivelEducativoProductor] [decimal](20, 6) NULL,
	[IndiceCiudadaniaSocialProductor] [decimal](20, 6) NULL,
	[IndiceInsercionProductivaProductor] [decimal](20, 6) NULL,
	[IndiceInclusionSocialProductor] [decimal](20, 6) NULL,
	[IndiceInsercionLaboralHogar] [decimal](20, 6) NULL,
	[IndiceNivelEducativoHogar] [decimal](20, 6) NULL,
	[IndiceCiudadaniaSocialHogar] [decimal](20, 6) NULL,
	[IndiceInsercionProductivaHogar] [decimal](20, 6) NULL,
	[TasaActividadEconomicaHogar] [decimal](20, 6) NULL,
	[IndiceInclusionSocialHogar] [decimal](20, 6) NULL,
	[IdFacilidadAccesoComunidad] [int] NULL,
	[IdFacilidadAccesoVivienda] [int] NULL,
	[IndiceFacilidadAcceso] [decimal](20, 6) NULL,
	[IdTiempoLlegarCentroEducativo] [int] NULL,
	[IdTiempoLlegarCentroSalud] [int] NULL,
	[IndiceCercaniaCentrosBasicos] [decimal](20, 6) NULL,
	[IdExistenciaTransportePublico] [int] NULL,
	[IdPosesionMedioTransportePublico] [int] NULL,
	[EspecificarMediosTransporte] [varchar](500) NULL,
	[IndiceCapacidadDesplazamiento] [decimal](20, 6) NULL,
	[IndiceConexionProximidadGeografica] [decimal](20, 6) NULL,
	[IdEstructuraGeneracionalHogar] [int] NULL,
	[OtrosFamiliaresVivenEnLaMismaComunidad] [bit] NULL,
	[IdUstedConsideraContarConApoyoDeSuFamilia] [int] NULL,
	[IndiceCercaniaRelacionFamiliar] [decimal](20, 6) NULL,
	[IdApoyoVecinosCasoNecesidad] [int] NULL,
	[IdAmbienteSocialComunidad] [int] NULL,
	[SeSienteUstedRealmenteParteComunidad] [bit] NULL,
	[UstedEsUnMiembroActivoDeAlgunGrupo] [bit] NULL,
	[MiembroActivoEspecificar] [varchar](500) NULL,
	[IndiceCercaniaRelacionComunidad] [decimal](20, 6) NULL,
	[IndiceRelacionesSociales] [decimal](20, 6) NULL,
	[IndiceGlobalBienestarSocialFamiliar] [decimal](20, 6) NULL,
	[IdSuViviendaEs] [int] NULL,
	[IdLaViviendaEsANombreSuyo] [int] NULL,
	[LaViviendaEsANombreSuyoEspecificar] [varchar](500) NULL,
	[IdEstadoGeneralViviendaACFN] [int] NULL,
	[IdEstadoGeneralViviendaProductor] [int] NULL,
	[CantidadDormitorios] [int] NULL,
	[HacinamientoPorDormitorios] [int] NULL,
	[IndiceHacinamiento] [decimal](20, 6) NULL,
	[IndiceEstadoVivienda] [decimal](20, 6) NULL,
	[IndiceVivienda] [decimal](20, 6) NULL,
	[IdFuenteAguaVivienda] [int] NULL,
	[AccesoALaElectricidad] [bit] NULL,
	[IndiceServiciosBasicos] [decimal](20, 6) NULL,
	[TieneTelefonoResidencial] [bit] NULL,
	[TieneTelefonoCelular] [bit] NULL,
	[TieneSennalTelefoniaMovilEnSuCasa] [bit] NULL,
	[TieneAccesoAInternet] [bit] NULL,
	[IndiceServiciosComunicacion] [decimal](20, 6) NULL,
	[IndiceAccesoAServicios] [decimal](20, 6) NULL,
	[RecibeAyudaFinanciera] [bit] NULL,
	[RecibeAyudaFinancieraEspecificar] [varchar](500) NULL,
	[PresupuestoSuficienteCubrirGastosBasicos] [bit] NULL,
	[ParaQueNoAlcanzaPresupuestoHogar] [varchar](500) NULL,
	[IdConLosIngresosUstedEstimaQue] [int] NULL,
	[MontoMinimoMensualParaVivir] [decimal](20, 6) NULL,
	[IdConLaActualSituacionEconomica] [int] NULL,
	[IdUstedConsideraQueSuHogarEs] [int] NULL,
	[IndiceNivelVida] [decimal](20, 6) NULL,
	[IndiceBienestarEconomicoMaterialHogar] [decimal](20, 6) NULL,
	[UstedProduceAlimentosParaSuHogar] [bit] NULL,
	[GranosBasicos] [bit] NULL,
	[Hortalizas] [bit] NULL,
	[Frutas] [bit] NULL,
	[AnimalesYSusProductos] [bit] NULL,
	[ProductosTransformados] [bit] NULL,
	[PlantasAromaticasYMedicinales] [bit] NULL,
	[QueProduceParaSuHogarOtros] [bit] NULL,
	[IdProporcionAutoconsumoAlimentosHogar] [int] NULL,
	[IdLograProducir] [int] NULL,
	[IdDondeUstedProduce] [int] NULL,
	[IdElTamannoDeSuParcelaEs] [int] NULL,
	[IdAUstedLeGustaria] [int] NULL,
	[TamannoParcela] [bit] NULL,
	[ManoObra] [bit] NULL,
	[FertilidadSuelos] [bit] NULL,
	[TiempoDisponible] [bit] NULL,
	[RecursosFinancierosInvertirYTrabajar] [bit] NULL,
	[RiesgosNaturalesMuyFrecuentes] [bit] NULL,
	[OtrasLimitantes] [bit] NULL,
	[NoPoseeTierras] [bit] NULL,
	[NoPoseeConocimientos] [bit] NULL,
	[TrabajaEnOtroSectorYNoTieneTiempo] [bit] NULL,
	[NoLeInteresaPrefiereComprar] [bit] NULL,
	[ElLugarNoEsAptoParaCultivar] [bit] NULL,
	[OtrasRazones] [bit] NULL,
	[IndiceSoberaniaAlimenticia] [decimal](20, 6) NULL,
	[FelicidadSuTrabajo] [decimal](20, 6) NULL,
	[FelicidadSuSituacionFinanciera] [decimal](20, 6) NULL,
	[FelicidadSuEstadoSalud] [decimal](20, 6) NULL,
	[FelicidadSuVivienda] [decimal](20, 6) NULL,
	[FelicidadSuTiempoLibre] [decimal](20, 6) NULL,
	[FelicidadSuFamilia] [decimal](20, 6) NULL,
	[FelicidadSuEducacion] [decimal](20, 6) NULL,
	[FelicidadElMedioAmbiente] [decimal](20, 6) NULL,
	[FelicidadSuVidaSocial] [decimal](20, 6) NULL,
	[FelicidadSuParticipacionDentroComunidad] [decimal](20, 6) NULL,
	[IndiceFelicidad] [decimal](20, 6) NULL,
	[IdFormaJuridicaExplotacion] [int] NULL,
	[PerteneceAUnaOrganizacionAgropecuaria] [bit] NULL,
	[NombreOrganizacionAgropecuaria] [varchar](500) NULL,
	[IdTenenciaDeLaTierra] [int] NULL,
	[ANombreDeQuienEstaElTerreno] [bit] NULL,
	[SiEsANombreDeOtraPersonaEspecificar] [varchar](500) NULL,
	[EspecificarUbicacionDeLaTierra] [varchar](500) NULL,
	[SuperficieDeLaParcela] [decimal](20, 6) NULL,
	[MiniDescripcionDeLaFinca] [varchar](500) NULL,
	[FotoParcela] [image] NULL,
	[CualEsSuProduccionPrincipal] [varchar](500) NULL,
	[CualesSonLasOtrasProduccionesQueTiene] [varchar](500) NULL,
	[IdAbono] [int] NULL,
	[IdControlDeMaleza] [int] NULL,
	[IdPlaguicidas] [int] NULL,
	[IdOrigenDeLasSemillas] [int] NULL,
	[IdSistemaRiegoCultivos] [int] NULL,
	[PoseeUnaCertificacion] [bit] NULL,
	[CertificacionEspecificar] [varchar](500) NULL,
	[IdCategoriaManejo] [int] NULL,
	[ComentarioDeManejo] [varchar](500) NULL,
	[ListaMaquinariaDisponibleEnLaFinca] [varchar](500) NULL,
	[IdCategoriaMecanizacion] [int] NULL,
	[ListaInfraestructuraDisponibleEnLaFinca] [varchar](500) NULL,
	[IdCategoriaInfraestructura] [int] NULL,
	[RealizaAlgunProcesoTransformacionOValorAgregado] [bit] NULL,
	[ProcesoTransformacionOValorAgregadoEspecificar] [varchar](500) NULL,
	[IdDestinoDeLaProduccion] [int] NULL,
	[SiVentaEspecificarCanalesComercializacion] [varchar](500) NULL,
	[IdCategoriaExplotacionAgricola] [int] NULL,
	[IdOrientacionTecnicoEco] [int] NULL,
	[ComentarioExplotacionAgricola] [varchar](500) NULL,
	[TieneAbejasSinAguijon] [bit] NULL,
	[DesdeCuandoLasTiene] [datetime] NULL,
	[OtrasEspeciesAbeja] [varchar](500) NULL,
	[DondeYComoObtuvoEsasColmenas] [varchar](500) NULL,
	[ProduceMiel] [bit] NULL,
	[ComoCosechaLaMiel] [varchar](500) NULL,
	[IdDestinoMiel] [int] NULL,
	[DondeSeVendeMielEspecificar] [varchar](500) NULL,
	[PrecioVentaMiel] [decimal](20, 6) NULL,
	[IdDondeColocaLasColmenas] [int] NULL,
	[DondeSeUbicanLasColmenas] [varchar](500) NULL,
	[DiagnosticoVisualDelMeliponarioYSuEntorno] [varchar](500) NULL,
	[IdPotencialLugarParaTenerAbejas] [int] NULL,
	[IdRiesgoRoboColmenas] [int] NULL,
	[FotoMeliponario] [image] NULL,
	[CualEsSuMotivacionParaTenerLasAbejas] [varchar](500) NULL,
	[ComoAprendioACriarLasAbejas] [varchar](500) NULL,
	[IdNivelConocimientoMeliponicultura] [int] NULL,
	[ComentariosMeliponicultura] [varchar](500) NULL,
	[QueEsLoQueMejorariaSuCalidadDeVida] [varchar](500) NULL,
	[CualesSonLosFrenosCalidadDeVida] [varchar](500) NULL,
	[ComoMejorariaSuActividadAgricola] [varchar](500) NULL,
	[CualesSonLosFrenosActividadAgricola] [varchar](500) NULL,
	[EnQueLeGustariaQueACFNLoPuedaApoyar] [varchar](500) NULL,
	[CualesSon3FortalezasDeSuComunidad] [varchar](500) NULL,
	[CualesSon3PrincipalesProblemasComunidad] [varchar](500) NULL,
	[QueSolucionesPropondriaMejorarComunidad] [varchar](500) NULL,
	[CualesSonLosFrenosImpidenHacerEsasSoluciones] [varchar](500) NULL,
	[Fortalezas] [varchar](500) NULL,
	[Debilidades] [varchar](500) NULL,
	[Oportunidades] [varchar](500) NULL,
	[Amenazas] [varchar](500) NULL,
	[ProyectosPotenciales] [varchar](500) NULL,
	[ComentarioGeneral] [varchar](500) NULL,
	[IndicadorBienestarSocialYFamiliarDelHogar] [decimal](20, 6) NULL,
	[IndicadorBienestarEconomicoYMaterialDelHogar] [decimal](20, 6) NULL,
	[IndicadorSoberaniaAlimenticia] [decimal](20, 6) NULL,
	[IndicadorFelicidad] [decimal](20, 6) NULL,
	[Estado] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
	[FechaModificacionUtc] [varchar](50) NOT NULL,
	[Transaccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductorTrack] PRIMARY KEY CLUSTERED 
(
	[IdProductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProporcionAutoconsumoAlimentosHogar]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProporcionAutoconsumoAlimentosHogar](
	[IdProporcionAutoconsumoAlimentosHogar] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ProporcionAutoconsumoAlimentosHogar] PRIMARY KEY CLUSTERED 
(
	[IdProporcionAutoconsumoAlimentosHogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proyecto](
	[IdProyecto] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Proyecto] PRIMARY KEY CLUSTERED 
(
	[IdProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recurso]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recurso](
	[IdRecurso] [int] NOT NULL,
	[IdRecursoPadre] [int] NULL,
	[IdModulo] [int] NOT NULL,
	[TieneHijos] [bit] NOT NULL,
	[UrlRecurso] [varchar](max) NOT NULL,
	[UrlImagenOpcionMenu] [varchar](max) NOT NULL,
	[Nivel] [int] NOT NULL,
	[SuperAdministrador] [bit] NOT NULL,
	[IdTipoRecurso] [int] NOT NULL,
 CONSTRAINT [PK_RECURSO] PRIMARY KEY NONCLUSTERED 
(
	[IdRecurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecursoPorEmpresa]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecursoPorEmpresa](
	[IdRecursoPorEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[IdRecurso] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_RecursoPorEmpresa] PRIMARY KEY CLUSTERED 
(
	[IdRecursoPorEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecursoPorPerfil]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecursoPorPerfil](
	[IdRecurso] [int] NOT NULL,
	[IdPerfil] [int] NOT NULL,
	[IdRecursoPorPerfil] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_RecursoPorPerfil] PRIMARY KEY CLUSTERED 
(
	[IdRecursoPorPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RiesgoRoboColmenas]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RiesgoRoboColmenas](
	[IdRiesgoRoboColmenas] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_RiesgoRoboColmenas] PRIMARY KEY CLUSTERED 
(
	[IdRiesgoRoboColmenas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SabeLeerYEscribir]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SabeLeerYEscribir](
	[IdSabeLeerYEscribir] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SabeLeerYEscribir] PRIMARY KEY CLUSTERED 
(
	[IdSabeLeerYEscribir] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SistemaRiegoCultivos]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SistemaRiegoCultivos](
	[IdSistemaRiegoCultivos] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SistemaRiegoCultivos] PRIMARY KEY CLUSTERED 
(
	[IdSistemaRiegoCultivos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SituacionAutoempleo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SituacionAutoempleo](
	[IdSituacionAutoempleo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SituacionAutoempleo] PRIMARY KEY CLUSTERED 
(
	[IdSituacionAutoempleo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SuViviendaEs]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SuViviendaEs](
	[IdSuViviendaEs] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SuViviendaEs] PRIMARY KEY CLUSTERED 
(
	[IdSuViviendaEs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SyncTransaccion]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SyncTransaccion](
	[Numero] [bigint] IDENTITY(1,1) NOT NULL,
	[Version] [uniqueidentifier] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Dispositivo] [varchar](50) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaCreacionUtc] [varchar](50) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SyncTransaccion] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TemaVisual]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TemaVisual](
	[IdTemaVisual] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TemaVisual] PRIMARY KEY CLUSTERED 
(
	[IdTemaVisual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TenenciaDeLaTierra]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TenenciaDeLaTierra](
	[IdTenenciaDeLaTierra] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TenenciaDeLaTierra] PRIMARY KEY CLUSTERED 
(
	[IdTenenciaDeLaTierra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Territorio]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Territorio](
	[IdTerritorio] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Territorio] PRIMARY KEY CLUSTERED 
(
	[IdTerritorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiempoLlegarCentroEducativo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiempoLlegarCentroEducativo](
	[IdTiempoLlegarCentroEducativo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TiempoLlegarCentroEducativo] PRIMARY KEY CLUSTERED 
(
	[IdTiempoLlegarCentroEducativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiempoLlegarCentroSalud]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiempoLlegarCentroSalud](
	[IdTiempoLlegarCentroSalud] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TiempoLlegarCentroSalud] PRIMARY KEY CLUSTERED 
(
	[IdTiempoLlegarCentroSalud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoAccionMeliponario]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoAccionMeliponario](
	[IdTipoAccionMeliponario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoAccionMeliponario] PRIMARY KEY CLUSTERED 
(
	[IdTipoAccionMeliponario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoContacto]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoContacto](
	[IdTipoContacto] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoContacto] PRIMARY KEY CLUSTERED 
(
	[IdTipoContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[IdTipoDocumento] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoEmpresa]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEmpresa](
	[IdTipoEmpresa] [int] NOT NULL,
	[Orden] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoEmpresa] PRIMARY KEY CLUSTERED 
(
	[IdTipoEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoEmpresaIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoEmpresaIdioma](
	[IdTipoEmpresa] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TipoEmpresaIdioma] PRIMARY KEY CLUSTERED 
(
	[IdTipoEmpresa] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoEvento]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEvento](
	[IdTipoEvento] [int] NOT NULL,
 CONSTRAINT [PK_TIPOEVENTO] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoEventoIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoEventoIdioma](
	[IdTipoEvento] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TipoEventoIdioma] PRIMARY KEY CLUSTERED 
(
	[IdTipoEvento] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoFacturacion]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFacturacion](
	[IdTipoFacturacion] [int] NOT NULL,
 CONSTRAINT [PK_TipoFacturacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoFacturacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoFacturacionIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoFacturacionIdioma](
	[IdTipoFacturacion] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TipoFacturacionIdioma] PRIMARY KEY CLUSTERED 
(
	[IdTipoFacturacion] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoIdentificacion]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoIdentificacion](
	[IdTipoIdentificacion] [int] NOT NULL,
	[Orden] [int] NOT NULL,
	[CodigoCRI] [varchar](2) NOT NULL,
 CONSTRAINT [PK_TipoIdentificacion_1] PRIMARY KEY CLUSTERED 
(
	[IdTipoIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoIdentificacionIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoIdentificacionIdioma](
	[IdTipoIdentificacion] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TipoIdentificacionIdioma] PRIMARY KEY CLUSTERED 
(
	[IdTipoIdentificacion] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoMaterialEntregado]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoMaterialEntregado](
	[IdTipoMaterialEntregado] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoMaterialEntregado] PRIMARY KEY CLUSTERED 
(
	[IdTipoMaterialEntregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoMeliponario]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoMeliponario](
	[IdTipoMeliponario] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoMeliponario] PRIMARY KEY CLUSTERED 
(
	[IdTipoMeliponario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoMensaje]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMensaje](
	[IdTipoMensaje] [int] NOT NULL,
 CONSTRAINT [PK_TipoMensaje] PRIMARY KEY CLUSTERED 
(
	[IdTipoMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoMensajeIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoMensajeIdioma](
	[IdTipoMensaje] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TipoMensajeIdioma] PRIMARY KEY CLUSTERED 
(
	[IdTipoMensaje] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoModulo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoModulo](
	[IdTipoModulo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TIPOMODULO] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoParametro]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoParametro](
	[IdTipoParametro] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TipoParametri] PRIMARY KEY CLUSTERED 
(
	[IdTipoParametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoPeriodoFiscal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPeriodoFiscal](
	[IdTipoPeriodoFiscal] [int] NOT NULL,
	[IdMesInicio] [int] NOT NULL,
	[IdMesFin] [int] NOT NULL,
 CONSTRAINT [PK_AnnoFiscal] PRIMARY KEY CLUSTERED 
(
	[IdTipoPeriodoFiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoRecurso]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoRecurso](
	[IdTipoRecurso] [int] NOT NULL,
	[UrlImagenSubMenu] [varchar](max) NOT NULL,
 CONSTRAINT [PK_TipoRecurso] PRIMARY KEY CLUSTERED 
(
	[IdTipoRecurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoRecursoIdioma]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoRecursoIdioma](
	[IdTipoRecurso] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TipoRecursoIdioma] PRIMARY KEY CLUSTERED 
(
	[IdTipoRecurso] ASC,
	[IdIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransicionEstadoEntidad]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransicionEstadoEntidad](
	[IdEstadoEntidadOrigen] [int] NOT NULL,
	[IdEstadoEntidadDestino] [int] NOT NULL,
 CONSTRAINT [PK_TransicionEstadoEntidad] PRIMARY KEY CLUSTERED 
(
	[IdEstadoEntidadOrigen] ASC,
	[IdEstadoEntidadDestino] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransicionEstadoEntidadNotificado]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransicionEstadoEntidadNotificado](
	[IdTransicionEstadoEntidadNotificado] [int] IDENTITY(1,1) NOT NULL,
	[IdEstadoEntidadOrigen] [int] NOT NULL,
	[IdEstadoEntidadDestino] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[IdTipoMensaje] [int] NOT NULL,
	[IdCuentaCorreo] [int] NOT NULL,
	[CorreoElectronico] [varchar](100) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Observaciones] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TransicionEstadoEntidadNotificado] PRIMARY KEY CLUSTERED 
(
	[IdTransicionEstadoEntidadNotificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransicionEstadoEntidadPerfil]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransicionEstadoEntidadPerfil](
	[IdTransicionEstadoEntidadPerfil] [int] IDENTITY(1,1) NOT NULL,
	[IdEstadoEntidadOrigen] [int] NOT NULL,
	[IdEstadoEntidadDestino] [int] NOT NULL,
	[IdPerfil] [int] NOT NULL,
	[Observaciones] [varchar](250) NOT NULL,
 CONSTRAINT [PK_TransicionEstadoEntidadPerfil] PRIMARY KEY CLUSTERED 
(
	[IdTransicionEstadoEntidadPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UbicacionFisica]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UbicacionFisica](
	[IdUbicacionFisica] [int] IDENTITY(1,1) NOT NULL,
	[IdUbicacionFisicalPadre] [int] NULL,
	[IdPais] [int] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Ruta] [varchar](500) NULL,
	[Orden] [varchar](250) NOT NULL,
	[Hoja] [bit] NOT NULL,
	[Activa] [bit] NOT NULL,
 CONSTRAINT [PK_UbicacionFisica] PRIMARY KEY CLUSTERED 
(
	[IdUbicacionFisica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UbicacionLocal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UbicacionLocal](
	[IdUbicacionLocal] [int] IDENTITY(1,1) NOT NULL,
	[IdUbicacionLocalPadre] [int] NULL,
	[IdLocal] [int] NOT NULL,
	[IdUsuarioResponsable] [int] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Orden] [int] NOT NULL,
	[Activa] [bit] NOT NULL,
 CONSTRAINT [PK_UbicacionLocal] PRIMARY KEY CLUSTERED 
(
	[IdUbicacionLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UstedConsideraContarConApoyoDeSuFamilia]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UstedConsideraContarConApoyoDeSuFamilia](
	[IdUstedConsideraContarConApoyoDeSuFamilia] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_UstedConsideraContarConApoyoDeSuFamilia] PRIMARY KEY CLUSTERED 
(
	[IdUstedConsideraContarConApoyoDeSuFamilia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UstedConsideraQueSuHogarEs]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UstedConsideraQueSuHogarEs](
	[IdUstedConsideraQueSuHogarEs] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_UstedConsideraQueSuHogarEs] PRIMARY KEY CLUSTERED 
(
	[IdUstedConsideraQueSuHogarEs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdGenero] [int] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[Foto] [image] NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido1] [varchar](100) NOT NULL,
	[Apellido2] [varchar](100) NOT NULL,
	[CorreoElectronico] [varchar](100) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Direccion] [varchar](250) NOT NULL,
	[Observaciones] [varchar](250) NOT NULL,
	[IntentosRealizados] [int] NOT NULL,
	[Bloqueado] [bit] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Visible] [bit] NULL,
	[ForzarCambioPassword] [bit] NULL,
	[RecuperarContrasenna] [bit] NULL,
	[RecuperarContrasennaFecha] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuarioPorLocal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioPorLocal](
	[IdUsuario] [int] NOT NULL,
	[IdLocal] [int] NOT NULL,
	[AccesadoPorUltimaVez] [bit] NOT NULL,
	[IdPerfil] [int] NOT NULL,
	[Visible] [bit] NULL,
 CONSTRAINT [PK_UsuarioPorLocal] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC,
	[IdLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AbejasNativasVisitaGrupal]  WITH CHECK ADD  CONSTRAINT [FK_AbejasNativasVisitaGrupal_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([IdGrupo])
GO
ALTER TABLE [dbo].[AbejasNativasVisitaGrupal] CHECK CONSTRAINT [FK_AbejasNativasVisitaGrupal_Grupo]
GO
ALTER TABLE [dbo].[AbejasNativasVisitaGrupalParticipante]  WITH CHECK ADD  CONSTRAINT [FK_AbejasNativasVisitaGrupalParticipante_AbejasNativasVisitaGrupal] FOREIGN KEY([IdAbejasNativasVisitaGrupal])
REFERENCES [dbo].[AbejasNativasVisitaGrupal] ([IdAbejasNativasVisitaGrupal])
GO
ALTER TABLE [dbo].[AbejasNativasVisitaGrupalParticipante] CHECK CONSTRAINT [FK_AbejasNativasVisitaGrupalParticipante_AbejasNativasVisitaGrupal]
GO
ALTER TABLE [dbo].[AbejasNativasVisitaGrupalParticipante]  WITH CHECK ADD  CONSTRAINT [FK_AbejasNativasVisitaGrupalParticipante_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[AbejasNativasVisitaGrupalParticipante] CHECK CONSTRAINT [FK_AbejasNativasVisitaGrupalParticipante_Productor]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_AplicacionOrigen] FOREIGN KEY([IdAplicacionOrigen])
REFERENCES [dbo].[AplicacionOrigen] ([IdAplicacionOrigen])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_AplicacionOrigen]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Local] FOREIGN KEY([IdLocal])
REFERENCES [dbo].[Local] ([IdLocal])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Local]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_BITACORA_TIPODEEVE_TIPOEVEN] FOREIGN KEY([IdTipoEvento])
REFERENCES [dbo].[TipoEvento] ([IdTipoEvento])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_BITACORA_TIPODEEVE_TIPOEVEN]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Usuario]
GO
ALTER TABLE [dbo].[CuentaCorreo]  WITH CHECK ADD  CONSTRAINT [FK_CuentaCorreo_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[CuentaCorreo] CHECK CONSTRAINT [FK_CuentaCorreo_Empresa]
GO
ALTER TABLE [dbo].[DivisionAdministrativa2]  WITH CHECK ADD  CONSTRAINT [FK_DivisionAdministrativa2_DivisionAdministrativa1] FOREIGN KEY([IdDivisionAdministrativa1])
REFERENCES [dbo].[DivisionAdministrativa1] ([IdDivisionAdministrativa1])
GO
ALTER TABLE [dbo].[DivisionAdministrativa2] CHECK CONSTRAINT [FK_DivisionAdministrativa2_DivisionAdministrativa1]
GO
ALTER TABLE [dbo].[DivisionAdministrativa3]  WITH CHECK ADD  CONSTRAINT [FK_DivisionAdministrativa3_DivisionAdministrativa2] FOREIGN KEY([IdDivisionAdministrativa2])
REFERENCES [dbo].[DivisionAdministrativa2] ([IdDivisionAdministrativa2])
GO
ALTER TABLE [dbo].[DivisionAdministrativa3] CHECK CONSTRAINT [FK_DivisionAdministrativa3_DivisionAdministrativa2]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Moneda] FOREIGN KEY([IdMonedaBaseVentas])
REFERENCES [dbo].[Moneda] ([IdMoneda])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Moneda]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Pais]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_TemaVisual] FOREIGN KEY([IdTemaVisual])
REFERENCES [dbo].[TemaVisual] ([IdTemaVisual])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_TemaVisual]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_TipoEmpresa] FOREIGN KEY([IdTipoEmpresa])
REFERENCES [dbo].[TipoEmpresa] ([IdTipoEmpresa])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_TipoEmpresa]
GO
ALTER TABLE [dbo].[EntidadJuridica]  WITH CHECK ADD  CONSTRAINT [FK_EntidadJuridica_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[EntidadJuridica] CHECK CONSTRAINT [FK_EntidadJuridica_Empresa]
GO
ALTER TABLE [dbo].[EntidadJuridica]  WITH CHECK ADD  CONSTRAINT [FK_EntidadJuridica_Moneda] FOREIGN KEY([IdMonedaBaseContabilidad])
REFERENCES [dbo].[Moneda] ([IdMoneda])
GO
ALTER TABLE [dbo].[EntidadJuridica] CHECK CONSTRAINT [FK_EntidadJuridica_Moneda]
GO
ALTER TABLE [dbo].[EntidadJuridica]  WITH CHECK ADD  CONSTRAINT [FK_EntidadJuridica_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[EntidadJuridica] CHECK CONSTRAINT [FK_EntidadJuridica_Pais]
GO
ALTER TABLE [dbo].[EntidadJuridica]  WITH CHECK ADD  CONSTRAINT [FK_EntidadJuridica_TipoIdentificacion] FOREIGN KEY([IdTipoIdentificacion])
REFERENCES [dbo].[TipoIdentificacion] ([IdTipoIdentificacion])
GO
ALTER TABLE [dbo].[EntidadJuridica] CHECK CONSTRAINT [FK_EntidadJuridica_TipoIdentificacion]
GO
ALTER TABLE [dbo].[EntidadJuridica]  WITH CHECK ADD  CONSTRAINT [FK_EntidadJuridica_TipoPeriodoFiscal] FOREIGN KEY([IdTipoPeriodoFiscal])
REFERENCES [dbo].[TipoPeriodoFiscal] ([IdTipoPeriodoFiscal])
GO
ALTER TABLE [dbo].[EntidadJuridica] CHECK CONSTRAINT [FK_EntidadJuridica_TipoPeriodoFiscal]
GO
ALTER TABLE [dbo].[EntidadJuridica]  WITH CHECK ADD  CONSTRAINT [FK_EntidadJuridica_UbicacionFisica] FOREIGN KEY([IdUbicacionFisica])
REFERENCES [dbo].[UbicacionFisica] ([IdUbicacionFisica])
GO
ALTER TABLE [dbo].[EntidadJuridica] CHECK CONSTRAINT [FK_EntidadJuridica_UbicacionFisica]
GO
ALTER TABLE [dbo].[EstadoEntidad]  WITH CHECK ADD  CONSTRAINT [FK_EstadoEntidad_Entidad] FOREIGN KEY([IdEntidad])
REFERENCES [dbo].[Entidad] ([IdEntidad])
GO
ALTER TABLE [dbo].[EstadoEntidad] CHECK CONSTRAINT [FK_EstadoEntidad_Entidad]
GO
ALTER TABLE [dbo].[EstadoEntidadIdioma]  WITH CHECK ADD  CONSTRAINT [FK_EstadoEntidadIdioma_EstadoEntidad] FOREIGN KEY([IdEstadoEntidad])
REFERENCES [dbo].[EstadoEntidad] ([IdEstadoEntidad])
GO
ALTER TABLE [dbo].[EstadoEntidadIdioma] CHECK CONSTRAINT [FK_EstadoEntidadIdioma_EstadoEntidad]
GO
ALTER TABLE [dbo].[EstadoEntidadIdioma]  WITH CHECK ADD  CONSTRAINT [FK_EstadoEntidadIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[EstadoEntidadIdioma] CHECK CONSTRAINT [FK_EstadoEntidadIdioma_Idioma]
GO
ALTER TABLE [dbo].[EstadoEntidadPorEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_EstadoEntidadPorEmpresa_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[EstadoEntidadPorEmpresa] CHECK CONSTRAINT [FK_EstadoEntidadPorEmpresa_Empresa]
GO
ALTER TABLE [dbo].[EstadoEntidadPorEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_EstadoEntidadPorEmpresa_EstadoEntidad] FOREIGN KEY([IdEstadoEntidad])
REFERENCES [dbo].[EstadoEntidad] ([IdEstadoEntidad])
GO
ALTER TABLE [dbo].[EstadoEntidadPorEmpresa] CHECK CONSTRAINT [FK_EstadoEntidadPorEmpresa_EstadoEntidad]
GO
ALTER TABLE [dbo].[EstadoMensajeIdioma]  WITH CHECK ADD  CONSTRAINT [FK_EstadoMensajeIdioma_EstadoMensaje] FOREIGN KEY([IdEstadoMensaje])
REFERENCES [dbo].[EstadoMensaje] ([IdEstadoMensaje])
GO
ALTER TABLE [dbo].[EstadoMensajeIdioma] CHECK CONSTRAINT [FK_EstadoMensajeIdioma_EstadoMensaje]
GO
ALTER TABLE [dbo].[EstadoMensajeIdioma]  WITH CHECK ADD  CONSTRAINT [FK_EstadoMensajeIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[EstadoMensajeIdioma] CHECK CONSTRAINT [FK_EstadoMensajeIdioma_Idioma]
GO
ALTER TABLE [dbo].[GeneroIdioma]  WITH CHECK ADD  CONSTRAINT [FK_GeneroIdioma_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[GeneroIdioma] CHECK CONSTRAINT [FK_GeneroIdioma_Genero]
GO
ALTER TABLE [dbo].[GeneroIdioma]  WITH CHECK ADD  CONSTRAINT [FK_GeneroIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[GeneroIdioma] CHECK CONSTRAINT [FK_GeneroIdioma_Idioma]
GO
ALTER TABLE [dbo].[Local]  WITH CHECK ADD  CONSTRAINT [FK_Local_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[Local] CHECK CONSTRAINT [FK_Local_Empresa]
GO
ALTER TABLE [dbo].[Local]  WITH CHECK ADD  CONSTRAINT [FK_Local_EntidadJuridica] FOREIGN KEY([IdEntidadJuridica])
REFERENCES [dbo].[EntidadJuridica] ([IdEntidadJuridica])
GO
ALTER TABLE [dbo].[Local] CHECK CONSTRAINT [FK_Local_EntidadJuridica]
GO
ALTER TABLE [dbo].[Local]  WITH CHECK ADD  CONSTRAINT [FK_Local_MonedaCostoUsuarioMensual] FOREIGN KEY([IdMonedaCostoUsuarioMensual])
REFERENCES [dbo].[Moneda] ([IdMoneda])
GO
ALTER TABLE [dbo].[Local] CHECK CONSTRAINT [FK_Local_MonedaCostoUsuarioMensual]
GO
ALTER TABLE [dbo].[Local]  WITH CHECK ADD  CONSTRAINT [FK_Local_UbicacionFisica] FOREIGN KEY([IdUbicacionFisica])
REFERENCES [dbo].[UbicacionFisica] ([IdUbicacionFisica])
GO
ALTER TABLE [dbo].[Local] CHECK CONSTRAINT [FK_Local_UbicacionFisica]
GO
ALTER TABLE [dbo].[Meliponario]  WITH CHECK ADD  CONSTRAINT [FK_Meliponario_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[Meliponario] CHECK CONSTRAINT [FK_Meliponario_Productor]
GO
ALTER TABLE [dbo].[Meliponario]  WITH CHECK ADD  CONSTRAINT [FK_Meliponario_TipoMeliponario] FOREIGN KEY([IdTipoMeliponario])
REFERENCES [dbo].[TipoMeliponario] ([IdTipoMeliponario])
GO
ALTER TABLE [dbo].[Meliponario] CHECK CONSTRAINT [FK_Meliponario_TipoMeliponario]
GO
ALTER TABLE [dbo].[MeliponarioCaja]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCaja_EspecieAbeja] FOREIGN KEY([IdEspecieAbeja])
REFERENCES [dbo].[EspecieAbeja] ([IdEspecieAbeja])
GO
ALTER TABLE [dbo].[MeliponarioCaja] CHECK CONSTRAINT [FK_MeliponarioCaja_EspecieAbeja]
GO
ALTER TABLE [dbo].[MeliponarioCaja]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCaja_Meliponario] FOREIGN KEY([IdMeliponario])
REFERENCES [dbo].[Meliponario] ([IdMeliponario])
GO
ALTER TABLE [dbo].[MeliponarioCaja] CHECK CONSTRAINT [FK_MeliponarioCaja_Meliponario]
GO
ALTER TABLE [dbo].[MeliponarioCaja]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCaja_OrigenColonia] FOREIGN KEY([IdOrigenColonia])
REFERENCES [dbo].[OrigenColonia] ([IdOrigenColonia])
GO
ALTER TABLE [dbo].[MeliponarioCaja] CHECK CONSTRAINT [FK_MeliponarioCaja_OrigenColonia]
GO
ALTER TABLE [dbo].[MeliponarioCajaAccion]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCajaAccion_MeliponarioCaja] FOREIGN KEY([IdMeliponarioCaja])
REFERENCES [dbo].[MeliponarioCaja] ([IdMeliponarioCaja])
GO
ALTER TABLE [dbo].[MeliponarioCajaAccion] CHECK CONSTRAINT [FK_MeliponarioCajaAccion_MeliponarioCaja]
GO
ALTER TABLE [dbo].[MeliponarioCajaAccion]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCajaAccion_OrigenColonia] FOREIGN KEY([IdOrigenColonia])
REFERENCES [dbo].[OrigenColonia] ([IdOrigenColonia])
GO
ALTER TABLE [dbo].[MeliponarioCajaAccion] CHECK CONSTRAINT [FK_MeliponarioCajaAccion_OrigenColonia]
GO
ALTER TABLE [dbo].[MeliponarioCajaAccion]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCajaAccion_TipoAccionMeliponario] FOREIGN KEY([IdTipoAccionMeliponario])
REFERENCES [dbo].[TipoAccionMeliponario] ([IdTipoAccionMeliponario])
GO
ALTER TABLE [dbo].[MeliponarioCajaAccion] CHECK CONSTRAINT [FK_MeliponarioCajaAccion_TipoAccionMeliponario]
GO
ALTER TABLE [dbo].[MeliponarioCajaAccion]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCajaAccion_Usuario] FOREIGN KEY([IdUsuarioResponsable])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[MeliponarioCajaAccion] CHECK CONSTRAINT [FK_MeliponarioCajaAccion_Usuario]
GO
ALTER TABLE [dbo].[MeliponarioCajaHistorial]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCajaHistorial_MeliponarioCaja] FOREIGN KEY([IdMeliponarioCaja])
REFERENCES [dbo].[MeliponarioCaja] ([IdMeliponarioCaja])
GO
ALTER TABLE [dbo].[MeliponarioCajaHistorial] CHECK CONSTRAINT [FK_MeliponarioCajaHistorial_MeliponarioCaja]
GO
ALTER TABLE [dbo].[MeliponarioCajaHistorial]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCajaHistorial_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[MeliponarioCajaHistorial] CHECK CONSTRAINT [FK_MeliponarioCajaHistorial_Productor]
GO
ALTER TABLE [dbo].[MeliponarioCosecha]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCosecha_Meliponario] FOREIGN KEY([IdMeliponario])
REFERENCES [dbo].[Meliponario] ([IdMeliponario])
GO
ALTER TABLE [dbo].[MeliponarioCosecha] CHECK CONSTRAINT [FK_MeliponarioCosecha_Meliponario]
GO
ALTER TABLE [dbo].[MeliponarioCosecha]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCosecha_Usuario] FOREIGN KEY([IdUsuarioResponsable])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[MeliponarioCosecha] CHECK CONSTRAINT [FK_MeliponarioCosecha_Usuario]
GO
ALTER TABLE [dbo].[MeliponarioCosechaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCosechaDetalle_EspecieAbeja] FOREIGN KEY([IdEspecieAbeja])
REFERENCES [dbo].[EspecieAbeja] ([IdEspecieAbeja])
GO
ALTER TABLE [dbo].[MeliponarioCosechaDetalle] CHECK CONSTRAINT [FK_MeliponarioCosechaDetalle_EspecieAbeja]
GO
ALTER TABLE [dbo].[MeliponarioCosechaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCosechaDetalle_MeliponarioCosecha] FOREIGN KEY([IdMeliponarioCosecha])
REFERENCES [dbo].[MeliponarioCosecha] ([IdMeliponarioCosecha])
GO
ALTER TABLE [dbo].[MeliponarioCosechaDetalle] CHECK CONSTRAINT [FK_MeliponarioCosechaDetalle_MeliponarioCosecha]
GO
ALTER TABLE [dbo].[MeliponarioCosechaDetalleCaja]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCosechaDetalleCaja_MeliponarioCaja] FOREIGN KEY([IdMeliponarioCaja])
REFERENCES [dbo].[MeliponarioCaja] ([IdMeliponarioCaja])
GO
ALTER TABLE [dbo].[MeliponarioCosechaDetalleCaja] CHECK CONSTRAINT [FK_MeliponarioCosechaDetalleCaja_MeliponarioCaja]
GO
ALTER TABLE [dbo].[MeliponarioCosechaDetalleCaja]  WITH CHECK ADD  CONSTRAINT [FK_MeliponarioCosechaDetalleCaja_MeliponarioCosechaDetalle] FOREIGN KEY([IdMeliponarioCosechaDetalle])
REFERENCES [dbo].[MeliponarioCosechaDetalle] ([IdMeliponarioCosechaDetalle])
GO
ALTER TABLE [dbo].[MeliponarioCosechaDetalleCaja] CHECK CONSTRAINT [FK_MeliponarioCosechaDetalleCaja_MeliponarioCosechaDetalle]
GO
ALTER TABLE [dbo].[Mensaje]  WITH CHECK ADD  CONSTRAINT [FK_Mensaje_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[Mensaje] CHECK CONSTRAINT [FK_Mensaje_Empresa]
GO
ALTER TABLE [dbo].[Mensaje]  WITH CHECK ADD  CONSTRAINT [FK_Mensaje_EstadoMensaje] FOREIGN KEY([IdEstadoMensaje])
REFERENCES [dbo].[EstadoMensaje] ([IdEstadoMensaje])
GO
ALTER TABLE [dbo].[Mensaje] CHECK CONSTRAINT [FK_Mensaje_EstadoMensaje]
GO
ALTER TABLE [dbo].[Mensaje]  WITH CHECK ADD  CONSTRAINT [FK_Mensaje_TipoMensaje] FOREIGN KEY([IdTipoMensaje])
REFERENCES [dbo].[TipoMensaje] ([IdTipoMensaje])
GO
ALTER TABLE [dbo].[Mensaje] CHECK CONSTRAINT [FK_Mensaje_TipoMensaje]
GO
ALTER TABLE [dbo].[Mensaje]  WITH CHECK ADD  CONSTRAINT [FK_Mensaje_Usuario] FOREIGN KEY([IdUsuarioEnviador])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Mensaje] CHECK CONSTRAINT [FK_Mensaje_Usuario]
GO
ALTER TABLE [dbo].[MensajeArchivo]  WITH CHECK ADD  CONSTRAINT [FK_MensajeArchivo_Mensaje] FOREIGN KEY([IdMensaje])
REFERENCES [dbo].[Mensaje] ([IdMensaje])
GO
ALTER TABLE [dbo].[MensajeArchivo] CHECK CONSTRAINT [FK_MensajeArchivo_Mensaje]
GO
ALTER TABLE [dbo].[MensajeBitacora]  WITH CHECK ADD  CONSTRAINT [FK_MensajeBitacora_Mensaje] FOREIGN KEY([IdMensaje])
REFERENCES [dbo].[Mensaje] ([IdMensaje])
GO
ALTER TABLE [dbo].[MensajeBitacora] CHECK CONSTRAINT [FK_MensajeBitacora_Mensaje]
GO
ALTER TABLE [dbo].[MensajeCorreoElectronico]  WITH CHECK ADD  CONSTRAINT [FK_MensajeCorreoElectronico_CuentaCorreo1] FOREIGN KEY([IdCuentaCorreoSalida])
REFERENCES [dbo].[CuentaCorreo] ([IdCuentaCorreo])
GO
ALTER TABLE [dbo].[MensajeCorreoElectronico] CHECK CONSTRAINT [FK_MensajeCorreoElectronico_CuentaCorreo1]
GO
ALTER TABLE [dbo].[MensajeCorreoElectronico]  WITH CHECK ADD  CONSTRAINT [FK_MensajeCorreoElectronico_Mensaje] FOREIGN KEY([IdMensaje])
REFERENCES [dbo].[Mensaje] ([IdMensaje])
GO
ALTER TABLE [dbo].[MensajeCorreoElectronico] CHECK CONSTRAINT [FK_MensajeCorreoElectronico_Mensaje]
GO
ALTER TABLE [dbo].[MensajeSMS]  WITH CHECK ADD  CONSTRAINT [FK_MensajeSMS_Mensaje] FOREIGN KEY([IdMensaje])
REFERENCES [dbo].[Mensaje] ([IdMensaje])
GO
ALTER TABLE [dbo].[MensajeSMS] CHECK CONSTRAINT [FK_MensajeSMS_Mensaje]
GO
ALTER TABLE [dbo].[MensajeVoz]  WITH CHECK ADD  CONSTRAINT [FK_MensajeVoz_Mensaje] FOREIGN KEY([IdMensaje])
REFERENCES [dbo].[Mensaje] ([IdMensaje])
GO
ALTER TABLE [dbo].[MensajeVoz] CHECK CONSTRAINT [FK_MensajeVoz_Mensaje]
GO
ALTER TABLE [dbo].[MesIdioma]  WITH CHECK ADD  CONSTRAINT [FK_MesIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[MesIdioma] CHECK CONSTRAINT [FK_MesIdioma_Idioma]
GO
ALTER TABLE [dbo].[MesIdioma]  WITH CHECK ADD  CONSTRAINT [FK_MesIdioma_Mes] FOREIGN KEY([IdMes])
REFERENCES [dbo].[Mes] ([IdMes])
GO
ALTER TABLE [dbo].[MesIdioma] CHECK CONSTRAINT [FK_MesIdioma_Mes]
GO
ALTER TABLE [dbo].[Modulo]  WITH CHECK ADD  CONSTRAINT [FK_MODULO_TIPODEMOD_TIPOMODU] FOREIGN KEY([IdTipoModulo])
REFERENCES [dbo].[TipoModulo] ([IdTipoModulo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Modulo] CHECK CONSTRAINT [FK_MODULO_TIPODEMOD_TIPOMODU]
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD  CONSTRAINT [FK_Pais_Moneda] FOREIGN KEY([IdMonedaOficial])
REFERENCES [dbo].[Moneda] ([IdMoneda])
GO
ALTER TABLE [dbo].[Pais] CHECK CONSTRAINT [FK_Pais_Moneda]
GO
ALTER TABLE [dbo].[Parametro]  WITH CHECK ADD  CONSTRAINT [FK_Parametro_TipoParametri] FOREIGN KEY([IdTipoParametro])
REFERENCES [dbo].[TipoParametro] ([IdTipoParametro])
GO
ALTER TABLE [dbo].[Parametro] CHECK CONSTRAINT [FK_Parametro_TipoParametri]
GO
ALTER TABLE [dbo].[ParametroEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_ParametroEmpresa_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[ParametroEmpresa] CHECK CONSTRAINT [FK_ParametroEmpresa_Empresa]
GO
ALTER TABLE [dbo].[ParametroEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_ParametroEmpresa_Parametro] FOREIGN KEY([Llave])
REFERENCES [dbo].[Parametro] ([Llave])
GO
ALTER TABLE [dbo].[ParametroEmpresa] CHECK CONSTRAINT [FK_ParametroEmpresa_Parametro]
GO
ALTER TABLE [dbo].[ParametroGlobal]  WITH CHECK ADD  CONSTRAINT [FK_ParametroGlobal_Parametro] FOREIGN KEY([Llave])
REFERENCES [dbo].[Parametro] ([Llave])
GO
ALTER TABLE [dbo].[ParametroGlobal] CHECK CONSTRAINT [FK_ParametroGlobal_Parametro]
GO
ALTER TABLE [dbo].[ParametroLocal]  WITH CHECK ADD  CONSTRAINT [FK_ParametroLocal_Local] FOREIGN KEY([IdLocal])
REFERENCES [dbo].[Local] ([IdLocal])
GO
ALTER TABLE [dbo].[ParametroLocal] CHECK CONSTRAINT [FK_ParametroLocal_Local]
GO
ALTER TABLE [dbo].[ParametroLocal]  WITH CHECK ADD  CONSTRAINT [FK_ParametroLocal_Parametro] FOREIGN KEY([Llave])
REFERENCES [dbo].[Parametro] ([Llave])
GO
ALTER TABLE [dbo].[ParametroLocal] CHECK CONSTRAINT [FK_ParametroLocal_Parametro]
GO
ALTER TABLE [dbo].[Perfil]  WITH CHECK ADD  CONSTRAINT [FK_Perfil_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[Perfil] CHECK CONSTRAINT [FK_Perfil_Empresa]
GO
ALTER TABLE [dbo].[ProductorAbejasNativasMaterialEntregado]  WITH CHECK ADD  CONSTRAINT [FK_ProductorAbejasNativasMaterialEntregado_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorAbejasNativasMaterialEntregado] CHECK CONSTRAINT [FK_ProductorAbejasNativasMaterialEntregado_Productor]
GO
ALTER TABLE [dbo].[ProductorAbejasNativasMaterialEntregado]  WITH CHECK ADD  CONSTRAINT [FK_ProductorAbejasNativasMaterialEntregado_TipoMaterialEntregado] FOREIGN KEY([IdTipoMaterialEntregado])
REFERENCES [dbo].[TipoMaterialEntregado] ([IdTipoMaterialEntregado])
GO
ALTER TABLE [dbo].[ProductorAbejasNativasMaterialEntregado] CHECK CONSTRAINT [FK_ProductorAbejasNativasMaterialEntregado_TipoMaterialEntregado]
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividual]  WITH CHECK ADD  CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividual_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividual] CHECK CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividual_Productor]
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria]  WITH CHECK ADD  CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria_ProductorAbejasNativasVisitaIndividual] FOREIGN KEY([IdProductorAbejasNativasVisitaIndividual])
REFERENCES [dbo].[ProductorAbejasNativasVisitaIndividual] ([IdProductorAbejasNativasVisitaIndividual])
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] CHECK CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria_ProductorAbejasNativasVisitaIndividual]
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCaja]  WITH CHECK ADD  CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualColmenasEnCaja_EspecieAbeja] FOREIGN KEY([IdEspecieAbeja])
REFERENCES [dbo].[EspecieAbeja] ([IdEspecieAbeja])
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCaja] CHECK CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualColmenasEnCaja_EspecieAbeja]
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCaja]  WITH CHECK ADD  CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualColmenasEnCaja_ProductorAbejasNativasVisitaIndividual] FOREIGN KEY([IdProductorAbejasNativasVisitaIndividual])
REFERENCES [dbo].[ProductorAbejasNativasVisitaIndividual] ([IdProductorAbejasNativasVisitaIndividual])
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCaja] CHECK CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualColmenasEnCaja_ProductorAbejasNativasVisitaIndividual]
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampa]  WITH CHECK ADD  CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualColmenasEnTrampa_EspecieAbeja] FOREIGN KEY([IdEspecieAbeja])
REFERENCES [dbo].[EspecieAbeja] ([IdEspecieAbeja])
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampa] CHECK CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualColmenasEnTrampa_EspecieAbeja]
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampa]  WITH CHECK ADD  CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualColmenasEnTrampa_ProductorAbejasNativasVisitaIndividual] FOREIGN KEY([IdProductorAbejasNativasVisitaIndividual])
REFERENCES [dbo].[ProductorAbejasNativasVisitaIndividual] ([IdProductorAbejasNativasVisitaIndividual])
GO
ALTER TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampa] CHECK CONSTRAINT [FK_ProductorAbejasNativasVisitaIndividualColmenasEnTrampa_ProductorAbejasNativasVisitaIndividual]
GO
ALTER TABLE [dbo].[ProductorContacto]  WITH CHECK ADD  CONSTRAINT [FK_ProductorContacto_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorContacto] CHECK CONSTRAINT [FK_ProductorContacto_Productor]
GO
ALTER TABLE [dbo].[ProductorContacto]  WITH CHECK ADD  CONSTRAINT [FK_ProductorContacto_TipoContacto] FOREIGN KEY([IdTipoContacto])
REFERENCES [dbo].[TipoContacto] ([IdTipoContacto])
GO
ALTER TABLE [dbo].[ProductorContacto] CHECK CONSTRAINT [FK_ProductorContacto_TipoContacto]
GO
ALTER TABLE [dbo].[ProductorDetalleProduccionAnimal]  WITH CHECK ADD  CONSTRAINT [FK_ProductorDetalleProduccionAnimal_Animales] FOREIGN KEY([IdAnimales])
REFERENCES [dbo].[Animales] ([IdAnimales])
GO
ALTER TABLE [dbo].[ProductorDetalleProduccionAnimal] CHECK CONSTRAINT [FK_ProductorDetalleProduccionAnimal_Animales]
GO
ALTER TABLE [dbo].[ProductorDetalleProduccionAnimal]  WITH CHECK ADD  CONSTRAINT [FK_ProductorDetalleProduccionAnimal_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorDetalleProduccionAnimal] CHECK CONSTRAINT [FK_ProductorDetalleProduccionAnimal_Productor]
GO
ALTER TABLE [dbo].[ProductorDetalleProduccionVegetal]  WITH CHECK ADD  CONSTRAINT [FK_ProductorDetalleProduccionVegetal_CategoriaUsoSuelo] FOREIGN KEY([IdCategoriaUsoSuelo])
REFERENCES [dbo].[CategoriaUsoSuelo] ([IdCategoriaUsoSuelo])
GO
ALTER TABLE [dbo].[ProductorDetalleProduccionVegetal] CHECK CONSTRAINT [FK_ProductorDetalleProduccionVegetal_CategoriaUsoSuelo]
GO
ALTER TABLE [dbo].[ProductorDetalleProduccionVegetal]  WITH CHECK ADD  CONSTRAINT [FK_ProductorDetalleProduccionVegetal_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorDetalleProduccionVegetal] CHECK CONSTRAINT [FK_ProductorDetalleProduccionVegetal_Productor]
GO
ALTER TABLE [dbo].[ProductorDocumentoEntregado]  WITH CHECK ADD  CONSTRAINT [FK_ProductorDocumentoEntregado_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorDocumentoEntregado] CHECK CONSTRAINT [FK_ProductorDocumentoEntregado_Productor]
GO
ALTER TABLE [dbo].[ProductorDocumentoEntregado]  WITH CHECK ADD  CONSTRAINT [FK_ProductorDocumentoEntregado_TipoDocumento] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([IdTipoDocumento])
GO
ALTER TABLE [dbo].[ProductorDocumentoEntregado] CHECK CONSTRAINT [FK_ProductorDocumentoEntregado_TipoDocumento]
GO
ALTER TABLE [dbo].[ProductorInventarioEspecies]  WITH CHECK ADD  CONSTRAINT [FK_ProductorInventarioEspecies_EspecieAbeja] FOREIGN KEY([IdEspecieAbeja])
REFERENCES [dbo].[EspecieAbeja] ([IdEspecieAbeja])
GO
ALTER TABLE [dbo].[ProductorInventarioEspecies] CHECK CONSTRAINT [FK_ProductorInventarioEspecies_EspecieAbeja]
GO
ALTER TABLE [dbo].[ProductorInventarioEspecies]  WITH CHECK ADD  CONSTRAINT [FK_ProductorInventarioEspecies_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorInventarioEspecies] CHECK CONSTRAINT [FK_ProductorInventarioEspecies_Productor]
GO
ALTER TABLE [dbo].[ProductorMiembroHogar]  WITH CHECK ADD  CONSTRAINT [FK_ProductorMiembroHogar_CondicionAseguramiento] FOREIGN KEY([IdCondicionAseguramiento])
REFERENCES [dbo].[CondicionAseguramiento] ([IdCondicionAseguramiento])
GO
ALTER TABLE [dbo].[ProductorMiembroHogar] CHECK CONSTRAINT [FK_ProductorMiembroHogar_CondicionAseguramiento]
GO
ALTER TABLE [dbo].[ProductorMiembroHogar]  WITH CHECK ADD  CONSTRAINT [FK_ProductorMiembroHogar_CondicionLaboral] FOREIGN KEY([IdCondicionLaboral])
REFERENCES [dbo].[CondicionLaboral] ([IdCondicionLaboral])
GO
ALTER TABLE [dbo].[ProductorMiembroHogar] CHECK CONSTRAINT [FK_ProductorMiembroHogar_CondicionLaboral]
GO
ALTER TABLE [dbo].[ProductorMiembroHogar]  WITH CHECK ADD  CONSTRAINT [FK_ProductorMiembroHogar_NivelEscolar] FOREIGN KEY([IdNivelEscolar])
REFERENCES [dbo].[NivelEscolar] ([IdNivelEscolar])
GO
ALTER TABLE [dbo].[ProductorMiembroHogar] CHECK CONSTRAINT [FK_ProductorMiembroHogar_NivelEscolar]
GO
ALTER TABLE [dbo].[ProductorMiembroHogar]  WITH CHECK ADD  CONSTRAINT [FK_ProductorMiembroHogar_Parentezco] FOREIGN KEY([IdParentezco])
REFERENCES [dbo].[Parentezco] ([IdParentezco])
GO
ALTER TABLE [dbo].[ProductorMiembroHogar] CHECK CONSTRAINT [FK_ProductorMiembroHogar_Parentezco]
GO
ALTER TABLE [dbo].[ProductorMiembroHogar]  WITH CHECK ADD  CONSTRAINT [FK_ProductorMiembroHogar_PertenenciaGrupoComunitario] FOREIGN KEY([IdPertenenciaGrupoComunitario])
REFERENCES [dbo].[PertenenciaGrupoComunitario] ([IdPertenenciaGrupoComunitario])
GO
ALTER TABLE [dbo].[ProductorMiembroHogar] CHECK CONSTRAINT [FK_ProductorMiembroHogar_PertenenciaGrupoComunitario]
GO
ALTER TABLE [dbo].[ProductorMiembroHogar]  WITH CHECK ADD  CONSTRAINT [FK_ProductorMiembroHogar_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorMiembroHogar] CHECK CONSTRAINT [FK_ProductorMiembroHogar_Productor]
GO
ALTER TABLE [dbo].[ProductorMiembroHogar]  WITH CHECK ADD  CONSTRAINT [FK_ProductorMiembroHogar_SabeLeerYEscribir] FOREIGN KEY([IdSabeLeerYEscribir])
REFERENCES [dbo].[SabeLeerYEscribir] ([IdSabeLeerYEscribir])
GO
ALTER TABLE [dbo].[ProductorMiembroHogar] CHECK CONSTRAINT [FK_ProductorMiembroHogar_SabeLeerYEscribir]
GO
ALTER TABLE [dbo].[ProductorMiembroHogar]  WITH CHECK ADD  CONSTRAINT [FK_ProductorMiembroHogar_SituacionAutoempleo] FOREIGN KEY([IdSituacionAutoempleo])
REFERENCES [dbo].[SituacionAutoempleo] ([IdSituacionAutoempleo])
GO
ALTER TABLE [dbo].[ProductorMiembroHogar] CHECK CONSTRAINT [FK_ProductorMiembroHogar_SituacionAutoempleo]
GO
ALTER TABLE [dbo].[ProductorProyecto]  WITH CHECK ADD  CONSTRAINT [FK_ProductorProyecto_Productor] FOREIGN KEY([IdProductor])
REFERENCES [dbo].[Productor] ([IdProductor])
GO
ALTER TABLE [dbo].[ProductorProyecto] CHECK CONSTRAINT [FK_ProductorProyecto_Productor]
GO
ALTER TABLE [dbo].[ProductorProyecto]  WITH CHECK ADD  CONSTRAINT [FK_ProductorProyecto_Proyecto] FOREIGN KEY([IdProyecto])
REFERENCES [dbo].[Proyecto] ([IdProyecto])
GO
ALTER TABLE [dbo].[ProductorProyecto] CHECK CONSTRAINT [FK_ProductorProyecto_Proyecto]
GO
ALTER TABLE [dbo].[Recurso]  WITH CHECK ADD  CONSTRAINT [FK_RECURSO_MODULODER_MODULO] FOREIGN KEY([IdModulo])
REFERENCES [dbo].[Modulo] ([IdModulo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Recurso] CHECK CONSTRAINT [FK_RECURSO_MODULODER_MODULO]
GO
ALTER TABLE [dbo].[Recurso]  WITH CHECK ADD  CONSTRAINT [FK_RECURSO_RECURSOPA_RECURSO] FOREIGN KEY([IdRecursoPadre])
REFERENCES [dbo].[Recurso] ([IdRecurso])
GO
ALTER TABLE [dbo].[Recurso] CHECK CONSTRAINT [FK_RECURSO_RECURSOPA_RECURSO]
GO
ALTER TABLE [dbo].[Recurso]  WITH CHECK ADD  CONSTRAINT [FK_Recurso_TipoRecurso] FOREIGN KEY([IdTipoRecurso])
REFERENCES [dbo].[TipoRecurso] ([IdTipoRecurso])
GO
ALTER TABLE [dbo].[Recurso] CHECK CONSTRAINT [FK_Recurso_TipoRecurso]
GO
ALTER TABLE [dbo].[RecursoPorEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_RecursoPorEmpresa_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[RecursoPorEmpresa] CHECK CONSTRAINT [FK_RecursoPorEmpresa_Empresa]
GO
ALTER TABLE [dbo].[RecursoPorEmpresa]  WITH CHECK ADD  CONSTRAINT [FK_RecursoPorEmpresa_Recurso] FOREIGN KEY([IdRecurso])
REFERENCES [dbo].[Recurso] ([IdRecurso])
GO
ALTER TABLE [dbo].[RecursoPorEmpresa] CHECK CONSTRAINT [FK_RecursoPorEmpresa_Recurso]
GO
ALTER TABLE [dbo].[RecursoPorPerfil]  WITH CHECK ADD  CONSTRAINT [FK_RecursoPorPerfil_Perfil] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfil] ([IdPerfil])
GO
ALTER TABLE [dbo].[RecursoPorPerfil] CHECK CONSTRAINT [FK_RecursoPorPerfil_Perfil]
GO
ALTER TABLE [dbo].[RecursoPorPerfil]  WITH CHECK ADD  CONSTRAINT [FK_RecursoPorPerfil_Recurso] FOREIGN KEY([IdRecurso])
REFERENCES [dbo].[Recurso] ([IdRecurso])
GO
ALTER TABLE [dbo].[RecursoPorPerfil] CHECK CONSTRAINT [FK_RecursoPorPerfil_Recurso]
GO
ALTER TABLE [dbo].[TipoEmpresaIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoEmpresaIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[TipoEmpresaIdioma] CHECK CONSTRAINT [FK_TipoEmpresaIdioma_Idioma]
GO
ALTER TABLE [dbo].[TipoEmpresaIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoEmpresaIdioma_TipoEmpresa] FOREIGN KEY([IdTipoEmpresa])
REFERENCES [dbo].[TipoEmpresa] ([IdTipoEmpresa])
GO
ALTER TABLE [dbo].[TipoEmpresaIdioma] CHECK CONSTRAINT [FK_TipoEmpresaIdioma_TipoEmpresa]
GO
ALTER TABLE [dbo].[TipoEventoIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoEventoIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[TipoEventoIdioma] CHECK CONSTRAINT [FK_TipoEventoIdioma_Idioma]
GO
ALTER TABLE [dbo].[TipoEventoIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoEventoIdioma_TipoEvento] FOREIGN KEY([IdTipoEvento])
REFERENCES [dbo].[TipoEvento] ([IdTipoEvento])
GO
ALTER TABLE [dbo].[TipoEventoIdioma] CHECK CONSTRAINT [FK_TipoEventoIdioma_TipoEvento]
GO
ALTER TABLE [dbo].[TipoFacturacionIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoFacturacionIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[TipoFacturacionIdioma] CHECK CONSTRAINT [FK_TipoFacturacionIdioma_Idioma]
GO
ALTER TABLE [dbo].[TipoFacturacionIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoFacturacionIdioma_TipoFacturacion] FOREIGN KEY([IdTipoFacturacion])
REFERENCES [dbo].[TipoFacturacion] ([IdTipoFacturacion])
GO
ALTER TABLE [dbo].[TipoFacturacionIdioma] CHECK CONSTRAINT [FK_TipoFacturacionIdioma_TipoFacturacion]
GO
ALTER TABLE [dbo].[TipoIdentificacionIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoIdentificacionIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[TipoIdentificacionIdioma] CHECK CONSTRAINT [FK_TipoIdentificacionIdioma_Idioma]
GO
ALTER TABLE [dbo].[TipoIdentificacionIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoIdentificacionIdioma_TipoIdentificacion] FOREIGN KEY([IdTipoIdentificacion])
REFERENCES [dbo].[TipoIdentificacion] ([IdTipoIdentificacion])
GO
ALTER TABLE [dbo].[TipoIdentificacionIdioma] CHECK CONSTRAINT [FK_TipoIdentificacionIdioma_TipoIdentificacion]
GO
ALTER TABLE [dbo].[TipoMensajeIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoMensajeIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[TipoMensajeIdioma] CHECK CONSTRAINT [FK_TipoMensajeIdioma_Idioma]
GO
ALTER TABLE [dbo].[TipoMensajeIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoMensajeIdioma_TipoMensaje] FOREIGN KEY([IdTipoMensaje])
REFERENCES [dbo].[TipoMensaje] ([IdTipoMensaje])
GO
ALTER TABLE [dbo].[TipoMensajeIdioma] CHECK CONSTRAINT [FK_TipoMensajeIdioma_TipoMensaje]
GO
ALTER TABLE [dbo].[TipoPeriodoFiscal]  WITH CHECK ADD  CONSTRAINT [FK_TipoPeriodoFiscal_Mes] FOREIGN KEY([IdMesInicio])
REFERENCES [dbo].[Mes] ([IdMes])
GO
ALTER TABLE [dbo].[TipoPeriodoFiscal] CHECK CONSTRAINT [FK_TipoPeriodoFiscal_Mes]
GO
ALTER TABLE [dbo].[TipoPeriodoFiscal]  WITH CHECK ADD  CONSTRAINT [FK_TipoPeriodoFiscal_Mes1] FOREIGN KEY([IdMesFin])
REFERENCES [dbo].[Mes] ([IdMes])
GO
ALTER TABLE [dbo].[TipoPeriodoFiscal] CHECK CONSTRAINT [FK_TipoPeriodoFiscal_Mes1]
GO
ALTER TABLE [dbo].[TipoRecursoIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoRecursoIdioma_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[TipoRecursoIdioma] CHECK CONSTRAINT [FK_TipoRecursoIdioma_Idioma]
GO
ALTER TABLE [dbo].[TipoRecursoIdioma]  WITH CHECK ADD  CONSTRAINT [FK_TipoRecursoIdioma_TipoRecurso] FOREIGN KEY([IdTipoRecurso])
REFERENCES [dbo].[TipoRecurso] ([IdTipoRecurso])
GO
ALTER TABLE [dbo].[TipoRecursoIdioma] CHECK CONSTRAINT [FK_TipoRecursoIdioma_TipoRecurso]
GO
ALTER TABLE [dbo].[TransicionEstadoEntidad]  WITH CHECK ADD  CONSTRAINT [FK_ESTADO_ENTIDAD_DESTINO] FOREIGN KEY([IdEstadoEntidadDestino])
REFERENCES [dbo].[EstadoEntidad] ([IdEstadoEntidad])
GO
ALTER TABLE [dbo].[TransicionEstadoEntidad] CHECK CONSTRAINT [FK_ESTADO_ENTIDAD_DESTINO]
GO
ALTER TABLE [dbo].[TransicionEstadoEntidad]  WITH CHECK ADD  CONSTRAINT [FK_ESTADO_ENTIDAD_ORIGEN] FOREIGN KEY([IdEstadoEntidadOrigen])
REFERENCES [dbo].[EstadoEntidad] ([IdEstadoEntidad])
GO
ALTER TABLE [dbo].[TransicionEstadoEntidad] CHECK CONSTRAINT [FK_ESTADO_ENTIDAD_ORIGEN]
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadNotificado]  WITH CHECK ADD  CONSTRAINT [FK_TransicionEstadoEntidadNotificado_CuentaCorreo] FOREIGN KEY([IdCuentaCorreo])
REFERENCES [dbo].[CuentaCorreo] ([IdCuentaCorreo])
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadNotificado] CHECK CONSTRAINT [FK_TransicionEstadoEntidadNotificado_CuentaCorreo]
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadNotificado]  WITH CHECK ADD  CONSTRAINT [FK_TransicionEstadoEntidadNotificado_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadNotificado] CHECK CONSTRAINT [FK_TransicionEstadoEntidadNotificado_Empresa]
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadNotificado]  WITH CHECK ADD  CONSTRAINT [FK_TransicionEstadoEntidadNotificado_TipoMensaje] FOREIGN KEY([IdTipoMensaje])
REFERENCES [dbo].[TipoMensaje] ([IdTipoMensaje])
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadNotificado] CHECK CONSTRAINT [FK_TransicionEstadoEntidadNotificado_TipoMensaje]
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadNotificado]  WITH CHECK ADD  CONSTRAINT [FK_TransicionEstadoEntidadNotificado_TransicionEstadoEntidad] FOREIGN KEY([IdEstadoEntidadOrigen], [IdEstadoEntidadDestino])
REFERENCES [dbo].[TransicionEstadoEntidad] ([IdEstadoEntidadOrigen], [IdEstadoEntidadDestino])
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadNotificado] CHECK CONSTRAINT [FK_TransicionEstadoEntidadNotificado_TransicionEstadoEntidad]
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadPerfil]  WITH CHECK ADD  CONSTRAINT [FK_TransicionEstadoEntidadPerfil_Perfil] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfil] ([IdPerfil])
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadPerfil] CHECK CONSTRAINT [FK_TransicionEstadoEntidadPerfil_Perfil]
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadPerfil]  WITH CHECK ADD  CONSTRAINT [FK_TransicionEstadoEntidadPerfil_TransicionEstadoEntidad] FOREIGN KEY([IdEstadoEntidadOrigen], [IdEstadoEntidadDestino])
REFERENCES [dbo].[TransicionEstadoEntidad] ([IdEstadoEntidadOrigen], [IdEstadoEntidadDestino])
GO
ALTER TABLE [dbo].[TransicionEstadoEntidadPerfil] CHECK CONSTRAINT [FK_TransicionEstadoEntidadPerfil_TransicionEstadoEntidad]
GO
ALTER TABLE [dbo].[UbicacionFisica]  WITH CHECK ADD  CONSTRAINT [FK_UbicacionFisica_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[UbicacionFisica] CHECK CONSTRAINT [FK_UbicacionFisica_Pais]
GO
ALTER TABLE [dbo].[UbicacionFisica]  WITH CHECK ADD  CONSTRAINT [FK_UbicacionFisica_UbicacionFisica] FOREIGN KEY([IdUbicacionFisicalPadre])
REFERENCES [dbo].[UbicacionFisica] ([IdUbicacionFisica])
GO
ALTER TABLE [dbo].[UbicacionFisica] CHECK CONSTRAINT [FK_UbicacionFisica_UbicacionFisica]
GO
ALTER TABLE [dbo].[UbicacionLocal]  WITH CHECK ADD  CONSTRAINT [FK_UbicacionLocal_Local] FOREIGN KEY([IdLocal])
REFERENCES [dbo].[Local] ([IdLocal])
GO
ALTER TABLE [dbo].[UbicacionLocal] CHECK CONSTRAINT [FK_UbicacionLocal_Local]
GO
ALTER TABLE [dbo].[UbicacionLocal]  WITH CHECK ADD  CONSTRAINT [FK_UbicacionLocal_UbicacionLocal] FOREIGN KEY([IdUbicacionLocalPadre])
REFERENCES [dbo].[UbicacionLocal] ([IdUbicacionLocal])
GO
ALTER TABLE [dbo].[UbicacionLocal] CHECK CONSTRAINT [FK_UbicacionLocal_UbicacionLocal]
GO
ALTER TABLE [dbo].[UbicacionLocal]  WITH CHECK ADD  CONSTRAINT [FK_UbicacionLocal_Usuario] FOREIGN KEY([IdUsuarioResponsable])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[UbicacionLocal] CHECK CONSTRAINT [FK_UbicacionLocal_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Genero]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Idioma] FOREIGN KEY([IdIdioma])
REFERENCES [dbo].[Idioma] ([IdIdioma])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Idioma]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO
ALTER TABLE [dbo].[UsuarioPorLocal]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioPorLocal_Local] FOREIGN KEY([IdLocal])
REFERENCES [dbo].[Local] ([IdLocal])
GO
ALTER TABLE [dbo].[UsuarioPorLocal] CHECK CONSTRAINT [FK_UsuarioPorLocal_Local]
GO
ALTER TABLE [dbo].[UsuarioPorLocal]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioPorLocal_Perfil] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfil] ([IdPerfil])
GO
ALTER TABLE [dbo].[UsuarioPorLocal] CHECK CONSTRAINT [FK_UsuarioPorLocal_Perfil]
GO
ALTER TABLE [dbo].[UsuarioPorLocal]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioPorLocal_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[UsuarioPorLocal] CHECK CONSTRAINT [FK_UsuarioPorLocal_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarAbejasNativasVisitaGrupal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarAbejasNativasVisitaGrupal] 
       (
	        @IdAbejasNativasVisitaGrupal INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdGrupo INT,
            @FechaDesde DATETIME,
            @FechaHasta DATETIME,
            @EquipoFloraNuevaPresente VARCHAR(500),
            @OtrosParticipantes VARCHAR(500),
            @TemaYObjetivoDeLaVisita VARCHAR(500),
            @DesarrolloDeLaVisitaAcciones VARCHAR(500),
			@MaterialEntregado VARCHAR(500),
            @ProblemasDetectados VARCHAR(500),
            @RecomendacionesProximaVisita  VARCHAR(500),			
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY
               
 	            IF (@IdGrupo = 0)  BEGIN  SET   @IdGrupo = NULL; END
              	IF (LEN(@EquipoFloraNuevaPresente) = 0) BEGIN SET   @EquipoFloraNuevaPresente = NULL; END 
				IF (LEN(@OtrosParticipantes) = 0) BEGIN SET   @OtrosParticipantes = NULL; END 
				IF (LEN(@TemaYObjetivoDeLaVisita) = 0) BEGIN SET   @TemaYObjetivoDeLaVisita = NULL; END 
				IF (LEN(@DesarrolloDeLaVisitaAcciones) = 0) BEGIN SET  @DesarrolloDeLaVisitaAcciones = NULL; END 
				IF (LEN(@ProblemasDetectados) = 0) BEGIN SET  @ProblemasDetectados = NULL; END 
				IF (LEN(@RecomendacionesProximaVisita) = 0) BEGIN SET  @RecomendacionesProximaVisita= NULL; END 
				IF (LEN(@MaterialEntregado) = 0) BEGIN SET  @MaterialEntregado = NULL; END 

    INSERT INTO AbejasNativasVisitaGrupalTrack (
		           Identificador,
				   IdGrupo,  
		           FechaDesde ,
                   FechaHasta,
                   EquipoFloraNuevaPresente ,
                   OtrosParticipantes ,
                   TemaYObjetivoDeLaVisita ,
                   DesarrolloDeLaVisitaAcciones ,
				   MaterialEntregado,
                   ProblemasDetectados,
                   RecomendacionesProximaVisita,
				   Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
			       @IdGrupo,
                   @FechaDesde ,
                   @FechaHasta,
                   @EquipoFloraNuevaPresente ,
                   @OtrosParticipantes ,
                   @TemaYObjetivoDeLaVisita ,
                   @DesarrolloDeLaVisitaAcciones ,
				   @MaterialEntregado,
                   @ProblemasDetectados,
                   @RecomendacionesProximaVisita,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	BEGIN TRAN [TABLE]

	    IF(@IdAbejasNativasVisitaGrupal > 0)
		BEGIN
                   UPDATE AbejasNativasVisitaGrupal SET 
	               IdGrupo = @IdGrupo,
                   FechaDesde = @FechaDesde ,
                   FechaHasta= @FechaHasta,
                   EquipoFloraNuevaPresente = @EquipoFloraNuevaPresente ,
                   OtrosParticipantes = @OtrosParticipantes ,
                   TemaYObjetivoDeLaVisita = @TemaYObjetivoDeLaVisita ,
                   DesarrolloDeLaVisitaAcciones = @DesarrolloDeLaVisitaAcciones ,
				   MaterialEntregado = @MaterialEntregado,
                   ProblemasDetectados = @ProblemasDetectados,
                   RecomendacionesProximaVisita = @RecomendacionesProximaVisita,
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND IdAbejasNativasVisitaGrupal = @IdAbejasNativasVisitaGrupal
		 END
		 ELSE 
				   BEGIN
				   INSERT INTO AbejasNativasVisitaGrupal (
		           Identificador,
				   IdGrupo,  
		           FechaDesde ,
                   FechaHasta,
                   EquipoFloraNuevaPresente ,
                   OtrosParticipantes ,
                   TemaYObjetivoDeLaVisita ,
                   DesarrolloDeLaVisitaAcciones ,
				   MaterialEntregado,
                   ProblemasDetectados,
                   RecomendacionesProximaVisita,
				   Estado)
          VALUES  (@Identificador,
			       @IdGrupo,
                   @FechaDesde ,
                   @FechaHasta,
                   @EquipoFloraNuevaPresente ,
                   @OtrosParticipantes ,
                   @TemaYObjetivoDeLaVisita ,
                   @DesarrolloDeLaVisitaAcciones ,
				   @MaterialEntregado,
                   @ProblemasDetectados,
                   @RecomendacionesProximaVisita,
				   @Estado)
	 END 

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLETRACK];
   COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		COMMIT TRAN [TABLE];
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarAbejasNativasVisitaGrupalParticipante]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarAbejasNativasVisitaGrupalParticipante] 
       (
	        @IdAbejasNativasVisitaGrupalParticipante INT,
            @Identificador UNIQUEIDENTIFIER,
	        @IdAbejasNativasVisitaGrupal INT,
            @IdProductor INT,
            @Observaciones VARCHAR(500),		
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50),
			@IdentificadorGrupal UNIQUEIDENTIFIER
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY
       
	    IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END 
        IF (@IdAbejasNativasVisitaGrupal = 0)  BEGIN  SET  @IdAbejasNativasVisitaGrupal = (SELECT IdAbejasNativasVisitaGrupal FROM AbejasNativasVisitaGrupal WHERE Identificador = @IdentificadorGrupal); END
	    IF (@IdProductor = 0)  BEGIN  SET  @IdProductor = NULL; END
	    IF (LEN(@Observaciones) = 0) BEGIN SET  @Observaciones = NULL; END 	

      INSERT INTO AbejasNativasVisitaGrupalParticipanteTrack(
		           Identificador,
				   IdAbejasNativasVisitaGrupal,
                   IdProductor,
                   Observaciones,	
				   Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
			       @IdAbejasNativasVisitaGrupal,
                   @IdProductor,
                   @Observaciones,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
    BEGIN TRAN [TABLE]

	IF( @IdAbejasNativasVisitaGrupalParticipante > 0)
	    BEGIN
              UPDATE AbejasNativasVisitaGrupalParticipante SET 
	               IdAbejasNativasVisitaGrupal = @IdAbejasNativasVisitaGrupal,
                   IdProductor = @IdProductor,
                   Observaciones = @Observaciones ,	
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND  IdAbejasNativasVisitaGrupalParticipante =  @IdAbejasNativasVisitaGrupalParticipante;
	   END 
	   ELSE
	   BEGIN
	     INSERT INTO AbejasNativasVisitaGrupalParticipante(
		           Identificador,
				   IdAbejasNativasVisitaGrupal,
                   IdProductor,
                   Observaciones,	
				   Estado)
          VALUES  (@Identificador,
			       @IdAbejasNativasVisitaGrupal,
                   @IdProductor,
                   @Observaciones,
				   @Estado)
	   END

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLETRACK];
   COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		COMMIT TRAN [TABLE];
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponario]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarMeliponario] 
       (
	        @IdMeliponario INT,
            @Identificador UNIQUEIDENTIFIER,
			@NumeroMeliponario INT,
	        @IdProductor INT,
            @GPSLatitud DECIMAL(20,6),
            @GPSLongitud DECIMAL(20,6),
            @ValidadoParaRecibirCajasFloraNueva BIT,
            @IdTipoMeliponario INT,
            @FechaCreacion DATETIME,
            @Observaciones VARCHAR(500),		
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY

             IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador) END 
			 IF (@GPSLatitud = 0)  BEGIN  SET  @GPSLatitud = NULL; END
			 IF (@GPSLongitud = 0)  BEGIN  SET  @GPSLongitud = NULL; END
             IF (@IdTipoMeliponario= 0)  BEGIN  SET  @IdTipoMeliponario = NULL; END
             IF (LEN(@Observaciones) = 0) BEGIN SET  @Observaciones = NULL; END 

       INSERT INTO MeliponarioTrack(
		           Identificador,
				   NumeroMeliponario,
				   IdProductor,
                   GPSLatitud ,
                   GPSLongitud ,
                   ValidadoParaRecibirCajasFloraNueva ,
                   IdTipoMeliponario ,
                   FechaCreacion ,
                   Observaciones,	
				   Estado,Usuario,Dispositivo,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
		           @NumeroMeliponario,
			       @IdProductor,
                   @GPSLatitud ,
                   @GPSLongitud ,
                   @ValidadoParaRecibirCajasFloraNueva ,
                   @IdTipoMeliponario ,
                   @FechaCreacion ,
                   @Observaciones,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	BEGIN TRAN [TABLET]

	IF(@IdMeliponario > 0)
	 BEGIN
        UPDATE  Meliponario SET 
	               IdProductor = @IdProductor,
				   NumeroMeliponario = @NumeroMeliponario,
                   GPSLatitud = @GPSLatitud ,
                   GPSLongitud = @GPSLongitud ,
                   ValidadoParaRecibirCajasFloraNueva = @ValidadoParaRecibirCajasFloraNueva ,
                   IdTipoMeliponario = @IdTipoMeliponario ,
                   FechaCreacion = @FechaCreacion ,
                   Observaciones = @Observaciones,
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND IdMeliponario = @IdMeliponario;
	END
	ELSE
	  BEGIN
	   INSERT INTO Meliponario(
		           Identificador,
				   NumeroMeliponario,
				   IdProductor,
                   GPSLatitud ,
                   GPSLongitud ,
                   ValidadoParaRecibirCajasFloraNueva ,
                   IdTipoMeliponario ,
                   FechaCreacion ,
                   Observaciones,	
				   Estado)
          VALUES  (@Identificador,
		           @NumeroMeliponario,
			       @IdProductor,
                   @GPSLatitud ,
                   @GPSLongitud ,
                   @ValidadoParaRecibirCajasFloraNueva ,
                   @IdTipoMeliponario ,
                   @FechaCreacion ,
                   @Observaciones,
				   @Estado)
	
	END

    SAVE TRAN [TABLE];
    COMMIT TRAN [TABLETRACK];
    COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
	  COMMIT TRAN [TABLE];
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCaja]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarMeliponarioCaja] 
       (
	        @IdMeliponarioCaja INT,
            @Identificador UNIQUEIDENTIFIER,
			@NumeroCaja INT,
		    @IdMeliponario INT ,
            @IdEspecieAbeja INT, 
            @FechaEntregaAlProductor DATETIME, 
            @Comentario VARCHAR(500), 
            @IdOrigenColonia INT,
            @Activa BIT,	
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
			@FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;
DECLARE @ID INT ;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY

            --IF (@IdMeliponario = 0)  BEGIN  SET  @IdMeliponario = (SELECT IdMeliponario FROM Meliponario WHERE Identificador = @Identificador); END
			IF ( @IdEspecieAbeja= 0)  BEGIN  SET  @IdEspecieAbeja = NULL; END
			IF (LEN(@Comentario) = 0) BEGIN SET   @Comentario = NULL; END 
			IF ( @IdOrigenColonia = 0)  BEGIN  SET   @IdOrigenColonia = NULL; END

         INSERT INTO MeliponarioCajaTrack(
		           Identificador,
				   NumeroCaja ,
				   IdMeliponario ,
                   IdEspecieAbeja, 
                   FechaEntregaAlProductor, 
                   Comentario, 
                   IdOrigenColonia ,
                   Activa,
				   Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
		           @NumeroCaja ,
			       @IdMeliponario ,
                   @IdEspecieAbeja, 
                   @FechaEntregaAlProductor, 
                   @Comentario, 
                   @IdOrigenColonia ,
                   @Activa,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	BEGIN TRAN [TABLE];

	  IF(@IdMeliponarioCaja > 0)
	  BEGIN
           UPDATE  MeliponarioCaja SET 
		   		   NumeroCaja = @NumeroCaja,
                   IdMeliponario = @IdMeliponario ,
                   IdEspecieAbeja = @IdEspecieAbeja, 
                   FechaEntregaAlProductor = @FechaEntregaAlProductor, 
                   Comentario = @Comentario, 
                   IdOrigenColonia = @IdOrigenColonia ,
                   Activa = @Activa,
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND IdMeliponarioCaja = @IdMeliponarioCaja;
				   SET @ID = @IdMeliponarioCaja;
	     END
	 ELSE
	    BEGIN
		  INSERT INTO MeliponarioCaja(
		           Identificador,
				   NumeroCaja ,
				   IdMeliponario ,
                   IdEspecieAbeja, 
                   FechaEntregaAlProductor, 
                   Comentario, 
                   IdOrigenColonia ,
                   Activa,
				   Estado)
          VALUES  (@Identificador,
		           @NumeroCaja,
			       @IdMeliponario ,
                   @IdEspecieAbeja, 
                   @FechaEntregaAlProductor, 
                   @Comentario, 
                   @IdOrigenColonia ,
                   @Activa,
				   @Estado)

				    SET @ID =  SCOPE_IDENTITY() 
		END

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLETRACK];
    COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		 COMMIT TRAN [TABLE];
		 	SET @ID  = -2;
   END CATCH

     SELECT @ID
END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCajaAccion]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarMeliponarioCajaAccion] 
       (
	        @IdMeliponarioCajaAccion INT,
            @Identificador UNIQUEIDENTIFIER,
            @IdMeliponarioCaja INT,
            @IdTipoAccionMeliponario INT,
            @IdOrigenColonia INT,
            @IdUsuarioResponsable INT,
            @FechaAccion DATETIME,
            @Comentario VARCHAR(500),
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY

              IF ( @IdMeliponarioCaja = 0)  BEGIN  SET  @IdMeliponarioCaja = (SELECT IdMeliponarioCaja FROM MeliponarioCaja WHERE Identificador = @Identificador) ; END
			  IF (@IdTipoAccionMeliponario = 0)  BEGIN  SET @IdTipoAccionMeliponario = NULL; END
			  IF (@IdOrigenColonia = 0)  BEGIN  SET @IdOrigenColonia = NULL; END
			  IF (@IdUsuarioResponsable = 0)  BEGIN  SET @IdUsuarioResponsable = NULL; END
			  IF (LEN( @Comentario) = 0) BEGIN SET  @Comentario = NULL; END

         INSERT INTO MeliponarioCajaAccionTrack(
		           Identificador,
				   IdMeliponarioCaja ,
                   IdTipoAccionMeliponario ,
                   IdOrigenColonia ,
                   IdUsuarioResponsable ,
                   FechaAccion ,
                   Comentario ,
				   Estado,Usuario,Dispositivo,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
			       @IdMeliponarioCaja ,
                   @IdTipoAccionMeliponario ,
                   @IdOrigenColonia ,
                   @IdUsuarioResponsable ,
                   @FechaAccion ,
                   @Comentario ,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	 BEGIN TRAN [TABLE]

	IF (@IdMeliponarioCajaAccion > 0)
	  BEGIN
        UPDATE  MeliponarioCajaAccion SET 
                   IdMeliponarioCaja = @IdMeliponarioCaja ,
                   IdTipoAccionMeliponario = @IdTipoAccionMeliponario ,
                   IdOrigenColonia = @IdOrigenColonia ,
                   IdUsuarioResponsable = @IdUsuarioResponsable ,
                   FechaAccion = @FechaAccion ,
                   Comentario = @Comentario ,
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND IdMeliponarioCajaAccion = @IdMeliponarioCajaAccion;
	 END
	 ELSE
	 BEGIN
	  INSERT INTO MeliponarioCajaAccion(
		           Identificador,
				   IdMeliponarioCaja ,
                   IdTipoAccionMeliponario ,
                   IdOrigenColonia ,
                   IdUsuarioResponsable ,
                   FechaAccion ,
                   Comentario ,
				   Estado)
          VALUES  (@Identificador,
			       @IdMeliponarioCaja ,
                   @IdTipoAccionMeliponario ,
                   @IdOrigenColonia ,
                   @IdUsuarioResponsable ,
                   @FechaAccion ,
                   @Comentario ,
				   @Estado)
	 END


   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLETRACK];
      COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		   COMMIT TRAN [TABLE];
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCajaHistorial]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarMeliponarioCajaHistorial] 
       (
	        @IdMeliponarioCajaHistorial INT,
            @Identificador UNIQUEIDENTIFIER,
			@NumeroCaja INT,
            @IdMeliponarioCaja INT,
            @IdProductor INT,
            @FechaDesde DATETIME,
            @FechaHasta DATETIME,
            @Actual BIT,
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
			@fechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

    BEGIN TRAN [TABLETRACK]

   BEGIN TRY
  
			  IF (@IdProductor = 0)  BEGIN  SET  @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador)  END
   
          INSERT INTO MeliponarioCajaHistorialTrack(
		           Identificador,
				   NumeroCaja,
				   IdMeliponarioCaja,
                   IdProductor ,
                   FechaDesde,
                   FechaHasta ,
                   Actual,
				   Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
		           @NumeroCaja,
			       @IdMeliponarioCaja,
                   @IdProductor ,
                   @FechaDesde,
                   @FechaHasta ,
				   @Actual,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

 SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	BEGIN TRAN [TABLE];

	IF( @IdMeliponarioCajaHistorial > 0)
	  BEGIN
                   UPDATE  MeliponarioCajaHistorial SET 
                   IdMeliponarioCaja =  @IdMeliponarioCaja,
				   NumeroCaja = @NumeroCaja,
                   IdProductor = @IdProductor ,
                   FechaDesde = @FechaDesde,
                   FechaHasta = @FechaHasta ,
				   Actual = @Actual
				   WHERE Identificador = @Identificador AND  IdMeliponarioCajaHistorial =  @IdMeliponarioCajaHistorial
     END
   ELSE
     BEGIN
       INSERT INTO MeliponarioCajaHistorial(
		           Identificador,
				   NumeroCaja,
				   IdMeliponarioCaja,
                   IdProductor ,
                   FechaDesde,
                   FechaHasta ,
                   Actual,
				   Estado)
          VALUES  ( @Identificador,
				   @NumeroCaja,
				   @IdMeliponarioCaja,
                   @IdProductor ,
                   @FechaDesde,
                   @FechaHasta ,
                   @Actual,
				   @Estado)
     END
	 
    SAVE TRAN [TABLE];
    COMMIT TRAN [TABLETRACK];
    COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		 COMMIT TRAN [TABLE];
   END CATCH

END ;

GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCosecha]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarMeliponarioCosecha] 
       (
	        @IdMeliponarioCosecha INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdMeliponario INT,
			@IdUsuarioResponsable INT,
			@PrecioCompra DECIMAL(20, 6),
			@Comentario VARCHAR(MAX),
			@FechaCosecha DATETIME,
			@Estado VARCHAR(50),
			@Usuario VARCHAR(50),
			@Dispositivo VARCHAR(50),
			@FechaCreacion DATETIME,
			@FechaCreacionUtc VARCHAR(50),
			@FechaModificacion DATETIME,
			@FechaModificacionUtc VARCHAR(50),
			@Transaccion VARCHAR(50)  
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   
  BEGIN TRAN [TABLETRACK]

   BEGIN TRY

             --IF (@IdMeliponario = 0)  BEGIN  SET @IdMeliponario = (SELECT IdMeliponario FROM Meliponario WHERE Identificador = @Identificador); END
			 IF (@IdUsuarioResponsable = 0)  BEGIN  SET @IdUsuarioResponsable = NULL; END
			 IF (@PrecioCompra = 0)  BEGIN  SET @PrecioCompra= NULL; END
			 IF (LEN(@Comentario) = 0) BEGIN SET @Comentario = NULL; END

              INSERT INTO MeliponarioCosechaTrack (Identificador,IdMeliponario,IdUsuarioResponsable,precioCompra,Comentario,FechaCosecha,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                                VALUES  (@Identificador,@IdMeliponario,@IdUsuarioResponsable,@PrecioCompra,@Comentario,@FechaCosecha,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion);
          
  
     SAVE TRAN [TABLETRACK]
     SET @TRANCOUNTER = 1
	   BEGIN TRAN [TABLE]

   IF (@IdMeliponarioCosecha > 0)
        BEGIN
            UPDATE MeliponarioCosecha SET
			IdMeliponario = @IdMeliponario ,
			IdUsuarioResponsable  = @IdUsuarioResponsable ,
			PrecioCompra = @PrecioCompra ,
			Comentario = @Comentario ,
			FechaCosecha = @FechaCosecha,
			Estado = @Estado    
            WHERE Identificador = @Identificador AND IdMeliponarioCosecha = @IdMeliponarioCosecha
	    END
	  ELSE
	     BEGIN
	    INSERT INTO MeliponarioCosecha(Identificador,IdMeliponario,IdUsuarioResponsable,PrecioCompra,Comentario,FechaCosecha,Estado)
                                VALUES  (@Identificador,@IdMeliponario,@IdUsuarioResponsable,@PrecioCompra,@Comentario,@FechaCosecha,@Estado);   
	  END
  
    SAVE TRAN [TABLE];
   COMMIT TRAN [TABLETRACK];
    COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
      ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		 COMMIT TRAN [TABLE];
   END CATCH

END ; 
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCosechaDetalle]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarMeliponarioCosechaDetalle] 
       (
	     	@IdMeliponarioCosechaDetalle INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdMeliponarioCosecha INT,
			@Lote VARCHAR(50),
			@IdEspecieAbeja INT,
			@Alzas DECIMAL(20, 6),
			@PesoKg DECIMAL(20, 6),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY 

              IF (@IdMeliponarioCosecha = 0)  BEGIN  SET @IdMeliponarioCosecha = (SELECT IdMeliponarioCosecha FROM MeliponarioCosecha WHERE Identificador = @Identificador); END
			  IF (LEN(@Lote) = 0) BEGIN SET @Lote = NULL; END
			  IF (@IdEspecieAbeja = 0)  BEGIN  SET @IdEspecieAbeja = NULL; END
			  IF (@Alzas = 0)  BEGIN  SET @Alzas = NULL; END
			  IF (@PesoKg = 0)  BEGIN  SET @PesoKg = NULL; END   
          
INSERT INTO MeliponarioCosechaDetalleTrack (Identificador,IdMeliponarioCosecha,Lote,IdEspecieAbeja,Alzas,PesoKg,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                               VALUES (@Identificador,@IdMeliponarioCosecha,@Lote,@IdEspecieAbeja,@Alzas,@PesoKg,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

   
    SAVE TRAN [TABLETRACK]
     SET @TRANCOUNTER = 1
	   BEGIN TRAN [TABLE]

IF (@IdMeliponarioCosechaDetalle > 0)
BEGIN
     UPDATE MeliponarioCosechaDetalle SET
			IdMeliponarioCosecha = @IdMeliponarioCosecha ,
			Lote = @Lote ,
			IdEspecieAbeja = @IdEspecieAbeja ,
			Alzas = @Alzas ,
			PesoKg = @PesoKg ,
			Estado = @Estado 
      WHERE Identificador = @Identificador  AND IdMeliponarioCosechaDetalle = @IdMeliponarioCosechaDetalle
	  END
 ELSE 
	  BEGIN
	   INSERT INTO MeliponarioCosechaDetalle (Identificador,IdMeliponarioCosecha,Lote,IdEspecieAbeja,Alzas,PesoKg,Estado)
                               VALUES (@Identificador,@IdMeliponarioCosecha,@Lote,@IdEspecieAbeja,@Alzas,@PesoKg,@Estado)
	 END
  
     SAVE TRAN [TABLE];
   COMMIT TRAN [TABLETRACK];
    COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
         ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		 COMMIT TRAN [TABLE];
   END CATCH

END ; 
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCosechaDetalleCaja]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarMeliponarioCosechaDetalleCaja] 
       (
	        @IdMeliponarioCosechaDetalleCaja INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdMeliponarioCosechaDetalle INT,
			@IdMeliponarioCaja INT,
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY

             IF (@IdMeliponarioCosechaDetalle = 0)  BEGIN  SET @IdMeliponarioCosechaDetalle = (SELECT IdMeliponarioCosechaDetalle FROM MeliponarioCosechaDetalle WHERE Identificador = @Identificador ) END
			 IF (@IdMeliponarioCaja= 0)  BEGIN  SET @IdMeliponarioCaja = NULL; END

         INSERT INTO  MeliponarioCosechaDetalleCajaTrack (Identificador,IdMeliponarioCosechaDetalle,IdMeliponarioCaja,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                               VALUES  (@Identificador,@IdMeliponarioCosechaDetalle,@IdMeliponarioCaja,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion) 
  
     SAVE TRAN [TABLETRACK]
     SET @TRANCOUNTER = 1
	   BEGIN TRAN [TABLE]

	   IF ( @IdMeliponarioCosechaDetalleCaja  > 0)
	     BEGIN
           UPDATE MeliponarioCosechaDetalleCaja SET
		   IdMeliponarioCosechaDetalle = @IdMeliponarioCosechaDetalle,
		   IdMeliponarioCaja = @IdMeliponarioCaja,
		   Estado = @Estado
		   WHERE Identificador = @Identificador AND  IdMeliponarioCosechaDetalleCaja  =  @IdMeliponarioCosechaDetalleCaja ;
	    END 
	ELSE
	  BEGIN
	        INSERT INTO  MeliponarioCosechaDetalleCaja (Identificador,IdMeliponarioCosechaDetalle,IdMeliponarioCaja,Estado) 
                                              VALUES  (@Identificador,@IdMeliponarioCosechaDetalle,@IdMeliponarioCaja,@Estado) 
  
	  END

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLETRACK];
    COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		 COMMIT TRAN [TABLE];
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductor]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductor] 
       (
            @Identificador UNIQUEIDENTIFIER,
            @IdUsuarioEncuestador INT,
            @FechaEncuesta DATETIME,
            @VisitaALaCasa BIT,
            @IdEstadoDiagnostico INT,
            @Nombres VARCHAR(50),
            @Apellido1 VARCHAR(50),
            @Apellido2 VARCHAR(50),
            @Foto IMAGE,
            @CodigoFloraNueva VARCHAR(50),
            @Sexo BIT,
            @NumeroCedula VARCHAR(50),
            @FechaNacimiento DATETIME,
            @IdEstadoCivil INT,
            @PerteneceAAlgunGrupoEtnico VARCHAR(500),
            @IdPais INT,
		    @IdGrupo INT,
            @IdDivisionAdministrativa1  INT,
            @IdDivisionAdministrativa2 INT,
            @IdDivisionAdministrativa3 INT,
            @DivisionAdministrativa4 VARCHAR(250),
            @DireccionExacta VARCHAR(500),
            @IdTerritorio  INT,     
            @GPSLatitud DECIMAL(20,6),
            @GPSLongitud DECIMAL(20,6),
            @Altitud DECIMAL(20,6),
            @ComentariosUbicacion VARCHAR(500),
            @ActividadLaboralPrincipal VARCHAR(500),
            @ActividadLaboralSecundaria VARCHAR(500),
            @IdCategoriaActividadPrincipal INT,
            @IdActividadAgricola INT,
            @TotalPersonasHogar INT,
            @TotalPersonasActivasEconomicamente INT,
            @TotalPersonasDependientes INT,
            @IndiceInsercionLaboralProductor DECIMAL(20,6),
            @IndiceNivelEducativoProductor DECIMAL(20,6),
            @IndiceCiudadaniaSocialProductor DECIMAL(20,6),
            @IndiceInsercionProductivaProductor DECIMAL(20,6),
            @IndiceInclusionSocialProductor DECIMAL(20,6),
            @IndiceInsercionLaboralHogar DECIMAL(20,6),
            @IndiceNivelEducativoHogar DECIMAL(20,6),
            @IndiceCiudadaniaSocialHogar DECIMAL(20,6),
            @IndiceInsercionProductivaHogar DECIMAL(20,6),
            @TasaActividadEconomicaHogar DECIMAL(20,6),
            @IndiceInclusionSocialHogar DECIMAL(20,6),
            @IdFacilidadAccesoComunidad INT,
            @IdFacilidadAccesoVivienda INT,
            @IndiceFacilidadAcceso DECIMAL(20,6),
            @IdTiempoLlegarCentroEducativo INT,
            @IdTiempoLlegarCentroSalud INT,
            @IndiceCercaniaCentrosBasicos DECIMAL(20,6),
            @IdExistenciaTransportePublico INT,
            @IdPosesionMedioTransportePublico INT,
            @EspecificarMediosTransporte VARCHAR(500),
            @IndiceCapacidadDesplazamiento DECIMAL(20,6),
            @IndiceConexionProximidadGeografica DECIMAL(20,6),
            @IdEstructuraGeneracionalHogar INT,
            @OtrosFamiliaresVivenEnLaMismaComunidad BIT,
            @IdUstedConsideraContarConApoyoDeSuFamilia INT,
            @IndiceCercaniaRelacionFamiliar DECIMAL(20,6),
            @IdApoyoVecinosCasoNecesidad INT,
            @IdAmbienteSocialComunidad INT,
            @SeSienteUstedRealmenteParteComunidad BIT,
            @UstedEsUnMiembroActivoDeAlgunGrupo BIT,
            @MiembroActivoEspecificar VARCHAR(500),
            @IndiceCercaniaRelacionComunidad DECIMAL(20,6),
            @IndiceRelacionesSociales DECIMAL(20,6),
            @IndiceGlobalBienestarSocialFamiliar DECIMAL(20,6),
            @IdSuViviendaEs INT,
            @IdLaViviendaEsANombreSuyo INT,
            @LaViviendaEsANombreSuyoEspecificar VARCHAR(500),
            @IdEstadoGeneralViviendaACFN INT,
            @IdEstadoGeneralViviendaProductor INT,
            @CantidadDormitorios INT,
            @HacinamientoPorDormitorios INT,
            @IndiceHacinamiento DECIMAL(20,6),
            @IndiceEstadoVivienda DECIMAL(20,6),
            @IndiceVivienda DECIMAL(20,6),
            @IdFuenteAguaVivienda INT,
            @AccesoALaElectricidad BIT,
            @IndiceServiciosBasicos DECIMAL(20,6),
            @TieneTelefonoResidencial BIT,
            @TieneTelefonoCelular BIT,
            @TieneSennalTelefoniaMovilEnSuCasa BIT,
            @TieneAccesoAInternet BIT,
            @IndiceServiciosComunicacion DECIMAL(20,6),
            @IndiceAccesoAServicios DECIMAL(20,6),
            @RecibeAyudaFinanciera BIT,
            @RecibeAyudaFinancieraEspecificar VARCHAR(500),
            @PresupuestoSuficienteCubrirGastosBasicos BIT,
            @ParaQueNoAlcanzaPresupuestoHogar  VARCHAR(500),
            @IdConLosIngresosUstedEstimaQue INT,
            @MontoMinimoMensualParaVivir DECIMAL(20,6),
            @IdConLaActualSituacionEconomica INT,
            @IdUstedConsideraQueSuHogarEs INT,
            @IndiceNivelVida DECIMAL(20,6),
            @IndiceBienestarEconomicoMaterialHogar DECIMAL(20,6),
            @UstedProduceAlimentosParaSuHogar BIT,
            @GranosBasicos BIT,
            @Hortalizas  BIT,
            @Frutas BIT,
            @AnimalesYSusProductos  BIT,
            @ProductosTransformados  BIT,
            @PlantasAromaticasYMedicinales  BIT,
            @QueProduceParaSuHogarOtros BIT,
            @IdProporcionAutoconsumoAlimentosHogar INT,
            @IdLograProducir INT,
            @IdDondeUstedProduce INT,
            @IdElTamannoDeSuParcelaEs INT,
            @IdAUstedLeGustaria INT,
            @TamannoParcela BIT,
            @ManoObra BIT,
            @FertilidadSuelos BIT,
            @TiempoDisponible BIT,
            @RecursosFinancierosInvertirYTrabajar BIT,
            @RiesgosNaturalesMuyFrecuentes BIT,
            @OtrasLimitantes BIT,
            @NoPoseeTierras BIT,
            @NoPoseeConocimientos BIT,
            @TrabajaEnOtroSectorYNoTieneTiempo BIT,
            @NoLeInteresaPrefiereComprar BIT,
            @ElLugarNoEsAptoParaCultivar BIT,
            @OtrasRazones BIT,
            @IndiceSoberaniaAlimenticia DECIMAL(20,6),
            @FelicidadSuTrabajo DECIMAL(20,6),
            @FelicidadSuSituacionFinanciera DECIMAL(20,6),
            @FelicidadSuEstadoSalud DECIMAL(20,6),
            @FelicidadSuVivienda DECIMAL(20,6),
            @FelicidadSuTiempoLibre DECIMAL(20,6),
            @FelicidadSuFamilia DECIMAL(20,6),
            @FelicidadSuEducacion DECIMAL(20,6),
            @FelicidadElMedioAmbiente DECIMAL(20,6),
            @FelicidadSuVidaSocial DECIMAL(20,6),
            @FelicidadSuParticipacionDentroComunidad DECIMAL(20,6),
            @IndiceFelicidad DECIMAL(20,6),
            @IdFormaJuridicaExplotacion INT,
            @PerteneceAUnaOrganizacionAgropecuaria BIT,
            @NombreOrganizacionAgropecuaria VARCHAR(500),
            @IdTenenciaDeLaTierra INT,
            @ANombreDeQuienEstaElTerreno BIT,
            @SiEsANombreDeOtraPersonaEspecificar VARCHAR(500),
            @EspecificarUbicacionDeLaTierra VARCHAR(500),
            @SuperficieDeLaParcela DECIMAL(20,6),
            @MiniDescripcionDeLaFinca VARCHAR(500),
            @FotoParcela IMAGE,
            @CualEsSuProduccionPrincipal VARCHAR(500),
            @CualesSonLasOtrasProduccionesQueTiene VARCHAR(500),
            @IdAbono INT,
            @IdControlDeMaleza INT,
            @IdPlaguicidas INT,
            @IdOrigenDeLasSemillas INT,
            @IdSistemaRiegoCultivos INT,
            @PoseeUnaCertificacion BIT,
            @CertificacionEspecificar VARCHAR(500),
            @IdCategoriaManejo INT,
            @ComentarioDeManejo VARCHAR(500),
            @ListaMaquinariaDisponibleEnLaFinca VARCHAR(500),
            @IdCategoriaMecanizacion INT,
            @ListaInfraestructuraDisponibleEnLaFinca VARCHAR(500),
            @IdCategoriaInfraestructura INT,
            @RealizaAlgunProcesoTransformacionOValorAgregado BIT,
            @ProcesoTransformacionOValorAgregadoEspecificar VARCHAR(500),
            @IdDestinoDeLaProduccion INT,
            @SiVentaEspecificarCanalesComercializacion VARCHAR(500),
            @IdCategoriaExplotacionAgricola INT,
            @IdOrientacionTecnicoEco INT,
            @ComentarioExplotacionAgricola VARCHAR(500),
            @TieneAbejasSinAguijon BIT,
            @DesdeCuandoLasTiene DATETIME,
            @OtrasEspeciesAbeja VARCHAR(500),
            @DondeYComoObtuvoEsasColmenas VARCHAR(500),
            @ProduceMiel  BIT,
            @ComoCosechaLaMiel VARCHAR(500),
            @IdDestinoMiel INT,
            @DondeSeVendeMielEspecificar  VARCHAR(500),
            @PrecioVentaMiel DECIMAL(20,6),
            @IdDondeColocaLasColmenas INT,
            @DondeSeUbicanLasColmenas VARCHAR(500),
            @DiagnosticoVisualDelMeliponarioYSuEntorno VARCHAR(500),
            @IdPotencialLugarParaTenerAbejas INT,
            @IdRiesgoRoboColmenas INT,
            @FotoMeliponario IMAGE,
            @CualEsSuMotivacionParaTenerLasAbejas  VARCHAR(500),
            @ComoAprendioACriarLasAbejas  VARCHAR(500),
            @IdNivelConocimientoMeliponicultura INT,
            @ComentariosMeliponicultura  VARCHAR(500),
            @QueEsLoQueMejorariaSuCalidadDeVida  VARCHAR(500),
            @CualesSonLosFrenosCalidadDeVida VARCHAR(500),
            @ComoMejorariaSuActividadAgricola  VARCHAR(500),
            @CualesSonLosFrenosActividadAgricola VARCHAR(500),
            @EnQueLeGustariaQueACFNLoPuedaApoyar VARCHAR(500),
            @CualesSon3FortalezasDeSuComunidad VARCHAR(500),
            @CualesSon3PrincipalesProblemasComunidad  VARCHAR(500),
            @QueSolucionesPropondriaMejorarComunidad VARCHAR(500),
            @CualesSonLosFrenosImpidenHacerEsasSoluciones  VARCHAR(500),
            @Fortalezas VARCHAR(500),
            @Debilidades VARCHAR(500),
            @Oportunidades VARCHAR(500),
            @Amenazas VARCHAR(500),
            @ProyectosPotenciales VARCHAR(500),
            @ComentarioGeneral VARCHAR(500),
            @IndicadorBienestarSocialYFamiliarDelHogar DECIMAL(20,6),
            @IndicadorBienestarEconomicoYMaterialDelHogar DECIMAL(20,6),
            @IndicadorSoberaniaAlimenticia DECIMAL(20,6),
            @IndicadorFelicidad DECIMAL(20,6),
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion  DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
   )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

   -- CLAVES FORANEAS
	IF (@IdEstadoDiagnostico = 0)  BEGIN  SET @IdEstadoDiagnostico = null; END
	IF (@IdEstadoCivil = 0)  BEGIN  SET @IdEstadoCivil = null; END
	IF (@IdPais = 0)  BEGIN  SET @IdPais = null; END
	IF (@IdGrupo = 0)  BEGIN  SET @IdGrupo = null; END
	IF (@IdDivisionAdministrativa1 = 0)  BEGIN  SET @IdDivisionAdministrativa1 = null; END
	IF (@IdDivisionAdministrativa2 = 0)  BEGIN  SET @IdDivisionAdministrativa2 = null; END
	IF (@IdDivisionAdministrativa3 = 0)  BEGIN  SET @IdDivisionAdministrativa3 = null; END
	IF (@IdTerritorio = 0)  BEGIN  SET @IdTerritorio = null; END
	IF (@IdCategoriaActividadPrincipal = 0)  BEGIN  SET @IdCategoriaActividadPrincipal = null; END
	IF (@IdActividadAgricola = 0)  BEGIN  SET @IdActividadAgricola = null; END
	IF (@IdFacilidadAccesoComunidad  = 0)  BEGIN  SET @IdFacilidadAccesoComunidad  = null; END
	IF (@IdFacilidadAccesoVivienda = 0)  BEGIN  SET @IdFacilidadAccesoVivienda = null; END
	IF (@IdTiempoLlegarCentroEducativo = 0)  BEGIN  SET @IdTiempoLlegarCentroEducativo = null; END
	IF (@IdTiempoLlegarCentroSalud = 0)  BEGIN  SET @IdTiempoLlegarCentroSalud = null; END
	IF (@IdExistenciaTransportePublico = 0)  BEGIN  SET @IdExistenciaTransportePublico = null; END
	IF (@IdPosesionMedioTransportePublico = 0)  BEGIN  SET @IdPosesionMedioTransportePublico = null; END
	IF (@IdEstructuraGeneracionalHogar = 0)  BEGIN  SET @IdEstructuraGeneracionalHogar = null; END
	IF (@IdUstedConsideraContarConApoyoDeSuFamilia = 0)  BEGIN  SET @IdUstedConsideraContarConApoyoDeSuFamilia = null; END
	IF (@IdApoyoVecinosCasoNecesidad = 0)  BEGIN  SET @IdApoyoVecinosCasoNecesidad = null; END
	IF (@IdAmbienteSocialComunidad = 0)  BEGIN  SET @IdAmbienteSocialComunidad = null; END
	IF (@IdSuViviendaEs = 0)  BEGIN  SET @IdSuViviendaEs = null; END
	IF (@IdLaViviendaEsANombreSuyo = 0)  BEGIN  SET @IdLaViviendaEsANombreSuyo = null; END
	IF (@IdEstadoGeneralViviendaACFN = 0)  BEGIN  SET @IdEstadoGeneralViviendaACFN = null; END
    IF (@IdEstadoGeneralViviendaProductor = 0)  BEGIN  SET @IdEstadoGeneralViviendaProductor = null; END
	IF (@IdFuenteAguaVivienda  = 0)  BEGIN  SET @IdFuenteAguaVivienda  = null; END
	IF (@IdConLosIngresosUstedEstimaQue  = 0)  BEGIN  SET @IdConLosIngresosUstedEstimaQue  = null; END
	IF (@IdConLaActualSituacionEconomica  = 0)  BEGIN  SET @IdConLaActualSituacionEconomica  = null; END
    IF (@IdUstedConsideraQueSuHogarEs  = 0)  BEGIN  SET @IdUstedConsideraQueSuHogarEs  = null; END
	IF (@IdProporcionAutoconsumoAlimentosHogar  = 0)  BEGIN  SET @IdProporcionAutoconsumoAlimentosHogar  = null; END
	IF (@IdLograProducir  = 0)  BEGIN  SET @IdLograProducir  = null; END
	IF (@IdDondeUstedProduce = 0)  BEGIN  SET @IdDondeUstedProduce  = null; END
    IF (@IdElTamannoDeSuParcelaEs  = 0)  BEGIN  SET @IdElTamannoDeSuParcelaEs = null; END
	IF (@IdAUstedLeGustaria  = 0)  BEGIN  SET @IdAUstedLeGustaria  = null; END
    IF (@IdFormaJuridicaExplotacion  = 0)  BEGIN  SET @IdFormaJuridicaExplotacion  = null; END
	IF (@IdTenenciaDeLaTierra  = 0)  BEGIN  SET @IdTenenciaDeLaTierra  = null; END
	IF (@IdAbono  = 0)  BEGIN  SET @IdAbono  = null; END
	IF (@IdControlDeMaleza  = 0)  BEGIN  SET @IdControlDeMaleza  = null; END
	IF (@IdPlaguicidas  = 0)  BEGIN  SET @IdPlaguicidas  = null; END
	IF (@IdOrigenDeLasSemillas  = 0)  BEGIN  SET @IdOrigenDeLasSemillas  = null; END
	IF (@IdSistemaRiegoCultivos  = 0)  BEGIN  SET @IdSistemaRiegoCultivos  = null; END
	IF (@IdCategoriaManejo  = 0)  BEGIN  SET @IdCategoriaManejo = null; END
	IF (@IdCategoriaMecanizacion  = 0)  BEGIN  SET @IdCategoriaMecanizacion = null; END
	IF (@IdCategoriaInfraestructura  = 0)  BEGIN  SET @IdCategoriaInfraestructura  = null; END
	IF (@IdDestinoDeLaProduccion  = 0)  BEGIN  SET @IdDestinoDeLaProduccion  = null; END
	IF (@IdCategoriaExplotacionAgricola  = 0)  BEGIN  SET @IdCategoriaExplotacionAgricola  = null; END
	IF (@IdOrientacionTecnicoEco  = 0)  BEGIN  SET @IdOrientacionTecnicoEco  = null; END
	IF (@IdDestinoMiel  = 0)  BEGIN  SET @IdDestinoMiel  = null; END
	IF (@IdDondeColocaLasColmenas  = 0)  BEGIN  SET @IdDondeColocaLasColmenas  = null; END
	IF (@IdPotencialLugarParaTenerAbejas  = 0)  BEGIN  SET @IdPotencialLugarParaTenerAbejas  = null; END
	IF (@IdRiesgoRoboColmenas  = 0)  BEGIN  SET @IdRiesgoRoboColmenas  = null; END
	IF (@IdNivelConocimientoMeliponicultura  = 0)  BEGIN  SET @IdNivelConocimientoMeliponicultura  = null; END
	
	-- TIPO VARCHAR
	IF (LEN(@CodigoFloranueva) = 0) BEGIN SET @CodigoFloraNueva = NULL; END
	IF (LEN(@PerteneceAAlgunGrupoEtnico) = 0) BEGIN SET @PerteneceAAlgunGrupoEtnico = NULL; END
	IF (LEN(@DivisionAdministrativa4) = 0) BEGIN SET @DivisionAdministrativa4 = NULL; END
	IF (LEN(@DireccionExacta) = 0 ) BEGIN SET @DireccionExacta = NULL; END
	IF (LEN(@ComentariosUbicacion ) = 0 )BEGIN SET @ComentariosUbicacion  = NULL; END
	IF (LEN(@ActividadLaboralPrincipal) = 0) BEGIN SET @ActividadLaboralPrincipal = NULL; END
	IF (LEN(@ActividadLaboralSecundaria) = 0) BEGIN SET @ActividadLaboralSecundaria = NULL; END
	IF (LEN(@EspecificarMediosTransporte) = 0 ) BEGIN SET @EspecificarMediosTransporte = NULL; END
	IF (LEN(@MiembroActivoEspecificar) = 0 ) BEGIN SET @MiembroActivoEspecificar = NULL; END
	IF (LEN(@LaViviendaEsANombreSuyoEspecificar) = 0) BEGIN SET @LaViviendaEsANombreSuyoEspecificar = NULL; END
	IF (LEN(@RecibeAyudaFinancieraEspecificar) = 0) BEGIN SET @RecibeAyudaFinancieraEspecificar = NULL; END
	IF (LEN(@ParaQueNoAlcanzaPresupuestoHogar) = 0) BEGIN SET @ParaQueNoAlcanzaPresupuestoHogar = NULL; END
    IF (LEN(@NombreOrganizacionAgropecuaria) = 0) BEGIN SET @NombreOrganizacionAgropecuaria= NULL; END
    IF (LEN(@SiEsANombreDeOtraPersonaEspecificar) = 0) BEGIN SET @SiEsANombreDeOtraPersonaEspecificar = NULL; END
    IF (LEN(@EspecificarUbicacionDeLaTierra ) = 0) BEGIN SET @EspecificarUbicacionDeLaTierra  = NULL; END
    IF (LEN(@MiniDescripcionDeLaFinca) = 0 )BEGIN SET @MiniDescripcionDeLaFinca = NULL; END
    IF (LEN(@CualEsSuProduccionPrincipal) = 0) BEGIN SET @CualEsSuProduccionPrincipal = NULL; END
    IF (LEN(@CualesSonLasOtrasProduccionesQueTiene ) = 0) BEGIN SET @CualesSonLasOtrasProduccionesQueTiene  = NULL; END
	IF (LEN(@CertificacionEspecificar) = 0) BEGIN SET @CertificacionEspecificar = NULL; END
    IF (LEN(@ComentarioDeManejo)) = 0 BEGIN SET @ComentarioDeManejo = NULL; END
    IF (LEN(@ListaMaquinariaDisponibleEnLaFinca ) = 0) BEGIN SET @ListaMaquinariaDisponibleEnLaFinca  = NULL; END
	IF (LEN(@ListaInfraestructuraDisponibleEnLaFinca ) = 0) BEGIN SET @ListaInfraestructuraDisponibleEnLaFinca = NULL; END
    IF (LEN(@ProcesoTransformacionOValorAgregadoEspecificar) = 0) BEGIN SET @ProcesoTransformacionOValorAgregadoEspecificar = NULL; END
    IF (LEN(@SiVentaEspecificarCanalesComercializacion) = 0) BEGIN SET @SiVentaEspecificarCanalesComercializacion = NULL; END
    IF (LEN(@ComentarioExplotacionAgricola ) = 0) BEGIN SET @ComentarioExplotacionAgricola  = NULL; END
	IF (LEN(@OtrasEspeciesAbeja) = 0)BEGIN SET @OtrasEspeciesAbeja = NULL; END
    IF (LEN(@DondeYComoObtuvoEsasColmenas ) = 0) BEGIN SET @DondeYComoObtuvoEsasColmenas  = NULL; END
    IF (LEN(@ComoCosechaLaMiel ) = 0) BEGIN SET @ComoCosechaLaMiel = NULL; END 
	IF (LEN(@DondeSeVendeMielEspecificar) = 0) BEGIN SET @DondeSeVendeMielEspecificar = NULL; END
    IF (LEN(@DondeSeUbicanLasColmenas) = 0) BEGIN SET @DondeSeUbicanLasColmenas = NULL; END
	IF (LEN(@DiagnosticoVisualDelMeliponarioYSuEntorno  ) = 0) BEGIN SET @DiagnosticoVisualDelMeliponarioYSuEntorno   = NULL; END
    IF (LEN(@CualEsSuMotivacionParaTenerLasAbejas) = 0) BEGIN SET @CualEsSuMotivacionParaTenerLasAbejas = NULL; END 
	IF (LEN(@ComoAprendioACriarLasAbejas) = 0) BEGIN SET @ComoAprendioACriarLasAbejas = NULL; END
    IF (LEN(@ComentariosMeliponicultura ) = 0) BEGIN SET @ComentariosMeliponicultura = NULL; END
	IF (LEN(@QueEsLoQueMejorariaSuCalidadDeVida ) = 0) BEGIN SET @QueEsLoQueMejorariaSuCalidadDeVida = NULL; END
    IF (LEN(@CualesSonLosFrenosCalidadDeVida ) = 0) BEGIN SET @CualesSonLosFrenosCalidadDeVida  = NULL; END
    IF (LEN(@ComoMejorariaSuActividadAgricola ) = 0) BEGIN SET @ComoMejorariaSuActividadAgricola = NULL; END 
	IF (LEN(@CualesSonLosFrenosActividadAgricola) = 0) BEGIN SET @CualesSonLosFrenosActividadAgricola = NULL; END
    IF (LEN(@EnQueLeGustariaQueACFNLoPuedaApoyar) = 0) BEGIN SET @EnQueLeGustariaQueACFNLoPuedaApoyar = NULL; END
	IF (LEN(@CualesSon3FortalezasDeSuComunidad  ) = 0) BEGIN SET @CualesSon3FortalezasDeSuComunidad = NULL; END
    IF (LEN(@CualesSon3PrincipalesProblemasComunidad) = 0) BEGIN SET @CualesSon3PrincipalesProblemasComunidad = NULL; END 
	IF (LEN(@QueSolucionesPropondriaMejorarComunidad) = 0) BEGIN SET @QueSolucionesPropondriaMejorarComunidad = NULL; END
    IF (LEN(@CualesSonLosFrenosImpidenHacerEsasSoluciones ) = 0) BEGIN SET @CualesSonLosFrenosImpidenHacerEsasSoluciones = NULL; END
	IF (LEN(@Fortalezas ) = 0) BEGIN SET @Fortalezas = NULL; END 
	IF (LEN(@Debilidades) = 0) BEGIN SET @Debilidades = NULL; END
    IF (LEN(@Oportunidades) = 0) BEGIN SET @Oportunidades = NULL; END
	IF (LEN(@Amenazas  ) = 0) BEGIN SET @Amenazas = NULL; END
    IF (LEN(@ProyectosPotenciales) = 0) BEGIN SET @ProyectosPotenciales = NULL; END 
	IF (LEN(@ComentarioGeneral) = 0) BEGIN SET @ComentarioGeneral = NULL; END

   INSERT INTO  ProductorTrack 
   (
            Identificador, 
            IdUsuarioEncuestador ,
            FechaEncuesta ,
            VisitaALaCasa ,
            IdEstadoDiagnostico ,
            Nombres ,
            Apellido1 ,
            Apellido2 ,
            Foto ,
            CodigoFloraNueva ,
            Sexo ,
            NumeroCedula ,
            FechaNacimiento ,
            IdEstadoCivil ,
            PerteneceAAlgunGrupoEtnico ,
            IdPais ,
			IdGrupo ,
            IdDivisionAdministrativa1  ,
            IdDivisionAdministrativa2  ,
            IdDivisionAdministrativa3 ,
            DivisionAdministrativa4 ,
            DireccionExacta ,
            IdTerritorio ,     
            GPSLatitud ,
            GPSLongitud ,
            Altitud ,
            ComentariosUbicacion ,
            ActividadLaboralPrincipal ,
            ActividadLaboralSecundaria ,
            IdCategoriaActividadPrincipal ,
            IdActividadAgricola ,
            TotalPersonasHogar ,
            TotalPersonasActivasEconomicamente ,
            TotalPersonasDependientes ,
            IndiceInsercionLaboralProductor ,
            IndiceNivelEducativoProductor ,
            IndiceCiudadaniaSocialProductor ,
            IndiceInsercionProductivaProductor ,
            IndiceInclusionSocialProductor ,
            IndiceInsercionLaboralHogar ,
            IndiceNivelEducativoHogar ,
            IndiceCiudadaniaSocialHogar,
            IndiceInsercionProductivaHogar ,
            TasaActividadEconomicaHogar ,
            IndiceInclusionSocialHogar ,
            IdFacilidadAccesoComunidad ,
            IdFacilidadAccesoVivienda ,
            IndiceFacilidadAcceso ,
            IdTiempoLlegarCentroEducativo ,
            IdTiempoLlegarCentroSalud ,
            IndiceCercaniaCentrosBasicos ,
            IdExistenciaTransportePublico ,
            IdPosesionMedioTransportePublico ,
            EspecificarMediosTransporte ,
            IndiceCapacidadDesplazamiento ,
            IndiceConexionProximidadGeografica ,
            IdEstructuraGeneracionalHogar ,
            OtrosFamiliaresVivenEnLaMismaComunidad ,
            IdUstedConsideraContarConApoyoDeSuFamilia ,
            IndiceCercaniaRelacionFamiliar ,
            IdApoyoVecinosCasoNecesidad ,
            IdAmbienteSocialComunidad ,
            SeSienteUstedRealmenteParteComunidad ,
            UstedEsUnMiembroActivoDeAlgunGrupo ,
            MiembroActivoEspecificar ,
            IndiceCercaniaRelacionComunidad ,
            IndiceRelacionesSociales ,
            IndiceGlobalBienestarSocialFamiliar ,
            IdSuViviendaEs ,
            IdLaViviendaEsANombreSuyo ,
            LaViviendaEsANombreSuyoEspecificar ,
            IdEstadoGeneralViviendaACFN ,
            IdEstadoGeneralViviendaProductor ,
            CantidadDormitorios ,
            HacinamientoPorDormitorios ,
            IndiceHacinamiento ,
            IndiceEstadoVivienda ,
            IndiceVivienda ,
            IdFuenteAguaVivienda ,
            AccesoALaElectricidad ,
            IndiceServiciosBasicos ,
            TieneTelefonoResidencial ,
            TieneTelefonoCelular ,
            TieneSennalTelefoniaMovilEnSuCasa ,
            TieneAccesoAInternet ,
            IndiceServiciosComunicacion ,
            IndiceAccesoAServicios ,
            RecibeAyudaFinanciera ,
            RecibeAyudaFinancieraEspecificar ,
            PresupuestoSuficienteCubrirGastosBasicos ,
            ParaQueNoAlcanzaPresupuestoHogar  ,
            IdConLosIngresosUstedEstimaQue ,
            MontoMinimoMensualParaVivir ,
            IdConLaActualSituacionEconomica ,
            IdUstedConsideraQueSuHogarEs ,
            IndiceNivelVida ,
            IndiceBienestarEconomicoMaterialHogar ,
            UstedProduceAlimentosParaSuHogar ,
            GranosBasicos ,
            Hortalizas  ,
            Frutas ,
            AnimalesYSusProductos  ,
            ProductosTransformados  ,
            PlantasAromaticasYMedicinales  ,
            QueProduceParaSuHogarOtros ,
            IdProporcionAutoconsumoAlimentosHogar ,
            IdLograProducir ,
            IdDondeUstedProduce ,
            IdElTamannoDeSuParcelaEs ,
            IdAUstedLeGustaria ,
            TamannoParcela ,
            ManoObra ,
            FertilidadSuelos ,
            TiempoDisponible ,
            RecursosFinancierosInvertirYTrabajar ,
            RiesgosNaturalesMuyFrecuentes ,
            OtrasLimitantes ,
            NoPoseeTierras ,
            NoPoseeConocimientos ,
            TrabajaEnOtroSectorYNoTieneTiempo ,
            NoLeInteresaPrefiereComprar ,
            ElLugarNoEsAptoParaCultivar ,
            OtrasRazones ,
            IndiceSoberaniaAlimenticia ,
            FelicidadSuTrabajo ,
            FelicidadSuSituacionFinanciera ,
            FelicidadSuEstadoSalud ,
            FelicidadSuVivienda ,
            FelicidadSuTiempoLibre ,
            FelicidadSuFamilia ,
            FelicidadSuEducacion ,
            FelicidadElMedioAmbiente ,
            FelicidadSuVidaSocial ,
            FelicidadSuParticipacionDentroComunidad ,
            IndiceFelicidad ,
            IdFormaJuridicaExplotacion ,
            PerteneceAUnaOrganizacionAgropecuaria ,
            NombreOrganizacionAgropecuaria ,
            IdTenenciaDeLaTierra ,
            ANombreDeQuienEstaElTerreno ,
            SiEsANombreDeOtraPersonaEspecificar ,
            EspecificarUbicacionDeLaTierra ,
            SuperficieDeLaParcela ,
            MiniDescripcionDeLaFinca ,
            FotoParcela ,
            CualEsSuProduccionPrincipal ,
            CualesSonLasOtrasProduccionesQueTiene ,
            IdAbono ,
            IdControlDeMaleza ,
            IdPlaguicidas ,
            IdOrigenDeLasSemillas ,
            IdSistemaRiegoCultivos ,
            PoseeUnaCertificacion ,
            CertificacionEspecificar ,
            IdCategoriaManejo ,
            ComentarioDeManejo ,
            ListaMaquinariaDisponibleEnLaFinca ,
            IdCategoriaMecanizacion ,
            ListaInfraestructuraDisponibleEnLaFinca ,
            IdCategoriaInfraestructura ,
            RealizaAlgunProcesoTransformacionOValorAgregado ,
            ProcesoTransformacionOValorAgregadoEspecificar ,
            IdDestinoDeLaProduccion ,
            SiVentaEspecificarCanalesComercializacion ,
            IdCategoriaExplotacionAgricola ,
            IdOrientacionTecnicoEco ,
            ComentarioExplotacionAgricola ,
            TieneAbejasSinAguijon ,
            DesdeCuandoLasTiene ,
            OtrasEspeciesAbeja ,
            DondeYComoObtuvoEsasColmenas ,
            ProduceMiel  ,
            ComoCosechaLaMiel ,
            IdDestinoMiel ,
            DondeSeVendeMielEspecificar  ,
            PrecioVentaMiel ,
            IdDondeColocaLasColmenas ,
            DondeSeUbicanLasColmenas ,
            DiagnosticoVisualDelMeliponarioYSuEntorno ,
            IdPotencialLugarParaTenerAbejas ,
            IdRiesgoRoboColmenas,
            FotoMeliponario ,
            CualEsSuMotivacionParaTenerLasAbejas  ,
            ComoAprendioACriarLasAbejas  ,
            IdNivelConocimientoMeliponicultura ,
            ComentariosMeliponicultura  ,
            QueEsLoQueMejorariaSuCalidadDeVida  ,
            CualesSonLosFrenosCalidadDeVida ,
            ComoMejorariaSuActividadAgricola  ,
            CualesSonLosFrenosActividadAgricola ,
            EnQueLeGustariaQueACFNLoPuedaApoyar ,
            CualesSon3FortalezasDeSuComunidad ,
            CualesSon3PrincipalesProblemasComunidad  ,
            QueSolucionesPropondriaMejorarComunidad ,
            CualesSonLosFrenosImpidenHacerEsasSoluciones  ,
            Fortalezas ,
            Debilidades ,
            Oportunidades ,
            Amenazas ,
            ProyectosPotenciales ,
            ComentarioGeneral ,
            IndicadorBienestarSocialYFamiliarDelHogar ,
            IndicadorBienestarEconomicoYMaterialDelHogar ,
            IndicadorSoberaniaAlimenticia ,
            IndicadorFelicidad ,
            Estado ,
            Usuario ,
            Dispositivo ,
            FechaCreacion ,
            FechaCreacionUtc ,
            FechaModificacion  ,
            FechaModificacionUtc ,
            Transaccion 
   ) 
    VALUES 
   (
            @Identificador, 
            @IdUsuarioEncuestador ,
            @FechaEncuesta ,
            @VisitaALaCasa ,
            @IdEstadoDiagnostico ,
            @Nombres ,
            @Apellido1 ,
            @Apellido2 ,
            @Foto ,
            @CodigoFloraNueva ,
            @Sexo ,
            @NumeroCedula ,
            @FechaNacimiento ,
            @IdEstadoCivil ,
            @PerteneceAAlgunGrupoEtnico ,
            @IdPais ,
		    @IdGrupo ,
            @IdDivisionAdministrativa1  ,
            @IdDivisionAdministrativa2  ,
            @IdDivisionAdministrativa3 ,
            @DivisionAdministrativa4 ,
            @DireccionExacta ,
            @IdTerritorio ,     
            @GPSLatitud ,
            @GPSLongitud ,
            @Altitud ,
            @ComentariosUbicacion ,
            @ActividadLaboralPrincipal ,
            @ActividadLaboralSecundaria ,
            @IdCategoriaActividadPrincipal ,
            @IdActividadAgricola ,
            @TotalPersonasHogar ,
            @TotalPersonasActivasEconomicamente ,
            @TotalPersonasDependientes ,
            @IndiceInsercionLaboralProductor ,
            @IndiceNivelEducativoProductor ,
            @IndiceCiudadaniaSocialProductor ,
            @IndiceInsercionProductivaProductor ,
            @IndiceInclusionSocialProductor ,
            @IndiceInsercionLaboralHogar ,
            @IndiceNivelEducativoHogar ,
            @IndiceCiudadaniaSocialHogar,
            @IndiceInsercionProductivaHogar ,
            @TasaActividadEconomicaHogar ,
            @IndiceInclusionSocialHogar ,
            @IdFacilidadAccesoComunidad ,
            @IdFacilidadAccesoVivienda ,
            @IndiceFacilidadAcceso ,
            @IdTiempoLlegarCentroEducativo ,
            @IdTiempoLlegarCentroSalud ,
            @IndiceCercaniaCentrosBasicos ,
            @IdExistenciaTransportePublico ,
            @IdPosesionMedioTransportePublico ,
            @EspecificarMediosTransporte ,
            @IndiceCapacidadDesplazamiento ,
            @IndiceConexionProximidadGeografica ,
            @IdEstructuraGeneracionalHogar ,
            @OtrosFamiliaresVivenEnLaMismaComunidad ,
            @IdUstedConsideraContarConApoyoDeSuFamilia ,
            @IndiceCercaniaRelacionFamiliar ,
            @IdApoyoVecinosCasoNecesidad ,
            @IdAmbienteSocialComunidad ,
            @SeSienteUstedRealmenteParteComunidad ,
            @UstedEsUnMiembroActivoDeAlgunGrupo ,
            @MiembroActivoEspecificar ,
            @IndiceCercaniaRelacionComunidad ,
            @IndiceRelacionesSociales ,
            @IndiceGlobalBienestarSocialFamiliar ,
            @IdSuViviendaEs ,
            @IdLaViviendaEsANombreSuyo ,
            @LaViviendaEsANombreSuyoEspecificar ,
            @IdEstadoGeneralViviendaACFN ,
            @IdEstadoGeneralViviendaProductor ,
            @CantidadDormitorios ,
            @HacinamientoPorDormitorios ,
            @IndiceHacinamiento ,
            @IndiceEstadoVivienda ,
            @IndiceVivienda ,
            @IdFuenteAguaVivienda ,
            @AccesoALaElectricidad ,
            @IndiceServiciosBasicos ,
            @TieneTelefonoResidencial ,
            @TieneTelefonoCelular ,
            @TieneSennalTelefoniaMovilEnSuCasa ,
            @TieneAccesoAInternet ,
            @IndiceServiciosComunicacion ,
            @IndiceAccesoAServicios ,
            @RecibeAyudaFinanciera ,
            @RecibeAyudaFinancieraEspecificar ,
            @PresupuestoSuficienteCubrirGastosBasicos ,
            @ParaQueNoAlcanzaPresupuestoHogar  ,
            @IdConLosIngresosUstedEstimaQue ,
            @MontoMinimoMensualParaVivir ,
            @IdConLaActualSituacionEconomica ,
            @IdUstedConsideraQueSuHogarEs ,
            @IndiceNivelVida ,
            @IndiceBienestarEconomicoMaterialHogar ,
            @UstedProduceAlimentosParaSuHogar ,
            @GranosBasicos ,
            @Hortalizas  ,
            @Frutas ,
            @AnimalesYSusProductos  ,
            @ProductosTransformados  ,
            @PlantasAromaticasYMedicinales  ,
            @QueProduceParaSuHogarOtros ,
            @IdProporcionAutoconsumoAlimentosHogar ,
            @IdLograProducir ,
            @IdDondeUstedProduce ,
            @IdElTamannoDeSuParcelaEs ,
            @IdAUstedLeGustaria ,
            @TamannoParcela ,
            @ManoObra ,
            @FertilidadSuelos ,
            @TiempoDisponible ,
            @RecursosFinancierosInvertirYTrabajar ,
            @RiesgosNaturalesMuyFrecuentes ,
            @OtrasLimitantes ,
            @NoPoseeTierras ,
            @NoPoseeConocimientos ,
            @TrabajaEnOtroSectorYNoTieneTiempo ,
            @NoLeInteresaPrefiereComprar ,
            @ElLugarNoEsAptoParaCultivar ,
            @OtrasRazones ,
            @IndiceSoberaniaAlimenticia ,
            @FelicidadSuTrabajo ,
            @FelicidadSuSituacionFinanciera ,
            @FelicidadSuEstadoSalud ,
            @FelicidadSuVivienda ,
            @FelicidadSuTiempoLibre ,
            @FelicidadSuFamilia ,
            @FelicidadSuEducacion ,
            @FelicidadElMedioAmbiente ,
            @FelicidadSuVidaSocial ,
            @FelicidadSuParticipacionDentroComunidad ,
            @IndiceFelicidad ,
            @IdFormaJuridicaExplotacion ,
            @PerteneceAUnaOrganizacionAgropecuaria ,
            @NombreOrganizacionAgropecuaria ,
            @IdTenenciaDeLaTierra ,
            @ANombreDeQuienEstaElTerreno ,
            @SiEsANombreDeOtraPersonaEspecificar ,
            @EspecificarUbicacionDeLaTierra ,
            @SuperficieDeLaParcela ,
            @MiniDescripcionDeLaFinca ,
            @FotoParcela ,
            @CualEsSuProduccionPrincipal ,
            @CualesSonLasOtrasProduccionesQueTiene ,
            @IdAbono ,
            @IdControlDeMaleza ,
            @IdPlaguicidas ,
            @IdOrigenDeLasSemillas ,
            @IdSistemaRiegoCultivos ,
            @PoseeUnaCertificacion ,
            @CertificacionEspecificar ,
            @IdCategoriaManejo ,
            @ComentarioDeManejo ,
            @ListaMaquinariaDisponibleEnLaFinca ,
            @IdCategoriaMecanizacion ,
            @ListaInfraestructuraDisponibleEnLaFinca ,
            @IdCategoriaInfraestructura ,
            @RealizaAlgunProcesoTransformacionOValorAgregado ,
            @ProcesoTransformacionOValorAgregadoEspecificar ,
            @IdDestinoDeLaProduccion ,
            @SiVentaEspecificarCanalesComercializacion ,
            @IdCategoriaExplotacionAgricola ,
            @IdOrientacionTecnicoEco ,
            @ComentarioExplotacionAgricola ,
            @TieneAbejasSinAguijon ,
            @DesdeCuandoLasTiene ,
            @OtrasEspeciesAbeja ,
            @DondeYComoObtuvoEsasColmenas ,
            @ProduceMiel  ,
            @ComoCosechaLaMiel ,
            @IdDestinoMiel ,
            @DondeSeVendeMielEspecificar  ,
            @PrecioVentaMiel ,
            @IdDondeColocaLasColmenas ,
            @DondeSeUbicanLasColmenas ,
            @DiagnosticoVisualDelMeliponarioYSuEntorno ,
            @IdPotencialLugarParaTenerAbejas ,
            @IdRiesgoRoboColmenas ,
            @FotoMeliponario ,
            @CualEsSuMotivacionParaTenerLasAbejas  ,
            @ComoAprendioACriarLasAbejas  ,
            @IdNivelConocimientoMeliponicultura ,
            @ComentariosMeliponicultura  ,
            @QueEsLoQueMejorariaSuCalidadDeVida  ,
            @CualesSonLosFrenosCalidadDeVida ,
            @ComoMejorariaSuActividadAgricola  ,
            @CualesSonLosFrenosActividadAgricola ,
            @EnQueLeGustariaQueACFNLoPuedaApoyar ,
            @CualesSon3FortalezasDeSuComunidad ,
            @CualesSon3PrincipalesProblemasComunidad  ,
            @QueSolucionesPropondriaMejorarComunidad ,
            @CualesSonLosFrenosImpidenHacerEsasSoluciones  ,
            @Fortalezas ,
            @Debilidades ,
            @Oportunidades ,
            @Amenazas ,
            @ProyectosPotenciales ,
            @ComentarioGeneral ,
            @IndicadorBienestarSocialYFamiliarDelHogar ,
            @IndicadorBienestarEconomicoYMaterialDelHogar ,
            @IndicadorSoberaniaAlimenticia ,
            @IndicadorFelicidad ,
            @Estado ,
            @Usuario ,
            @Dispositivo ,
            @FechaCreacion ,
            @FechaCreacionUtc ,
            @FechaModificacion  ,
            @FechaModificacionUtc ,
            @Transaccion 
   )

     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	 BEGIN TRAN [PRODUCTOR]

   UPDATE PRODUCTOR SET
            IdUsuarioEncuestador = @IdUsuarioEncuestador ,
            FechaEncuesta = @FechaEncuesta ,
            VisitaALaCasa = @VisitaALaCasa ,
            IdEstadoDiagnostico = @IdEstadoDiagnostico ,
            Nombres = @Nombres ,
            Apellido1= @Apellido1 ,
            Apellido2 = @Apellido2 ,
            Foto = @Foto ,
            CodigoFloraNueva = @CodigoFloraNueva ,
            Sexo = @Sexo ,
            NumeroCedula = @NumeroCedula ,
            FechaNacimiento = @FechaNacimiento ,
            IdEstadoCivil = @IdEstadoCivil ,
            PerteneceAAlgunGrupoEtnico = @PerteneceAAlgunGrupoEtnico ,
            IdPais = @IdPais ,
		    IdGrupo = @IdGrupo ,
            IdDivisionAdministrativa1 = @IdDivisionAdministrativa1  ,
            IdDivisionAdministrativa2 = @IdDivisionAdministrativa2  ,
            IdDivisionAdministrativa3 = @IdDivisionAdministrativa3 ,
            DivisionAdministrativa4 = @DivisionAdministrativa4 ,
            DireccionExacta = @DireccionExacta ,
            IdTerritorio = @IdTerritorio ,     
            GPSLatitud = @GPSLatitud ,
            GPSLongitud  = @GPSLongitud ,
            Altitud = @Altitud ,
            ComentariosUbicacion = @ComentariosUbicacion ,
            ActividadLaboralPrincipal = @ActividadLaboralPrincipal ,
            ActividadLaboralSecundaria = @ActividadLaboralSecundaria ,
            IdCategoriaActividadPrincipal = @IdCategoriaActividadPrincipal ,
            IdActividadAgricola = @IdActividadAgricola ,
            TotalPersonasHogar = @TotalPersonasHogar ,
            TotalPersonasActivasEconomicamente = @TotalPersonasActivasEconomicamente ,
            TotalPersonasDependientes = @TotalPersonasDependientes ,
            IndiceInsercionLaboralProductor  = @IndiceInsercionLaboralProductor ,
            IndiceNivelEducativoProductor = @IndiceNivelEducativoProductor ,
            IndiceCiudadaniaSocialProductor = @IndiceCiudadaniaSocialProductor ,
            IndiceInsercionProductivaProductor =  @IndiceInsercionProductivaProductor ,
            IndiceInclusionSocialProductor = @IndiceInclusionSocialProductor ,
            IndiceInsercionLaboralHogar = @IndiceInsercionLaboralHogar ,
            IndiceNivelEducativoHogar = @IndiceNivelEducativoHogar ,
            IndiceCiudadaniaSocialHogar = @IndiceCiudadaniaSocialHogar,
            IndiceInsercionProductivaHogar = @IndiceInsercionProductivaHogar ,
            TasaActividadEconomicaHogar = @TasaActividadEconomicaHogar ,
            IndiceInclusionSocialHogar = @IndiceInclusionSocialHogar ,
            IdFacilidadAccesoComunidad = @IdFacilidadAccesoComunidad ,
            IdFacilidadAccesoVivienda = @IdFacilidadAccesoVivienda ,
            IndiceFacilidadAcceso = @IndiceFacilidadAcceso ,
            IdTiempoLlegarCentroEducativo = @IdTiempoLlegarCentroEducativo ,
            IdTiempoLlegarCentroSalud =  @IdTiempoLlegarCentroSalud ,
            IndiceCercaniaCentrosBasicos = @IndiceCercaniaCentrosBasicos ,
            IdExistenciaTransportePublico = @IdExistenciaTransportePublico ,
            IdPosesionMedioTransportePublico  = @IdPosesionMedioTransportePublico ,
            EspecificarMediosTransporte = @EspecificarMediosTransporte ,
            IndiceCapacidadDesplazamiento = @IndiceCapacidadDesplazamiento ,
            IndiceConexionProximidadGeografica = @IndiceConexionProximidadGeografica ,
            IdEstructuraGeneracionalHogar = @IdEstructuraGeneracionalHogar ,
            OtrosFamiliaresVivenEnLaMismaComunidad = @OtrosFamiliaresVivenEnLaMismaComunidad ,
            IdUstedConsideraContarConApoyoDeSuFamilia = @IdUstedConsideraContarConApoyoDeSuFamilia ,
            IndiceCercaniaRelacionFamiliar = @IndiceCercaniaRelacionFamiliar ,
            IdApoyoVecinosCasoNecesidad = @IdApoyoVecinosCasoNecesidad ,
            IdAmbienteSocialComunidad = @IdAmbienteSocialComunidad ,
            SeSienteUstedRealmenteParteComunidad = @SeSienteUstedRealmenteParteComunidad ,
            UstedEsUnMiembroActivoDeAlgunGrupo = @UstedEsUnMiembroActivoDeAlgunGrupo ,
            MiembroActivoEspecificar = @MiembroActivoEspecificar ,
            IndiceCercaniaRelacionComunidad = @IndiceCercaniaRelacionComunidad ,
            IndiceRelacionesSociales = @IndiceRelacionesSociales ,
            IndiceGlobalBienestarSocialFamiliar = @IndiceGlobalBienestarSocialFamiliar ,
            IdSuViviendaEs = @IdSuViviendaEs ,
            IdLaViviendaEsANombreSuyo = @IdLaViviendaEsANombreSuyo ,
            LaViviendaEsANombreSuyoEspecificar = @LaViviendaEsANombreSuyoEspecificar ,
            IdEstadoGeneralViviendaACFN =@IdEstadoGeneralViviendaACFN ,
            IdEstadoGeneralViviendaProductor = @IdEstadoGeneralViviendaProductor ,
            CantidadDormitorios = @CantidadDormitorios ,
            HacinamientoPorDormitorios = @HacinamientoPorDormitorios ,
            IndiceHacinamiento = @IndiceHacinamiento ,
            IndiceEstadoVivienda = @IndiceEstadoVivienda ,
            IndiceVivienda = @IndiceVivienda ,
            IdFuenteAguaVivienda = @IdFuenteAguaVivienda ,
            AccesoALaElectricidad = @AccesoALaElectricidad ,
            IndiceServiciosBasicos = @IndiceServiciosBasicos ,
            TieneTelefonoResidencial = @TieneTelefonoResidencial ,
            TieneTelefonoCelular = @TieneTelefonoCelular ,
            TieneSennalTelefoniaMovilEnSuCasa = @TieneSennalTelefoniaMovilEnSuCasa ,
            TieneAccesoAInternet = @TieneAccesoAInternet ,
            IndiceServiciosComunicacion = @IndiceServiciosComunicacion ,
            IndiceAccesoAServicios = @IndiceAccesoAServicios ,
            RecibeAyudaFinanciera = @RecibeAyudaFinanciera ,
            RecibeAyudaFinancieraEspecificar = @RecibeAyudaFinancieraEspecificar ,
            PresupuestoSuficienteCubrirGastosBasicos = @PresupuestoSuficienteCubrirGastosBasicos ,
            ParaQueNoAlcanzaPresupuestoHogar = @ParaQueNoAlcanzaPresupuestoHogar  ,
            IdConLosIngresosUstedEstimaQue = @IdConLosIngresosUstedEstimaQue ,
            MontoMinimoMensualParaVivir = @MontoMinimoMensualParaVivir ,
            IdConLaActualSituacionEconomica = @IdConLaActualSituacionEconomica ,
            IdUstedConsideraQueSuHogarEs = @IdUstedConsideraQueSuHogarEs ,
            IndiceNivelVida = @IndiceNivelVida ,
            IndiceBienestarEconomicoMaterialHogar  = @IndiceBienestarEconomicoMaterialHogar ,
            UstedProduceAlimentosParaSuHogar = @UstedProduceAlimentosParaSuHogar ,
            GranosBasicos = @GranosBasicos ,
            Hortalizas = @Hortalizas  ,
            Frutas = @Frutas ,
            AnimalesYSusProductos = @AnimalesYSusProductos  ,
            ProductosTransformados = @ProductosTransformados  ,
            PlantasAromaticasYMedicinales = @PlantasAromaticasYMedicinales  ,
            QueProduceParaSuHogarOtros = @QueProduceParaSuHogarOtros ,
            IdProporcionAutoconsumoAlimentosHogar = @IdProporcionAutoconsumoAlimentosHogar ,
            IdLograProducir = @IdLograProducir ,
            IdDondeUstedProduce = @IdDondeUstedProduce ,
            IdElTamannoDeSuParcelaEs = @IdElTamannoDeSuParcelaEs ,
            IdAUstedLeGustaria = @IdAUstedLeGustaria ,
            TamannoParcela = @TamannoParcela ,
            ManoObra = @ManoObra ,
            FertilidadSuelos = @FertilidadSuelos ,
            TiempoDisponible = @TiempoDisponible ,
            RecursosFinancierosInvertirYTrabajar = @RecursosFinancierosInvertirYTrabajar ,
            RiesgosNaturalesMuyFrecuentes = @RiesgosNaturalesMuyFrecuentes ,
            OtrasLimitantes = @OtrasLimitantes ,
            NoPoseeTierras = @NoPoseeTierras ,
            NoPoseeConocimientos = @NoPoseeConocimientos ,
            TrabajaEnOtroSectorYNoTieneTiempo = @TrabajaEnOtroSectorYNoTieneTiempo ,
            NoLeInteresaPrefiereComprar = @NoLeInteresaPrefiereComprar ,
            ElLugarNoEsAptoParaCultivar = @ElLugarNoEsAptoParaCultivar ,
            OtrasRazones = @OtrasRazones ,
            IndiceSoberaniaAlimenticia = @IndiceSoberaniaAlimenticia ,
            FelicidadSuTrabajo = @FelicidadSuTrabajo ,
            FelicidadSuSituacionFinanciera = @FelicidadSuSituacionFinanciera ,
            FelicidadSuEstadoSalud = @FelicidadSuEstadoSalud ,
            FelicidadSuVivienda = @FelicidadSuVivienda ,
            FelicidadSuTiempoLibre = @FelicidadSuTiempoLibre ,
            FelicidadSuFamilia = @FelicidadSuFamilia ,
            FelicidadSuEducacion = @FelicidadSuEducacion ,
            FelicidadElMedioAmbiente = @FelicidadElMedioAmbiente ,
            FelicidadSuVidaSocial = @FelicidadSuVidaSocial ,
            FelicidadSuParticipacionDentroComunidad = @FelicidadSuParticipacionDentroComunidad ,
            IndiceFelicidad  = @IndiceFelicidad ,
            IdFormaJuridicaExplotacion = @IdFormaJuridicaExplotacion ,
            PerteneceAUnaOrganizacionAgropecuaria  = @PerteneceAUnaOrganizacionAgropecuaria ,
            NombreOrganizacionAgropecuaria  = @NombreOrganizacionAgropecuaria ,
            IdTenenciaDeLaTierra = @IdTenenciaDeLaTierra ,
            ANombreDeQuienEstaElTerreno = @ANombreDeQuienEstaElTerreno ,
            SiEsANombreDeOtraPersonaEspecificar = @SiEsANombreDeOtraPersonaEspecificar ,
            EspecificarUbicacionDeLaTierra = @EspecificarUbicacionDeLaTierra ,
            SuperficieDeLaParcela = @SuperficieDeLaParcela ,
            MiniDescripcionDeLaFinca = @MiniDescripcionDeLaFinca ,
            FotoParcela = @FotoParcela ,
            CualEsSuProduccionPrincipal = @CualEsSuProduccionPrincipal ,
            CualesSonLasOtrasProduccionesQueTiene = @CualesSonLasOtrasProduccionesQueTiene ,
            IdAbono = @IdAbono ,
            IdControlDeMaleza = @IdControlDeMaleza ,
            IdPlaguicidas = @IdPlaguicidas ,
            IdOrigenDeLasSemillas = @IdOrigenDeLasSemillas ,
            IdSistemaRiegoCultivos = @IdSistemaRiegoCultivos ,
            PoseeUnaCertificacion = @PoseeUnaCertificacion ,
            CertificacionEspecificar = @CertificacionEspecificar ,
            IdCategoriaManejo = @IdCategoriaManejo ,
            ComentarioDeManejo = @ComentarioDeManejo ,
            ListaMaquinariaDisponibleEnLaFinca = @ListaMaquinariaDisponibleEnLaFinca ,
            IdCategoriaMecanizacion = @IdCategoriaMecanizacion ,
            ListaInfraestructuraDisponibleEnLaFinca = @ListaInfraestructuraDisponibleEnLaFinca ,
            IdCategoriaInfraestructura = @IdCategoriaInfraestructura ,
            RealizaAlgunProcesoTransformacionOValorAgregado = @RealizaAlgunProcesoTransformacionOValorAgregado ,
            ProcesoTransformacionOValorAgregadoEspecificar = @ProcesoTransformacionOValorAgregadoEspecificar ,
            IdDestinoDeLaProduccion = @IdDestinoDeLaProduccion ,
            SiVentaEspecificarCanalesComercializacion = @SiVentaEspecificarCanalesComercializacion ,
            IdCategoriaExplotacionAgricola = @IdCategoriaExplotacionAgricola ,
            IdOrientacionTecnicoEco  = @IdOrientacionTecnicoEco ,
            ComentarioExplotacionAgricola = @ComentarioExplotacionAgricola ,
            TieneAbejasSinAguijon = @TieneAbejasSinAguijon ,
            DesdeCuandoLasTiene = @DesdeCuandoLasTiene ,
            OtrasEspeciesAbeja =  @OtrasEspeciesAbeja ,
            DondeYComoObtuvoEsasColmenas = @DondeYComoObtuvoEsasColmenas ,
            ProduceMiel = @ProduceMiel  ,
            ComoCosechaLaMiel= @ComoCosechaLaMiel ,
            IdDestinoMiel = @IdDestinoMiel ,
            DondeSeVendeMielEspecificar = @DondeSeVendeMielEspecificar  ,
            PrecioVentaMiel = @PrecioVentaMiel ,
            IdDondeColocaLasColmenas = @IdDondeColocaLasColmenas ,
            DondeSeUbicanLasColmenas = @DondeSeUbicanLasColmenas ,
            DiagnosticoVisualDelMeliponarioYSuEntorno = @DiagnosticoVisualDelMeliponarioYSuEntorno ,
            IdPotencialLugarParaTenerAbejas = @IdPotencialLugarParaTenerAbejas ,
            IdRiesgoRoboColmenas = @IdRiesgoRoboColmenas ,
            FotoMeliponario = @FotoMeliponario ,
            CualEsSuMotivacionParaTenerLasAbejas = @CualEsSuMotivacionParaTenerLasAbejas  ,
            ComoAprendioACriarLasAbejas = @ComoAprendioACriarLasAbejas  ,
            IdNivelConocimientoMeliponicultura = @IdNivelConocimientoMeliponicultura ,
            ComentariosMeliponicultura = @ComentariosMeliponicultura  ,
            QueEsLoQueMejorariaSuCalidadDeVida = @QueEsLoQueMejorariaSuCalidadDeVida  ,
            CualesSonLosFrenosCalidadDeVida = @CualesSonLosFrenosCalidadDeVida ,
            ComoMejorariaSuActividadAgricola = @ComoMejorariaSuActividadAgricola  ,
            CualesSonLosFrenosActividadAgricola = @CualesSonLosFrenosActividadAgricola ,
            EnQueLeGustariaQueACFNLoPuedaApoyar = @EnQueLeGustariaQueACFNLoPuedaApoyar ,
            CualesSon3FortalezasDeSuComunidad = @CualesSon3FortalezasDeSuComunidad ,
            CualesSon3PrincipalesProblemasComunidad = @CualesSon3PrincipalesProblemasComunidad  ,
            QueSolucionesPropondriaMejorarComunidad  = @QueSolucionesPropondriaMejorarComunidad ,
            CualesSonLosFrenosImpidenHacerEsasSoluciones = @CualesSonLosFrenosImpidenHacerEsasSoluciones  ,
            Fortalezas = @Fortalezas ,
            Debilidades = @Debilidades ,
            Oportunidades = @Oportunidades ,
            Amenazas = @Amenazas ,
            ProyectosPotenciales = @ProyectosPotenciales ,
            ComentarioGeneral = @ComentarioGeneral ,
            IndicadorBienestarSocialYFamiliarDelHogar = @IndicadorBienestarSocialYFamiliarDelHogar ,
            IndicadorBienestarEconomicoYMaterialDelHogar = @IndicadorBienestarEconomicoYMaterialDelHogar ,
            IndicadorSoberaniaAlimenticia = @IndicadorSoberaniaAlimenticia ,
            IndicadorFelicidad = @IndicadorFelicidad ,
            Estado = @Estado 
			WHERE Identificador = @Identificador

  
   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTORTRACK]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorAbejasNativasMaterialEntregado]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasMaterialEntregado] 
       (
	        @IdProductorAbejasNativasMaterialEntregado INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@Fecha DATETIME,
			@NumeroBoleta INT,
			@IdTipoMaterialEntregado INT,
			@Cantidad DECIMAL(20,6),
			@Comentario VARCHAR(MAX),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

              IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END 
			  IF (@NumeroBoleta= 0)  BEGIN  SET @NumeroBoleta = NULL; END
			  IF (@IdTipoMaterialEntregado= 0)  BEGIN  SET @IdTipoMaterialEntregado = NULL; END
			  IF (@Cantidad= 0)  BEGIN  SET @Cantidad = NULL; END
			  IF (LEN(@Comentario) = 0) BEGIN SET @Comentario = NULL; END

          INSERT INTO ProductorAbejasNativasMaterialEntregadoTrack   (Identificador,IdProductor,Fecha,NumeroBoleta,IdTipoMaterialEntregado,Cantidad,Comentario,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@NumeroBoleta,@IdTipoMaterialEntregado,@Cantidad,@Comentario,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	  BEGIN TRAN [PRODUCTOR]

	 IF (@IdProductorAbejasNativasMaterialEntregado > 0)
	 BEGIN
           UPDATE ProductorAbejasNativasMaterialEntregado SET
		   IdProductor = @IdProductor,
		   Fecha = @Fecha,
		   NumeroBoleta = @NumeroBoleta,
		   IdTipoMaterialEntregado = @IdTipoMaterialEntregado,
		   Cantidad = @Cantidad,
		   Comentario = @Comentario,
		   Estado = @Estado
		   WHERE Identificador = @Identificador AND IdProductorAbejasNativasMaterialEntregado = @IdProductorAbejasNativasMaterialEntregado;
		   END
     ELSE
		   BEGIN 
		       INSERT INTO ProductorAbejasNativasMaterialEntregado (Identificador,IdProductor,Fecha,NumeroBoleta,IdTipoMaterialEntregado,Cantidad,Comentario,Estado)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@NumeroBoleta,@IdTipoMaterialEntregado,@Cantidad,@Comentario,@Estado)

		   END

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
    COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTORTRACK]; 
		COMMIT TRAN [PRODUCTOR];
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividual]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividual] 
       (
	        @IdProductorAbejasNativasVisitaIndividual INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@Fecha DateTime,
			@ElMeliponicultorEstaPresente BIT,
			@OtraPersonaPresente VARCHAR(500),
			@Motivo VARCHAR(500),
			@Observaciones VARCHAR(500), 
			@Recomendaciones VARCHAR(500),
			@Otros VARCHAR(500),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;
DECLARE @ID INT;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

                IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END 
				IF (LEN(@OtraPersonaPresente) = 0) BEGIN SET @OtraPersonaPresente = NULL; END
				IF (LEN(@Motivo) = 0) BEGIN SET @Motivo = NULL; END
				IF (LEN(@Observaciones) = 0) BEGIN SET @Observaciones = NULL; END
				IF (LEN(@Recomendaciones) = 0) BEGIN SET @Recomendaciones = NULL; END
				IF (LEN(@Otros) = 0) BEGIN SET @Otros = NULL; END

         
         INSERT INTO ProductorAbejasNativasVisitaIndividualTrack (Identificador,IdProductor,Fecha,ElMeliponicultorEstaPresente,OtraPersonaPresente,Motivo,Observaciones,Recomendaciones,Otros,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@ElMeliponicultorEstaPresente,@OtraPersonaPresente,@Motivo, @Observaciones , @Recomendaciones,@Otros,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	  BEGIN TRAN [PRODUCTOR]


	 IF (@IdProductorAbejasNativasVisitaIndividual > 0)
	    BEGIN
            UPDATE ProductorAbejasNativasVisitaIndividual SET
		    IdProductor = @IdProductor,
			Fecha = @Fecha ,
			ElMeliponicultorEstaPresente = @ElMeliponicultorEstaPresente ,
			OtraPersonaPresente = @OtraPersonaPresente ,
			Motivo  = @Motivo ,
			Observaciones = @Observaciones,
			Recomendaciones = @Recomendaciones ,
			Otros  = @Otros ,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorAbejasNativasVisitaIndividual= @IdProductorAbejasNativasVisitaIndividual;

			SET @ID = @IdProductorAbejasNativasVisitaIndividual
	    END 
    ELSE 
	    BEGIN
		    INSERT INTO ProductorAbejasNativasVisitaIndividual (Identificador,IdProductor,Fecha,ElMeliponicultorEstaPresente,OtraPersonaPresente,Motivo,Observaciones,Recomendaciones,Otros,Estado)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@ElMeliponicultorEstaPresente,@OtraPersonaPresente,@Motivo,@Observaciones,@Recomendaciones,@Otros,@Estado)
		
		   SET @ID =  SCOPE_IDENTITY() 
		END


    SAVE TRAN [PRODUCTOR];
    COMMIT TRAN [PRODUCTORTRACK];
    COMMIT TRAN [PRODUCTOR];


   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTORTRACK]; 
		COMMIT TRAN [PRODUCTOR]; 
		SET @ID  = -2;
   END CATCH

      SELECT @ID
END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] 
       (
	        @IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductorAbejasNativasVisitaIndividual INT,
			@AccionCorrectivaObligatoria VARCHAR(500),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY
             
			 IF (@IdProductorAbejasNativasVisitaIndividual = 0) BEGIN SET @IdProductorAbejasNativasVisitaIndividual = (SELECT IdProductorAbejasNativasVisitaIndividual FROM ProductorAbejasNativasVisitaIndividual WHERE Identificador = @Identificador) END 
			 IF (len(@AccionCorrectivaObligatoria) = 0)  BEGIN  SET @AccionCorrectivaObligatoria = Null; END
         
       INSERT INTO ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoriaTrack  (Identificador,IdProductorAbejasNativasVisitaIndividual,AccionCorrectivaObligatoria,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
		              VALUES  (@Identificador,@IdProductorAbejasNativasVisitaIndividual,@AccionCorrectivaObligatoria,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion);
   
     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	 BEGIN TRAN [PRODUCTOR]

	   IF (@IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria > 0)
	    BEGIN
            UPDATE ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria SET
		    IdProductorAbejasNativasVisitaIndividual = @IdProductorAbejasNativasVisitaIndividual ,
			AccionCorrectivaObligatoria = @AccionCorrectivaObligatoria ,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria = @IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria;
		END
	  ELSE
		BEGIN

			  INSERT INTO ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria (Identificador,IdProductorAbejasNativasVisitaIndividual,AccionCorrectivaObligatoria,Estado)
		                                                                              VALUES  (@Identificador,@IdProductorAbejasNativasVisitaIndividual,@AccionCorrectivaObligatoria,@Estado);
		END

    SAVE TRAN [PRODUCTOR];
    COMMIT TRAN [PRODUCTORTRACK];
	COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR];
		 COMMIT TRAN [PRODUCTORTRACK];
   END CATCH


END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnCaja]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnCaja] 
       (
	        @IdProductorAbejasNativasVisitaIndividualColmenasEnCaja INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductorAbejasNativasVisitaIndividual INT,
			@IdEspecieAbeja INT,
			@ACFN FLOAT,
			@Rustica FLOAT,
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY
   
            IF (@IdProductorAbejasNativasVisitaIndividual = 0) BEGIN SET @IdProductorAbejasNativasVisitaIndividual = (SELECT IdProductorAbejasNativasVisitaIndividual FROM ProductorAbejasNativasVisitaIndividual WHERE Identificador = @Identificador) END 
			IF (@IdEspecieAbeja = 0)  BEGIN  SET @IdEspecieAbeja = Null; END
			IF (@ACFN = 0)  BEGIN  SET @ACFN = Null; END
			IF (@Rustica= 0)  BEGIN  SET @Rustica= Null; END

    INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnCajaTrack (Identificador,IdProductorAbejasNativasVisitaIndividual,IdEspecieAbeja,ACFN,Rustica,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                              VALUES  (@Identificador,@IdProductorAbejasNativasVisitaIndividual,@IdEspecieAbeja,@ACFN,@Rustica,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

      SAVE TRAN [PRODUCTORTRACK]
      SET @TRANCOUNTER = 1
	  BEGIN TRAN [PRODUCTOR]

	 IF(@IdProductorAbejasNativasVisitaIndividualColmenasEnCaja > 0)
	     BEGIN
            UPDATE ProductorAbejasNativasVisitaIndividualColmenasEnCaja SET
		    IdProductorAbejasNativasVisitaIndividual = @IdProductorAbejasNativasVisitaIndividual,
			IdEspecieAbeja = @IdEspecieAbeja,
			ACFN = @ACFN,
			Rustica = @Rustica,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorAbejasNativasVisitaIndividualColmenasEnCaja = @IdProductorAbejasNativasVisitaIndividualColmenasEnCaja;
			END
     ELSE
	   BEGIN
	    INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnCaja (Identificador,IdProductorAbejasNativasVisitaIndividual,IdEspecieAbeja,ACFN,Rustica,Estado) 
                                                                      VALUES  (@Identificador,@IdProductorAbejasNativasVisitaIndividual,@IdEspecieAbeja,@ACFN,@Rustica,@Estado)

	   END

    SAVE TRAN [PRODUCTOR];
    COMMIT TRAN [PRODUCTORTRACK];
	   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
		 COMMIT TRAN [PRODUCTORTRACK];
	    COMMIT TRAN  [PRODUCTOR]; 
   END CATCH


END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnTrampa]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnTrampa] 
       (
	        @IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductorAbejasNativasVisitaIndividual INT ,
			@IdEspecieAbeja INT,
			@EnMeliponario FLOAT,
		    @EnCampo FLOAT,
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

            IF (@IdProductorAbejasNativasVisitaIndividual = 0) BEGIN SET @IdProductorAbejasNativasVisitaIndividual = (SELECT IdProductorAbejasNativasVisitaIndividual FROM ProductorAbejasNativasVisitaIndividual WHERE identificador = @Identificador) END 
			IF (@IdEspecieAbeja = 0)  BEGIN  SET @IdEspecieAbeja = Null; END
			IF (@EnMeliponario = 0)  BEGIN  SET @EnMeliponario = Null; END
			IF (@EnCampo = 0)  BEGIN  SET @EnCampo = Null; END

    INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnTrampaTrack (Identificador, IdProductorAbejasNativasVisitaIndividual ,IdEspecieAbeja , EnMeliponario ,EnCampo ,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                             VALUES  (@Identificador, @IdProductorAbejasNativasVisitaIndividual ,@IdEspecieAbeja , @EnMeliponario ,@EnCampo ,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	 BEGIN TRAN [PRODUCTOR]

	 IF(@IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa > 0)
	  BEGIN
            UPDATE ProductorAbejasNativasVisitaIndividualColmenasEnTrampa SET
		    IdProductorAbejasNativasVisitaIndividual = @IdProductorAbejasNativasVisitaIndividual ,
			IdEspecieAbeja = @IdEspecieAbeja,
			EnMeliponario = @EnMeliponario ,
		    EnCampo = @EnCampo ,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa = @IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa;

	 END
 ELSE
	 BEGIN
	   INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnTrampa (Identificador, IdProductorAbejasNativasVisitaIndividual ,IdEspecieAbeja , EnMeliponario ,EnCampo ,Estado) 
                                                           VALUES  (@Identificador, @IdProductorAbejasNativasVisitaIndividual ,@IdEspecieAbeja , @EnMeliponario ,@EnCampo ,@Estado)

	 END

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTORTRACK];
		COMMIT TRAN [PRODUCTOR];
   END CATCH


END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorContacto]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorContacto] 
       (
	        @IdProductorContacto INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@IdTipoContacto INT, 
			@Contacto VARCHAR(250),
			@Detalle VARCHAR(500),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY
    
                IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END 
		    	IF (@IdTipoContacto = 0)  BEGIN  SET @IdTipoContacto= null; END
				IF (LEN(@Contacto) = 0) BEGIN SET @Contacto = NULL; END 
				IF (LEN(@Detalle) = 0) BEGIN SET @Detalle = NULL; END

		
         
     INSERT INTO ProductorContactoTrack (Identificador, IdProductor , IdTipoContacto , Contacto ,Detalle,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                                VALUES  (@Identificador, @IdProductor , @IdTipoContacto , @Contacto ,@Detalle,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [PRODUCTORTRACK]
    SET @TRANCOUNTER = 1
	   BEGIN TRAN [PRODUCTOR]


	 IF (@IdProductorContacto > 0)
	    BEGIN  
            UPDATE ProductorContacto SET
		    IdProductor = @IdProductor , 
			Contacto = @Contacto,
			Detalle = @Detalle ,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorContacto = @IdProductorContacto;
       END
	  ELSE
	    BEGIN 
		     INSERT INTO ProductorContacto (Identificador, IdProductor , IdTipoContacto , Contacto ,Detalle,Estado) 
                             VALUES  (@Identificador, @IdProductor , @IdTipoContacto , @Contacto ,@Detalle,@Estado)
		END

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN  [PRODUCTORTRACK]; 
		COMMIT TRAN [PRODUCTOR];
   END CATCH


END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorDetalleProduccionAnimal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorDetalleProduccionAnimal] 
       (
	        @IdProductorDetalleProduccionAnimal INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@IdAnimales INT,
			@Detalles VARCHAR(500),
			@Cantidad DECIMAL (20, 6),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTOR]

   BEGIN TRY
 
            IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END
		    IF (@IdAnimales = 0)  BEGIN  SET @IdAnimales = null; END
			IF (LEN(@Detalles) = 0) BEGIN SET @Detalles = NULL; END
			IF (@Cantidad = 0)  BEGIN  SET @Cantidad = null; END
         
    INSERT INTO ProductorDetalleProduccionAnimalTrack (Identificador,IdProductor,IdAnimales,Detalles,Cantidad,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                          VALUES  (@Identificador,@IdProductor,@IdAnimales,@Detalles,@Cantidad,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

   SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1


	 IF (@IdProductorDetalleProduccionAnimal > 0)
	     BEGIN
            UPDATE ProductorDetalleProduccionAnimal SET
		    IdProductor = @IdProductor , 
			IdAnimales = @IdAnimales,
			Detalles = @Detalles,
			Cantidad = @Cantidad,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorDetalleProduccionAnimal = @IdProductorDetalleProduccionAnimal;
		END
	ELSE	 
	    BEGIN
		       INSERT INTO ProductorDetalleProduccionAnimal (Identificador,IdProductor,IdAnimales,Detalles,Cantidad,Estado)
                                                   VALUES  (@Identificador,@IdProductor,@IdAnimales,@Detalles,@Cantidad,@Estado)

		END

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN  [PRODUCTOR]; 
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorDetalleProduccionVegetal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorDetalleProduccionVegetal] 
       (
	        @IdProductorDetalleProduccionVegetal INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@IdCategoriaUsoSuelo INT,
			@Detalles VARCHAR(500),
			@Superficie DECIMAL(20,6),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTOR]

   BEGIN TRY

   
            IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END
			IF (@IdCategoriaUsoSuelo = 0)  BEGIN  SET @IdCategoriaUsoSuelo = null; END
			IF (LEN(@Detalles) = 0) BEGIN SET @Detalles = NULL; END
			IF (@Superficie = 0)  BEGIN  SET @Superficie = null; END
 
     INSERT INTO ProductorDetalleProduccionVegetalTrack (Identificador,IdProductor,IdCategoriaUsoSuelo,Detalles,Superficie,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
             VALUES  (@Identificador,@IdProductor,@IdCategoriaUsoSuelo,@Detalles,@Superficie,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
     
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	  

	  IF (@IdProductorDetalleProduccionVegetal > 0)
	     BEGIN
            UPDATE ProductorDetalleProduccionVegetal SET
		    IdProductor = @IdProductor , 
			IdCategoriaUsoSuelo = @IdCategoriaUsoSuelo,
			Detalles = @Detalles,
			Superficie = @Superficie,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorDetalleProduccionVegetal = @IdProductorDetalleProduccionVegetal;
	    END
	ELSE
	    BEGIN
		 INSERT INTO ProductorDetalleProduccionVegetal(Identificador,IdProductor,IdCategoriaUsoSuelo,Detalles,Superficie,Estado)
                                                       VALUES  (@Identificador,@IdProductor,@IdCategoriaUsoSuelo,@Detalles,@Superficie,@Estado)
     
		END 	 


 SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN  [PRODUCTOR];
   END CATCH


END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorDocumentoEntregado]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorDocumentoEntregado] 
       (
	        @IdProductorDocumentoEntregado INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@IdTipoDocumento INT,
			@Detalle  VARCHAR(500),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

            IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador) END
			IF (@IdTipoDocumento = 0)  BEGIN  SET @IdTipoDocumento = Null; END
			IF (LEN(@Detalle) = 0) BEGIN SET @Detalle = NULL; END
 
  
    
   INSERT INTO ProductorDocumentoEntregadoTrack (Identificador,Idproductor,IdTipoDocumento,Detalle,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                                     VALUES  (@Identificador,@Idproductor,@IdTipoDocumento,@Detalle,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
 
     
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	 BEGIN TRAN [PRODUCTOR]

	 IF ( @IdProductorDocumentoEntregado > 0)
	    BEGIN   
            UPDATE ProductorDocumentoEntregado SET
		    IdProductor = @IdProductor , 
			IdTipoDocumento = @IdTipoDocumento,
			Detalle = @Detalle,
			Estado = @Estado
		    WHERE Identificador = @Identificador AND  IdProductorDocumentoEntregado =  @IdProductorDocumentoEntregado;
	    END

	 ELSE
	    BEGIN 
		        INSERT INTO ProductorDocumentoEntregado (Identificador,Idproductor,IdTipoDocumento,Detalle,Estado)
                                               VALUES  (@Identificador,@Idproductor,@IdTipoDocumento,@Detalle,@Estado)
		END


   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
   COMMIT TRAN [PRODUCTO]

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
		COMMIT TRAN [PRODUCTORTRACK]
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorInventarioEspecies]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorInventarioEspecies] 
       (
	        @IdProductorInventarioEspecies INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@IdEspecieAbeja INT,
			@CantidadEnTronco INT,
			@CantidadEnNidoArtificial INT,
			@CantidadEnCajaRustica INT,
			@CantidadEnCajaTecnificada INT,
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY
 
             IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END
			 IF (@IdEspecieAbeja = 0) BEGIN SET @IdEspecieAbeja =  Null END 
			 IF (@CantidadEnTronco = 0) BEGIN SET @CantidadEnTronco =  Null END 
			 IF (@CantidadEnNidoArtificial = 0) BEGIN SET @CantidadEnNidoArtificial =  Null END 
			 IF (@CantidadEnCajaRustica = 0) BEGIN SET @CantidadEnCajaRustica =  Null END 
			 IF (@CantidadEnCajaTecnificada = 0) BEGIN SET @CantidadEnCajaTecnificada =  Null END 
			   
       INSERT INTO ProductorInventarioEspeciesTrack  (Identificador,IdProductor,IdEspecieAbeja,CantidadEnTronco,CantidadEnNidoArtificial,CantidadEnCajaRustica,CantidadEnCajaTecnificada,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                               VALUES  (@Identificador,@IdProductor,@IdEspecieAbeja,@CantidadEnTronco,@CantidadEnNidoArtificial,@CantidadEnCajaRustica,@CantidadEnCajaTecnificada,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
 
    SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	  BEGIN TRAN [PRODUCTOR]


	 IF (@IdProductorInventarioEspecies > 0)
	    BEGIN
            UPDATE ProductorInventarioEspecies SET
		    IdProductor = @IdProductor , 
			IdEspecieAbeja = @IdEspecieAbeja ,
			CantidadEnTronco = @CantidadEnTronco ,
			CantidadEnNidoArtificial = @CantidadEnNidoArtificial ,
			CantidadEnCajaRustica = @CantidadEnCajaRustica,
			CantidadEnCajaTecnificada = @CantidadEnCajaTecnificada,
			Estado = @Estado
		    WHERE Identificador = @Identificador AND IdProductorInventarioEspecies = @IdProductorInventarioEspecies;
        END
    ELSE  
		  BEGIN
              INSERT INTO ProductorInventarioEspecies (Identificador,IdProductor,IdEspecieAbeja,CantidadEnTronco,CantidadEnNidoArtificial,CantidadEnCajaRustica,CantidadEnCajaTecnificada,Estado) 
                               VALUES  (@Identificador,@IdProductor,@IdEspecieAbeja,@CantidadEnTronco,@CantidadEnNidoArtificial,@CantidadEnCajaRustica,@CantidadEnCajaTecnificada,@Estado)
 
        END


   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTORTRACK];
		COMMIT TRAN [PRODUCTOR];
   END CATCH


END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorMiembroHogar]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_ActualizarProductorMiembroHogar] 
       (
	        @IdProductorMiembroHogar INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@Nombre VARCHAR(520),
			@IdParentezco INT,
			@Sexo BIT,
			@Edad INT,
			@TieneAlgunaDiscapacidadOEnfermedadGrave BIT,
			@Ocupacion VARCHAR(100),
			@IdCondicionLaboral INT,
			@SeguridadTrabajaTodoElAnno BIT,
			@SeguridadTrabajaEntre48Y40Horas BIT,
			@SeguridadCotizaALaCaja BIT,
            @SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales BIT,
			@SeguridadPercibeSuEmpleoComoSeguro BIT,
			@IndiceSeguridad DECIMAL(20,6),
			@IdSituacionAutoEmpleo INT,
			@IndiceInsercionLaboral DECIMAL(20,6),
			@IdSabeLeerYEscribir INT,
			@IdNivelEscolar INT,
			@IndiceNivelEducativo DECIMAL(20,6),
			@IdCondicionAseguramiento INT,
			@IndiceCiudadaniaSocial DECIMAL(20,6),
			@IdPertenenciaGrupoComunitario INT,
			@PertenenciaGrupoComunitarioEspecificar VARCHAR(500),
			@IndiceInclusionSocialPersona DECIMAL(20,6),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

   
            IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador ); END
			IF (LEN(@Nombre) = 0) BEGIN SET @Nombre =  Null END 
			IF (@IdParentezco = 0) BEGIN SET @IdParentezco =  Null END 
			IF (@Edad = 0) BEGIN SET @Edad =  Null END 
			IF (LEN(@Ocupacion ) = 0) BEGIN SET @Ocupacion  =  Null END 
			IF (@IdCondicionLaboral = 0) BEGIN SET @IdCondicionLaboral =  Null END 
            IF (@IndiceSeguridad = 0) BEGIN SET @IndiceSeguridad =  Null END 
			IF (@IdSituacionAutoEmpleo = 0) BEGIN SET @IdSituacionAutoEmpleo =  Null END 
            IF (@IndiceInsercionLaboral = 0) BEGIN SET @IndiceInsercionLaboral =  Null END 
			IF (@IdSabeLeerYEscribir = 0) BEGIN SET @IdSabeLeerYEscribir =  Null END 
			IF (@IdNivelEscolar = 0) BEGIN SET @IdNivelEscolar =  Null END 
			IF (@IndiceNivelEducativo = 0) BEGIN SET @IndiceNivelEducativo =  Null END 
			IF (@IdCondicionAseguramiento = 0) BEGIN SET @IdCondicionAseguramiento =  Null END 
			IF (@IndiceCiudadaniaSocial = 0) BEGIN SET @IndiceCiudadaniaSocial =  Null END 
			IF (@IdPertenenciaGrupoComunitario = 0) BEGIN SET @IdPertenenciaGrupoComunitario =  Null END 
			IF (LEN(@PertenenciaGrupoComunitarioEspecificar) = 0) BEGIN SET @PertenenciaGrupoComunitarioEspecificar  =  Null END 
			IF (@IndiceInclusionSocialPersona = 0) BEGIN SET @IndiceInclusionSocialPersona =  Null END

			
 
     INSERT INTO ProductorMiembroHogarTrack (Identificador,IdProductor,Nombre,IdParentezco,Sexo,Edad,TieneAlgunaDiscapacidadOEnfermedadGrave,Ocupacion,IdCondicionLaboral,SeguridadTrabajaTodoElAnno,SeguridadTrabajaEntre48Y40Horas,SeguridadCotizaALaCaja,
              SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales,SeguridadPercibeSuEmpleoComoSeguro,IndiceSeguridad,IdSituacionAutoEmpleo,IndiceInsercionLaboral,IdSabeLeerYEscribir,IdNivelEscolar,IndiceNivelEducativo,IdCondicionAseguramiento,
			  IndiceCiudadaniaSocial,IdPertenenciaGrupoComunitario,PertenenciaGrupoComunitarioEspecificar,IndiceInclusionSocialPersona,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)			  
			  VALUES  (@Identificador,@IdProductor,@Nombre,@IdParentezco,@Sexo,@Edad,@TieneAlgunaDiscapacidadOEnfermedadGrave,@Ocupacion,@IdCondicionLaboral,@SeguridadTrabajaTodoElAnno,@SeguridadTrabajaEntre48Y40Horas,@SeguridadCotizaALaCaja,
              @SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales,@SeguridadPercibeSuEmpleoComoSeguro,@IndiceSeguridad,@IdSituacionAutoEmpleo,@IndiceInsercionLaboral,@IdSabeLeerYEscribir,@IdNivelEscolar,@IndiceNivelEducativo,@IdCondicionAseguramiento,
			  @IndiceCiudadaniaSocial,@IdPertenenciaGrupoComunitario,@PertenenciaGrupoComunitarioEspecificar,@IndiceInclusionSocialPersona,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
 
     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	 BEGIN TRAN [PRODUCTOR]

	  IF (@IdProductorMiembroHogar > 0)
	    BEGIN 

            UPDATE ProductorMiembroHogar SET
		  	IdProductor = @IdProductor , 
			Nombre = @Nombre ,
			IdParentezco = @IdParentezco,
			Sexo = @Sexo ,
			Edad  = @Edad ,
			TieneAlgunaDiscapacidadOEnfermedadGrave = @TieneAlgunaDiscapacidadOEnfermedadGrave,
			Ocupacion  = @Ocupacion ,
			IdCondicionLaboral = @IdCondicionLaboral ,
			SeguridadTrabajaTodoElAnno = @SeguridadTrabajaTodoElAnno ,
			SeguridadTrabajaEntre48Y40Horas = @SeguridadTrabajaEntre48Y40Horas ,
			SeguridadCotizaALaCaja = @SeguridadCotizaALaCaja ,
            SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales = @SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales ,
			SeguridadPercibeSuEmpleoComoSeguro = @SeguridadPercibeSuEmpleoComoSeguro ,
			IndiceSeguridad = @IndiceSeguridad ,
			IdSituacionAutoEmpleo = @IdSituacionAutoEmpleo ,
			IdSabeLeerYEscribir = @IdSabeLeerYEscribir,
			IdNivelEscolar = @IdNivelEscolar ,
			IndiceNivelEducativo = @IndiceNivelEducativo ,
			IdCondicionAseguramiento = @IdCondicionAseguramiento ,
			IndiceCiudadaniaSocial = @IndiceCiudadaniaSocial ,
			IdPertenenciaGrupoComunitario = @IdPertenenciaGrupoComunitario ,
			PertenenciaGrupoComunitarioEspecificar = @PertenenciaGrupoComunitarioEspecificar ,
			IndiceInclusionSocialPersona = @IndiceInclusionSocialPersona ,
			Estado = @Estado
		    WHERE Identificador = @Identificador AND IdProductorMiembroHogar = @IdProductorMiembroHogar;

         END
	  ELSE
	      BEGIN 
			  INSERT INTO ProductorMiembroHogar  (Identificador,IdProductor,Nombre,IdParentezco,Sexo,Edad,TieneAlgunaDiscapacidadOEnfermedadGrave,Ocupacion,IdCondicionLaboral,SeguridadTrabajaTodoElAnno,SeguridadTrabajaEntre48Y40Horas,SeguridadCotizaALaCaja,
              SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales,SeguridadPercibeSuEmpleoComoSeguro,IndiceSeguridad,IdSituacionAutoEmpleo,IndiceInsercionLaboral,IdSabeLeerYEscribir,IdNivelEscolar,IndiceNivelEducativo,IdCondicionAseguramiento,
			  IndiceCiudadaniaSocial,IdPertenenciaGrupoComunitario,PertenenciaGrupoComunitarioEspecificar,IndiceInclusionSocialPersona,Estado) 
			  VALUES  (@Identificador,@IdProductor,@Nombre,@IdParentezco,@Sexo,@Edad,@TieneAlgunaDiscapacidadOEnfermedadGrave,@Ocupacion,@IdCondicionLaboral,@SeguridadTrabajaTodoElAnno,@SeguridadTrabajaEntre48Y40Horas,@SeguridadCotizaALaCaja,
              @SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales,@SeguridadPercibeSuEmpleoComoSeguro,@IndiceSeguridad,@IdSituacionAutoEmpleo,@IndiceInsercionLaboral,@IdSabeLeerYEscribir,@IdNivelEscolar,@IndiceNivelEducativo,@IdCondicionAseguramiento,
			  @IndiceCiudadaniaSocial,@IdPertenenciaGrupoComunitario,@PertenenciaGrupoComunitarioEspecificar,@IndiceInclusionSocialPersona,@Estado)
          END

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
    COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
		 COMMIT TRAN [PRODUCTORTRACK];
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH


END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorProyecto ]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarProductorProyecto ] 
       (
	        @IdProductorProyecto INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
	    	@IdProyecto INT,
			@EstatusIntegracion BIT,
			@FechaIntegracion DATETIME,
			@FechaSalida DATETIME,
			@RazonSalida VARCHAR(500),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

            IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador) END;
			IF (@IdProyecto = 0) BEGIN SET @IdProyecto = null END ;
			IF (LEN(@RazonSalida) = 0) BEGIN SET @RazonSalida = null END ;
 
    INSERT INTO ProductorProyectoTrack (Identificador,IdProductor,IdProyecto,EstatusIntegracion,FechaIntegracion,FechaSalida,RazonSalida,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
            VALUES  (@Identificador,@IdProductor,@IdProyecto,@EstatusIntegracion,@FechaIntegracion,@FechaSalida,@RazonSalida,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
            
 
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	 BEGIN TRAN [PRODUCTOR] 

            UPDATE ProductorProyecto SET
	    	IdProyecto = @IdProyecto ,
			EstatusIntegracion = @EstatusIntegracion ,
			FechaIntegracion = @FechaIntegracion ,
			FechaSalida = @FechaSalida ,
			RazonSalida = @RazonSalida ,
			Estado = @Estado
		    WHERE Identificador = @Identificador AND IdProductorProyecto = @IdProductorProyecto;

  SAVE TRAN [PRODUCTOR];
  COMMIT TRAN [PRODUCTORTRACK];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTORTRACK];
        COMMIT TRAN [PRODUCTOR];
   END CATCH


END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarSyncEstado]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ActualizarSyncEstado]
(
 @Version UNIQUEIDENTIFIER ,
 @Estado VARCHAR(50)
)
AS
BEGIN

SET NOCOUNT ON;

 UPDATE SyncTransaccion 
                SET Estado = UPPER(@Estado)
                                            WHERE Version = @Version ;


END;
GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteCodigoFloraNueva]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteCodigoFloraNueva]
(
  @CodigoFloraNueva VARCHAR(50)
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [CodigoFloraNueva]

	                       SELECT IdProductor FROM Productor WHERE CodigoFloraNueva = @CodigoFloraNueva ;

             COMMIT TRAN [CodigoFloraNueva]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteIdentificador]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteIdentificador]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdProductor FROM Productor WHERE Identificador = @Identificador;

             COMMIT TRAN [Identificador]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteIdentificadorAbejasNativasVisitaGrupal]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteIdentificadorAbejasNativasVisitaGrupal]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdAbejasNativasVisitaGrupal FROM AbejasNativasVisitaGrupal WHERE Identificador = @Identificador;

             COMMIT TRAN [Identificador]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteIdentificadorGenerico]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_ExisteIdentificadorGenerico]  
 (
   @SQL  NVARCHAR (MAX)
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [SELECCIONARREGISTRO]
                                              EXEC sp_executesql  @SQL
                       COMMIT TRAN [SELECCIONARREGISTRO] 
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteIdentificadorMeliponarioCaja]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteIdentificadorMeliponarioCaja]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdMeliponarioCaja FROM MeliponarioCaja WHERE Identificador = @Identificador;

             COMMIT TRAN [Identificador]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteIdentificadorMeliponarioCosecha]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteIdentificadorMeliponarioCosecha]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdMeliponarioCosecha FROM MeliponarioCosecha WHERE Identificador = @Identificador;

             COMMIT TRAN [Identificador]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteNumeroCedula]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteNumeroCedula]
(
  @NumeroCedula VARCHAR(50)
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [NumeroCedula]

	                       SELECT IdProductor FROM Productor WHERE NumeroCedula = @NumeroCedula ;

             COMMIT TRAN [Numerocedula]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteProductorEnProyectoActivo]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteProductorEnProyectoActivo]
(
  @Identificador UNIQUEIDENTIFIER,
  @FechaIntegracion DATETIME
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                   SELECT IdProductorProyecto FROM ProductorProyecto WHERE Identificador = @Identificador AND FechaSalida > @FechaIntegracion AND Estado = 'ACTIVO'

             COMMIT TRAN [Identificador]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteSyncIniciada]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteSyncIniciada]

AS
BEGIN

 SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

    DECLARE @CODIGO INT ;
    DECLARE @STATE VARCHAR(50);
	DECLARE @TIEMPO INT;
	DECLARE @NUMERO INT;


BEGIN TRAN;
         BEGIN TRY

		      SET @NUMERO =(SELECT MAX(NUMERO) FROM SyncTransaccion);

              SELECT @STATE = Estado ,  @TIEMPO = DATEDIFF(MINUTE,FECHACREACION,GETDATE()) FROM SyncTransaccion WITH (HOLDLOCK, ROWLOCK)  WHERE NUMERO = @NUMERO
			  IF (@TIEMPO >= 15 AND @STATE ='INICIADO')
	            BEGIN
			    	PRINT @NUMERO
		            DELETE FROM SYNCTRANSACCION WHERE NUMERO = @NUMERO;
					SET @STATE ='TERMINADO'
                END


    If (@STATE = 'INICIADO')
    BEGIN
        SET @CODIGO = - 200;
    END

    ELSE
	   BEGIN
          SET @CODIGO = 200;
	   END

    COMMIT TRAN;
         SELECT @CODIGO;

         END TRY
		 BEGIN CATCH
             SELECT ERROR_NUMBER() AS ErrorNumber,
                    ERROR_SEVERITY() AS ErrorSeverity,
                    ERROR_STATE() AS ErrorState,
                    ERROR_PROCEDURE() AS ErrorProcedure,
                    ERROR_LINE() AS ErrorLine,
                    ERROR_MESSAGE() AS ErrorMessage;
             ROLLBACK TRAN;
         END CATCH;
END


GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteVersionSync]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteVersionSync]
(
  @Version UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Sync]

	                       SELECT Numero FROM SyncTransaccion WHERE Version = @Version;

             COMMIT TRAN [Sync]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertarProductor]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_InsertarProductor] 
       (
            @Identificador UNIQUEIDENTIFIER,
            @IdUsuarioEncuestador INT,
            @FechaEncuesta DATETIME,
            @VisitaALaCasa BIT,
            @IdEstadoDiagnostico INT,
            @Nombres VARCHAR(50),
            @Apellido1 VARCHAR(50),
            @Apellido2 VARCHAR(50),
            @Foto IMAGE,
            @CodigoFloraNueva VARCHAR(50),
            @Sexo BIT,
            @NumeroCedula VARCHAR(50),
            @FechaNacimiento DATETIME,
            @IdEstadoCivil INT,
            @PerteneceAAlgunGrupoEtnico VARCHAR(500),
            @IdPais INT,
			@IdGrupo INT,
            @IdDivisionAdministrativa1  INT,
            @IdDivisionAdministrativa2 INT,
            @IdDivisionAdministrativa3 INT,
            @DivisionAdministrativa4 VARCHAR(250),
            @DireccionExacta VARCHAR(500),
            @IdTerritorio  INT,     
            @GPSLatitud DECIMAL(20,6),
            @GPSLongitud DECIMAL(20,6),
            @Altitud DECIMAL(20,6),
            @ComentariosUbicacion VARCHAR(500),
            @ActividadLaboralPrincipal VARCHAR(500),
            @ActividadLaboralSecundaria VARCHAR(500),
            @IdCategoriaActividadPrincipal INT,
            @IdActividadAgricola INT,
            @TotalPersonasHogar INT,
            @TotalPersonasActivasEconomicamente INT,
            @TotalPersonasDependientes INT,
            @IndiceInsercionLaboralProductor DECIMAL(20,6),
            @IndiceNivelEducativoProductor DECIMAL(20,6),
            @IndiceCiudadaniaSocialProductor DECIMAL(20,6),
            @IndiceInsercionProductivaProductor DECIMAL(20,6),
            @IndiceInclusionSocialProductor DECIMAL(20,6),
            @IndiceInsercionLaboralHogar DECIMAL(20,6),
            @IndiceNivelEducativoHogar DECIMAL(20,6),
            @IndiceCiudadaniaSocialHogar DECIMAL(20,6),
            @IndiceInsercionProductivaHogar DECIMAL(20,6),
            @TasaActividadEconomicaHogar DECIMAL(20,6),
            @IndiceInclusionSocialHogar DECIMAL(20,6),
            @IdFacilidadAccesoComunidad INT,
            @IdFacilidadAccesoVivienda INT,
            @IndiceFacilidadAcceso DECIMAL(20,6),
            @IdTiempoLlegarCentroEducativo INT,
            @IdTiempoLlegarCentroSalud INT,
            @IndiceCercaniaCentrosBasicos DECIMAL(20,6),
            @IdExistenciaTransportePublico INT,
            @IdPosesionMedioTransportePublico INT,
            @EspecificarMediosTransporte VARCHAR(500),
            @IndiceCapacidadDesplazamiento DECIMAL(20,6),
            @IndiceConexionProximidadGeografica DECIMAL(20,6),
            @IdEstructuraGeneracionalHogar INT,
            @OtrosFamiliaresVivenEnLaMismaComunidad BIT,
            @IdUstedConsideraContarConApoyoDeSuFamilia INT,
            @IndiceCercaniaRelacionFamiliar DECIMAL(20,6),
            @IdApoyoVecinosCasoNecesidad INT,
            @IdAmbienteSocialComunidad INT,
            @SeSienteUstedRealmenteParteComunidad BIT,
            @UstedEsUnMiembroActivoDeAlgunGrupo BIT,
            @MiembroActivoEspecificar VARCHAR(500),
            @IndiceCercaniaRelacionComunidad DECIMAL(20,6),
            @IndiceRelacionesSociales DECIMAL(20,6),
            @IndiceGlobalBienestarSocialFamiliar DECIMAL(20,6),
            @IdSuViviendaEs INT,
            @IdLaViviendaEsANombreSuyo INT,
            @LaViviendaEsANombreSuyoEspecificar VARCHAR(500),
            @IdEstadoGeneralViviendaACFN INT,
            @IdEstadoGeneralViviendaProductor INT,
            @CantidadDormitorios INT,
            @HacinamientoPorDormitorios INT,
            @IndiceHacinamiento DECIMAL(20,6),
            @IndiceEstadoVivienda DECIMAL(20,6),
            @IndiceVivienda DECIMAL(20,6),
            @IdFuenteAguaVivienda INT,
            @AccesoALaElectricidad BIT,
            @IndiceServiciosBasicos DECIMAL(20,6),
            @TieneTelefonoResidencial BIT,
            @TieneTelefonoCelular BIT,
            @TieneSennalTelefoniaMovilEnSuCasa BIT,
            @TieneAccesoAInternet BIT,
            @IndiceServiciosComunicacion DECIMAL(20,6),
            @IndiceAccesoAServicios DECIMAL(20,6),
            @RecibeAyudaFinanciera BIT,
            @RecibeAyudaFinancieraEspecificar VARCHAR(500),
            @PresupuestoSuficienteCubrirGastosBasicos BIT,
            @ParaQueNoAlcanzaPresupuestoHogar  VARCHAR(500),
            @IdConLosIngresosUstedEstimaQue INT,
            @MontoMinimoMensualParaVivir DECIMAL(20,6),
            @IdConLaActualSituacionEconomica INT,
            @IdUstedConsideraQueSuHogarEs INT,
            @IndiceNivelVida DECIMAL(20,6),
            @IndiceBienestarEconomicoMaterialHogar DECIMAL(20,6),
            @UstedProduceAlimentosParaSuHogar BIT,
            @GranosBasicos BIT,
            @Hortalizas  BIT,
            @Frutas BIT,
            @AnimalesYSusProductos  BIT,
            @ProductosTransformados  BIT,
            @PlantasAromaticasYMedicinales  BIT,
            @QueProduceParaSuHogarOtros BIT,
            @IdProporcionAutoconsumoAlimentosHogar INT,
            @IdLograProducir INT,
            @IdDondeUstedProduce INT,
            @IdElTamannoDeSuParcelaEs INT,
            @IdAUstedLeGustaria INT,
            @TamannoParcela BIT,
            @ManoObra BIT,
            @FertilidadSuelos BIT,
            @TiempoDisponible BIT,
            @RecursosFinancierosInvertirYTrabajar BIT,
            @RiesgosNaturalesMuyFrecuentes BIT,
            @OtrasLimitantes BIT,
            @NoPoseeTierras BIT,
            @NoPoseeConocimientos BIT,
            @TrabajaEnOtroSectorYNoTieneTiempo BIT,
            @NoLeInteresaPrefiereComprar BIT,
            @ElLugarNoEsAptoParaCultivar BIT,
            @OtrasRazones BIT,
            @IndiceSoberaniaAlimenticia DECIMAL(20,6),
            @FelicidadSuTrabajo DECIMAL(20,6),
            @FelicidadSuSituacionFinanciera DECIMAL(20,6),
            @FelicidadSuEstadoSalud DECIMAL(20,6),
            @FelicidadSuVivienda DECIMAL(20,6),
            @FelicidadSuTiempoLibre DECIMAL(20,6),
            @FelicidadSuFamilia DECIMAL(20,6),
            @FelicidadSuEducacion DECIMAL(20,6),
            @FelicidadElMedioAmbiente DECIMAL(20,6),
            @FelicidadSuVidaSocial DECIMAL(20,6),
            @FelicidadSuParticipacionDentroComunidad DECIMAL(20,6),
            @IndiceFelicidad DECIMAL(20,6),
            @IdFormaJuridicaExplotacion INT,
            @PerteneceAUnaOrganizacionAgropecuaria BIT,
            @NombreOrganizacionAgropecuaria VARCHAR(500),
            @IdTenenciaDeLaTierra INT,
            @ANombreDeQuienEstaElTerreno BIT,
            @SiEsANombreDeOtraPersonaEspecificar VARCHAR(500),
            @EspecificarUbicacionDeLaTierra VARCHAR(500),
            @SuperficieDeLaParcela DECIMAL(20,6),
            @MiniDescripcionDeLaFinca VARCHAR(500),
            @FotoParcela IMAGE,
            @CualEsSuProduccionPrincipal VARCHAR(500),
            @CualesSonLasOtrasProduccionesQueTiene VARCHAR(500),
            @IdAbono INT,
            @IdControlDeMaleza INT,
            @IdPlaguicidas INT,
            @IdOrigenDeLasSemillas INT,
            @IdSistemaRiegoCultivos INT,
            @PoseeUnaCertificacion BIT,
            @CertificacionEspecificar VARCHAR(500),
            @IdCategoriaManejo INT,
            @ComentarioDeManejo VARCHAR(500),
            @ListaMaquinariaDisponibleEnLaFinca VARCHAR(500),
            @IdCategoriaMecanizacion INT,
            @ListaInfraestructuraDisponibleEnLaFinca VARCHAR(500),
            @IdCategoriaInfraestructura INT,
            @RealizaAlgunProcesoTransformacionOValorAgregado BIT,
            @ProcesoTransformacionOValorAgregadoEspecificar VARCHAR(500),
            @IdDestinoDeLaProduccion INT,
            @SiVentaEspecificarCanalesComercializacion VARCHAR(500),
            @IdCategoriaExplotacionAgricola INT,
            @IdOrientacionTecnicoEco INT,
            @ComentarioExplotacionAgricola VARCHAR(500),
            @TieneAbejasSinAguijon BIT,
            @DesdeCuandoLasTiene DATETIME,
            @OtrasEspeciesAbeja VARCHAR(500),
            @DondeYComoObtuvoEsasColmenas VARCHAR(500),
            @ProduceMiel  BIT,
            @ComoCosechaLaMiel VARCHAR(500),
            @IdDestinoMiel INT,
            @DondeSeVendeMielEspecificar  VARCHAR(500),
            @PrecioVentaMiel DECIMAL(20,6),
            @IdDondeColocaLasColmenas INT,
            @DondeSeUbicanLasColmenas VARCHAR(500),
            @DiagnosticoVisualDelMeliponarioYSuEntorno VARCHAR(500),
            @IdPotencialLugarParaTenerAbejas INT,
            @IdRiesgoRoboColmenas INT,
            @FotoMeliponario IMAGE,
            @CualEsSuMotivacionParaTenerLasAbejas  VARCHAR(500),
            @ComoAprendioACriarLasAbejas  VARCHAR(500),
            @IdNivelConocimientoMeliponicultura INT,
            @ComentariosMeliponicultura  VARCHAR(500),
            @QueEsLoQueMejorariaSuCalidadDeVida  VARCHAR(500),
            @CualesSonLosFrenosCalidadDeVida VARCHAR(500),
            @ComoMejorariaSuActividadAgricola  VARCHAR(500),
            @CualesSonLosFrenosActividadAgricola VARCHAR(500),
            @EnQueLeGustariaQueACFNLoPuedaApoyar VARCHAR(500),
            @CualesSon3FortalezasDeSuComunidad VARCHAR(500),
            @CualesSon3PrincipalesProblemasComunidad  VARCHAR(500),
            @QueSolucionesPropondriaMejorarComunidad VARCHAR(500),
            @CualesSonLosFrenosImpidenHacerEsasSoluciones  VARCHAR(500),
            @Fortalezas VARCHAR(500),
            @Debilidades VARCHAR(500),
            @Oportunidades VARCHAR(500),
            @Amenazas VARCHAR(500),
            @ProyectosPotenciales VARCHAR(500),
            @ComentarioGeneral VARCHAR(500),
            @IndicadorBienestarSocialYFamiliarDelHogar DECIMAL(20,6),
            @IndicadorBienestarEconomicoYMaterialDelHogar DECIMAL(20,6),
            @IndicadorSoberaniaAlimenticia DECIMAL(20,6),
            @IndicadorFelicidad DECIMAL(20,6),
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion  DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
   )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

    -- CLAVES FORANEAS
	IF (@IdEstadoDiagnostico = 0)  BEGIN  SET @IdEstadoDiagnostico = null; END
	IF (@IdEstadoCivil = 0)  BEGIN  SET @IdEstadoCivil = null; END
	IF (@IdPais = 0)  BEGIN  SET @IdPais = null; END
	IF (@IdGrupo = 0)  BEGIN  SET @IdGrupo = null; END
	IF (@IdDivisionAdministrativa1 = 0)  BEGIN  SET @IdDivisionAdministrativa1 = null; END
	IF (@IdDivisionAdministrativa2 = 0)  BEGIN  SET @IdDivisionAdministrativa2 = null; END
	IF (@IdDivisionAdministrativa3 = 0)  BEGIN  SET @IdDivisionAdministrativa3 = null; END
	IF (@IdTerritorio = 0)  BEGIN  SET @IdTerritorio = null; END
	IF (@IdCategoriaActividadPrincipal = 0)  BEGIN  SET @IdCategoriaActividadPrincipal = null; END
	IF (@IdActividadAgricola = 0)  BEGIN  SET @IdActividadAgricola = null; END
	IF (@IdFacilidadAccesoComunidad  = 0)  BEGIN  SET @IdFacilidadAccesoComunidad  = null; END
	IF (@IdFacilidadAccesoVivienda = 0)  BEGIN  SET @IdFacilidadAccesoVivienda = null; END
	IF (@IdTiempoLlegarCentroEducativo = 0)  BEGIN  SET @IdTiempoLlegarCentroEducativo = null; END
	IF (@IdTiempoLlegarCentroSalud = 0)  BEGIN  SET @IdTiempoLlegarCentroSalud = null; END
	IF (@IdExistenciaTransportePublico = 0)  BEGIN  SET @IdExistenciaTransportePublico = null; END
	IF (@IdPosesionMedioTransportePublico = 0)  BEGIN  SET @IdPosesionMedioTransportePublico = null; END
	IF (@IdEstructuraGeneracionalHogar = 0)  BEGIN  SET @IdEstructuraGeneracionalHogar = null; END
	IF (@IdUstedConsideraContarConApoyoDeSuFamilia = 0)  BEGIN  SET @IdUstedConsideraContarConApoyoDeSuFamilia = null; END
	IF (@IdApoyoVecinosCasoNecesidad = 0)  BEGIN  SET @IdApoyoVecinosCasoNecesidad = null; END
	IF (@IdAmbienteSocialComunidad = 0)  BEGIN  SET @IdAmbienteSocialComunidad = null; END
	IF (@IdSuViviendaEs = 0)  BEGIN  SET @IdSuViviendaEs = null; END
	IF (@IdLaViviendaEsANombreSuyo = 0)  BEGIN  SET @IdLaViviendaEsANombreSuyo = null; END
	IF (@IdEstadoGeneralViviendaACFN = 0)  BEGIN  SET @IdEstadoGeneralViviendaACFN = null; END
    IF (@IdEstadoGeneralViviendaProductor = 0)  BEGIN  SET @IdEstadoGeneralViviendaProductor = null; END
	IF (@IdFuenteAguaVivienda  = 0)  BEGIN  SET @IdFuenteAguaVivienda  = null; END
	IF (@IdConLosIngresosUstedEstimaQue  = 0)  BEGIN  SET @IdConLosIngresosUstedEstimaQue  = null; END
	IF (@IdConLaActualSituacionEconomica  = 0)  BEGIN  SET @IdConLaActualSituacionEconomica  = null; END
    IF (@IdUstedConsideraQueSuHogarEs  = 0)  BEGIN  SET @IdUstedConsideraQueSuHogarEs  = null; END
	IF (@IdProporcionAutoconsumoAlimentosHogar  = 0)  BEGIN  SET @IdProporcionAutoconsumoAlimentosHogar  = null; END
	IF (@IdLograProducir  = 0)  BEGIN  SET @IdLograProducir  = null; END
	IF (@IdDondeUstedProduce = 0)  BEGIN  SET @IdDondeUstedProduce  = null; END
    IF (@IdElTamannoDeSuParcelaEs  = 0)  BEGIN  SET @IdElTamannoDeSuParcelaEs = null; END
	IF (@IdAUstedLeGustaria  = 0)  BEGIN  SET @IdAUstedLeGustaria  = null; END
    IF (@IdFormaJuridicaExplotacion  = 0)  BEGIN  SET @IdFormaJuridicaExplotacion  = null; END
	IF (@IdTenenciaDeLaTierra  = 0)  BEGIN  SET @IdTenenciaDeLaTierra  = null; END
	IF (@IdAbono  = 0)  BEGIN  SET @IdAbono  = null; END
	IF (@IdControlDeMaleza  = 0)  BEGIN  SET @IdControlDeMaleza  = null; END
	IF (@IdPlaguicidas  = 0)  BEGIN  SET @IdPlaguicidas  = null; END
	IF (@IdOrigenDeLasSemillas  = 0)  BEGIN  SET @IdOrigenDeLasSemillas  = null; END
	IF (@IdSistemaRiegoCultivos  = 0)  BEGIN  SET @IdSistemaRiegoCultivos  = null; END
	IF (@IdCategoriaManejo  = 0)  BEGIN  SET @IdCategoriaManejo = null; END
	IF (@IdCategoriaMecanizacion  = 0)  BEGIN  SET @IdCategoriaMecanizacion = null; END
	IF (@IdCategoriaInfraestructura  = 0)  BEGIN  SET @IdCategoriaInfraestructura  = null; END
	IF (@IdDestinoDeLaProduccion  = 0)  BEGIN  SET @IdDestinoDeLaProduccion  = null; END
	IF (@IdCategoriaExplotacionAgricola  = 0)  BEGIN  SET @IdCategoriaExplotacionAgricola  = null; END
	IF (@IdOrientacionTecnicoEco  = 0)  BEGIN  SET @IdOrientacionTecnicoEco  = null; END
	IF (@IdDestinoMiel  = 0)  BEGIN  SET @IdDestinoMiel  = null; END
	IF (@IdDondeColocaLasColmenas  = 0)  BEGIN  SET @IdDondeColocaLasColmenas  = null; END
	IF (@IdPotencialLugarParaTenerAbejas  = 0)  BEGIN  SET @IdPotencialLugarParaTenerAbejas  = null; END
	IF (@IdRiesgoRoboColmenas  = 0)  BEGIN  SET @IdRiesgoRoboColmenas  = null; END
	IF (@IdNivelConocimientoMeliponicultura  = 0)  BEGIN  SET @IdNivelConocimientoMeliponicultura  = null; END
	
	-- TIPO VARCHAR
	IF (LEN(@CodigoFloranueva) = 0) BEGIN SET @CodigoFloraNueva = NULL; END
	IF (LEN(@PerteneceAAlgunGrupoEtnico) = 0) BEGIN SET @PerteneceAAlgunGrupoEtnico = NULL; END
	IF (LEN(@DivisionAdministrativa4) = 0) BEGIN SET @DivisionAdministrativa4 = NULL; END
	IF (LEN(@DireccionExacta) = 0 ) BEGIN SET @DireccionExacta = NULL; END
	IF (LEN(@ComentariosUbicacion ) = 0 )BEGIN SET @ComentariosUbicacion  = NULL; END
	IF (LEN(@ActividadLaboralPrincipal) = 0) BEGIN SET @ActividadLaboralPrincipal = NULL; END
	IF (LEN(@ActividadLaboralSecundaria) = 0) BEGIN SET @ActividadLaboralSecundaria = NULL; END
	IF (LEN(@EspecificarMediosTransporte) = 0 ) BEGIN SET @EspecificarMediosTransporte = NULL; END
	IF (LEN(@MiembroActivoEspecificar) = 0 ) BEGIN SET @MiembroActivoEspecificar = NULL; END
	IF (LEN(@LaViviendaEsANombreSuyoEspecificar) = 0) BEGIN SET @LaViviendaEsANombreSuyoEspecificar = NULL; END
	IF (LEN(@RecibeAyudaFinancieraEspecificar) = 0) BEGIN SET @RecibeAyudaFinancieraEspecificar = NULL; END
	IF (LEN(@ParaQueNoAlcanzaPresupuestoHogar) = 0) BEGIN SET @ParaQueNoAlcanzaPresupuestoHogar = NULL; END
    IF (LEN(@NombreOrganizacionAgropecuaria) = 0) BEGIN SET @NombreOrganizacionAgropecuaria= NULL; END
    IF (LEN(@SiEsANombreDeOtraPersonaEspecificar) = 0) BEGIN SET @SiEsANombreDeOtraPersonaEspecificar = NULL; END
    IF (LEN(@EspecificarUbicacionDeLaTierra ) = 0) BEGIN SET @EspecificarUbicacionDeLaTierra  = NULL; END
    IF (LEN(@MiniDescripcionDeLaFinca) = 0 )BEGIN SET @MiniDescripcionDeLaFinca = NULL; END
    IF (LEN(@CualEsSuProduccionPrincipal) = 0) BEGIN SET @CualEsSuProduccionPrincipal = NULL; END
    IF (LEN(@CualesSonLasOtrasProduccionesQueTiene ) = 0) BEGIN SET @CualesSonLasOtrasProduccionesQueTiene  = NULL; END
	IF (LEN(@CertificacionEspecificar) = 0) BEGIN SET @CertificacionEspecificar = NULL; END
    IF (LEN(@ComentarioDeManejo)) = 0 BEGIN SET @ComentarioDeManejo = NULL; END
    IF (LEN(@ListaMaquinariaDisponibleEnLaFinca ) = 0) BEGIN SET @ListaMaquinariaDisponibleEnLaFinca  = NULL; END
	IF (LEN(@ListaInfraestructuraDisponibleEnLaFinca ) = 0) BEGIN SET @ListaInfraestructuraDisponibleEnLaFinca = NULL; END
    IF (LEN(@ProcesoTransformacionOValorAgregadoEspecificar) = 0) BEGIN SET @ProcesoTransformacionOValorAgregadoEspecificar = NULL; END
    IF (LEN(@SiVentaEspecificarCanalesComercializacion) = 0) BEGIN SET @SiVentaEspecificarCanalesComercializacion = NULL; END
    IF (LEN(@ComentarioExplotacionAgricola ) = 0) BEGIN SET @ComentarioExplotacionAgricola  = NULL; END
	IF (LEN(@OtrasEspeciesAbeja) = 0)BEGIN SET @OtrasEspeciesAbeja = NULL; END
    IF (LEN(@DondeYComoObtuvoEsasColmenas ) = 0) BEGIN SET @DondeYComoObtuvoEsasColmenas  = NULL; END
    IF (LEN(@ComoCosechaLaMiel ) = 0) BEGIN SET @ComoCosechaLaMiel = NULL; END 
	IF (LEN(@DondeSeVendeMielEspecificar) = 0) BEGIN SET @DondeSeVendeMielEspecificar = NULL; END
    IF (LEN(@DondeSeUbicanLasColmenas) = 0) BEGIN SET @DondeSeUbicanLasColmenas = NULL; END
	IF (LEN(@DiagnosticoVisualDelMeliponarioYSuEntorno  ) = 0) BEGIN SET @DiagnosticoVisualDelMeliponarioYSuEntorno   = NULL; END
    IF (LEN(@CualEsSuMotivacionParaTenerLasAbejas) = 0) BEGIN SET @CualEsSuMotivacionParaTenerLasAbejas = NULL; END 
	IF (LEN(@ComoAprendioACriarLasAbejas) = 0) BEGIN SET @ComoAprendioACriarLasAbejas = NULL; END
    IF (LEN(@ComentariosMeliponicultura ) = 0) BEGIN SET @ComentariosMeliponicultura = NULL; END
	IF (LEN(@QueEsLoQueMejorariaSuCalidadDeVida ) = 0) BEGIN SET @QueEsLoQueMejorariaSuCalidadDeVida = NULL; END
    IF (LEN(@CualesSonLosFrenosCalidadDeVida ) = 0) BEGIN SET @CualesSonLosFrenosCalidadDeVida  = NULL; END
    IF (LEN(@ComoMejorariaSuActividadAgricola ) = 0) BEGIN SET @ComoMejorariaSuActividadAgricola = NULL; END 
	IF (LEN(@CualesSonLosFrenosActividadAgricola) = 0) BEGIN SET @CualesSonLosFrenosActividadAgricola = NULL; END
    IF (LEN(@EnQueLeGustariaQueACFNLoPuedaApoyar) = 0) BEGIN SET @EnQueLeGustariaQueACFNLoPuedaApoyar = NULL; END
	IF (LEN(@CualesSon3FortalezasDeSuComunidad  ) = 0) BEGIN SET @CualesSon3FortalezasDeSuComunidad = NULL; END
    IF (LEN(@CualesSon3PrincipalesProblemasComunidad) = 0) BEGIN SET @CualesSon3PrincipalesProblemasComunidad = NULL; END 
	IF (LEN(@QueSolucionesPropondriaMejorarComunidad) = 0) BEGIN SET @QueSolucionesPropondriaMejorarComunidad = NULL; END
    IF (LEN(@CualesSonLosFrenosImpidenHacerEsasSoluciones ) = 0) BEGIN SET @CualesSonLosFrenosImpidenHacerEsasSoluciones = NULL; END
	IF (LEN(@Fortalezas ) = 0) BEGIN SET @Fortalezas = NULL; END 
	IF (LEN(@Debilidades) = 0) BEGIN SET @Debilidades = NULL; END
    IF (LEN(@Oportunidades) = 0) BEGIN SET @Oportunidades = NULL; END
	IF (LEN(@Amenazas  ) = 0) BEGIN SET @Amenazas = NULL; END
    IF (LEN(@ProyectosPotenciales) = 0) BEGIN SET @ProyectosPotenciales = NULL; END 
	IF (LEN(@ComentarioGeneral) = 0) BEGIN SET @ComentarioGeneral = NULL; END

	
   INSERT INTO  ProductorTrack 
   (
            Identificador, 
            IdUsuarioEncuestador ,
            FechaEncuesta ,
            VisitaALaCasa ,
            IdEstadoDiagnostico ,
            Nombres ,
            Apellido1 ,
            Apellido2 ,
            Foto ,
            CodigoFloraNueva ,
            Sexo ,
            NumeroCedula ,
            FechaNacimiento ,
            IdEstadoCivil ,
            PerteneceAAlgunGrupoEtnico ,
            IdPais ,
			IdGrupo,
            IdDivisionAdministrativa1  ,
            IdDivisionAdministrativa2  ,
            IdDivisionAdministrativa3 ,
            DivisionAdministrativa4 ,
            DireccionExacta ,
            IdTerritorio ,     
            GPSLatitud ,
            GPSLongitud ,
            Altitud ,
            ComentariosUbicacion ,
            ActividadLaboralPrincipal ,
            ActividadLaboralSecundaria ,
            IdCategoriaActividadPrincipal ,
            IdActividadAgricola ,
            TotalPersonasHogar ,
            TotalPersonasActivasEconomicamente ,
            TotalPersonasDependientes ,
            IndiceInsercionLaboralProductor ,
            IndiceNivelEducativoProductor ,
            IndiceCiudadaniaSocialProductor ,
            IndiceInsercionProductivaProductor ,
            IndiceInclusionSocialProductor ,
            IndiceInsercionLaboralHogar ,
            IndiceNivelEducativoHogar ,
            IndiceCiudadaniaSocialHogar,
            IndiceInsercionProductivaHogar ,
            TasaActividadEconomicaHogar ,
            IndiceInclusionSocialHogar ,
            IdFacilidadAccesoComunidad ,
            IdFacilidadAccesoVivienda ,
            IndiceFacilidadAcceso ,
            IdTiempoLlegarCentroEducativo ,
            IdTiempoLlegarCentroSalud ,
            IndiceCercaniaCentrosBasicos ,
            IdExistenciaTransportePublico ,
            IdPosesionMedioTransportePublico ,
            EspecificarMediosTransporte ,
            IndiceCapacidadDesplazamiento ,
            IndiceConexionProximidadGeografica ,
            IdEstructuraGeneracionalHogar ,
            OtrosFamiliaresVivenEnLaMismaComunidad ,
            IdUstedConsideraContarConApoyoDeSuFamilia ,
            IndiceCercaniaRelacionFamiliar ,
            IdApoyoVecinosCasoNecesidad ,
            IdAmbienteSocialComunidad ,
            SeSienteUstedRealmenteParteComunidad ,
            UstedEsUnMiembroActivoDeAlgunGrupo ,
            MiembroActivoEspecificar ,
            IndiceCercaniaRelacionComunidad ,
            IndiceRelacionesSociales ,
            IndiceGlobalBienestarSocialFamiliar ,
            IdSuViviendaEs ,
            IdLaViviendaEsANombreSuyo ,
            LaViviendaEsANombreSuyoEspecificar ,
            IdEstadoGeneralViviendaACFN ,
            IdEstadoGeneralViviendaProductor ,
            CantidadDormitorios ,
            HacinamientoPorDormitorios ,
            IndiceHacinamiento ,
            IndiceEstadoVivienda ,
            IndiceVivienda ,
            IdFuenteAguaVivienda ,
            AccesoALaElectricidad ,
            IndiceServiciosBasicos ,
            TieneTelefonoResidencial ,
            TieneTelefonoCelular ,
            TieneSennalTelefoniaMovilEnSuCasa ,
            TieneAccesoAInternet ,
            IndiceServiciosComunicacion ,
            IndiceAccesoAServicios ,
            RecibeAyudaFinanciera ,
            RecibeAyudaFinancieraEspecificar ,
            PresupuestoSuficienteCubrirGastosBasicos ,
            ParaQueNoAlcanzaPresupuestoHogar  ,
            IdConLosIngresosUstedEstimaQue ,
            MontoMinimoMensualParaVivir ,
            IdConLaActualSituacionEconomica ,
            IdUstedConsideraQueSuHogarEs ,
            IndiceNivelVida ,
            IndiceBienestarEconomicoMaterialHogar ,
            UstedProduceAlimentosParaSuHogar ,
            GranosBasicos ,
            Hortalizas  ,
            Frutas ,
            AnimalesYSusProductos  ,
            ProductosTransformados  ,
            PlantasAromaticasYMedicinales  ,
            QueProduceParaSuHogarOtros ,
            IdProporcionAutoconsumoAlimentosHogar ,
            IdLograProducir ,
            IdDondeUstedProduce ,
            IdElTamannoDeSuParcelaEs ,
            IdAUstedLeGustaria ,
            TamannoParcela ,
            ManoObra ,
            FertilidadSuelos ,
            TiempoDisponible ,
            RecursosFinancierosInvertirYTrabajar ,
            RiesgosNaturalesMuyFrecuentes ,
            OtrasLimitantes ,
            NoPoseeTierras ,
            NoPoseeConocimientos ,
            TrabajaEnOtroSectorYNoTieneTiempo ,
            NoLeInteresaPrefiereComprar ,
            ElLugarNoEsAptoParaCultivar ,
            OtrasRazones ,
            IndiceSoberaniaAlimenticia ,
            FelicidadSuTrabajo ,
            FelicidadSuSituacionFinanciera ,
            FelicidadSuEstadoSalud ,
            FelicidadSuVivienda ,
            FelicidadSuTiempoLibre ,
            FelicidadSuFamilia ,
            FelicidadSuEducacion ,
            FelicidadElMedioAmbiente ,
            FelicidadSuVidaSocial ,
            FelicidadSuParticipacionDentroComunidad ,
            IndiceFelicidad ,
            IdFormaJuridicaExplotacion ,
            PerteneceAUnaOrganizacionAgropecuaria ,
            NombreOrganizacionAgropecuaria ,
            IdTenenciaDeLaTierra ,
            ANombreDeQuienEstaElTerreno ,
            SiEsANombreDeOtraPersonaEspecificar ,
            EspecificarUbicacionDeLaTierra ,
            SuperficieDeLaParcela ,
            MiniDescripcionDeLaFinca ,
            FotoParcela ,
            CualEsSuProduccionPrincipal ,
            CualesSonLasOtrasProduccionesQueTiene ,
            IdAbono ,
            IdControlDeMaleza ,
            IdPlaguicidas ,
            IdOrigenDeLasSemillas ,
            IdSistemaRiegoCultivos ,
            PoseeUnaCertificacion ,
            CertificacionEspecificar ,
            IdCategoriaManejo ,
            ComentarioDeManejo ,
            ListaMaquinariaDisponibleEnLaFinca ,
            IdCategoriaMecanizacion ,
            ListaInfraestructuraDisponibleEnLaFinca ,
            IdCategoriaInfraestructura ,
            RealizaAlgunProcesoTransformacionOValorAgregado ,
            ProcesoTransformacionOValorAgregadoEspecificar ,
            IdDestinoDeLaProduccion ,
            SiVentaEspecificarCanalesComercializacion ,
            IdCategoriaExplotacionAgricola ,
            IdOrientacionTecnicoEco ,
            ComentarioExplotacionAgricola ,
            TieneAbejasSinAguijon ,
            DesdeCuandoLasTiene ,
            OtrasEspeciesAbeja ,
            DondeYComoObtuvoEsasColmenas ,
            ProduceMiel  ,
            ComoCosechaLaMiel ,
            IdDestinoMiel ,
            DondeSeVendeMielEspecificar  ,
            PrecioVentaMiel ,
            IdDondeColocaLasColmenas ,
            DondeSeUbicanLasColmenas ,
            DiagnosticoVisualDelMeliponarioYSuEntorno ,
            IdPotencialLugarParaTenerAbejas ,
            IdRiesgoRoboColmenas,
            FotoMeliponario ,
            CualEsSuMotivacionParaTenerLasAbejas  ,
            ComoAprendioACriarLasAbejas  ,
            IdNivelConocimientoMeliponicultura ,
            ComentariosMeliponicultura  ,
            QueEsLoQueMejorariaSuCalidadDeVida  ,
            CualesSonLosFrenosCalidadDeVida ,
            ComoMejorariaSuActividadAgricola  ,
            CualesSonLosFrenosActividadAgricola ,
            EnQueLeGustariaQueACFNLoPuedaApoyar ,
            CualesSon3FortalezasDeSuComunidad ,
            CualesSon3PrincipalesProblemasComunidad  ,
            QueSolucionesPropondriaMejorarComunidad ,
            CualesSonLosFrenosImpidenHacerEsasSoluciones  ,
            Fortalezas ,
            Debilidades ,
            Oportunidades ,
            Amenazas ,
            ProyectosPotenciales ,
            ComentarioGeneral ,
            IndicadorBienestarSocialYFamiliarDelHogar ,
            IndicadorBienestarEconomicoYMaterialDelHogar ,
            IndicadorSoberaniaAlimenticia ,
            IndicadorFelicidad ,
            Estado ,
            Usuario ,
            Dispositivo ,
            FechaCreacion ,
            FechaCreacionUtc ,
            FechaModificacion  ,
            FechaModificacionUtc ,
            Transaccion 
   ) 
    VALUES 
   (
            @Identificador, 
            @IdUsuarioEncuestador ,
            @FechaEncuesta ,
            @VisitaALaCasa ,
            @IdEstadoDiagnostico ,
            @Nombres ,
            @Apellido1 ,
            @Apellido2 ,
            @Foto ,
            @CodigoFloraNueva ,
            @Sexo ,
            @NumeroCedula ,
            @FechaNacimiento ,
            @IdEstadoCivil ,
            @PerteneceAAlgunGrupoEtnico ,
            @IdPais ,
			@IdGrupo,
            @IdDivisionAdministrativa1  ,
            @IdDivisionAdministrativa2  ,
            @IdDivisionAdministrativa3 ,
            @DivisionAdministrativa4 ,
            @DireccionExacta ,
            @IdTerritorio ,     
            @GPSLatitud ,
            @GPSLongitud ,
            @Altitud ,
            @ComentariosUbicacion ,
            @ActividadLaboralPrincipal ,
            @ActividadLaboralSecundaria ,
            @IdCategoriaActividadPrincipal ,
            @IdActividadAgricola ,
            @TotalPersonasHogar ,
            @TotalPersonasActivasEconomicamente ,
            @TotalPersonasDependientes ,
            @IndiceInsercionLaboralProductor ,
            @IndiceNivelEducativoProductor ,
            @IndiceCiudadaniaSocialProductor ,
            @IndiceInsercionProductivaProductor ,
            @IndiceInclusionSocialProductor ,
            @IndiceInsercionLaboralHogar ,
            @IndiceNivelEducativoHogar ,
            @IndiceCiudadaniaSocialHogar,
            @IndiceInsercionProductivaHogar ,
            @TasaActividadEconomicaHogar ,
            @IndiceInclusionSocialHogar ,
            @IdFacilidadAccesoComunidad ,
            @IdFacilidadAccesoVivienda ,
            @IndiceFacilidadAcceso ,
            @IdTiempoLlegarCentroEducativo ,
            @IdTiempoLlegarCentroSalud ,
            @IndiceCercaniaCentrosBasicos ,
            @IdExistenciaTransportePublico ,
            @IdPosesionMedioTransportePublico ,
            @EspecificarMediosTransporte ,
            @IndiceCapacidadDesplazamiento ,
            @IndiceConexionProximidadGeografica ,
            @IdEstructuraGeneracionalHogar ,
            @OtrosFamiliaresVivenEnLaMismaComunidad ,
            @IdUstedConsideraContarConApoyoDeSuFamilia ,
            @IndiceCercaniaRelacionFamiliar ,
            @IdApoyoVecinosCasoNecesidad ,
            @IdAmbienteSocialComunidad ,
            @SeSienteUstedRealmenteParteComunidad ,
            @UstedEsUnMiembroActivoDeAlgunGrupo ,
            @MiembroActivoEspecificar ,
            @IndiceCercaniaRelacionComunidad ,
            @IndiceRelacionesSociales ,
            @IndiceGlobalBienestarSocialFamiliar ,
            @IdSuViviendaEs ,
            @IdLaViviendaEsANombreSuyo ,
            @LaViviendaEsANombreSuyoEspecificar ,
            @IdEstadoGeneralViviendaACFN ,
            @IdEstadoGeneralViviendaProductor ,
            @CantidadDormitorios ,
            @HacinamientoPorDormitorios ,
            @IndiceHacinamiento ,
            @IndiceEstadoVivienda ,
            @IndiceVivienda ,
            @IdFuenteAguaVivienda ,
            @AccesoALaElectricidad ,
            @IndiceServiciosBasicos ,
            @TieneTelefonoResidencial ,
            @TieneTelefonoCelular ,
            @TieneSennalTelefoniaMovilEnSuCasa ,
            @TieneAccesoAInternet ,
            @IndiceServiciosComunicacion ,
            @IndiceAccesoAServicios ,
            @RecibeAyudaFinanciera ,
            @RecibeAyudaFinancieraEspecificar ,
            @PresupuestoSuficienteCubrirGastosBasicos ,
            @ParaQueNoAlcanzaPresupuestoHogar  ,
            @IdConLosIngresosUstedEstimaQue ,
            @MontoMinimoMensualParaVivir ,
            @IdConLaActualSituacionEconomica ,
            @IdUstedConsideraQueSuHogarEs ,
            @IndiceNivelVida ,
            @IndiceBienestarEconomicoMaterialHogar ,
            @UstedProduceAlimentosParaSuHogar ,
            @GranosBasicos ,
            @Hortalizas  ,
            @Frutas ,
            @AnimalesYSusProductos  ,
            @ProductosTransformados  ,
            @PlantasAromaticasYMedicinales  ,
            @QueProduceParaSuHogarOtros ,
            @IdProporcionAutoconsumoAlimentosHogar ,
            @IdLograProducir ,
            @IdDondeUstedProduce ,
            @IdElTamannoDeSuParcelaEs ,
            @IdAUstedLeGustaria ,
            @TamannoParcela ,
            @ManoObra ,
            @FertilidadSuelos ,
            @TiempoDisponible ,
            @RecursosFinancierosInvertirYTrabajar ,
            @RiesgosNaturalesMuyFrecuentes ,
            @OtrasLimitantes ,
            @NoPoseeTierras ,
            @NoPoseeConocimientos ,
            @TrabajaEnOtroSectorYNoTieneTiempo ,
            @NoLeInteresaPrefiereComprar ,
            @ElLugarNoEsAptoParaCultivar ,
            @OtrasRazones ,
            @IndiceSoberaniaAlimenticia ,
            @FelicidadSuTrabajo ,
            @FelicidadSuSituacionFinanciera ,
            @FelicidadSuEstadoSalud ,
            @FelicidadSuVivienda ,
            @FelicidadSuTiempoLibre ,
            @FelicidadSuFamilia ,
            @FelicidadSuEducacion ,
            @FelicidadElMedioAmbiente ,
            @FelicidadSuVidaSocial ,
            @FelicidadSuParticipacionDentroComunidad ,
            @IndiceFelicidad ,
            @IdFormaJuridicaExplotacion ,
            @PerteneceAUnaOrganizacionAgropecuaria ,
            @NombreOrganizacionAgropecuaria ,
            @IdTenenciaDeLaTierra ,
            @ANombreDeQuienEstaElTerreno ,
            @SiEsANombreDeOtraPersonaEspecificar ,
            @EspecificarUbicacionDeLaTierra ,
            @SuperficieDeLaParcela ,
            @MiniDescripcionDeLaFinca ,
            @FotoParcela ,
            @CualEsSuProduccionPrincipal ,
            @CualesSonLasOtrasProduccionesQueTiene ,
            @IdAbono ,
            @IdControlDeMaleza ,
            @IdPlaguicidas ,
            @IdOrigenDeLasSemillas ,
            @IdSistemaRiegoCultivos ,
            @PoseeUnaCertificacion ,
            @CertificacionEspecificar ,
            @IdCategoriaManejo ,
            @ComentarioDeManejo ,
            @ListaMaquinariaDisponibleEnLaFinca ,
            @IdCategoriaMecanizacion ,
            @ListaInfraestructuraDisponibleEnLaFinca ,
            @IdCategoriaInfraestructura ,
            @RealizaAlgunProcesoTransformacionOValorAgregado ,
            @ProcesoTransformacionOValorAgregadoEspecificar ,
            @IdDestinoDeLaProduccion ,
            @SiVentaEspecificarCanalesComercializacion ,
            @IdCategoriaExplotacionAgricola ,
            @IdOrientacionTecnicoEco ,
            @ComentarioExplotacionAgricola ,
            @TieneAbejasSinAguijon ,
            @DesdeCuandoLasTiene ,
            @OtrasEspeciesAbeja ,
            @DondeYComoObtuvoEsasColmenas ,
            @ProduceMiel  ,
            @ComoCosechaLaMiel ,
            @IdDestinoMiel ,
            @DondeSeVendeMielEspecificar  ,
            @PrecioVentaMiel ,
            @IdDondeColocaLasColmenas ,
            @DondeSeUbicanLasColmenas ,
            @DiagnosticoVisualDelMeliponarioYSuEntorno ,
            @IdPotencialLugarParaTenerAbejas ,
            @IdRiesgoRoboColmenas ,
            @FotoMeliponario ,
            @CualEsSuMotivacionParaTenerLasAbejas  ,
            @ComoAprendioACriarLasAbejas  ,
            @IdNivelConocimientoMeliponicultura ,
            @ComentariosMeliponicultura  ,
            @QueEsLoQueMejorariaSuCalidadDeVida  ,
            @CualesSonLosFrenosCalidadDeVida ,
            @ComoMejorariaSuActividadAgricola  ,
            @CualesSonLosFrenosActividadAgricola ,
            @EnQueLeGustariaQueACFNLoPuedaApoyar ,
            @CualesSon3FortalezasDeSuComunidad ,
            @CualesSon3PrincipalesProblemasComunidad  ,
            @QueSolucionesPropondriaMejorarComunidad ,
            @CualesSonLosFrenosImpidenHacerEsasSoluciones  ,
            @Fortalezas ,
            @Debilidades ,
            @Oportunidades ,
            @Amenazas ,
            @ProyectosPotenciales ,
            @ComentarioGeneral ,
            @IndicadorBienestarSocialYFamiliarDelHogar ,
            @IndicadorBienestarEconomicoYMaterialDelHogar ,
            @IndicadorSoberaniaAlimenticia ,
            @IndicadorFelicidad ,
            @Estado ,
            @Usuario ,
            @Dispositivo ,
            @FechaCreacion ,
            @FechaCreacionUtc ,
            @FechaModificacion  ,
            @FechaModificacionUtc ,
            @Transaccion 
   )

    SAVE TRAN [PRODUCTORTRACK]
    SET @TRANCOUNTER = 1
    BEGIN TRAN [PRODUCTOR]

  INSERT INTO Productor 
   (
            Identificador, 
            IdUsuarioEncuestador ,
            FechaEncuesta ,
            VisitaALaCasa ,
            IdEstadoDiagnostico ,
            Nombres ,
            Apellido1 ,
            Apellido2 ,
            Foto ,
            CodigoFloraNueva ,
            Sexo ,
            NumeroCedula ,
            FechaNacimiento ,
            IdEstadoCivil ,
            PerteneceAAlgunGrupoEtnico ,
            IdPais ,
			IdGrupo,
            IdDivisionAdministrativa1  ,
            IdDivisionAdministrativa2  ,
            IdDivisionAdministrativa3 ,
            DivisionAdministrativa4 ,
            DireccionExacta ,
            IdTerritorio ,     
            GPSLatitud ,
            GPSLongitud ,
            Altitud ,
            ComentariosUbicacion ,
            ActividadLaboralPrincipal ,
            ActividadLaboralSecundaria ,
            IdCategoriaActividadPrincipal ,
            IdActividadAgricola ,
            TotalPersonasHogar ,
            TotalPersonasActivasEconomicamente ,
            TotalPersonasDependientes ,
            IndiceInsercionLaboralProductor ,
            IndiceNivelEducativoProductor ,
            IndiceCiudadaniaSocialProductor ,
            IndiceInsercionProductivaProductor ,
            IndiceInclusionSocialProductor ,
            IndiceInsercionLaboralHogar ,
            IndiceNivelEducativoHogar ,
            IndiceCiudadaniaSocialHogar,
            IndiceInsercionProductivaHogar ,
            TasaActividadEconomicaHogar ,
            IndiceInclusionSocialHogar ,
            IdFacilidadAccesoComunidad ,
            IdFacilidadAccesoVivienda ,
            IndiceFacilidadAcceso ,
            IdTiempoLlegarCentroEducativo ,
            IdTiempoLlegarCentroSalud ,
            IndiceCercaniaCentrosBasicos ,
            IdExistenciaTransportePublico ,
            IdPosesionMedioTransportePublico ,
            EspecificarMediosTransporte ,
            IndiceCapacidadDesplazamiento ,
            IndiceConexionProximidadGeografica ,
            IdEstructuraGeneracionalHogar ,
            OtrosFamiliaresVivenEnLaMismaComunidad ,
            IdUstedConsideraContarConApoyoDeSuFamilia ,
            IndiceCercaniaRelacionFamiliar ,
            IdApoyoVecinosCasoNecesidad ,
            IdAmbienteSocialComunidad ,
            SeSienteUstedRealmenteParteComunidad ,
            UstedEsUnMiembroActivoDeAlgunGrupo ,
            MiembroActivoEspecificar ,
            IndiceCercaniaRelacionComunidad ,
            IndiceRelacionesSociales ,
            IndiceGlobalBienestarSocialFamiliar ,
            IdSuViviendaEs ,
            IdLaViviendaEsANombreSuyo ,
            LaViviendaEsANombreSuyoEspecificar ,
            IdEstadoGeneralViviendaACFN ,
            IdEstadoGeneralViviendaProductor ,
            CantidadDormitorios ,
            HacinamientoPorDormitorios ,
            IndiceHacinamiento ,
            IndiceEstadoVivienda ,
            IndiceVivienda ,
            IdFuenteAguaVivienda ,
            AccesoALaElectricidad ,
            IndiceServiciosBasicos ,
            TieneTelefonoResidencial ,
            TieneTelefonoCelular ,
            TieneSennalTelefoniaMovilEnSuCasa ,
            TieneAccesoAInternet ,
            IndiceServiciosComunicacion ,
            IndiceAccesoAServicios ,
            RecibeAyudaFinanciera ,
            RecibeAyudaFinancieraEspecificar ,
            PresupuestoSuficienteCubrirGastosBasicos ,
            ParaQueNoAlcanzaPresupuestoHogar  ,
            IdConLosIngresosUstedEstimaQue ,
            MontoMinimoMensualParaVivir ,
            IdConLaActualSituacionEconomica ,
            IdUstedConsideraQueSuHogarEs ,
            IndiceNivelVida ,
            IndiceBienestarEconomicoMaterialHogar ,
            UstedProduceAlimentosParaSuHogar ,
            GranosBasicos ,
            Hortalizas  ,
            Frutas ,
            AnimalesYSusProductos  ,
            ProductosTransformados  ,
            PlantasAromaticasYMedicinales  ,
            QueProduceParaSuHogarOtros ,
            IdProporcionAutoconsumoAlimentosHogar ,
            IdLograProducir ,
            IdDondeUstedProduce ,
            IdElTamannoDeSuParcelaEs ,
            IdAUstedLeGustaria ,
            TamannoParcela ,
            ManoObra ,
            FertilidadSuelos ,
            TiempoDisponible ,
            RecursosFinancierosInvertirYTrabajar ,
            RiesgosNaturalesMuyFrecuentes ,
            OtrasLimitantes ,
            NoPoseeTierras ,
            NoPoseeConocimientos ,
            TrabajaEnOtroSectorYNoTieneTiempo ,
            NoLeInteresaPrefiereComprar ,
            ElLugarNoEsAptoParaCultivar ,
            OtrasRazones ,
            IndiceSoberaniaAlimenticia ,
            FelicidadSuTrabajo ,
            FelicidadSuSituacionFinanciera ,
            FelicidadSuEstadoSalud ,
            FelicidadSuVivienda ,
            FelicidadSuTiempoLibre ,
            FelicidadSuFamilia ,
            FelicidadSuEducacion ,
            FelicidadElMedioAmbiente ,
            FelicidadSuVidaSocial ,
            FelicidadSuParticipacionDentroComunidad ,
            IndiceFelicidad ,
            IdFormaJuridicaExplotacion ,
            PerteneceAUnaOrganizacionAgropecuaria ,
            NombreOrganizacionAgropecuaria ,
            IdTenenciaDeLaTierra ,
            ANombreDeQuienEstaElTerreno ,
            SiEsANombreDeOtraPersonaEspecificar ,
            EspecificarUbicacionDeLaTierra ,
            SuperficieDeLaParcela ,
            MiniDescripcionDeLaFinca ,
            FotoParcela ,
            CualEsSuProduccionPrincipal ,
            CualesSonLasOtrasProduccionesQueTiene ,
            IdAbono ,
            IdControlDeMaleza ,
            IdPlaguicidas ,
            IdOrigenDeLasSemillas ,
            IdSistemaRiegoCultivos ,
            PoseeUnaCertificacion ,
            CertificacionEspecificar ,
            IdCategoriaManejo ,
            ComentarioDeManejo ,
            ListaMaquinariaDisponibleEnLaFinca ,
            IdCategoriaMecanizacion ,
            ListaInfraestructuraDisponibleEnLaFinca ,
            IdCategoriaInfraestructura ,
            RealizaAlgunProcesoTransformacionOValorAgregado ,
            ProcesoTransformacionOValorAgregadoEspecificar ,
            IdDestinoDeLaProduccion ,
            SiVentaEspecificarCanalesComercializacion ,
            IdCategoriaExplotacionAgricola ,
            IdOrientacionTecnicoEco ,
            ComentarioExplotacionAgricola ,
            TieneAbejasSinAguijon ,
            DesdeCuandoLasTiene ,
            OtrasEspeciesAbeja ,
            DondeYComoObtuvoEsasColmenas ,
            ProduceMiel  ,
            ComoCosechaLaMiel ,
            IdDestinoMiel ,
            DondeSeVendeMielEspecificar  ,
            PrecioVentaMiel ,
            IdDondeColocaLasColmenas ,
            DondeSeUbicanLasColmenas ,
            DiagnosticoVisualDelMeliponarioYSuEntorno ,
            IdPotencialLugarParaTenerAbejas ,
            IdRiesgoRoboColmenas,
            FotoMeliponario ,
            CualEsSuMotivacionParaTenerLasAbejas  ,
            ComoAprendioACriarLasAbejas  ,
            IdNivelConocimientoMeliponicultura ,
            ComentariosMeliponicultura  ,
            QueEsLoQueMejorariaSuCalidadDeVida  ,
            CualesSonLosFrenosCalidadDeVida ,
            ComoMejorariaSuActividadAgricola  ,
            CualesSonLosFrenosActividadAgricola ,
            EnQueLeGustariaQueACFNLoPuedaApoyar ,
            CualesSon3FortalezasDeSuComunidad ,
            CualesSon3PrincipalesProblemasComunidad  ,
            QueSolucionesPropondriaMejorarComunidad ,
            CualesSonLosFrenosImpidenHacerEsasSoluciones  ,
            Fortalezas ,
            Debilidades ,
            Oportunidades ,
            Amenazas ,
            ProyectosPotenciales ,
            ComentarioGeneral ,
            IndicadorBienestarSocialYFamiliarDelHogar ,
            IndicadorBienestarEconomicoYMaterialDelHogar ,
            IndicadorSoberaniaAlimenticia ,
            IndicadorFelicidad ,
            Estado 
         ) 
             VALUES
        (
            @Identificador, 
            @IdUsuarioEncuestador ,
            @FechaEncuesta ,
            @VisitaALaCasa ,
            @IdEstadoDiagnostico ,
            @Nombres ,
            @Apellido1 ,
            @Apellido2 ,
            @Foto ,
            @CodigoFloraNueva ,
            @Sexo ,
            @NumeroCedula ,
            @FechaNacimiento ,
            @IdEstadoCivil ,
            @PerteneceAAlgunGrupoEtnico ,
            @IdPais ,
			@IdGrupo,
            @IdDivisionAdministrativa1  ,
            @IdDivisionAdministrativa2  ,
            @IdDivisionAdministrativa3 ,
            @DivisionAdministrativa4 ,
            @DireccionExacta ,
            @IdTerritorio ,     
            @GPSLatitud ,
            @GPSLongitud ,
            @Altitud ,
            @ComentariosUbicacion ,
            @ActividadLaboralPrincipal ,
            @ActividadLaboralSecundaria ,
            @IdCategoriaActividadPrincipal ,
            @IdActividadAgricola ,
            @TotalPersonasHogar ,
            @TotalPersonasActivasEconomicamente ,
            @TotalPersonasDependientes ,
            @IndiceInsercionLaboralProductor ,
            @IndiceNivelEducativoProductor ,
            @IndiceCiudadaniaSocialProductor ,
            @IndiceInsercionProductivaProductor ,
            @IndiceInclusionSocialProductor ,
            @IndiceInsercionLaboralHogar ,
            @IndiceNivelEducativoHogar ,
            @IndiceCiudadaniaSocialHogar,
            @IndiceInsercionProductivaHogar ,
            @TasaActividadEconomicaHogar ,
            @IndiceInclusionSocialHogar ,
            @IdFacilidadAccesoComunidad ,
            @IdFacilidadAccesoVivienda ,
            @IndiceFacilidadAcceso ,
            @IdTiempoLlegarCentroEducativo ,
            @IdTiempoLlegarCentroSalud ,
            @IndiceCercaniaCentrosBasicos ,
            @IdExistenciaTransportePublico ,
            @IdPosesionMedioTransportePublico ,
            @EspecificarMediosTransporte ,
            @IndiceCapacidadDesplazamiento ,
            @IndiceConexionProximidadGeografica ,
            @IdEstructuraGeneracionalHogar ,
            @OtrosFamiliaresVivenEnLaMismaComunidad ,
            @IdUstedConsideraContarConApoyoDeSuFamilia ,
            @IndiceCercaniaRelacionFamiliar ,
            @IdApoyoVecinosCasoNecesidad ,
            @IdAmbienteSocialComunidad ,
            @SeSienteUstedRealmenteParteComunidad ,
            @UstedEsUnMiembroActivoDeAlgunGrupo ,
            @MiembroActivoEspecificar ,
            @IndiceCercaniaRelacionComunidad ,
            @IndiceRelacionesSociales ,
            @IndiceGlobalBienestarSocialFamiliar ,
            @IdSuViviendaEs ,
            @IdLaViviendaEsANombreSuyo ,
            @LaViviendaEsANombreSuyoEspecificar ,
            @IdEstadoGeneralViviendaACFN ,
            @IdEstadoGeneralViviendaProductor ,
            @CantidadDormitorios ,
            @HacinamientoPorDormitorios ,
            @IndiceHacinamiento ,
            @IndiceEstadoVivienda ,
            @IndiceVivienda ,
            @IdFuenteAguaVivienda ,
            @AccesoALaElectricidad ,
            @IndiceServiciosBasicos ,
            @TieneTelefonoResidencial ,
            @TieneTelefonoCelular ,
            @TieneSennalTelefoniaMovilEnSuCasa ,
            @TieneAccesoAInternet ,
            @IndiceServiciosComunicacion ,
            @IndiceAccesoAServicios ,
            @RecibeAyudaFinanciera ,
            @RecibeAyudaFinancieraEspecificar ,
            @PresupuestoSuficienteCubrirGastosBasicos ,
            @ParaQueNoAlcanzaPresupuestoHogar  ,
            @IdConLosIngresosUstedEstimaQue ,
            @MontoMinimoMensualParaVivir ,
            @IdConLaActualSituacionEconomica ,
            @IdUstedConsideraQueSuHogarEs ,
            @IndiceNivelVida ,
            @IndiceBienestarEconomicoMaterialHogar ,
            @UstedProduceAlimentosParaSuHogar ,
            @GranosBasicos ,
            @Hortalizas  ,
            @Frutas ,
            @AnimalesYSusProductos  ,
            @ProductosTransformados  ,
            @PlantasAromaticasYMedicinales  ,
            @QueProduceParaSuHogarOtros ,
            @IdProporcionAutoconsumoAlimentosHogar ,
            @IdLograProducir ,
            @IdDondeUstedProduce ,
            @IdElTamannoDeSuParcelaEs ,
            @IdAUstedLeGustaria ,
            @TamannoParcela ,
            @ManoObra ,
            @FertilidadSuelos ,
            @TiempoDisponible ,
            @RecursosFinancierosInvertirYTrabajar ,
            @RiesgosNaturalesMuyFrecuentes ,
            @OtrasLimitantes ,
            @NoPoseeTierras ,
            @NoPoseeConocimientos ,
            @TrabajaEnOtroSectorYNoTieneTiempo ,
            @NoLeInteresaPrefiereComprar ,
            @ElLugarNoEsAptoParaCultivar ,
            @OtrasRazones ,
            @IndiceSoberaniaAlimenticia ,
            @FelicidadSuTrabajo ,
            @FelicidadSuSituacionFinanciera ,
            @FelicidadSuEstadoSalud ,
            @FelicidadSuVivienda ,
            @FelicidadSuTiempoLibre ,
            @FelicidadSuFamilia ,
            @FelicidadSuEducacion ,
            @FelicidadElMedioAmbiente ,
            @FelicidadSuVidaSocial ,
            @FelicidadSuParticipacionDentroComunidad ,
            @IndiceFelicidad ,
            @IdFormaJuridicaExplotacion ,
            @PerteneceAUnaOrganizacionAgropecuaria ,
            @NombreOrganizacionAgropecuaria ,
            @IdTenenciaDeLaTierra ,
            @ANombreDeQuienEstaElTerreno ,
            @SiEsANombreDeOtraPersonaEspecificar ,
            @EspecificarUbicacionDeLaTierra ,
            @SuperficieDeLaParcela ,
            @MiniDescripcionDeLaFinca ,
            @FotoParcela ,
            @CualEsSuProduccionPrincipal ,
            @CualesSonLasOtrasProduccionesQueTiene ,
            @IdAbono ,
            @IdControlDeMaleza ,
            @IdPlaguicidas ,
            @IdOrigenDeLasSemillas ,
            @IdSistemaRiegoCultivos ,
            @PoseeUnaCertificacion ,
            @CertificacionEspecificar ,
            @IdCategoriaManejo ,
            @ComentarioDeManejo ,
            @ListaMaquinariaDisponibleEnLaFinca ,
            @IdCategoriaMecanizacion ,
            @ListaInfraestructuraDisponibleEnLaFinca ,
            @IdCategoriaInfraestructura ,
            @RealizaAlgunProcesoTransformacionOValorAgregado ,
            @ProcesoTransformacionOValorAgregadoEspecificar ,
            @IdDestinoDeLaProduccion ,
            @SiVentaEspecificarCanalesComercializacion ,
            @IdCategoriaExplotacionAgricola ,
            @IdOrientacionTecnicoEco ,
            @ComentarioExplotacionAgricola ,
            @TieneAbejasSinAguijon ,
            @DesdeCuandoLasTiene ,
            @OtrasEspeciesAbeja ,
            @DondeYComoObtuvoEsasColmenas ,
            @ProduceMiel  ,
            @ComoCosechaLaMiel ,
            @IdDestinoMiel ,
            @DondeSeVendeMielEspecificar  ,
            @PrecioVentaMiel ,
            @IdDondeColocaLasColmenas ,
            @DondeSeUbicanLasColmenas ,
            @DiagnosticoVisualDelMeliponarioYSuEntorno ,
            @IdPotencialLugarParaTenerAbejas ,
            @IdRiesgoRoboColmenas ,
            @FotoMeliponario ,
            @CualEsSuMotivacionParaTenerLasAbejas  ,
            @ComoAprendioACriarLasAbejas  ,
            @IdNivelConocimientoMeliponicultura ,
            @ComentariosMeliponicultura  ,
            @QueEsLoQueMejorariaSuCalidadDeVida  ,
            @CualesSonLosFrenosCalidadDeVida ,
            @ComoMejorariaSuActividadAgricola  ,
            @CualesSonLosFrenosActividadAgricola ,
            @EnQueLeGustariaQueACFNLoPuedaApoyar ,
            @CualesSon3FortalezasDeSuComunidad ,
            @CualesSon3PrincipalesProblemasComunidad  ,
            @QueSolucionesPropondriaMejorarComunidad ,
            @CualesSonLosFrenosImpidenHacerEsasSoluciones  ,
            @Fortalezas ,
            @Debilidades ,
            @Oportunidades ,
            @Amenazas ,
            @ProyectosPotenciales ,
            @ComentarioGeneral ,
            @IndicadorBienestarSocialYFamiliarDelHogar ,
            @IndicadorBienestarEconomicoYMaterialDelHogar ,
            @IndicadorSoberaniaAlimenticia ,
            @IndicadorFelicidad ,
            @Estado 
   
        );

  
    SAVE TRAN [PRODUCTOR];
    COMMIT TRAN [PRODUCTORTRACK];
    COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] 
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTORTRACK]; 
		COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertarProductorProyecto]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_InsertarProductorProyecto] 
       (
	        @IdProductorProyecto INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
	    	@IdProyecto INT,
			@EstatusIntegracion BIT,
			@FechaIntegracion DATETIME,
			@FechaSalida DATETIME,
			@RazonSalida VARCHAR(500),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTOR]
   BEGIN TRY

            IF (@IdProductor = 0) BEGIN SET @IdProductor = (SELECT IdProductor FROM Productor Where Identificador = @Identificador) END;
			IF (@IdProyecto = 0) BEGIN SET @IdProyecto = null END ;
			IF (LEN(@RazonSalida) = 0) BEGIN SET @RazonSalida = null END ;
 
    INSERT INTO ProductorProyectoTrack (Identificador,IdProductor,IdProyecto,EstatusIntegracion,FechaIntegracion,FechaSalida,RazonSalida,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
            VALUES  (@Identificador,@IdProductor,@IdProyecto,@EstatusIntegracion,@FechaIntegracion,@FechaSalida,@RazonSalida,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
            
			  
     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

        INSERT INTO  ProductorProyecto (Identificador,IdProductor,IdProyecto,EstatusIntegracion,FechaIntegracion,FechaSalida,RazonSalida,Estado) 
                               VALUES  (@Identificador,@IdProductor,@IdProyecto,@EstatusIntegracion,@FechaIntegracion,@FechaSalida,@RazonSalida,@Estado)

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;

GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertarSync]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_InsertarSync]
(
  @Version UNIQUEIDENTIFIER,
  @Usuario VARCHAR(50),
  @Dispositivo VARCHAR(50), 
  @FechaCreacion DATETIME,
  @FechaCreacionUtc VARCHAR(50),
  @Estado VARCHAR(50)
)
AS
BEGIN

     DECLARE @CODIGO INT ;
     DECLARE @STATE VARCHAR(50);
	 DECLARE @TIEMPO INT;
	 DECLARE @NUMERO INT;

	  BEGIN TRAN;
         BEGIN TRY

    SET @NUMERO =(SELECT MAX(NUMERO) FROM SyncTransaccion);
    SELECT @STATE = Estado, @TIEMPO = DATEDIFF(MINUTE,FECHACREACION,GETDATE())   FROM SyncTransaccion WITH (HOLDLOCK, ROWLOCK)  WHERE NUMERO = @NUMERO

	           IF (@TIEMPO >= 10 AND @STATE ='INICIADO')
	            BEGIN
			    	PRINT @NUMERO
		            DELETE FROM SYNCTRANSACCION WHERE NUMERO = @NUMERO;
					SET @STATE ='TERMINADO'
                END

    If (@STATE = 'INICIADO')
    BEGIN
        SET @CODIGO = - 200;
    END

    ELSE
	   BEGIN
	      INSERT INTO SyncTransaccion 
		                      (Version, Usuario, Dispositivo,FechaCreacion, FechaCreacionUtc, Estado) 
		   VALUES
		                     (@Version, @Usuario ,@Dispositivo, @FechaCreacion, @FechaCreacionUtc , @Estado)

          SET @CODIGO = 200;
	   END

    COMMIT TRAN;
         SELECT @CODIGO;

         END TRY
		 BEGIN CATCH
             SELECT ERROR_NUMBER() AS ErrorNumber,
                    ERROR_SEVERITY() AS ErrorSeverity,
                    ERROR_STATE() AS ErrorState,
                    ERROR_PROCEDURE() AS ErrorProcedure,
                    ERROR_LINE() AS ErrorLine,
                    ERROR_MESSAGE() AS ErrorMessage;
             ROLLBACK TRAN;
         END CATCH;
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_NumeroDeCajasIdMeliponario]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_NumeroDeCajasIdMeliponario]
(
  @IdMeliponario INT
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [NumeroDeCajasMeliponario]

	                       SELECT COUNT(IdMeliponario) FROM MeliponarioCaja WHERE IdMeliponario = @IdMeliponario;

             COMMIT TRAN [NumeroDeCajasMeliponario]
   END;
GO
/****** Object:  StoredProcedure [dbo].[Sp_PermisoSync]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_PermisoSync]  
 (
   @Version UNIQUEIDENTIFIER
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [PERMISOSYNC]
                                              SELECT Numero FROM SyncTransaccion WHERE Version = @Version AND Estado = 'INICIADO'
                       COMMIT TRAN [PERMISOSYNC] 
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarCodigoFloranueva]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[Sp_SeleccionarCodigoFloranueva]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Productor]

	                       SELECT CodigoFloraNueva FROM Productor WHERE Identificador = @Identificador;

             COMMIT TRAN [Productor]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarFilasSync]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_SeleccionarFilasSync]  
 (
   @SQL  NVARCHAR(MAX)  
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [SELECCIONARFILASSYNC]
                                              EXEC sp_executesql @SQL
                       COMMIT TRAN [SELECCIONARFILASSYNC] 
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarProductor]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[Sp_SeleccionarProductor]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Productor]

	                       SELECT * FROM Productor WHERE Identificador = @Identificador;

             COMMIT TRAN [Productor]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarRegistroIdentificador]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_SeleccionarRegistroIdentificador]  
 (
   @SQL  NVARCHAR (MAX)
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [SELECCIONARREGISTRO]
                                              EXEC sp_executesql  @SQL
                       COMMIT TRAN [SELECCIONARREGISTRO] 
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarTodasFilasTabla]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_SeleccionarTodasFilasTabla]  
 (
   @SQL  NVARCHAR(MAX)  
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [SELECCIONARTODO]
                                              EXEC sp_executesql @SQL
                       COMMIT TRAN [SELECCIONARTODO] 
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarVistaProductores]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_SeleccionarVistaProductores]

AS
   BEGIN
           SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

           BEGIN TRAN [Productor]
 SELECT   
				    IdProductor,
                    Identificador,                    
                    Nombres,
                    Apellido1,
                    Apellido2,
                    Foto,
                    CodigoFloraNueva,
                    NumeroCedula,
                    X.IdPais,
                    (SELECT Nombre  FROM Pais WHERE IdPais = X.IdPais) AS NombrePais,
                    X.IdGrupo,
                    (SELECT Nombre FROM Grupo WHERE IdGrupo = X.IdGrupo) AS  NombreGrupo ,
                    X.IdDivisionAdministrativa1,
                    (SELECT Nombre FROM DivisionAdministrativa1 WHERE IdDivisionAdministrativa1 = X.IdDivisionAdministrativa1)  AS   NombreDivisionAdministrativa1 ,
                    X.IdDivisionAdministrativa2,
                    (SELECT Nombre FROM DivisionAdministrativa2  WHERE IdDivisionAdministrativa2 = X.IdDivisionAdministrativa2)  AS   NombreDivisionAdministrativa2 ,
                    X.IdDivisionAdministrativa3,
                    (SELECT Nombre FROM DivisionAdministrativa3  WHERE IdDivisionAdministrativa3 = X.IdDivisionAdministrativa3)  AS   NombreDivisionAdministrativa3 ,      
                    Estado
                    FROM Productor X 

           COMMIT TRAN [Productor]
   END;

GO
/****** Object:  StoredProcedure [dbo].[Sp_SyncExito]    Script Date: 27/11/2018 12:02:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_SyncExito] 
(
  @Version VARCHAR(50),
  @Estado VARCHAR(50)
)
AS
BEGIN

SET NOCOUNT ON;

SELECT Numero  FROM SyncTransaccion WHERE Version = @Version AND Estado = UPPER(@Estado) ;

END 

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la aplicación origen.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AplicacionOrigen', @level2type=N'COLUMN',@level2name=N'IdAplicacionOrigen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la aplicación origen.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AplicacionOrigen', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descipción de la aplicación origen.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AplicacionOrigen', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que represeta a las aplicaciones origen que realizan eventos en el sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AplicacionOrigen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'IdBitacora'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo evento asociado a la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'IdTipoEvento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario asociado a la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Local asociado a la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'IdLocal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Aplicacion origen asociada a la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'IdAplicacionOrigen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'Fecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad de la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Acción de la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'Accion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP de la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dispositivo de la bitácora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora', @level2type=N'COLUMN',@level2name=N'Dispositivo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los eventos sucedidos en el sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bitacora'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificacion de la cuenta del correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'IdCuentaCorreo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificacion de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Última modificación de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'UltimaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'Correo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Password de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Servidor de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'Servidor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Puerto de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'Puerto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SSL de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'SSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden en el que se muestra la cuenta de correo al usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo', @level2type=N'COLUMN',@level2name=N'Orden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa la cuenta de correo del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CuentaCorreo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Moneda base  de ventas asociada a la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'IdMonedaBaseVentas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de empresa asociado a la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'IdTipoEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'País asociado a la empresa,' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'IdPais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tema visual asociado a la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'IdTemaVisual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Última modificación de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'UltimaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Logo de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la empresa está activa o no.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Direccion de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa las empresas del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la entidad. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IdEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la entidad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la entidad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Descrpcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden de la entidad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Orden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad de la cual heredan todas las entidades del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'IdEntidadJuridica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de periódo fiscal asociado a la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'IdTipoPeriodoFiscal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificacion de la moneda base de la contabilidad de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'IdMonedaBaseContabilidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificacion de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'Identificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Última modificación de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'UltimaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Razon social de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'RazonSocial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de contacto de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'NombreContacto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo electronico del contacto de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'CorreoElectronicoContacto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefono del contacto de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'TelefonoContacto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones de la entidad jurídica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la entidad jurídica se encuentra activa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Empresa asociada a la entidad juridica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa las entidades jurídicas del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntidadJuridica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidad', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de estado.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidad', @level2type=N'COLUMN',@level2name=N'IdEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Administración de los estados de las entidades del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado de la entidad por idioma,' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadIdioma', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idioma asociado al estado de la entidad por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadIdioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del estado de la entidad por idioma,' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadIdioma', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTML del estado de la entidad por idioma,' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadIdioma', @level2type=N'COLUMN',@level2name=N'HTML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los estados de las entidades del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado de la entidad por empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadPorEmpresa', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Empresa asociada al estado de la entidad por empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadPorEmpresa', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden del estado de la entidad por empresa,' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadPorEmpresa', @level2type=N'COLUMN',@level2name=N'Orden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los estados de las entidades por empresa del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoEntidadPorEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del genero.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Genero', @level2type=N'COLUMN',@level2name=N'IdGenero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los generos de las personas del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Genero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del género por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneroIdioma', @level2type=N'COLUMN',@level2name=N'IdGenero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idioma asociado al género por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneroIdioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del género por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneroIdioma', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del genero por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneroIdioma', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los géneros por idioma del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneroIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Idioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Idioma', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código del idioma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Idioma', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los idiomas del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Idioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del local. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'IdLocal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad juridica asociada al local. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'IdEntidadJuridica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Empresa asociada al local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Territorio asociado al local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'IdTerritorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Última modificación del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'UltimaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Direccion fisica del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo electrónico del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'CorreoElectronico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Teléfono del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica la descripción del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el local está activo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica la latitud donde se ubica el local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'Latitud'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica la longitud donde se ubica el local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'Longitud'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad de usuarios que no se facturan en el local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'UsuariosNoFacturables'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Costo del usuario adicional por mes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'CostoUsuarioMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Moneda en que se cobra el usuario adicional.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local', @level2type=N'COLUMN',@level2name=N'IdMonedaCostoUsuarioMensual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los locales del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Local'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mensaje', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Última modificación de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mensaje', @level2type=N'COLUMN',@level2name=N'FechaDeEnvio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del mensaje archivo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MensajeArchivo', @level2type=N'COLUMN',@level2name=N'IdMensajeArchivo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del mensaje del mensaje archivo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MensajeArchivo', @level2type=N'COLUMN',@level2name=N'IdMensaje'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del mensaje archivo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MensajeArchivo', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Archivo  del mensaje archivo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MensajeArchivo', @level2type=N'COLUMN',@level2name=N'Archivo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones del mensaje archivo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MensajeArchivo', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro de la cuenta de correo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MensajeBitacora', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del mes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mes', @level2type=N'COLUMN',@level2name=N'IdMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los meses del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Mes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mes asociado al mes por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MesIdioma', @level2type=N'COLUMN',@level2name=N'IdMes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idioma asociado al mes por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MesIdioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del mes por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MesIdioma', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los meses por idioma del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MesIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del módulo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'IdModulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de módulo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'IdTipoModulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica un módulo del sistema. Por ejemplo: Inventario, Compras, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la moneda.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Moneda', @level2type=N'COLUMN',@level2name=N'IdMoneda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la Moneda.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Moneda', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la Moneda.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Moneda', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Simbolo de la Moneda.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Moneda', @level2type=N'COLUMN',@level2name=N'Simbolo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo ISO de la moneda.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Moneda', @level2type=N'COLUMN',@level2name=N'ISO4217'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa la moneda del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Moneda'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del pais.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'IdPais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del país.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo ISO del pais.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'ISO3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Moneda oficial asociada al pais.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'IdMonedaOficial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clase que representa un país del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave del parámetro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Parametro', @level2type=N'COLUMN',@level2name=N'Llave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo del parámetro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Parametro', @level2type=N'COLUMN',@level2name=N'IdTipoParametro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del parámetro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Parametro', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Administración de los parámetros del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Parametro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del parametro por empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroEmpresa', @level2type=N'COLUMN',@level2name=N'Llave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Empresa asociada al parámetro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroEmpresa', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor de parametro por empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroEmpresa', @level2type=N'COLUMN',@level2name=N'Valor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa a un ParametroEmpresa del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del parametro global.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroGlobal', @level2type=N'COLUMN',@level2name=N'Llave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor del parametro global.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroGlobal', @level2type=N'COLUMN',@level2name=N'Valor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa a un ParametroGlobal del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroGlobal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del parametro por local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroLocal', @level2type=N'COLUMN',@level2name=N'Llave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Local asociada al parámetro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroLocal', @level2type=N'COLUMN',@level2name=N'IdLocal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valor de parametro por local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroLocal', @level2type=N'COLUMN',@level2name=N'Valor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa a un ParametroLocal del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParametroLocal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'IdPerfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro del perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de última modificación del perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'UltimaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el nombre del perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica la descripción del perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el perfil es para super administrador.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'SuperAdministrador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el perfl es visible.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'Visible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Administración de perfiles de usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del recurso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'IdRecurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del recurso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'IdRecursoPadre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del módulo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'IdModulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el recurso tiene datos "hijos", es decir, recursos dependientes del mismo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'TieneHijos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ruta a la que se redirecciona cuando se escoge la opción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'UrlRecurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL de la imagen opcional del menú del recurso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'UrlImagenOpcionMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nivel del recurso en el árbol de recursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'Nivel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Atributo si es visible en las opciones mostradas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'SuperAdministrador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Atributo que indica el tipo de recurso: 1 Negocio, 2 Reportes, 3 Configuración.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso', @level2type=N'COLUMN',@level2name=N'IdTipoRecurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define los recursos del sistema, es decir las opciones a las que puede acceder un usuario para realizar alguna acción en específico.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del recurso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecursoPorPerfil', @level2type=N'COLUMN',@level2name=N'IdRecurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Objeto de la clase Perfil asociado a la clase RecursoPorPerfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecursoPorPerfil', @level2type=N'COLUMN',@level2name=N'IdPerfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define los recursos a los que tiene derecho el perfil de acceder.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecursoPorPerfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tema visual.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TemaVisual', @level2type=N'COLUMN',@level2name=N'IdTemaVisual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TemaVisual', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del tema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TemaVisual', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo del tema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TemaVisual', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los temas visuales del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TemaVisual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del territorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Territorio', @level2type=N'COLUMN',@level2name=N'IdTerritorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del territorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Territorio', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa los territorios del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Territorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresa', @level2type=N'COLUMN',@level2name=N'IdTipoEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden del tipo de empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresa', @level2type=N'COLUMN',@level2name=N'Orden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el tipo de empresa esta activo o no.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresa', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa a un tipo de empresa del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de empresa asociado al tipo de empresa por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresaIdioma', @level2type=N'COLUMN',@level2name=N'IdTipoEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idioma asociado al tipo de empresa por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresaIdioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de empresa por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresaIdioma', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del tipo de empresa por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresaIdioma', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa a un tipo de empresa por idioma del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEmpresaIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de evento.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEvento', @level2type=N'COLUMN',@level2name=N'IdTipoEvento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Catálogo de los tipos de eventos en el sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEvento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de evento asociado al tipo de evento por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEventoIdioma', @level2type=N'COLUMN',@level2name=N'IdTipoEvento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idioma asociado al tipo de evento por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEventoIdioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de evento por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEventoIdioma', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrición del tipo de evento por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEventoIdioma', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa a un tipo de evento por idioma del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEventoIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de facturación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoFacturacion', @level2type=N'COLUMN',@level2name=N'IdTipoFacturacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa el tipo de facturación del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoFacturacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de identificación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoIdentificacion', @level2type=N'COLUMN',@level2name=N'IdTipoIdentificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden en el que se muestra al usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoIdentificacion', @level2type=N'COLUMN',@level2name=N'Orden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Catálogo de los tipos de identificación de un participante del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoIdentificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de identificación por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoIdentificacionIdioma', @level2type=N'COLUMN',@level2name=N'IdTipoIdentificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idioma asociado al tipo de identificación por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoIdentificacionIdioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de identificación por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoIdentificacionIdioma', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del tipo de identificación por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoIdentificacionIdioma', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa el tipo de identificación por idioma del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoIdentificacionIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoMensajeIdioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de módulo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoModulo', @level2type=N'COLUMN',@level2name=N'IdTipoModulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del mismo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoModulo', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del mismo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoModulo', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Catálogo de los tipos de módulos que se encuentran en el sistema: Del sistema, Del negocio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoModulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificar del tipo de parámetro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoParametro', @level2type=N'COLUMN',@level2name=N'IdTipoParametro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de parámetro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoParametro', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del tipo de parámetro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoParametro', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa el tipo de parámetro del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoParametro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de periodo fiscal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoPeriodoFiscal', @level2type=N'COLUMN',@level2name=N'IdTipoPeriodoFiscal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mes en que inicia el periodo fiscal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoPeriodoFiscal', @level2type=N'COLUMN',@level2name=N'IdMesInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mes en que finaliza el periodo fiscal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoPeriodoFiscal', @level2type=N'COLUMN',@level2name=N'IdMesFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa a un tipo de periodo fiscal del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoPeriodoFiscal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de recurso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoRecurso', @level2type=N'COLUMN',@level2name=N'IdTipoRecurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Url de la imagen sub menú del tipo de recurso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoRecurso', @level2type=N'COLUMN',@level2name=N'UrlImagenSubMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa el tipo de recurso del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoRecurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de recurso asociado al tipo de recurso por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoRecursoIdioma', @level2type=N'COLUMN',@level2name=N'IdTipoRecurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idioma asociado al tipo de recurso por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoRecursoIdioma', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de recurso por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoRecursoIdioma', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del tipo de recurso por idioma.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoRecursoIdioma', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa el tipo de recurso por idioma del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoRecursoIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado de origen.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidad', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidadOrigen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado de destino.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidad', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidadDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Administra las transiciones entre los estado entidad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la transición estado entidad perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadNotificado', @level2type=N'COLUMN',@level2name=N'IdTransicionEstadoEntidadNotificado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado entidad origen.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadNotificado', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidadOrigen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado entidad destino.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadNotificado', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidadDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadNotificado', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones de la transición estado entidad perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadNotificado', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la transición estado entidad perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadPerfil', @level2type=N'COLUMN',@level2name=N'IdTransicionEstadoEntidadPerfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado entidad origen.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadPerfil', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidadOrigen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del estado entidad destino.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadPerfil', @level2type=N'COLUMN',@level2name=N'IdEstadoEntidadDestino'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadPerfil', @level2type=N'COLUMN',@level2name=N'IdPerfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones de la transición estado entidad perfil.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadPerfil', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa la transición estado entidad perfil del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TransicionEstadoEntidadPerfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la ubicación fisica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'IdUbicacionFisica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la ubicación fisica del padre.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'IdUbicacionFisicalPadre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del pais.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'IdPais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro de la ubicación fisica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ultima modificacion de la ubicación fisica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'UltimaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la ubicación fisica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la ubicación fisica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion de la ubicación fisica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden en el que se muestra la ubicación fisica.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'Orden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la ubicación fisica se encuentra activo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica', @level2type=N'COLUMN',@level2name=N'Activa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa la ubicación fisica del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionFisica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la ubicación local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'IdUbicacionLocal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la ubicación local padre.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'IdUbicacionLocalPadre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'IdLocal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario resposable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'IdUsuarioResponsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro de la ubicación local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Última Modificación de la ubicación local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'UltimaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de la ubicación local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la ubicación local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la ubicación local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden de la ubicación local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'Orden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la ubicación local está activa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal', @level2type=N'COLUMN',@level2name=N'Activa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa la ubicación local del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UbicacionLocal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Genero asociado al usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'IdGenero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'País asociado al usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'IdPais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Idioma asociado al usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'IdIdioma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de registro del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'FechaDeRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Última modificación del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'UltimaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el nombre corto con el cual el usuario accede al sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Login'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contraseña del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foto del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Foto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el nombre completo del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primer apellido del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Apellido1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Segundo apellido del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Apellido2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo electrónico del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'CorreoElectronico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Teléfono del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dirección del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones acerca del usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Intentos realizados por el usuario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'IntentosRealizados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el usuario está bloqueado o no.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Bloqueado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el usuario está activo o no.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el usuario es visible en el sistema o no.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Visible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa un usuario del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario asociado al usuario por local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsuarioPorLocal', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Local asociado al usuario por local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsuarioPorLocal', @level2type=N'COLUMN',@level2name=N'IdLocal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha del último acceso del usuario por local.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsuarioPorLocal', @level2type=N'COLUMN',@level2name=N'AccesadoPorUltimaVez'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Perfil asociado al usuario por empresa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsuarioPorLocal', @level2type=N'COLUMN',@level2name=N'IdPerfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entidad que representa el usuario por local del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsuarioPorLocal'
GO
