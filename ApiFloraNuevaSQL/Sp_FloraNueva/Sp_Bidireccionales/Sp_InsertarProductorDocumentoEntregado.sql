USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarProductorDocumentoEntregado] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@IdTipoDocumento INT,
			@Detalle  VARCHAR(500),
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
            SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador);
            IF (@IdProductor = 0)  BEGIN  SET @IdProductor = null; END
			IF (@IdTipoDocumento = 0)  BEGIN  SET @IdTipoDocumento = null; END
			IF (LEN(@Detalle) = 0) BEGIN SET @Detalle = NULL; END
         
   INSERT INTO ProductorDocumentoEntregadoTrack (Identificador,IdProductor  ,IdTipoDocumento,Detalle,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                                     VALUES  (@Identificador,@IdProductor,@IdTipoDocumento,@Detalle,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
    
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

  INSERT INTO ProductorDocumentoEntregado (Identificador,Idproductor,IdTipoDocumento,Detalle,Estado)
                                     VALUES  (@Identificador,@Idproductor,@IdTipoDocumento,@Detalle,@Estado)

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH



END ;
