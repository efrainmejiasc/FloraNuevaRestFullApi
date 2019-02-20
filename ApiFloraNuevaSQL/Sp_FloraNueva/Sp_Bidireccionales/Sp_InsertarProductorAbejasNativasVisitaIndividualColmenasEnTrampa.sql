USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarProductorAbejasNativasVisitaIndividualColmenasEnTrampa] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdProductorAbejasNativasVisitaIndividual INT ,
			@IdEspecieAbeja INT,
			@EnMeliponario BIT,
		    @EnCampo BIT,
			@Cantidad INT,
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

            IF (@IdProductorAbejasNativasVisitaIndividual= 0)  BEGIN  SET   @IdProductorAbejasNativasVisitaIndividual = null; END
			IF (@IdEspecieAbeja = 0)  BEGIN  SET @IdEspecieAbeja = null; END
			IF (@Cantidad = 0)  BEGIN  SET @Cantidad = null; END

    INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnTrampaTrack (Identificador, IdProductorAbejasNativasVisitaIndividual ,IdEspecieAbeja , EnMeliponario ,EnCampo ,Cantidad,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                             VALUES  (@Identificador, @IdProductorAbejasNativasVisitaIndividual ,@IdEspecieAbeja , @EnMeliponario ,@EnCampo ,@Cantidad,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
     
	 
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

       INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnTrampa (Identificador, IdProductorAbejasNativasVisitaIndividual ,IdEspecieAbeja , EnMeliponario ,EnCampo ,Cantidad,Estado) 
                             VALUES  (@Identificador, @IdProductorAbejasNativasVisitaIndividual ,@IdEspecieAbeja , @EnMeliponario ,@EnCampo ,@Cantidad,@Estado)

    SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;
