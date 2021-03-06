
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarAbejasNativasVisitaGrupalParticipante] 
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
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLE]

   BEGIN TRY

        IF (@IdAbejasNativasVisitaGrupal = 0)  BEGIN  SET  @IdAbejasNativasVisitaGrupal = NULL; END
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
                   @IdProductor ,
                   @Observaciones,	
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
      
    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1

         INSERT INTO AbejasNativasVisitaGrupalParticipante (
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

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLE];
   END CATCH

END ;
