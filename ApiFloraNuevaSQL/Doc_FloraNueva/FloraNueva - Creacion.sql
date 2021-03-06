USE [FloraNueva]
GO
/****** Object:  Table [dbo].[AbejasNativasVisitaGrupal]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbejasNativasVisitaGrupal](
	[IdAbejasNativasVisitaGrupal] [int] NOT NULL,
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
 CONSTRAINT [PK_AbejasNativasVisitaGrupal] PRIMARY KEY CLUSTERED 
(
	[IdAbejasNativasVisitaGrupal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AbejasNativasVisitaGrupalParticipante]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbejasNativasVisitaGrupalParticipante](
	[IdAbejasNativasVisitaGrupalParticipante] [int] NOT NULL,
	[IdAbejasNativasVisitaGrupal] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[Observaciones] [varchar](500) NOT NULL,
 CONSTRAINT [PK_AbejasNativasVisitaGrupalParticipante] PRIMARY KEY CLUSTERED 
(
	[IdAbejasNativasVisitaGrupalParticipante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Abono]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ActvidadAgricola]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActvidadAgricola](
	[IdActividadAgricola] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ActvidadAgricola] PRIMARY KEY CLUSTERED 
(
	[IdActividadAgricola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AmbienteSocialComunidad]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Animales]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[AplicacionOrigen]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ApoyoVecinosCasoNecesidad]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[AUstedLeGustaria]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Bitacora]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CategoriaActividadPrincipal]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CategoriaExplotacionAgricola]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CategoriaInfraestructura]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CategoriaManejo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CategoriaMecanizacion]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CategoriaUsoSuelo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CondicionAseguramiento]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CondicionLaboral]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ConLaActualSituacionEconomica]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ConLosIngresosUstedEstimaQue]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ControlDeMaleza]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[CuentaCorreo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DestinoDeLaProduccion]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DestinoMiel]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DivisionAdministrativa1]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DivisionAdministrativa2]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DivisionAdministrativa3]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DondeColocaLasColmenas]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DondeUstedProduce]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ElTamannoDeSuParcelaEs]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Empresa]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Entidad]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EntidadJuridica]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EspecieAbeja]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstadoDiagnostico]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstadoEntidad]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[EstadoEntidadIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstadoEntidadPorEmpresa]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[EstadoGeneralViviendaACFN]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstadoGeneralViviendaProductor]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstadoMensaje]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[EstadoMensajeIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstructuraGeneracionalHogar]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ExistenciaTransportePublico]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[FacilidadAccesoComunidad]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[FacilidadAccesoVivienda]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[FormaJuridicaExplotacion]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[FuenteAguaVivienda]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Genero]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[GeneroIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Grupo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Idioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[LaViviendaEsANombreSuyo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Local]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[LograProducir]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Meliponario]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meliponario](
	[IdMeliponario] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[GPSLatitud] [decimal](20, 6) NOT NULL,
	[GPSLongitud] [decimal](20, 6) NOT NULL,
	[ValidadoParaRecibirCajasFloraNueva] [bit] NOT NULL,
	[IdTipoMeliponario] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Observaciones] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Meliponario] PRIMARY KEY CLUSTERED 
(
	[IdMeliponario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeliponarioCaja]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeliponarioCaja](
	[IdMeliponarioCaja] [int] NOT NULL,
	[IdMeliponario] [int] NOT NULL,
	[IdEspecieAbeja] [int] NOT NULL,
	[FechaEntregaAlProductor] [datetime] NOT NULL,
	[Comentario] [varchar](500) NOT NULL,
	[IdOrigenColonia] [int] NOT NULL,
	[Activa] [bit] NOT NULL,
 CONSTRAINT [PK_MeliponarioCaja] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeliponarioCajaAccion]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeliponarioCajaAccion](
	[IdMeliponarioCajaAccion] [int] NOT NULL,
	[IdMeliponarioCaja] [int] NOT NULL,
	[IdTipoAccionMeliponario] [int] NOT NULL,
	[IdOrigenColonia] [int] NOT NULL,
	[IdUsuarioResponsable] [int] NOT NULL,
	[FechaAccion] [datetime] NOT NULL,
	[Comentario] [varchar](500) NOT NULL,
 CONSTRAINT [PK_MeliponarioCajaAccion] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCajaAccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeliponarioCajaHistorial]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeliponarioCajaHistorial](
	[IdMeliponarioCajaHistorial] [int] NOT NULL,
	[IdMeliponarioCaja] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[FechaDesde] [datetime] NOT NULL,
	[FechaHasta] [datetime] NULL,
	[Actual] [bit] NOT NULL,
 CONSTRAINT [PK_MeliponarioCajaHistorial] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCajaHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeliponarioCosecha]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeliponarioCosecha](
	[IdMeliponarioCosecha] [int] NOT NULL,
	[IdMeliponario] [int] NOT NULL,
	[IdUsuarioResponsable] [int] NOT NULL,
	[PrecioCompra] [decimal](20, 6) NOT NULL,
	[Comentario] [varchar](500) NOT NULL,
 CONSTRAINT [PK_MeliponarioCosecha] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeliponarioCosechaDetalle]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeliponarioCosechaDetalle](
	[IdMeliponarioCosechaDetalle] [int] NOT NULL,
	[IdMeliponarioCosecha] [int] NOT NULL,
	[Lote] [varchar](50) NOT NULL,
	[IdEspecieAbeja] [int] NOT NULL,
	[Alzas] [decimal](20, 6) NOT NULL,
	[PesoKg] [decimal](20, 6) NOT NULL,
 CONSTRAINT [PK_MeliponarioCosechaDetalle] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosechaDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeliponarioCosechaDetalleCaja]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeliponarioCosechaDetalleCaja](
	[IdMeliponarioCosechaDetalleCaja] [int] NOT NULL,
	[IdMeliponarioCosechaDetalle] [int] NOT NULL,
	[IdMeliponarioCaja] [int] NOT NULL,
 CONSTRAINT [PK_MeliponarioCosechaDetalleCaja] PRIMARY KEY CLUSTERED 
(
	[IdMeliponarioCosechaDetalleCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mensaje]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[MensajeArchivo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[MensajeBitacora]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[MensajeCorreoElectronico]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[MensajeSMS]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[MensajeVoz]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[Mes]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[MesIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Modulo]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[Moneda]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[NivelConocimientoMeliponicultura]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[NivelEscolar]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[OrientacionTecnicoEco]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[OrigenColonia]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[OrigenDeLasSemillas]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Pais]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Parametro]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ParametroEmpresa]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ParametroGlobal]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ParametroLocal]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Parentezco]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Perfil]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[PertenenciaGrupoComunitario]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Plaguicidas]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[PosesionMedioTransportePublico]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[PotencialLugarParaTenerAbejas]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Productor]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productor](
	[IdProductor] [int] NOT NULL,
	[IdUsuarioEncuestador] [int] NOT NULL,
	[FechaEncuesta] [datetime] NOT NULL,
	[VisitaALaCasa] [bit] NOT NULL,
	[IdEstadoDiagnostico] [int] NOT NULL,
	[Nombres] [varchar](100) NOT NULL,
	[Apellido1] [varchar](100) NOT NULL,
	[Apellido2] [varchar](100) NOT NULL,
	[Foto] [image] NULL,
	[CodigoFloraNueva] [varchar](50) NOT NULL,
	[Sexo] [bit] NOT NULL,
	[NumeroCedula] [varchar](50) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[IdEstadoCivil] [int] NOT NULL,
	[PerteneceAAlgunGrupoEtnico] [varchar](500) NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[IdDivisionAdministrativa1] [int] NOT NULL,
	[IdDivisionAdministrativa2] [int] NOT NULL,
	[IdDivisionAdministrativa3] [int] NOT NULL,
	[DivisionAdministrativa4] [varchar](250) NOT NULL,
	[DireccionExacta] [varchar](500) NOT NULL,
	[IdTerritorio] [int] NOT NULL,
	[GPSLatitud] [decimal](20, 6) NOT NULL,
	[GPSLongitud] [decimal](20, 6) NOT NULL,
	[Altitud] [decimal](20, 6) NOT NULL,
	[ComentariosUbicacion] [varchar](500) NOT NULL,
	[ActividadLaboralPrincipal] [varchar](500) NOT NULL,
	[ActividadLaboralSecundaria] [varchar](500) NOT NULL,
	[IdCategoriaActividadPrincipal] [int] NOT NULL,
	[IdActividadAgricola] [int] NOT NULL,
	[TotalPersonasHogar] [int] NOT NULL,
	[TotalPersonasActivasEconomicamente] [int] NOT NULL,
	[TotalPersonasDependientes] [int] NOT NULL,
	[IndiceInsercionLaboralProductor] [decimal](20, 6) NOT NULL,
	[IndiceNivelEducativoProductor] [decimal](20, 6) NOT NULL,
	[IndiceCiudadaniaSocialProductor] [decimal](20, 6) NOT NULL,
	[IndiceInsercionProductivaProductor] [decimal](20, 6) NOT NULL,
	[IndiceInclusionSocialProductor] [decimal](20, 6) NOT NULL,
	[IndiceInsercionLaboralHogar] [decimal](20, 6) NOT NULL,
	[IndiceNivelEducativoHogar] [decimal](20, 6) NOT NULL,
	[IndiceCiudadaniaSocialHogar] [decimal](20, 6) NOT NULL,
	[IndiceInsercionProductivaHogar] [decimal](20, 6) NOT NULL,
	[TasaActividadEconomicaHogar] [decimal](20, 6) NOT NULL,
	[IndiceInclusionSocialHogar] [decimal](20, 6) NOT NULL,
	[IdFacilidadAccesoComunidad] [int] NOT NULL,
	[IdFacilidadAccesoVivienda] [int] NOT NULL,
	[IndiceFacilidadAcceso] [decimal](20, 6) NOT NULL,
	[IdTiempoLlegarCentroEducativo] [int] NOT NULL,
	[IdTiempoLlegarCentroSalud] [int] NOT NULL,
	[IndiceCercaniaCentrosBasicos] [decimal](20, 6) NOT NULL,
	[IdExistenciaTransportePublico] [int] NOT NULL,
	[IdPosesionMedioTransportePublico] [int] NOT NULL,
	[EspecificarMediosTransporte] [varchar](500) NOT NULL,
	[IndiceCapacidadDesplazamiento] [decimal](20, 6) NOT NULL,
	[IndiceConexionProximidadGeografica] [decimal](20, 6) NOT NULL,
	[IdEstructuraGeneracionalHogar] [int] NOT NULL,
	[OtrosFamiliaresVivenEnLaMismaComunidad] [bit] NOT NULL,
	[IdUstedConsideraContarConApoyoDeSuFamilia] [int] NOT NULL,
	[IndiceCercaniaRelacionFamiliar] [decimal](20, 6) NOT NULL,
	[IdApoyoVecinosCasoNecesidad] [int] NOT NULL,
	[IdAmbienteSocialComunidad] [int] NOT NULL,
	[SeSienteUstedRealmenteParteComunidad] [bit] NOT NULL,
	[UstedEsUnMiembroActivoDeAlgunGrupo] [bit] NOT NULL,
	[MiembroActivoEspecificar] [varchar](500) NOT NULL,
	[IndiceCercaniaRelacionComunidad] [decimal](20, 6) NOT NULL,
	[IndiceRelacionesSociales] [decimal](20, 6) NOT NULL,
	[IndiceGlobalBienestarSocialFamiliar] [decimal](20, 6) NOT NULL,
	[IdSuViviendaEs] [int] NOT NULL,
	[IdLaViviendaEsANombreSuyo] [int] NOT NULL,
	[LaViviendaEsANombreSuyoEspecificar] [varchar](500) NOT NULL,
	[IdEstadoGeneralViviendaACFN] [int] NOT NULL,
	[IdEstadoGeneralViviendaProductor] [int] NOT NULL,
	[CantidadDormitorios] [int] NOT NULL,
	[HacinamientoPorDormitorios] [int] NOT NULL,
	[IndiceHacinamiento] [decimal](20, 6) NOT NULL,
	[IndiceEstadoVivienda] [decimal](20, 6) NOT NULL,
	[IndiceVivienda] [decimal](20, 6) NOT NULL,
	[IdFuenteAguaVivienda] [int] NOT NULL,
	[AccesoALaElectricidad] [bit] NOT NULL,
	[IndiceServiciosBasicos] [decimal](20, 6) NOT NULL,
	[TieneTelefonoResidencial] [bit] NOT NULL,
	[TieneTelefonoCelular] [bit] NOT NULL,
	[TieneSennalTelefoniaMovilEnSuCasa] [bit] NOT NULL,
	[TieneAccesoAInternet] [bit] NOT NULL,
	[IndiceServiciosComunicacion] [decimal](20, 6) NOT NULL,
	[IndiceAccesoAServicios] [decimal](20, 6) NOT NULL,
	[RecibeAyudaFinanciera] [bit] NOT NULL,
	[RecibeAyudaFinancieraEspecificar] [varchar](500) NOT NULL,
	[PresupuestoSuficienteCubrirGastosBasicos] [bit] NOT NULL,
	[ParaQueNoAlcanzaPresupuestoHogar] [varchar](500) NOT NULL,
	[IdConLosIngresosUstedEstimaQue] [int] NOT NULL,
	[MontoMinimoMensualParaVivir] [decimal](20, 6) NOT NULL,
	[IdConLaActualSituacionEconomica] [int] NOT NULL,
	[IdUstedConsideraQueSuHogarEs] [int] NOT NULL,
	[IndiceNivelVida] [decimal](20, 6) NOT NULL,
	[IndiceBienestarEconomicoMaterialHogar] [decimal](20, 6) NOT NULL,
	[UstedProduceAlimentosParaSuHogar] [bit] NOT NULL,
	[GranosBasicos] [bit] NOT NULL,
	[Hortalizas] [bit] NOT NULL,
	[Frutas] [bit] NOT NULL,
	[AnimalesYSusProductos] [bit] NOT NULL,
	[ProductosTransformados] [bit] NOT NULL,
	[PlantasAromaticasYMedicinales] [bit] NOT NULL,
	[QueProduceParaSuHogarOtros] [bit] NOT NULL,
	[IdProporcionAutoconsumoAlimentosHogar] [int] NOT NULL,
	[IdLograProducir] [int] NOT NULL,
	[IdDondeUstedProduce] [int] NOT NULL,
	[IdElTamannoDeSuParcelaEs] [int] NOT NULL,
	[IdAUstedLeGustaria] [int] NOT NULL,
	[TamannoParcela] [bit] NOT NULL,
	[ManoObra] [bit] NOT NULL,
	[FertilidadSuelos] [bit] NOT NULL,
	[TiempoDisponible] [bit] NOT NULL,
	[RecursosFinancierosInvertirYTrabajar] [bit] NOT NULL,
	[RiesgosNaturalesMuyFrecuentes] [bit] NOT NULL,
	[OtrasLimitantes] [bit] NOT NULL,
	[NoPoseeTierras] [bit] NOT NULL,
	[NoPoseeConocimientos] [bit] NOT NULL,
	[TrabajaEnOtroSectorYNoTieneTiempo] [bit] NOT NULL,
	[NoLeInteresaPrefiereComprar] [bit] NOT NULL,
	[ElLugarNoEsAptoParaCultivar] [bit] NOT NULL,
	[OtrasRazones] [bit] NOT NULL,
	[IndiceSoberaniaAlimenticia] [decimal](20, 6) NOT NULL,
	[FelicidadSuTrabajo] [decimal](20, 6) NOT NULL,
	[FelicidadSuSituacionFinanciera] [decimal](20, 6) NOT NULL,
	[FelicidadSuEstadoSalud] [decimal](20, 6) NOT NULL,
	[FelicidadSuVivienda] [decimal](20, 6) NOT NULL,
	[FelicidadSuTiempoLibre] [decimal](20, 6) NOT NULL,
	[FelicidadSuFamilia] [decimal](20, 6) NOT NULL,
	[FelicidadSuEducacion] [decimal](20, 6) NOT NULL,
	[FelicidadElMedioAmbiente] [decimal](20, 6) NOT NULL,
	[FelicidadSuVidaSocial] [decimal](20, 6) NOT NULL,
	[FelicidadSuParticipacionDentroComunidad] [decimal](20, 6) NOT NULL,
	[IndiceFelicidad] [decimal](20, 6) NOT NULL,
	[IdFormaJuridicaExplotacion] [int] NOT NULL,
	[PerteneceAUnaOrganizacionAgropecuaria] [bit] NOT NULL,
	[NombreOrganizacionAgropecuaria] [varchar](500) NOT NULL,
	[IdTenenciaDeLaTierra] [int] NOT NULL,
	[ANombreDeQuienEstaElTerreno] [bit] NOT NULL,
	[SiEsANombreDeOtraPersonaEspecificar] [varchar](500) NOT NULL,
	[EspecificarUbicacionDeLaTierra] [varchar](500) NOT NULL,
	[SuperficieDeLaParcela] [decimal](20, 6) NOT NULL,
	[MiniDescripcionDeLaFinca] [varchar](500) NOT NULL,
	[FotoParcela] [image] NOT NULL,
	[CualEsSuProduccionPrincipal] [varchar](500) NOT NULL,
	[CualesSonLasOtrasProduccionesQueTiene] [varchar](500) NOT NULL,
	[IdAbono] [int] NOT NULL,
	[IdControlDeMaleza] [int] NOT NULL,
	[IdPlaguicidas] [int] NOT NULL,
	[IdOrigenDeLasSemillas] [int] NOT NULL,
	[IdSistemaRiegoCultivos] [int] NOT NULL,
	[PoseeUnaCertificacion] [bit] NOT NULL,
	[CertificacionEspecificar] [varchar](500) NOT NULL,
	[IdCategoriaManejo] [int] NOT NULL,
	[ComentarioDeManejo] [varchar](500) NOT NULL,
	[ListaMaquinariaDisponibleEnLaFinca] [varchar](500) NOT NULL,
	[IdCategoriaMecanizacion] [int] NOT NULL,
	[ListaInfraestructuraDisponibleEnLaFinca] [varchar](500) NOT NULL,
	[IdCategoriaInfraestructura] [int] NOT NULL,
	[RealizaAlgunProcesoTransformacionOValorAgregado] [bit] NOT NULL,
	[ProcesoTransformacionOValorAgregadoEspecificar] [varchar](500) NOT NULL,
	[IdDestinoDeLaProduccion] [int] NOT NULL,
	[SiVentaEspecificarCanalesComercializacion] [varchar](500) NOT NULL,
	[IdCategoriaExplotacionAgricola] [int] NOT NULL,
	[IdOrientacionTecnicoEco] [int] NOT NULL,
	[ComentarioExplotacionAgricola] [varchar](500) NOT NULL,
	[TieneAbejasSinAguijon] [bit] NOT NULL,
	[DesdeCuandoLasTiene] [datetime] NOT NULL,
	[OtrasEspeciesAbeja] [varchar](500) NOT NULL,
	[DondeYComoObtuvoEsasColmenas] [varchar](500) NOT NULL,
	[ProduceMiel] [bit] NOT NULL,
	[ComoCosechaLaMiel] [varchar](500) NOT NULL,
	[IdDestinoMiel] [int] NOT NULL,
	[DondeSeVendeMielEspecificar] [varchar](500) NOT NULL,
	[PrecioVentaMiel] [decimal](20, 6) NOT NULL,
	[IdDondeColocaLasColmenas] [int] NOT NULL,
	[DondeSeUbicanLasColmenas] [varchar](500) NOT NULL,
	[DiagnosticoVisualDelMeliponarioYSuEntorno] [varchar](500) NOT NULL,
	[IdPotencialLugarParaTenerAbejas] [int] NOT NULL,
	[IdRiesgoRoboColmenas] [int] NOT NULL,
	[FotoMeliponario] [image] NOT NULL,
	[CualEsSuMotivacionParaTenerLasAbejas] [varchar](500) NOT NULL,
	[ComoAprendioACriarLasAbejas] [varchar](500) NOT NULL,
	[IdNivelConocimientoMeliponicultura] [int] NOT NULL,
	[ComentariosMeliponicultura] [varchar](500) NOT NULL,
	[QueEsLoQueMejorariaSuCalidadDeVida] [varchar](500) NOT NULL,
	[CualesSonLosFrenosCalidadDeVida] [varchar](500) NOT NULL,
	[ComoMejorariaSuActividadAgricola] [varchar](500) NOT NULL,
	[CualesSonLosFrenosActividadAgricola] [varchar](500) NOT NULL,
	[EnQueLeGustariaQueACFNLoPuedaApoyar] [varchar](500) NOT NULL,
	[CualesSon3FortalezasDeSuComunidad] [varchar](500) NOT NULL,
	[CualesSon3PrincipalesProblemasComunidad] [varchar](500) NOT NULL,
	[QueSolucionesPropondriaMejorarComunidad] [varchar](500) NOT NULL,
	[CualesSonLosFrenosImpidenHacerEsasSoluciones] [varchar](500) NOT NULL,
	[Fortalezas] [varchar](500) NOT NULL,
	[Debilidades] [varchar](500) NOT NULL,
	[Oportunidades] [varchar](500) NOT NULL,
	[Amenazas] [varchar](500) NOT NULL,
	[ProyectosPotenciales] [varchar](500) NOT NULL,
	[ComentarioGeneral] [varchar](500) NOT NULL,
	[IndicadorBienestarSocialYFamiliarDelHogar] [decimal](20, 6) NOT NULL,
	[IndicadorBienestarEconomicoYMaterialDelHogar] [decimal](20, 6) NOT NULL,
	[IndicadorSoberaniaAlimenticia] [decimal](20, 6) NOT NULL,
	[IndicadorFelicidad] [decimal](20, 6) NOT NULL,
 CONSTRAINT [PK_Productor] PRIMARY KEY CLUSTERED 
(
	[IdProductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorAbejasNativasMaterialEntregado]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasMaterialEntregado](
	[IdProductorAbejasNativasMaterialEntregado] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[NumeroBoleta] [int] NOT NULL,
	[IdTipoMaterialEntregado] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Comentario] [decimal](20, 6) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasMaterialEntregado] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasMaterialEntregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividual]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividual](
	[IdProductorAbejasNativasVisitaIndividual] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[ElMeliponicultorEstaPresente] [bit] NOT NULL,
	[OtraPersonaPresente] [varchar](500) NOT NULL,
	[Motivo] [varchar](500) NOT NULL,
	[Observaciones] [varchar](500) NOT NULL,
	[Recomendaciones] [varchar](500) NOT NULL,
	[Otros] [varchar](500) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividual] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria](
	[IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] [int] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NOT NULL,
	[AccionCorrectivaObligatoria] [varchar](500) NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCaja]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnCaja](
	[IdProductorAbejasNativasVisitaIndividualColmenasEnCaja] [int] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NOT NULL,
	[IdEspecieAbeja] [int] NOT NULL,
	[ACFN] [bit] NOT NULL,
	[Rustica] [bit] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualColmenasEnCaja] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividualColmenasEnCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampa]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorAbejasNativasVisitaIndividualColmenasEnTrampa](
	[IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa] [int] NOT NULL,
	[IdProductorAbejasNativasVisitaIndividual] [int] NOT NULL,
	[IdEspecieAbeja] [int] NOT NULL,
	[EnMeliponario] [bit] NOT NULL,
	[EnCampo] [bit] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_ProductorAbejasNativasVisitaIndividualColmenasEnTrampa] PRIMARY KEY CLUSTERED 
(
	[IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorContacto]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorContacto](
	[IdProductorContacto] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[IdTipoContacto] [int] NOT NULL,
	[Contacto] [varchar](250) NOT NULL,
	[Detalle] [varchar](500) NOT NULL,
 CONSTRAINT [PK_ProductorContacto] PRIMARY KEY CLUSTERED 
(
	[IdProductorContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorDetalleProduccionAnimal]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorDetalleProduccionAnimal](
	[IdProductorDetalleProduccionAnimal] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[IdAnimales] [int] NOT NULL,
	[Detalles] [varchar](500) NOT NULL,
	[Cantidad] [decimal](20, 6) NOT NULL,
 CONSTRAINT [PK_ProductorDetalleProduccionAnimal] PRIMARY KEY CLUSTERED 
(
	[IdProductorDetalleProduccionAnimal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorDetalleProduccionVegetal]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorDetalleProduccionVegetal](
	[IdProductorDetalleProduccionVegetal] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[IdCategoriaUsoSuelo] [int] NOT NULL,
	[Detalles] [varchar](500) NOT NULL,
	[Superficie] [decimal](20, 6) NOT NULL,
 CONSTRAINT [PK_ProductorDetalleProduccionVegetal] PRIMARY KEY CLUSTERED 
(
	[IdProductorDetalleProduccionVegetal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorDocumentoEntregado]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorDocumentoEntregado](
	[IdProductorDocumentoEntregado] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[Detalle] [varchar](500) NOT NULL,
 CONSTRAINT [PK_ProductorDocumentoEntregado] PRIMARY KEY CLUSTERED 
(
	[IdProductorDocumentoEntregado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorInventarioEspecies]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorInventarioEspecies](
	[IdProductorInventarioEspecies] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[IdEspecieAbeja] [int] NOT NULL,
	[CantidadEnTronco] [int] NOT NULL,
	[CantidadEnNidoArtificial] [int] NOT NULL,
	[CantidadEnCajaRustica] [int] NOT NULL,
	[CantidadEnCajaTecnificada] [int] NOT NULL,
 CONSTRAINT [PK_ProductorInventarioEspecies] PRIMARY KEY CLUSTERED 
(
	[IdProductorInventarioEspecies] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorMiembroHogar]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorMiembroHogar](
	[IdProductorMiembroHogar] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[IdParentezco] [int] NOT NULL,
	[Sexo] [bit] NOT NULL,
	[Edad] [int] NOT NULL,
	[TieneAlgunaDiscapacidadOEnfermedadGrave] [bit] NOT NULL,
	[Ocupacion] [varchar](100) NOT NULL,
	[IdCondicionLaboral] [int] NOT NULL,
	[SeguridadTrabajaTodoElAnno] [bit] NOT NULL,
	[SeguridadTrabajaEntre48Y40Horas] [bit] NOT NULL,
	[SeguridadCotizaALaCaja] [bit] NOT NULL,
	[SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales] [bit] NOT NULL,
	[SeguridadPercibeSuEmpleoComoSeguro] [bit] NOT NULL,
	[IndiceSeguridad] [decimal](20, 6) NOT NULL,
	[IdSituacionAutoempleo] [int] NOT NULL,
	[IndiceInsercionLaboral] [decimal](20, 6) NOT NULL,
	[IdSabeLeerYEscribir] [int] NOT NULL,
	[IdNivelEscolar] [int] NOT NULL,
	[IndiceNivelEducativo] [decimal](20, 6) NOT NULL,
	[IdCondicionAseguramiento] [int] NOT NULL,
	[IndiceCiudadaniaSocial] [decimal](20, 6) NOT NULL,
	[IdPertenenciaGrupoComunitario] [int] NOT NULL,
	[PertenenciaGrupoComunitarioEspecificar] [varchar](500) NOT NULL,
	[IndiceInclusionSocialPersona] [decimal](20, 6) NOT NULL,
 CONSTRAINT [PK_ProductorMiembroHogar] PRIMARY KEY CLUSTERED 
(
	[IdProductorMiembroHogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductorProyecto]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductorProyecto](
	[IdProductorProyecto] [int] NOT NULL,
	[IdProductor] [int] NOT NULL,
	[IdProyecto] [int] NOT NULL,
	[EstatusIntegracion] [bit] NOT NULL,
	[FechaIntegracion] [datetime] NOT NULL,
	[FechaSalida] [datetime] NULL,
	[RazonSalida] [varchar](500) NOT NULL,
 CONSTRAINT [PK_ProductorProyecto] PRIMARY KEY CLUSTERED 
(
	[IdProductorProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProporcionAutoconsumoAlimentosHogar]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Proyecto]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Recurso]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[RecursoPorEmpresa]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[RecursoPorPerfil]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[RiesgoRoboColmenas]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[SabeLeerYEscribir]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[SistemaRiegoCultivos]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[SituacionAutoempleo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[SuViviendaEs]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TemaVisual]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TenenciaDeLaTierra]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Territorio]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TiempoLlegarCentroEducativo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TiempoLlegarCentroSalud]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoAccionMeliponario]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoContacto]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoEmpresa]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[TipoEmpresaIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoEvento]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[TipoEventoIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoFacturacion]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[TipoFacturacionIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoIdentificacion]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoIdentificacionIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoMaterialEntregado]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoMeliponario]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoMensaje]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[TipoMensajeIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoModulo]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoParametro]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoPeriodoFiscal]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[TipoRecurso]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TipoRecursoIdioma]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TransicionEstadoEntidad]    Script Date: 9/5/2018 2:38:58 PM ******/
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
/****** Object:  Table [dbo].[TransicionEstadoEntidadNotificado]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[TransicionEstadoEntidadPerfil]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[UbicacionFisica]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[UbicacionLocal]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[UstedConsideraContarConApoyoDeSuFamilia]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[UstedConsideraQueSuHogarEs]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 9/5/2018 2:38:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[UsuarioPorLocal]    Script Date: 9/5/2018 2:38:58 PM ******/
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
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_Abono] FOREIGN KEY([IdAbono])
REFERENCES [dbo].[Abono] ([IdAbono])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_Abono]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_ActvidadAgricola] FOREIGN KEY([IdActividadAgricola])
REFERENCES [dbo].[ActvidadAgricola] ([IdActividadAgricola])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_ActvidadAgricola]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_AmbienteSocialComunidad] FOREIGN KEY([IdAmbienteSocialComunidad])
REFERENCES [dbo].[AmbienteSocialComunidad] ([IdAmbienteSocialComunidad])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_AmbienteSocialComunidad]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_ApoyoVecinosCasoNecesidad] FOREIGN KEY([IdApoyoVecinosCasoNecesidad])
REFERENCES [dbo].[ApoyoVecinosCasoNecesidad] ([IdApoyoVecinosCasoNecesidad])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_ApoyoVecinosCasoNecesidad]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_AUstedLeGustaria] FOREIGN KEY([IdAUstedLeGustaria])
REFERENCES [dbo].[AUstedLeGustaria] ([IdAUstedLeGustaria])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_AUstedLeGustaria]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_CategoriaActividadPrincipal] FOREIGN KEY([IdCategoriaActividadPrincipal])
REFERENCES [dbo].[CategoriaActividadPrincipal] ([IdCategoriaActividadPrincipal])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_CategoriaActividadPrincipal]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_CategoriaExplotacionAgricola] FOREIGN KEY([IdCategoriaExplotacionAgricola])
REFERENCES [dbo].[CategoriaExplotacionAgricola] ([IdCategoriaExplotacionAgricola])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_CategoriaExplotacionAgricola]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_CategoriaInfraestructura] FOREIGN KEY([IdCategoriaInfraestructura])
REFERENCES [dbo].[CategoriaInfraestructura] ([IdCategoriaInfraestructura])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_CategoriaInfraestructura]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_CategoriaManejo] FOREIGN KEY([IdCategoriaManejo])
REFERENCES [dbo].[CategoriaManejo] ([IdCategoriaManejo])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_CategoriaManejo]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_CategoriaMecanizacion] FOREIGN KEY([IdCategoriaMecanizacion])
REFERENCES [dbo].[CategoriaMecanizacion] ([IdCategoriaMecanizacion])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_CategoriaMecanizacion]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_ConLaActualSituacionEconomica] FOREIGN KEY([IdConLaActualSituacionEconomica])
REFERENCES [dbo].[ConLaActualSituacionEconomica] ([IdConLaActualSituacionEconomica])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_ConLaActualSituacionEconomica]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_ConLosIngresosUstedEstimaQue] FOREIGN KEY([IdConLosIngresosUstedEstimaQue])
REFERENCES [dbo].[ConLosIngresosUstedEstimaQue] ([IdConLosIngresosUstedEstimaQue])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_ConLosIngresosUstedEstimaQue]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_ControlDeMaleza] FOREIGN KEY([IdControlDeMaleza])
REFERENCES [dbo].[ControlDeMaleza] ([IdControlDeMaleza])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_ControlDeMaleza]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_DestinoDeLaProduccion] FOREIGN KEY([IdDestinoDeLaProduccion])
REFERENCES [dbo].[DestinoDeLaProduccion] ([IdDestinoDeLaProduccion])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_DestinoDeLaProduccion]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_DestinoMiel] FOREIGN KEY([IdDestinoMiel])
REFERENCES [dbo].[DestinoMiel] ([IdDestinoMiel])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_DestinoMiel]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_DivisionAdministrativa1] FOREIGN KEY([IdDivisionAdministrativa1])
REFERENCES [dbo].[DivisionAdministrativa1] ([IdDivisionAdministrativa1])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_DivisionAdministrativa1]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_DivisionAdministrativa2] FOREIGN KEY([IdDivisionAdministrativa2])
REFERENCES [dbo].[DivisionAdministrativa2] ([IdDivisionAdministrativa2])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_DivisionAdministrativa2]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_DivisionAdministrativa3] FOREIGN KEY([IdDivisionAdministrativa3])
REFERENCES [dbo].[DivisionAdministrativa3] ([IdDivisionAdministrativa3])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_DivisionAdministrativa3]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_DondeColocaLasColmenas] FOREIGN KEY([IdDondeColocaLasColmenas])
REFERENCES [dbo].[DondeColocaLasColmenas] ([IdDondeColocaLasColmenas])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_DondeColocaLasColmenas]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_DondeUstedProduce] FOREIGN KEY([IdDondeUstedProduce])
REFERENCES [dbo].[DondeUstedProduce] ([IdDondeUstedProduce])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_DondeUstedProduce]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_ElTamannoDeSuParcelaEs] FOREIGN KEY([IdElTamannoDeSuParcelaEs])
REFERENCES [dbo].[ElTamannoDeSuParcelaEs] ([IdElTamannoDeSuParcelaEs])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_ElTamannoDeSuParcelaEs]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_EstadoCivil] FOREIGN KEY([IdEstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([IdEstadoCivil])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_EstadoCivil]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_EstadoDiagnostico] FOREIGN KEY([IdEstadoDiagnostico])
REFERENCES [dbo].[EstadoDiagnostico] ([IdEstadoDiagnostico])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_EstadoDiagnostico]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_EstadoGeneralViviendaACFN] FOREIGN KEY([IdEstadoGeneralViviendaACFN])
REFERENCES [dbo].[EstadoGeneralViviendaACFN] ([IdEstadoGeneralViviendaACFN])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_EstadoGeneralViviendaACFN]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_EstadoGeneralViviendaProductor] FOREIGN KEY([IdEstadoGeneralViviendaProductor])
REFERENCES [dbo].[EstadoGeneralViviendaProductor] ([IdEstadoGeneralViviendaProductor])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_EstadoGeneralViviendaProductor]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_EstructuraGeneracionalHogar] FOREIGN KEY([IdEstructuraGeneracionalHogar])
REFERENCES [dbo].[EstructuraGeneracionalHogar] ([IdEstructuraGeneracionalHogar])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_EstructuraGeneracionalHogar]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_ExistenciaTransportePublico] FOREIGN KEY([IdExistenciaTransportePublico])
REFERENCES [dbo].[ExistenciaTransportePublico] ([IdExistenciaTransportePublico])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_ExistenciaTransportePublico]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_FacilidadAccesoComunidad] FOREIGN KEY([IdFacilidadAccesoComunidad])
REFERENCES [dbo].[FacilidadAccesoComunidad] ([IdFacilidadAccesoComunidad])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_FacilidadAccesoComunidad]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_FacilidadAccesoVivienda] FOREIGN KEY([IdFacilidadAccesoVivienda])
REFERENCES [dbo].[FacilidadAccesoVivienda] ([IdFacilidadAccesoVivienda])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_FacilidadAccesoVivienda]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_FormaJuridicaExplotacion] FOREIGN KEY([IdFormaJuridicaExplotacion])
REFERENCES [dbo].[FormaJuridicaExplotacion] ([IdFormaJuridicaExplotacion])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_FormaJuridicaExplotacion]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_FuenteAguaVivienda] FOREIGN KEY([IdFuenteAguaVivienda])
REFERENCES [dbo].[FuenteAguaVivienda] ([IdFuenteAguaVivienda])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_FuenteAguaVivienda]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([IdGrupo])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_Grupo]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_LaViviendaEsANombreSuyo] FOREIGN KEY([IdLaViviendaEsANombreSuyo])
REFERENCES [dbo].[LaViviendaEsANombreSuyo] ([IdLaViviendaEsANombreSuyo])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_LaViviendaEsANombreSuyo]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_LograProducir] FOREIGN KEY([IdLograProducir])
REFERENCES [dbo].[LograProducir] ([IdLograProducir])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_LograProducir]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_NivelConocimientoMeliponicultura] FOREIGN KEY([IdNivelConocimientoMeliponicultura])
REFERENCES [dbo].[NivelConocimientoMeliponicultura] ([IdNivelConocimientoMeliponicultura])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_NivelConocimientoMeliponicultura]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_OrientacionTecnicoEco] FOREIGN KEY([IdOrientacionTecnicoEco])
REFERENCES [dbo].[OrientacionTecnicoEco] ([IdOrientacionTecnicoEco])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_OrientacionTecnicoEco]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_OrigenDeLasSemillas] FOREIGN KEY([IdOrigenDeLasSemillas])
REFERENCES [dbo].[OrigenDeLasSemillas] ([IdOrigenDeLasSemillas])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_OrigenDeLasSemillas]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_Pais]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_Plaguicidas] FOREIGN KEY([IdPlaguicidas])
REFERENCES [dbo].[Plaguicidas] ([IdPlaguicidas])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_Plaguicidas]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_PosesionMedioTransportePublico] FOREIGN KEY([IdPosesionMedioTransportePublico])
REFERENCES [dbo].[PosesionMedioTransportePublico] ([IdPosesionMedioTransportePublico])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_PosesionMedioTransportePublico]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_PotencialLugarParaTenerAbejas] FOREIGN KEY([IdPotencialLugarParaTenerAbejas])
REFERENCES [dbo].[PotencialLugarParaTenerAbejas] ([IdPotencialLugarParaTenerAbejas])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_PotencialLugarParaTenerAbejas]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_ProporcionAutoconsumoAlimentosHogar] FOREIGN KEY([IdProporcionAutoconsumoAlimentosHogar])
REFERENCES [dbo].[ProporcionAutoconsumoAlimentosHogar] ([IdProporcionAutoconsumoAlimentosHogar])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_ProporcionAutoconsumoAlimentosHogar]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_RiesgoRoboColmenas] FOREIGN KEY([IdRiesgoRoboColmenas])
REFERENCES [dbo].[RiesgoRoboColmenas] ([IdRiesgoRoboColmenas])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_RiesgoRoboColmenas]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_SistemaRiegoCultivos] FOREIGN KEY([IdSistemaRiegoCultivos])
REFERENCES [dbo].[SistemaRiegoCultivos] ([IdSistemaRiegoCultivos])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_SistemaRiegoCultivos]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_SuViviendaEs] FOREIGN KEY([IdSuViviendaEs])
REFERENCES [dbo].[SuViviendaEs] ([IdSuViviendaEs])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_SuViviendaEs]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_TenenciaDeLaTierra] FOREIGN KEY([IdTenenciaDeLaTierra])
REFERENCES [dbo].[TenenciaDeLaTierra] ([IdTenenciaDeLaTierra])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_TenenciaDeLaTierra]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_Territorio] FOREIGN KEY([IdTerritorio])
REFERENCES [dbo].[Territorio] ([IdTerritorio])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_Territorio]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_TiempoLlegarCentroEducativo] FOREIGN KEY([IdTiempoLlegarCentroEducativo])
REFERENCES [dbo].[TiempoLlegarCentroEducativo] ([IdTiempoLlegarCentroEducativo])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_TiempoLlegarCentroEducativo]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_TiempoLlegarCentroSalud] FOREIGN KEY([IdTiempoLlegarCentroSalud])
REFERENCES [dbo].[TiempoLlegarCentroSalud] ([IdTiempoLlegarCentroSalud])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_TiempoLlegarCentroSalud]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_UstedConsideraContarConApoyoDeSuFamilia] FOREIGN KEY([IdUstedConsideraContarConApoyoDeSuFamilia])
REFERENCES [dbo].[UstedConsideraContarConApoyoDeSuFamilia] ([IdUstedConsideraContarConApoyoDeSuFamilia])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_UstedConsideraContarConApoyoDeSuFamilia]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_UstedConsideraQueSuHogarEs] FOREIGN KEY([IdUstedConsideraQueSuHogarEs])
REFERENCES [dbo].[UstedConsideraQueSuHogarEs] ([IdUstedConsideraQueSuHogarEs])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_UstedConsideraQueSuHogarEs]
GO
ALTER TABLE [dbo].[Productor]  WITH CHECK ADD  CONSTRAINT [FK_Productor_Usuario] FOREIGN KEY([IdUsuarioEncuestador])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Productor] CHECK CONSTRAINT [FK_Productor_Usuario]
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
