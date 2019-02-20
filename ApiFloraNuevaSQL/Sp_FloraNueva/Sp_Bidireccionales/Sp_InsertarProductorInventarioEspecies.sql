USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER  PROCEDURE [dbo].[Sp_InsertarProductorInventarioEspecies] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@IdEspecieAbeja INT,
			@CantidadEnTronco INT,
			@CantidadEnNidoArtificial INT,
			@CantidadEnCajaRustica INT,
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
             SET @IdProductor = (SELECT IdProductor FROM Productor Where Identificador = @Identificador);
             IF (@IdProductor = 0) BEGIN SET @IdProductor =  Null END 
			 IF (@IdEspecieAbeja = 0) BEGIN SET @IdEspecieAbeja =  Null END 
			 IF (@CantidadEnTronco = 0) BEGIN SET @CantidadEnTronco =  Null END 
			 IF (@CantidadEnNidoArtificial = 0) BEGIN SET @CantidadEnNidoArtificial =  Null END 
			 IF (@CantidadEnCajaRustica = 0) BEGIN SET @CantidadEnCajaRustica =  Null END 

       INSERT INTO ProductorInventarioEspeciesTrack  (Identificador,IdProductor,IdEspecieAbeja,CantidadEnTronco,CantidadEnNidoArtificial,CantidadEnCajaRustica,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                               VALUES  (@Identificador,@IdProductor,@IdEspecieAbeja,@CantidadEnTronco,@CantidadEnNidoArtificial,@CantidadEnCajaRustica,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
 
   SAVE TRAN [PRODUCTORTRACK]
   SET @TRANCOUNTER = 1

     INSERT INTO ProductorInventarioEspecies (Identificador,IdProductor,IdEspecieAbeja,CantidadEnTronco,CantidadEnNidoArtificial,CantidadEnCajaRustica,Estado) 
                                VALUES  (@Identificador,@IdProductor,@IdEspecieAbeja,@CantidadEnTronco,@CantidadEnNidoArtificial,@CantidadEnCajaRustica,@Estado)

   SAVE TRAN [PRODUCTOR]
   COMMIT TRAN [PRODUCTOR]

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] 
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;
