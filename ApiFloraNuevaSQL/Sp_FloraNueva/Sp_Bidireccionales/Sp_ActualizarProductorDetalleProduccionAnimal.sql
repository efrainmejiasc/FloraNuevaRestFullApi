USE [FloraNueva]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorDetalleProduccionAnimal] 
       (
	        @IdProductorDetalleProduccionAnimal INT,
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
 
            IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END
		    IF (@IdAnimales = 0)  BEGIN  SET @IdAnimales = null; END
			IF (LEN(@Detalles) = 0) BEGIN SET @Detalles = NULL; END
			IF (@Cantidad = 0)  BEGIN  SET @Cantidad = null; END
         
    INSERT INTO ProductorDetalleProduccionAnimalTrack (Identificador,IdProductor,IdAnimales,Detalles,Cantidad,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                          VALUES  (@Identificador,@IdProductor,@IdAnimales,@Detalles,@Cantidad,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

   SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1


	 IF (@IdProductorDetalleProduccionAnimal > 0)
	     BEGIN
            UPDATE ProductorDetalleProduccionAnimal SET
		    IdProductor = @IdProductor , 
			IdAnimales = @IdAnimales,
			Detalles = @Detalles,
			Cantidad = @Cantidad,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorDetalleProduccionAnimal = @IdProductorDetalleProduccionAnimal;
		END
	ELSE	 
	    BEGIN
		       INSERT INTO ProductorDetalleProduccionAnimal (Identificador,IdProductor,IdAnimales,Detalles,Cantidad,Estado)
                                                   VALUES  (@Identificador,@IdProductor,@IdAnimales,@Detalles,@Cantidad,@Estado)

		END

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN  [PRODUCTOR]; 
   END CATCH

END ;