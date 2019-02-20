
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria] 
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