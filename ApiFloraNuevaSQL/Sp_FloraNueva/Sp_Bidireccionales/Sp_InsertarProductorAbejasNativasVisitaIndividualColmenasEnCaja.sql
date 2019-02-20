USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarProductorAbejasNativasVisitaIndividualColmenasEnCaja] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdProductorAbejasNativasVisitaIndividual INT,
			@IdEspecieAbeja INT,
			@ACFN BIT,
			@Rustica BIT,
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

   	        IF (@IdProductorAbejasNativasVisitaIndividual= 0)  BEGIN  SET @IdProductorAbejasNativasVisitaIndividual = Null; END
			IF (@IdEspecieAbeja = 0)  BEGIN  SET @IdEspecieAbeja = Null; END
			IF (@Cantidad = 0)  BEGIN  SET @Cantidad = Null; END

    INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnCajaTrack (Identificador,IdProductorAbejasNativasVisitaIndividual,IdEspecieAbeja,ACFN,Rustica,Cantidad,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                              VALUES  (@Identificador,@IdProductorAbejasNativasVisitaIndividual,@IdEspecieAbeja,@ACFN,@Rustica,@Cantidad,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

       INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnCaja (Identificador,IdProductorAbejasNativasVisitaIndividual,IdEspecieAbeja,ACFN,Rustica,Cantidad,Estado) 
                               VALUES  (@Identificador,@IdProductorAbejasNativasVisitaIndividual,@IdEspecieAbeja,@ACFN,@Rustica,@Cantidad,@Estado)

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;
