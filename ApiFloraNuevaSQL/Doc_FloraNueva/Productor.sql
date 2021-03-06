/*
   martes, 25 de septiembre de 201810:23:49
   Usuario: sa
   Servidor: EMCSERVER
   Base de datos: FloraNueva
   Aplicación: 
*/

/* Para evitar posibles problemas de pérdida de datos, debe revisar este script detalladamente antes de ejecutarlo fuera del contexto del diseñador de base de datos.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_Usuario
GO
ALTER TABLE dbo.Usuario SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Usuario', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Usuario', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Usuario', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_UstedConsideraQueSuHogarEs
GO
ALTER TABLE dbo.UstedConsideraQueSuHogarEs SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.UstedConsideraQueSuHogarEs', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.UstedConsideraQueSuHogarEs', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.UstedConsideraQueSuHogarEs', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_UstedConsideraContarConApoyoDeSuFamilia
GO
ALTER TABLE dbo.UstedConsideraContarConApoyoDeSuFamilia SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.UstedConsideraContarConApoyoDeSuFamilia', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.UstedConsideraContarConApoyoDeSuFamilia', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.UstedConsideraContarConApoyoDeSuFamilia', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_TiempoLlegarCentroSalud
GO
ALTER TABLE dbo.TiempoLlegarCentroSalud SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.TiempoLlegarCentroSalud', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.TiempoLlegarCentroSalud', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.TiempoLlegarCentroSalud', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_TiempoLlegarCentroEducativo
GO
ALTER TABLE dbo.TiempoLlegarCentroEducativo SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.TiempoLlegarCentroEducativo', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.TiempoLlegarCentroEducativo', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.TiempoLlegarCentroEducativo', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_Territorio
GO
ALTER TABLE dbo.Territorio SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Territorio', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Territorio', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Territorio', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_TenenciaDeLaTierra
GO
ALTER TABLE dbo.TenenciaDeLaTierra SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.TenenciaDeLaTierra', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.TenenciaDeLaTierra', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.TenenciaDeLaTierra', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_SuViviendaEs
GO
ALTER TABLE dbo.SuViviendaEs SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SuViviendaEs', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SuViviendaEs', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SuViviendaEs', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_SistemaRiegoCultivos
GO
ALTER TABLE dbo.SistemaRiegoCultivos SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SistemaRiegoCultivos', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SistemaRiegoCultivos', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SistemaRiegoCultivos', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_RiesgoRoboColmenas
GO
ALTER TABLE dbo.RiesgoRoboColmenas SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.RiesgoRoboColmenas', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.RiesgoRoboColmenas', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.RiesgoRoboColmenas', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_ProporcionAutoconsumoAlimentosHogar
GO
ALTER TABLE dbo.ProporcionAutoconsumoAlimentosHogar SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProporcionAutoconsumoAlimentosHogar', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProporcionAutoconsumoAlimentosHogar', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProporcionAutoconsumoAlimentosHogar', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_PotencialLugarParaTenerAbejas
GO
ALTER TABLE dbo.PotencialLugarParaTenerAbejas SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.PotencialLugarParaTenerAbejas', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.PotencialLugarParaTenerAbejas', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.PotencialLugarParaTenerAbejas', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_PosesionMedioTransportePublico
GO
ALTER TABLE dbo.PosesionMedioTransportePublico SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.PosesionMedioTransportePublico', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.PosesionMedioTransportePublico', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.PosesionMedioTransportePublico', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_Plaguicidas
GO
ALTER TABLE dbo.Plaguicidas SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Plaguicidas', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Plaguicidas', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Plaguicidas', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_Pais
GO
ALTER TABLE dbo.Pais SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Pais', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Pais', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Pais', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_OrigenDeLasSemillas
GO
ALTER TABLE dbo.OrigenDeLasSemillas SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.OrigenDeLasSemillas', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.OrigenDeLasSemillas', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.OrigenDeLasSemillas', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_OrientacionTecnicoEco
GO
ALTER TABLE dbo.OrientacionTecnicoEco SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.OrientacionTecnicoEco', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.OrientacionTecnicoEco', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.OrientacionTecnicoEco', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_NivelConocimientoMeliponicultura
GO
ALTER TABLE dbo.NivelConocimientoMeliponicultura SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.NivelConocimientoMeliponicultura', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.NivelConocimientoMeliponicultura', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.NivelConocimientoMeliponicultura', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_LograProducir
GO
ALTER TABLE dbo.LograProducir SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.LograProducir', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.LograProducir', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.LograProducir', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_LaViviendaEsANombreSuyo
GO
ALTER TABLE dbo.LaViviendaEsANombreSuyo SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.LaViviendaEsANombreSuyo', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.LaViviendaEsANombreSuyo', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.LaViviendaEsANombreSuyo', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_Grupo
GO
ALTER TABLE dbo.Grupo SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Grupo', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Grupo', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Grupo', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_FuenteAguaVivienda
GO
ALTER TABLE dbo.FuenteAguaVivienda SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.FuenteAguaVivienda', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.FuenteAguaVivienda', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.FuenteAguaVivienda', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_FormaJuridicaExplotacion
GO
ALTER TABLE dbo.FormaJuridicaExplotacion SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.FormaJuridicaExplotacion', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.FormaJuridicaExplotacion', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.FormaJuridicaExplotacion', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_FacilidadAccesoVivienda
GO
ALTER TABLE dbo.FacilidadAccesoVivienda SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.FacilidadAccesoVivienda', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.FacilidadAccesoVivienda', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.FacilidadAccesoVivienda', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_FacilidadAccesoComunidad
GO
ALTER TABLE dbo.FacilidadAccesoComunidad SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.FacilidadAccesoComunidad', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.FacilidadAccesoComunidad', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.FacilidadAccesoComunidad', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_ExistenciaTransportePublico
GO
ALTER TABLE dbo.ExistenciaTransportePublico SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ExistenciaTransportePublico', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ExistenciaTransportePublico', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ExistenciaTransportePublico', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_EstructuraGeneracionalHogar
GO
ALTER TABLE dbo.EstructuraGeneracionalHogar SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.EstructuraGeneracionalHogar', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.EstructuraGeneracionalHogar', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.EstructuraGeneracionalHogar', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_EstadoGeneralViviendaProductor
GO
ALTER TABLE dbo.EstadoGeneralViviendaProductor SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.EstadoGeneralViviendaProductor', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.EstadoGeneralViviendaProductor', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.EstadoGeneralViviendaProductor', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_EstadoGeneralViviendaACFN
GO
ALTER TABLE dbo.EstadoGeneralViviendaACFN SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.EstadoGeneralViviendaACFN', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.EstadoGeneralViviendaACFN', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.EstadoGeneralViviendaACFN', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_EstadoDiagnostico
GO
ALTER TABLE dbo.EstadoDiagnostico SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.EstadoDiagnostico', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.EstadoDiagnostico', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.EstadoDiagnostico', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_EstadoCivil
GO
ALTER TABLE dbo.EstadoCivil SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.EstadoCivil', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.EstadoCivil', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.EstadoCivil', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_ElTamannoDeSuParcelaEs
GO
ALTER TABLE dbo.ElTamannoDeSuParcelaEs SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ElTamannoDeSuParcelaEs', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ElTamannoDeSuParcelaEs', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ElTamannoDeSuParcelaEs', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_DondeUstedProduce
GO
ALTER TABLE dbo.DondeUstedProduce SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DondeUstedProduce', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DondeUstedProduce', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DondeUstedProduce', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_DondeColocaLasColmenas
GO
ALTER TABLE dbo.DondeColocaLasColmenas SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DondeColocaLasColmenas', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DondeColocaLasColmenas', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DondeColocaLasColmenas', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_DivisionAdministrativa3
GO
ALTER TABLE dbo.DivisionAdministrativa3 SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DivisionAdministrativa3', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DivisionAdministrativa3', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DivisionAdministrativa3', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_DivisionAdministrativa2
GO
ALTER TABLE dbo.DivisionAdministrativa2 SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DivisionAdministrativa2', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DivisionAdministrativa2', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DivisionAdministrativa2', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_DivisionAdministrativa1
GO
ALTER TABLE dbo.DivisionAdministrativa1 SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DivisionAdministrativa1', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DivisionAdministrativa1', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DivisionAdministrativa1', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_DestinoMiel
GO
ALTER TABLE dbo.DestinoMiel SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DestinoMiel', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DestinoMiel', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DestinoMiel', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_DestinoDeLaProduccion
GO
ALTER TABLE dbo.DestinoDeLaProduccion SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DestinoDeLaProduccion', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DestinoDeLaProduccion', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DestinoDeLaProduccion', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_ControlDeMaleza
GO
ALTER TABLE dbo.ControlDeMaleza SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ControlDeMaleza', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ControlDeMaleza', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ControlDeMaleza', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_ConLosIngresosUstedEstimaQue
GO
ALTER TABLE dbo.ConLosIngresosUstedEstimaQue SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ConLosIngresosUstedEstimaQue', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ConLosIngresosUstedEstimaQue', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ConLosIngresosUstedEstimaQue', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_ConLaActualSituacionEconomica
GO
ALTER TABLE dbo.ConLaActualSituacionEconomica SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ConLaActualSituacionEconomica', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ConLaActualSituacionEconomica', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ConLaActualSituacionEconomica', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_CategoriaMecanizacion
GO
ALTER TABLE dbo.CategoriaMecanizacion SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.CategoriaMecanizacion', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CategoriaMecanizacion', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CategoriaMecanizacion', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_CategoriaManejo
GO
ALTER TABLE dbo.CategoriaManejo SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.CategoriaManejo', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CategoriaManejo', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CategoriaManejo', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_CategoriaInfraestructura
GO
ALTER TABLE dbo.CategoriaInfraestructura SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.CategoriaInfraestructura', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CategoriaInfraestructura', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CategoriaInfraestructura', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_CategoriaExplotacionAgricola
GO
ALTER TABLE dbo.CategoriaExplotacionAgricola SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.CategoriaExplotacionAgricola', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CategoriaExplotacionAgricola', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CategoriaExplotacionAgricola', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_CategoriaActividadPrincipal
GO
ALTER TABLE dbo.CategoriaActividadPrincipal SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.CategoriaActividadPrincipal', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CategoriaActividadPrincipal', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CategoriaActividadPrincipal', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_AUstedLeGustaria
GO
ALTER TABLE dbo.AUstedLeGustaria SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.AUstedLeGustaria', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.AUstedLeGustaria', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.AUstedLeGustaria', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_ApoyoVecinosCasoNecesidad
GO
ALTER TABLE dbo.ApoyoVecinosCasoNecesidad SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ApoyoVecinosCasoNecesidad', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ApoyoVecinosCasoNecesidad', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ApoyoVecinosCasoNecesidad', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_AmbienteSocialComunidad
GO
ALTER TABLE dbo.AmbienteSocialComunidad SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.AmbienteSocialComunidad', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.AmbienteSocialComunidad', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.AmbienteSocialComunidad', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_ActvidadAgricola
GO
ALTER TABLE dbo.ActvidadAgricola SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ActvidadAgricola', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ActvidadAgricola', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ActvidadAgricola', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Productor
	DROP CONSTRAINT FK_Productor_Abono
GO
ALTER TABLE dbo.Abono SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Abono', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Abono', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Abono', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Productor
	(
	IdProductor int NOT NULL IDENTITY (1, 1),
	Identificador uniqueidentifier NOT NULL,
	IdUsuarioEncuestador int NULL,
	FechaEncuesta datetime NULL,
	VisitaALaCasa bit NULL,
	IdEstadoDiagnostico int NULL,
	Nombres varchar(100) NULL,
	Apellido1 varchar(100) NULL,
	Apellido2 varchar(100) NULL,
	Foto image NULL,
	CodigoFloraNueva varchar(50) NULL,
	Sexo bit NULL,
	NumeroCedula varchar(50) NULL,
	FechaNacimiento datetime NULL,
	IdEstadoCivil int NULL,
	PerteneceAAlgunGrupoEtnico varchar(500) NULL,
	IdPais int NULL,
	IdGrupo int NULL,
	IdDivisionAdministrativa1 int NULL,
	IdDivisionAdministrativa2 int NULL,
	IdDivisionAdministrativa3 int NULL,
	DivisionAdministrativa4 varchar(250) NULL,
	DireccionExacta varchar(500) NULL,
	IdTerritorio int NULL,
	GPSLatitud decimal(20, 6) NULL,
	GPSLongitud decimal(20, 6) NULL,
	Altitud decimal(20, 6) NULL,
	ComentariosUbicacion varchar(500) NULL,
	ActividadLaboralPrincipal varchar(500) NULL,
	ActividadLaboralSecundaria varchar(500) NULL,
	IdCategoriaActividadPrincipal int NULL,
	IdActividadAgricola int NULL,
	TotalPersonasHogar int NULL,
	TotalPersonasActivasEconomicamente int NULL,
	TotalPersonasDependientes int NULL,
	IndiceInsercionLaboralProductor decimal(20, 6) NULL,
	IndiceNivelEducativoProductor decimal(20, 6) NULL,
	IndiceCiudadaniaSocialProductor decimal(20, 6) NULL,
	IndiceInsercionProductivaProductor decimal(20, 6) NULL,
	IndiceInclusionSocialProductor decimal(20, 6) NULL,
	IndiceInsercionLaboralHogar decimal(20, 6) NULL,
	IndiceNivelEducativoHogar decimal(20, 6) NULL,
	IndiceCiudadaniaSocialHogar decimal(20, 6) NULL,
	IndiceInsercionProductivaHogar decimal(20, 6) NULL,
	TasaActividadEconomicaHogar decimal(20, 6) NULL,
	IndiceInclusionSocialHogar decimal(20, 6) NULL,
	IdFacilidadAccesoComunidad int NULL,
	IdFacilidadAccesoVivienda int NULL,
	IndiceFacilidadAcceso decimal(20, 6) NULL,
	IdTiempoLlegarCentroEducativo int NULL,
	IdTiempoLlegarCentroSalud int NULL,
	IndiceCercaniaCentrosBasicos decimal(20, 6) NULL,
	IdExistenciaTransportePublico int NULL,
	IdPosesionMedioTransportePublico int NULL,
	EspecificarMediosTransporte varchar(500) NULL,
	IndiceCapacidadDesplazamiento decimal(20, 6) NULL,
	IndiceConexionProximidadGeografica decimal(20, 6) NULL,
	IdEstructuraGeneracionalHogar int NULL,
	OtrosFamiliaresVivenEnLaMismaComunidad bit NULL,
	IdUstedConsideraContarConApoyoDeSuFamilia int NULL,
	IndiceCercaniaRelacionFamiliar decimal(20, 6) NULL,
	IdApoyoVecinosCasoNecesidad int NULL,
	IdAmbienteSocialComunidad int NULL,
	SeSienteUstedRealmenteParteComunidad bit NULL,
	UstedEsUnMiembroActivoDeAlgunGrupo bit NULL,
	MiembroActivoEspecificar varchar(500) NULL,
	IndiceCercaniaRelacionComunidad decimal(20, 6) NULL,
	IndiceRelacionesSociales decimal(20, 6) NULL,
	IndiceGlobalBienestarSocialFamiliar decimal(20, 6) NULL,
	IdSuViviendaEs int NULL,
	IdLaViviendaEsANombreSuyo int NULL,
	LaViviendaEsANombreSuyoEspecificar varchar(500) NULL,
	IdEstadoGeneralViviendaACFN int NULL,
	IdEstadoGeneralViviendaProductor int NULL,
	CantidadDormitorios int NULL,
	HacinamientoPorDormitorios int NULL,
	IndiceHacinamiento decimal(20, 6) NULL,
	IndiceEstadoVivienda decimal(20, 6) NULL,
	IndiceVivienda decimal(20, 6) NULL,
	IdFuenteAguaVivienda int NULL,
	AccesoALaElectricidad bit NULL,
	IndiceServiciosBasicos decimal(20, 6) NULL,
	TieneTelefonoResidencial bit NULL,
	TieneTelefonoCelular bit NULL,
	TieneSennalTelefoniaMovilEnSuCasa bit NULL,
	TieneAccesoAInternet bit NULL,
	IndiceServiciosComunicacion decimal(20, 6) NULL,
	IndiceAccesoAServicios decimal(20, 6) NULL,
	RecibeAyudaFinanciera bit NULL,
	RecibeAyudaFinancieraEspecificar varchar(500) NULL,
	PresupuestoSuficienteCubrirGastosBasicos bit NULL,
	ParaQueNoAlcanzaPresupuestoHogar varchar(500) NULL,
	IdConLosIngresosUstedEstimaQue int NULL,
	MontoMinimoMensualParaVivir decimal(20, 6) NULL,
	IdConLaActualSituacionEconomica int NULL,
	IdUstedConsideraQueSuHogarEs int NULL,
	IndiceNivelVida decimal(20, 6) NULL,
	IndiceBienestarEconomicoMaterialHogar decimal(20, 6) NULL,
	UstedProduceAlimentosParaSuHogar bit NULL,
	GranosBasicos bit NULL,
	Hortalizas bit NULL,
	Frutas bit NULL,
	AnimalesYSusProductos bit NULL,
	ProductosTransformados bit NULL,
	PlantasAromaticasYMedicinales bit NULL,
	QueProduceParaSuHogarOtros bit NULL,
	IdProporcionAutoconsumoAlimentosHogar int NULL,
	IdLograProducir int NULL,
	IdDondeUstedProduce int NULL,
	IdElTamannoDeSuParcelaEs int NULL,
	IdAUstedLeGustaria int NULL,
	TamannoParcela bit NULL,
	ManoObra bit NULL,
	FertilidadSuelos bit NULL,
	TiempoDisponible bit NULL,
	RecursosFinancierosInvertirYTrabajar bit NULL,
	RiesgosNaturalesMuyFrecuentes bit NULL,
	OtrasLimitantes bit NULL,
	NoPoseeTierras bit NULL,
	NoPoseeConocimientos bit NULL,
	TrabajaEnOtroSectorYNoTieneTiempo bit NULL,
	NoLeInteresaPrefiereComprar bit NULL,
	ElLugarNoEsAptoParaCultivar bit NULL,
	OtrasRazones bit NULL,
	IndiceSoberaniaAlimenticia decimal(20, 6) NULL,
	FelicidadSuTrabajo decimal(20, 6) NULL,
	FelicidadSuSituacionFinanciera decimal(20, 6) NULL,
	FelicidadSuEstadoSalud decimal(20, 6) NULL,
	FelicidadSuVivienda decimal(20, 6) NULL,
	FelicidadSuTiempoLibre decimal(20, 6) NULL,
	FelicidadSuFamilia decimal(20, 6) NULL,
	FelicidadSuEducacion decimal(20, 6) NULL,
	FelicidadElMedioAmbiente decimal(20, 6) NULL,
	FelicidadSuVidaSocial decimal(20, 6) NULL,
	FelicidadSuParticipacionDentroComunidad decimal(20, 6) NULL,
	IndiceFelicidad decimal(20, 6) NULL,
	IdFormaJuridicaExplotacion int NULL,
	PerteneceAUnaOrganizacionAgropecuaria bit NULL,
	NombreOrganizacionAgropecuaria varchar(500) NULL,
	IdTenenciaDeLaTierra int NULL,
	ANombreDeQuienEstaElTerreno bit NULL,
	SiEsANombreDeOtraPersonaEspecificar varchar(500) NULL,
	EspecificarUbicacionDeLaTierra varchar(500) NULL,
	SuperficieDeLaParcela decimal(20, 6) NULL,
	MiniDescripcionDeLaFinca varchar(500) NULL,
	FotoParcela image NULL,
	CualEsSuProduccionPrincipal varchar(500) NULL,
	CualesSonLasOtrasProduccionesQueTiene varchar(500) NULL,
	IdAbono int NULL,
	IdControlDeMaleza int NULL,
	IdPlaguicidas int NULL,
	IdOrigenDeLasSemillas int NULL,
	IdSistemaRiegoCultivos int NULL,
	PoseeUnaCertificacion bit NULL,
	CertificacionEspecificar varchar(500) NULL,
	IdCategoriaManejo int NULL,
	ComentarioDeManejo varchar(500) NULL,
	ListaMaquinariaDisponibleEnLaFinca varchar(500) NULL,
	IdCategoriaMecanizacion int NULL,
	ListaInfraestructuraDisponibleEnLaFinca varchar(500) NULL,
	IdCategoriaInfraestructura int NULL,
	RealizaAlgunProcesoTransformacionOValorAgregado bit NULL,
	ProcesoTransformacionOValorAgregadoEspecificar varchar(500) NULL,
	IdDestinoDeLaProduccion int NULL,
	SiVentaEspecificarCanalesComercializacion varchar(500) NULL,
	IdCategoriaExplotacionAgricola int NULL,
	IdOrientacionTecnicoEco int NULL,
	ComentarioExplotacionAgricola varchar(500) NULL,
	TieneAbejasSinAguijon bit NULL,
	DesdeCuandoLasTiene datetime NULL,
	OtrasEspeciesAbeja varchar(500) NULL,
	DondeYComoObtuvoEsasColmenas varchar(500) NULL,
	ProduceMiel bit NULL,
	ComoCosechaLaMiel varchar(500) NULL,
	IdDestinoMiel int NULL,
	DondeSeVendeMielEspecificar varchar(500) NULL,
	PrecioVentaMiel decimal(20, 6) NULL,
	IdDondeColocaLasColmenas int NULL,
	DondeSeUbicanLasColmenas varchar(500) NULL,
	DiagnosticoVisualDelMeliponarioYSuEntorno varchar(500) NULL,
	IdPotencialLugarParaTenerAbejas int NULL,
	IdRiesgoRoboColmenas int NULL,
	FotoMeliponario image NULL,
	CualEsSuMotivacionParaTenerLasAbejas varchar(500) NULL,
	ComoAprendioACriarLasAbejas varchar(500) NULL,
	IdNivelConocimientoMeliponicultura int NULL,
	ComentariosMeliponicultura varchar(500) NULL,
	QueEsLoQueMejorariaSuCalidadDeVida varchar(500) NULL,
	CualesSonLosFrenosCalidadDeVida varchar(500) NULL,
	ComoMejorariaSuActividadAgricola varchar(500) NULL,
	CualesSonLosFrenosActividadAgricola varchar(500) NULL,
	EnQueLeGustariaQueACFNLoPuedaApoyar varchar(500) NULL,
	CualesSon3FortalezasDeSuComunidad varchar(500) NULL,
	CualesSon3PrincipalesProblemasComunidad varchar(500) NULL,
	QueSolucionesPropondriaMejorarComunidad varchar(500) NULL,
	CualesSonLosFrenosImpidenHacerEsasSoluciones varchar(500) NULL,
	Fortalezas varchar(500) NULL,
	Debilidades varchar(500) NULL,
	Oportunidades varchar(500) NULL,
	Amenazas varchar(500) NULL,
	ProyectosPotenciales varchar(500) NULL,
	ComentarioGeneral varchar(500) NULL,
	IndicadorBienestarSocialYFamiliarDelHogar decimal(20, 6) NULL,
	IndicadorBienestarEconomicoYMaterialDelHogar decimal(20, 6) NULL,
	IndicadorSoberaniaAlimenticia decimal(20, 6) NULL,
	IndicadorFelicidad decimal(20, 6) NULL,
	Estado varchar(50) NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Productor SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_Productor ON
GO
IF EXISTS(SELECT * FROM dbo.Productor)
	 EXEC('INSERT INTO dbo.Tmp_Productor (IdProductor, IdUsuarioEncuestador, FechaEncuesta, VisitaALaCasa, IdEstadoDiagnostico, Nombres, Apellido1, Apellido2, Foto, CodigoFloraNueva, Sexo, NumeroCedula, FechaNacimiento, IdEstadoCivil, PerteneceAAlgunGrupoEtnico, IdPais, IdGrupo, IdDivisionAdministrativa1, IdDivisionAdministrativa2, IdDivisionAdministrativa3, DivisionAdministrativa4, DireccionExacta, IdTerritorio, GPSLatitud, GPSLongitud, Altitud, ComentariosUbicacion, ActividadLaboralPrincipal, ActividadLaboralSecundaria, IdCategoriaActividadPrincipal, IdActividadAgricola, TotalPersonasHogar, TotalPersonasActivasEconomicamente, TotalPersonasDependientes, IndiceInsercionLaboralProductor, IndiceNivelEducativoProductor, IndiceCiudadaniaSocialProductor, IndiceInsercionProductivaProductor, IndiceInclusionSocialProductor, IndiceInsercionLaboralHogar, IndiceNivelEducativoHogar, IndiceCiudadaniaSocialHogar, IndiceInsercionProductivaHogar, TasaActividadEconomicaHogar, IndiceInclusionSocialHogar, IdFacilidadAccesoComunidad, IdFacilidadAccesoVivienda, IndiceFacilidadAcceso, IdTiempoLlegarCentroEducativo, IdTiempoLlegarCentroSalud, IndiceCercaniaCentrosBasicos, IdExistenciaTransportePublico, IdPosesionMedioTransportePublico, EspecificarMediosTransporte, IndiceCapacidadDesplazamiento, IndiceConexionProximidadGeografica, IdEstructuraGeneracionalHogar, OtrosFamiliaresVivenEnLaMismaComunidad, IdUstedConsideraContarConApoyoDeSuFamilia, IndiceCercaniaRelacionFamiliar, IdApoyoVecinosCasoNecesidad, IdAmbienteSocialComunidad, SeSienteUstedRealmenteParteComunidad, UstedEsUnMiembroActivoDeAlgunGrupo, MiembroActivoEspecificar, IndiceCercaniaRelacionComunidad, IndiceRelacionesSociales, IndiceGlobalBienestarSocialFamiliar, IdSuViviendaEs, IdLaViviendaEsANombreSuyo, LaViviendaEsANombreSuyoEspecificar, IdEstadoGeneralViviendaACFN, IdEstadoGeneralViviendaProductor, CantidadDormitorios, HacinamientoPorDormitorios, IndiceHacinamiento, IndiceEstadoVivienda, IndiceVivienda, IdFuenteAguaVivienda, AccesoALaElectricidad, IndiceServiciosBasicos, TieneTelefonoResidencial, TieneTelefonoCelular, TieneSennalTelefoniaMovilEnSuCasa, TieneAccesoAInternet, IndiceServiciosComunicacion, IndiceAccesoAServicios, RecibeAyudaFinanciera, RecibeAyudaFinancieraEspecificar, PresupuestoSuficienteCubrirGastosBasicos, ParaQueNoAlcanzaPresupuestoHogar, IdConLosIngresosUstedEstimaQue, MontoMinimoMensualParaVivir, IdConLaActualSituacionEconomica, IdUstedConsideraQueSuHogarEs, IndiceNivelVida, IndiceBienestarEconomicoMaterialHogar, UstedProduceAlimentosParaSuHogar, GranosBasicos, Hortalizas, Frutas, AnimalesYSusProductos, ProductosTransformados, PlantasAromaticasYMedicinales, QueProduceParaSuHogarOtros, IdProporcionAutoconsumoAlimentosHogar, IdLograProducir, IdDondeUstedProduce, IdElTamannoDeSuParcelaEs, IdAUstedLeGustaria, TamannoParcela, ManoObra, FertilidadSuelos, TiempoDisponible, RecursosFinancierosInvertirYTrabajar, RiesgosNaturalesMuyFrecuentes, OtrasLimitantes, NoPoseeTierras, NoPoseeConocimientos, TrabajaEnOtroSectorYNoTieneTiempo, NoLeInteresaPrefiereComprar, ElLugarNoEsAptoParaCultivar, OtrasRazones, IndiceSoberaniaAlimenticia, FelicidadSuTrabajo, FelicidadSuSituacionFinanciera, FelicidadSuEstadoSalud, FelicidadSuVivienda, FelicidadSuTiempoLibre, FelicidadSuFamilia, FelicidadSuEducacion, FelicidadElMedioAmbiente, FelicidadSuVidaSocial, FelicidadSuParticipacionDentroComunidad, IndiceFelicidad, IdFormaJuridicaExplotacion, PerteneceAUnaOrganizacionAgropecuaria, NombreOrganizacionAgropecuaria, IdTenenciaDeLaTierra, ANombreDeQuienEstaElTerreno, SiEsANombreDeOtraPersonaEspecificar, EspecificarUbicacionDeLaTierra, SuperficieDeLaParcela, MiniDescripcionDeLaFinca, FotoParcela, CualEsSuProduccionPrincipal, CualesSonLasOtrasProduccionesQueTiene, IdAbono, IdControlDeMaleza, IdPlaguicidas, IdOrigenDeLasSemillas, IdSistemaRiegoCultivos, PoseeUnaCertificacion, CertificacionEspecificar, IdCategoriaManejo, ComentarioDeManejo, ListaMaquinariaDisponibleEnLaFinca, IdCategoriaMecanizacion, ListaInfraestructuraDisponibleEnLaFinca, IdCategoriaInfraestructura, RealizaAlgunProcesoTransformacionOValorAgregado, ProcesoTransformacionOValorAgregadoEspecificar, IdDestinoDeLaProduccion, SiVentaEspecificarCanalesComercializacion, IdCategoriaExplotacionAgricola, IdOrientacionTecnicoEco, ComentarioExplotacionAgricola, TieneAbejasSinAguijon, DesdeCuandoLasTiene, OtrasEspeciesAbeja, DondeYComoObtuvoEsasColmenas, ProduceMiel, ComoCosechaLaMiel, IdDestinoMiel, DondeSeVendeMielEspecificar, PrecioVentaMiel, IdDondeColocaLasColmenas, DondeSeUbicanLasColmenas, DiagnosticoVisualDelMeliponarioYSuEntorno, IdPotencialLugarParaTenerAbejas, IdRiesgoRoboColmenas, FotoMeliponario, CualEsSuMotivacionParaTenerLasAbejas, ComoAprendioACriarLasAbejas, IdNivelConocimientoMeliponicultura, ComentariosMeliponicultura, QueEsLoQueMejorariaSuCalidadDeVida, CualesSonLosFrenosCalidadDeVida, ComoMejorariaSuActividadAgricola, CualesSonLosFrenosActividadAgricola, EnQueLeGustariaQueACFNLoPuedaApoyar, CualesSon3FortalezasDeSuComunidad, CualesSon3PrincipalesProblemasComunidad, QueSolucionesPropondriaMejorarComunidad, CualesSonLosFrenosImpidenHacerEsasSoluciones, Fortalezas, Debilidades, Oportunidades, Amenazas, ProyectosPotenciales, ComentarioGeneral, IndicadorBienestarSocialYFamiliarDelHogar, IndicadorBienestarEconomicoYMaterialDelHogar, IndicadorSoberaniaAlimenticia, IndicadorFelicidad, Estado)
		SELECT IdProductor, IdUsuarioEncuestador, FechaEncuesta, VisitaALaCasa, IdEstadoDiagnostico, Nombres, Apellido1, Apellido2, Foto, CodigoFloraNueva, Sexo, NumeroCedula, FechaNacimiento, IdEstadoCivil, PerteneceAAlgunGrupoEtnico, IdPais, IdGrupo, IdDivisionAdministrativa1, IdDivisionAdministrativa2, IdDivisionAdministrativa3, DivisionAdministrativa4, DireccionExacta, IdTerritorio, GPSLatitud, GPSLongitud, Altitud, ComentariosUbicacion, ActividadLaboralPrincipal, ActividadLaboralSecundaria, IdCategoriaActividadPrincipal, IdActividadAgricola, TotalPersonasHogar, TotalPersonasActivasEconomicamente, TotalPersonasDependientes, IndiceInsercionLaboralProductor, IndiceNivelEducativoProductor, IndiceCiudadaniaSocialProductor, IndiceInsercionProductivaProductor, IndiceInclusionSocialProductor, IndiceInsercionLaboralHogar, IndiceNivelEducativoHogar, IndiceCiudadaniaSocialHogar, IndiceInsercionProductivaHogar, TasaActividadEconomicaHogar, IndiceInclusionSocialHogar, IdFacilidadAccesoComunidad, IdFacilidadAccesoVivienda, IndiceFacilidadAcceso, IdTiempoLlegarCentroEducativo, IdTiempoLlegarCentroSalud, IndiceCercaniaCentrosBasicos, IdExistenciaTransportePublico, IdPosesionMedioTransportePublico, EspecificarMediosTransporte, IndiceCapacidadDesplazamiento, IndiceConexionProximidadGeografica, IdEstructuraGeneracionalHogar, OtrosFamiliaresVivenEnLaMismaComunidad, IdUstedConsideraContarConApoyoDeSuFamilia, IndiceCercaniaRelacionFamiliar, IdApoyoVecinosCasoNecesidad, IdAmbienteSocialComunidad, SeSienteUstedRealmenteParteComunidad, UstedEsUnMiembroActivoDeAlgunGrupo, MiembroActivoEspecificar, IndiceCercaniaRelacionComunidad, IndiceRelacionesSociales, IndiceGlobalBienestarSocialFamiliar, IdSuViviendaEs, IdLaViviendaEsANombreSuyo, LaViviendaEsANombreSuyoEspecificar, IdEstadoGeneralViviendaACFN, IdEstadoGeneralViviendaProductor, CantidadDormitorios, HacinamientoPorDormitorios, IndiceHacinamiento, IndiceEstadoVivienda, IndiceVivienda, IdFuenteAguaVivienda, AccesoALaElectricidad, IndiceServiciosBasicos, TieneTelefonoResidencial, TieneTelefonoCelular, TieneSennalTelefoniaMovilEnSuCasa, TieneAccesoAInternet, IndiceServiciosComunicacion, IndiceAccesoAServicios, RecibeAyudaFinanciera, RecibeAyudaFinancieraEspecificar, PresupuestoSuficienteCubrirGastosBasicos, ParaQueNoAlcanzaPresupuestoHogar, IdConLosIngresosUstedEstimaQue, MontoMinimoMensualParaVivir, IdConLaActualSituacionEconomica, IdUstedConsideraQueSuHogarEs, IndiceNivelVida, IndiceBienestarEconomicoMaterialHogar, UstedProduceAlimentosParaSuHogar, GranosBasicos, Hortalizas, Frutas, AnimalesYSusProductos, ProductosTransformados, PlantasAromaticasYMedicinales, QueProduceParaSuHogarOtros, IdProporcionAutoconsumoAlimentosHogar, IdLograProducir, IdDondeUstedProduce, IdElTamannoDeSuParcelaEs, IdAUstedLeGustaria, TamannoParcela, ManoObra, FertilidadSuelos, TiempoDisponible, RecursosFinancierosInvertirYTrabajar, RiesgosNaturalesMuyFrecuentes, OtrasLimitantes, NoPoseeTierras, NoPoseeConocimientos, TrabajaEnOtroSectorYNoTieneTiempo, NoLeInteresaPrefiereComprar, ElLugarNoEsAptoParaCultivar, OtrasRazones, IndiceSoberaniaAlimenticia, FelicidadSuTrabajo, FelicidadSuSituacionFinanciera, FelicidadSuEstadoSalud, FelicidadSuVivienda, FelicidadSuTiempoLibre, FelicidadSuFamilia, FelicidadSuEducacion, FelicidadElMedioAmbiente, FelicidadSuVidaSocial, FelicidadSuParticipacionDentroComunidad, IndiceFelicidad, IdFormaJuridicaExplotacion, PerteneceAUnaOrganizacionAgropecuaria, NombreOrganizacionAgropecuaria, IdTenenciaDeLaTierra, ANombreDeQuienEstaElTerreno, SiEsANombreDeOtraPersonaEspecificar, EspecificarUbicacionDeLaTierra, SuperficieDeLaParcela, MiniDescripcionDeLaFinca, FotoParcela, CualEsSuProduccionPrincipal, CualesSonLasOtrasProduccionesQueTiene, IdAbono, IdControlDeMaleza, IdPlaguicidas, IdOrigenDeLasSemillas, IdSistemaRiegoCultivos, PoseeUnaCertificacion, CertificacionEspecificar, IdCategoriaManejo, ComentarioDeManejo, ListaMaquinariaDisponibleEnLaFinca, IdCategoriaMecanizacion, ListaInfraestructuraDisponibleEnLaFinca, IdCategoriaInfraestructura, RealizaAlgunProcesoTransformacionOValorAgregado, ProcesoTransformacionOValorAgregadoEspecificar, IdDestinoDeLaProduccion, SiVentaEspecificarCanalesComercializacion, IdCategoriaExplotacionAgricola, IdOrientacionTecnicoEco, ComentarioExplotacionAgricola, TieneAbejasSinAguijon, DesdeCuandoLasTiene, OtrasEspeciesAbeja, DondeYComoObtuvoEsasColmenas, ProduceMiel, ComoCosechaLaMiel, IdDestinoMiel, DondeSeVendeMielEspecificar, PrecioVentaMiel, IdDondeColocaLasColmenas, DondeSeUbicanLasColmenas, DiagnosticoVisualDelMeliponarioYSuEntorno, IdPotencialLugarParaTenerAbejas, IdRiesgoRoboColmenas, FotoMeliponario, CualEsSuMotivacionParaTenerLasAbejas, ComoAprendioACriarLasAbejas, IdNivelConocimientoMeliponicultura, ComentariosMeliponicultura, QueEsLoQueMejorariaSuCalidadDeVida, CualesSonLosFrenosCalidadDeVida, ComoMejorariaSuActividadAgricola, CualesSonLosFrenosActividadAgricola, EnQueLeGustariaQueACFNLoPuedaApoyar, CualesSon3FortalezasDeSuComunidad, CualesSon3PrincipalesProblemasComunidad, QueSolucionesPropondriaMejorarComunidad, CualesSonLosFrenosImpidenHacerEsasSoluciones, Fortalezas, Debilidades, Oportunidades, Amenazas, ProyectosPotenciales, ComentarioGeneral, IndicadorBienestarSocialYFamiliarDelHogar, IndicadorBienestarEconomicoYMaterialDelHogar, IndicadorSoberaniaAlimenticia, IndicadorFelicidad, Estado FROM dbo.Productor WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Productor OFF
GO
ALTER TABLE dbo.ProductorContacto
	DROP CONSTRAINT FK_ProductorContacto_Productor
GO
ALTER TABLE dbo.ProductorDetalleProduccionAnimal
	DROP CONSTRAINT FK_ProductorDetalleProduccionAnimal_Productor
GO
ALTER TABLE dbo.ProductorDetalleProduccionVegetal
	DROP CONSTRAINT FK_ProductorDetalleProduccionVegetal_Productor
GO
ALTER TABLE dbo.ProductorDocumentoEntregado
	DROP CONSTRAINT FK_ProductorDocumentoEntregado_Productor
GO
ALTER TABLE dbo.ProductorInventarioEspecies
	DROP CONSTRAINT FK_ProductorInventarioEspecies_Productor
GO
ALTER TABLE dbo.ProductorMiembroHogar
	DROP CONSTRAINT FK_ProductorMiembroHogar_Productor
GO
ALTER TABLE dbo.ProductorProyecto
	DROP CONSTRAINT FK_ProductorProyecto_Productor
GO
ALTER TABLE dbo.MeliponarioCajaHistorial
	DROP CONSTRAINT FK_MeliponarioCajaHistorial_Productor
GO
ALTER TABLE dbo.Meliponario
	DROP CONSTRAINT FK_Meliponario_Productor
GO
ALTER TABLE dbo.AbejasNativasVisitaGrupalParticipante
	DROP CONSTRAINT FK_AbejasNativasVisitaGrupalParticipante_Productor
GO
ALTER TABLE dbo.ProductorAbejasNativasMaterialEntregado
	DROP CONSTRAINT FK_ProductorAbejasNativasMaterialEntregado_Productor
GO
ALTER TABLE dbo.ProductorAbejasNativasVisitaIndividual
	DROP CONSTRAINT FK_ProductorAbejasNativasVisitaIndividual_Productor
GO
DROP TABLE dbo.Productor
GO
EXECUTE sp_rename N'dbo.Tmp_Productor', N'Productor', 'OBJECT' 
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	PK_Productor PRIMARY KEY CLUSTERED 
	(
	IdProductor
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_Abono FOREIGN KEY
	(
	IdAbono
	) REFERENCES dbo.Abono
	(
	IdAbono
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_ActvidadAgricola FOREIGN KEY
	(
	IdActividadAgricola
	) REFERENCES dbo.ActvidadAgricola
	(
	IdActividadAgricola
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_AmbienteSocialComunidad FOREIGN KEY
	(
	IdAmbienteSocialComunidad
	) REFERENCES dbo.AmbienteSocialComunidad
	(
	IdAmbienteSocialComunidad
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_ApoyoVecinosCasoNecesidad FOREIGN KEY
	(
	IdApoyoVecinosCasoNecesidad
	) REFERENCES dbo.ApoyoVecinosCasoNecesidad
	(
	IdApoyoVecinosCasoNecesidad
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_AUstedLeGustaria FOREIGN KEY
	(
	IdAUstedLeGustaria
	) REFERENCES dbo.AUstedLeGustaria
	(
	IdAUstedLeGustaria
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_CategoriaActividadPrincipal FOREIGN KEY
	(
	IdCategoriaActividadPrincipal
	) REFERENCES dbo.CategoriaActividadPrincipal
	(
	IdCategoriaActividadPrincipal
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_CategoriaExplotacionAgricola FOREIGN KEY
	(
	IdCategoriaExplotacionAgricola
	) REFERENCES dbo.CategoriaExplotacionAgricola
	(
	IdCategoriaExplotacionAgricola
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_CategoriaInfraestructura FOREIGN KEY
	(
	IdCategoriaInfraestructura
	) REFERENCES dbo.CategoriaInfraestructura
	(
	IdCategoriaInfraestructura
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_CategoriaManejo FOREIGN KEY
	(
	IdCategoriaManejo
	) REFERENCES dbo.CategoriaManejo
	(
	IdCategoriaManejo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_CategoriaMecanizacion FOREIGN KEY
	(
	IdCategoriaMecanizacion
	) REFERENCES dbo.CategoriaMecanizacion
	(
	IdCategoriaMecanizacion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_ConLaActualSituacionEconomica FOREIGN KEY
	(
	IdConLaActualSituacionEconomica
	) REFERENCES dbo.ConLaActualSituacionEconomica
	(
	IdConLaActualSituacionEconomica
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_ConLosIngresosUstedEstimaQue FOREIGN KEY
	(
	IdConLosIngresosUstedEstimaQue
	) REFERENCES dbo.ConLosIngresosUstedEstimaQue
	(
	IdConLosIngresosUstedEstimaQue
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_ControlDeMaleza FOREIGN KEY
	(
	IdControlDeMaleza
	) REFERENCES dbo.ControlDeMaleza
	(
	IdControlDeMaleza
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_DestinoDeLaProduccion FOREIGN KEY
	(
	IdDestinoDeLaProduccion
	) REFERENCES dbo.DestinoDeLaProduccion
	(
	IdDestinoDeLaProduccion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_DestinoMiel FOREIGN KEY
	(
	IdDestinoMiel
	) REFERENCES dbo.DestinoMiel
	(
	IdDestinoMiel
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_DivisionAdministrativa1 FOREIGN KEY
	(
	IdDivisionAdministrativa1
	) REFERENCES dbo.DivisionAdministrativa1
	(
	IdDivisionAdministrativa1
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_DivisionAdministrativa2 FOREIGN KEY
	(
	IdDivisionAdministrativa2
	) REFERENCES dbo.DivisionAdministrativa2
	(
	IdDivisionAdministrativa2
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_DivisionAdministrativa3 FOREIGN KEY
	(
	IdDivisionAdministrativa3
	) REFERENCES dbo.DivisionAdministrativa3
	(
	IdDivisionAdministrativa3
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_DondeColocaLasColmenas FOREIGN KEY
	(
	IdDondeColocaLasColmenas
	) REFERENCES dbo.DondeColocaLasColmenas
	(
	IdDondeColocaLasColmenas
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_DondeUstedProduce FOREIGN KEY
	(
	IdDondeUstedProduce
	) REFERENCES dbo.DondeUstedProduce
	(
	IdDondeUstedProduce
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_ElTamannoDeSuParcelaEs FOREIGN KEY
	(
	IdElTamannoDeSuParcelaEs
	) REFERENCES dbo.ElTamannoDeSuParcelaEs
	(
	IdElTamannoDeSuParcelaEs
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_EstadoCivil FOREIGN KEY
	(
	IdEstadoCivil
	) REFERENCES dbo.EstadoCivil
	(
	IdEstadoCivil
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_EstadoDiagnostico FOREIGN KEY
	(
	IdEstadoDiagnostico
	) REFERENCES dbo.EstadoDiagnostico
	(
	IdEstadoDiagnostico
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_EstadoGeneralViviendaACFN FOREIGN KEY
	(
	IdEstadoGeneralViviendaACFN
	) REFERENCES dbo.EstadoGeneralViviendaACFN
	(
	IdEstadoGeneralViviendaACFN
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_EstadoGeneralViviendaProductor FOREIGN KEY
	(
	IdEstadoGeneralViviendaProductor
	) REFERENCES dbo.EstadoGeneralViviendaProductor
	(
	IdEstadoGeneralViviendaProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_EstructuraGeneracionalHogar FOREIGN KEY
	(
	IdEstructuraGeneracionalHogar
	) REFERENCES dbo.EstructuraGeneracionalHogar
	(
	IdEstructuraGeneracionalHogar
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_ExistenciaTransportePublico FOREIGN KEY
	(
	IdExistenciaTransportePublico
	) REFERENCES dbo.ExistenciaTransportePublico
	(
	IdExistenciaTransportePublico
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_FacilidadAccesoComunidad FOREIGN KEY
	(
	IdFacilidadAccesoComunidad
	) REFERENCES dbo.FacilidadAccesoComunidad
	(
	IdFacilidadAccesoComunidad
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_FacilidadAccesoVivienda FOREIGN KEY
	(
	IdFacilidadAccesoVivienda
	) REFERENCES dbo.FacilidadAccesoVivienda
	(
	IdFacilidadAccesoVivienda
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_FormaJuridicaExplotacion FOREIGN KEY
	(
	IdFormaJuridicaExplotacion
	) REFERENCES dbo.FormaJuridicaExplotacion
	(
	IdFormaJuridicaExplotacion
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_FuenteAguaVivienda FOREIGN KEY
	(
	IdFuenteAguaVivienda
	) REFERENCES dbo.FuenteAguaVivienda
	(
	IdFuenteAguaVivienda
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_Grupo FOREIGN KEY
	(
	IdGrupo
	) REFERENCES dbo.Grupo
	(
	IdGrupo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_LaViviendaEsANombreSuyo FOREIGN KEY
	(
	IdLaViviendaEsANombreSuyo
	) REFERENCES dbo.LaViviendaEsANombreSuyo
	(
	IdLaViviendaEsANombreSuyo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_LograProducir FOREIGN KEY
	(
	IdLograProducir
	) REFERENCES dbo.LograProducir
	(
	IdLograProducir
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_NivelConocimientoMeliponicultura FOREIGN KEY
	(
	IdNivelConocimientoMeliponicultura
	) REFERENCES dbo.NivelConocimientoMeliponicultura
	(
	IdNivelConocimientoMeliponicultura
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_OrientacionTecnicoEco FOREIGN KEY
	(
	IdOrientacionTecnicoEco
	) REFERENCES dbo.OrientacionTecnicoEco
	(
	IdOrientacionTecnicoEco
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_OrigenDeLasSemillas FOREIGN KEY
	(
	IdOrigenDeLasSemillas
	) REFERENCES dbo.OrigenDeLasSemillas
	(
	IdOrigenDeLasSemillas
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_Pais FOREIGN KEY
	(
	IdPais
	) REFERENCES dbo.Pais
	(
	IdPais
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_Plaguicidas FOREIGN KEY
	(
	IdPlaguicidas
	) REFERENCES dbo.Plaguicidas
	(
	IdPlaguicidas
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_PosesionMedioTransportePublico FOREIGN KEY
	(
	IdPosesionMedioTransportePublico
	) REFERENCES dbo.PosesionMedioTransportePublico
	(
	IdPosesionMedioTransportePublico
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_PotencialLugarParaTenerAbejas FOREIGN KEY
	(
	IdPotencialLugarParaTenerAbejas
	) REFERENCES dbo.PotencialLugarParaTenerAbejas
	(
	IdPotencialLugarParaTenerAbejas
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_ProporcionAutoconsumoAlimentosHogar FOREIGN KEY
	(
	IdProporcionAutoconsumoAlimentosHogar
	) REFERENCES dbo.ProporcionAutoconsumoAlimentosHogar
	(
	IdProporcionAutoconsumoAlimentosHogar
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_RiesgoRoboColmenas FOREIGN KEY
	(
	IdRiesgoRoboColmenas
	) REFERENCES dbo.RiesgoRoboColmenas
	(
	IdRiesgoRoboColmenas
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_SistemaRiegoCultivos FOREIGN KEY
	(
	IdSistemaRiegoCultivos
	) REFERENCES dbo.SistemaRiegoCultivos
	(
	IdSistemaRiegoCultivos
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_SuViviendaEs FOREIGN KEY
	(
	IdSuViviendaEs
	) REFERENCES dbo.SuViviendaEs
	(
	IdSuViviendaEs
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_TenenciaDeLaTierra FOREIGN KEY
	(
	IdTenenciaDeLaTierra
	) REFERENCES dbo.TenenciaDeLaTierra
	(
	IdTenenciaDeLaTierra
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_Territorio FOREIGN KEY
	(
	IdTerritorio
	) REFERENCES dbo.Territorio
	(
	IdTerritorio
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_TiempoLlegarCentroEducativo FOREIGN KEY
	(
	IdTiempoLlegarCentroEducativo
	) REFERENCES dbo.TiempoLlegarCentroEducativo
	(
	IdTiempoLlegarCentroEducativo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_TiempoLlegarCentroSalud FOREIGN KEY
	(
	IdTiempoLlegarCentroSalud
	) REFERENCES dbo.TiempoLlegarCentroSalud
	(
	IdTiempoLlegarCentroSalud
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_UstedConsideraContarConApoyoDeSuFamilia FOREIGN KEY
	(
	IdUstedConsideraContarConApoyoDeSuFamilia
	) REFERENCES dbo.UstedConsideraContarConApoyoDeSuFamilia
	(
	IdUstedConsideraContarConApoyoDeSuFamilia
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_UstedConsideraQueSuHogarEs FOREIGN KEY
	(
	IdUstedConsideraQueSuHogarEs
	) REFERENCES dbo.UstedConsideraQueSuHogarEs
	(
	IdUstedConsideraQueSuHogarEs
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Productor ADD CONSTRAINT
	FK_Productor_Usuario FOREIGN KEY
	(
	IdUsuarioEncuestador
	) REFERENCES dbo.Usuario
	(
	IdUsuario
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Productor', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Productor', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Productor', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorAbejasNativasVisitaIndividual ADD CONSTRAINT
	FK_ProductorAbejasNativasVisitaIndividual_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorAbejasNativasVisitaIndividual SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorAbejasNativasVisitaIndividual', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorAbejasNativasVisitaIndividual', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorAbejasNativasVisitaIndividual', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorAbejasNativasMaterialEntregado ADD CONSTRAINT
	FK_ProductorAbejasNativasMaterialEntregado_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorAbejasNativasMaterialEntregado SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorAbejasNativasMaterialEntregado', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorAbejasNativasMaterialEntregado', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorAbejasNativasMaterialEntregado', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.AbejasNativasVisitaGrupalParticipante ADD CONSTRAINT
	FK_AbejasNativasVisitaGrupalParticipante_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.AbejasNativasVisitaGrupalParticipante SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.AbejasNativasVisitaGrupalParticipante', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.AbejasNativasVisitaGrupalParticipante', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.AbejasNativasVisitaGrupalParticipante', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Meliponario ADD CONSTRAINT
	FK_Meliponario_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Meliponario SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Meliponario', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Meliponario', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Meliponario', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.MeliponarioCajaHistorial ADD CONSTRAINT
	FK_MeliponarioCajaHistorial_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.MeliponarioCajaHistorial SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.MeliponarioCajaHistorial', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.MeliponarioCajaHistorial', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.MeliponarioCajaHistorial', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorProyecto ADD CONSTRAINT
	FK_ProductorProyecto_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorProyecto SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorProyecto', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorProyecto', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorProyecto', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorMiembroHogar ADD CONSTRAINT
	FK_ProductorMiembroHogar_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorMiembroHogar SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorMiembroHogar', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorMiembroHogar', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorMiembroHogar', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorInventarioEspecies ADD CONSTRAINT
	FK_ProductorInventarioEspecies_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorInventarioEspecies SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorInventarioEspecies', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorInventarioEspecies', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorInventarioEspecies', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorDocumentoEntregado ADD CONSTRAINT
	FK_ProductorDocumentoEntregado_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorDocumentoEntregado SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorDocumentoEntregado', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorDocumentoEntregado', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorDocumentoEntregado', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorDetalleProduccionVegetal ADD CONSTRAINT
	FK_ProductorDetalleProduccionVegetal_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorDetalleProduccionVegetal SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorDetalleProduccionVegetal', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorDetalleProduccionVegetal', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorDetalleProduccionVegetal', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorDetalleProduccionAnimal ADD CONSTRAINT
	FK_ProductorDetalleProduccionAnimal_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorDetalleProduccionAnimal SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorDetalleProduccionAnimal', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorDetalleProduccionAnimal', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorDetalleProduccionAnimal', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.ProductorContacto ADD CONSTRAINT
	FK_ProductorContacto_Productor FOREIGN KEY
	(
	IdProductor
	) REFERENCES dbo.Productor
	(
	IdProductor
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ProductorContacto SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.ProductorContacto', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.ProductorContacto', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.ProductorContacto', 'Object', 'CONTROL') as Contr_Per 