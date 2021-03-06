USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarAbejasNativasVisitaGrupal] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdGrupo INT,
            @FechaDesde DATETIME,
            @FechaHasta DATETIME,
            @EquipoFloraNuevaPresente VARCHAR(500),
            @OtrosParticipantes VARCHAR(500),
            @TemaYObjetivoDeLaVisita VARCHAR(500),
            @DesarrolloDeLaVisitaAcciones VARCHAR(500),
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

  BEGIN TRAN [TABLE]

   BEGIN TRY

                IF (@IdGrupo = 0)  BEGIN  SET   @IdGrupo = NULL; END
              	IF (LEN(@EquipoFloraNuevaPresente) = 0) BEGIN SET   @EquipoFloraNuevaPresente = NULL; END 
				IF (LEN(@OtrosParticipantes) = 0) BEGIN SET   @OtrosParticipantes = NULL; END 
				IF (LEN(@TemaYObjetivoDeLaVisita) = 0) BEGIN SET   @TemaYObjetivoDeLaVisita = NULL; END 
				IF (LEN(@DesarrolloDeLaVisitaAcciones) = 0) BEGIN SET  @DesarrolloDeLaVisitaAcciones = NULL; END 
				IF (LEN(@ProblemasDetectados) = 0) BEGIN SET  @ProblemasDetectados = NULL; END 
				IF (LEN(@RecomendacionesProximaVisita) = 0) BEGIN SET  @RecomendacionesProximaVisita= NULL; END 
         
          INSERT INTO AbejasNativasVisitaGrupalTrack (
		           Identificador,
				   IdGrupo,  
		           FechaDesde ,
                   FechaHasta,
                   EquipoFloraNuevaPresente ,
                   OtrosParticipantes ,
                   TemaYObjetivoDeLaVisita ,
                   DesarrolloDeLaVisitaAcciones ,
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
                   @ProblemasDetectados,
                   @RecomendacionesProximaVisita,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
      
    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1

         INSERT INTO AbejasNativasVisitaGrupal (
		           Identificador,
				   IdGrupo,  
		           FechaDesde ,
                   FechaHasta,
                   EquipoFloraNuevaPresente ,
                   OtrosParticipantes ,
                   TemaYObjetivoDeLaVisita ,
                   DesarrolloDeLaVisitaAcciones ,
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
                   @ProblemasDetectados,
                   @RecomendacionesProximaVisita,
				   @Estado)

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLE];
   END CATCH

END ;
