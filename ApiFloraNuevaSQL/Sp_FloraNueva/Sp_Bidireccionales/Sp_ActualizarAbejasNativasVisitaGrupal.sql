USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarAbejasNativasVisitaGrupal] 
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