USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarProductorDetalleProduccionAnimal] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@IdAnimales INT,
			@Detalles VARCHAR(500),
			@Cantidad DECIMAL (20, 6),
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
 	        IF (@IdProductor  = 0)  BEGIN  SET @IdProductor  = null; END
		    IF (@IdAnimales = 0)  BEGIN  SET @IdAnimales = null; END
			IF (LEN(@Detalles) = 0) BEGIN SET @Detalles = NULL; END
			IF (@Cantidad = 0)  BEGIN  SET @Cantidad = null; END
         
    INSERT INTO ProductorDetalleProduccionAnimalTrack (Identificador,IdProductor,IdAnimales,Detalles,Cantidad,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                          VALUES  (@Identificador,@IdProductor,@IdAnimales,@Detalles,@Cantidad,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

   INSERT INTO ProductorDetalleProduccionAnimal (Identificador,IdProductor,IdAnimales,Detalles,Cantidad,Estado) 
                           VALUES  (@Identificador,@IdProductor,@IdAnimales,@Detalles,@Cantidad,@Estado)

    SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;
