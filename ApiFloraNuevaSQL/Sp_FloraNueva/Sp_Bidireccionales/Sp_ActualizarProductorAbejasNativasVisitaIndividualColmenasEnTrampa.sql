
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnTrampa] 
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