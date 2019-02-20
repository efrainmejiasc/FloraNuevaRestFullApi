USE [FloraNueva]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorDetalleProduccionVegetal] 
       (
	        @IdProductorDetalleProduccionVegetal INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@IdCategoriaUsoSuelo INT,
			@Detalles VARCHAR(500),
			@Superficie DECIMAL(20,6),
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
			IF (@IdCategoriaUsoSuelo = 0)  BEGIN  SET @IdCategoriaUsoSuelo = null; END
			IF (LEN(@Detalles) = 0) BEGIN SET @Detalles = NULL; END
			IF (@Superficie = 0)  BEGIN  SET @Superficie = null; END
 
     INSERT INTO ProductorDetalleProduccionVegetalTrack (Identificador,IdProductor,IdCategoriaUsoSuelo,Detalles,Superficie,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
             VALUES  (@Identificador,@IdProductor,@IdCategoriaUsoSuelo,@Detalles,@Superficie,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
     
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	  

	  IF (@IdProductorDetalleProduccionVegetal > 0)
	     BEGIN
            UPDATE ProductorDetalleProduccionVegetal SET
		    IdProductor = @IdProductor , 
			IdCategoriaUsoSuelo = @IdCategoriaUsoSuelo,
			Detalles = @Detalles,
			Superficie = @Superficie,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorDetalleProduccionVegetal = @IdProductorDetalleProduccionVegetal;
	    END
	ELSE
	    BEGIN
		 INSERT INTO ProductorDetalleProduccionVegetal(Identificador,IdProductor,IdCategoriaUsoSuelo,Detalles,Superficie,Estado)
                                                       VALUES  (@Identificador,@IdProductor,@IdCategoriaUsoSuelo,@Detalles,@Superficie,@Estado)
     
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