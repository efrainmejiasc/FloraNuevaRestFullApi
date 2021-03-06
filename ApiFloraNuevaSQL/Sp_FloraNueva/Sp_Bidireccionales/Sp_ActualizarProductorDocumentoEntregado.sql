USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorDocumentoEntregado]    Script Date: 18/10/2018 15:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorDocumentoEntregado] 
       (
	        @IdProductorDocumentoEntregado INT,
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

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

            IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador) END
			IF (@IdTipoDocumento = 0)  BEGIN  SET @IdTipoDocumento = Null; END
			IF (LEN(@Detalle) = 0) BEGIN SET @Detalle = NULL; END
 
  
    
   INSERT INTO ProductorDocumentoEntregadoTrack (Identificador,Idproductor,IdTipoDocumento,Detalle,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                                     VALUES  (@Identificador,@Idproductor,@IdTipoDocumento,@Detalle,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
 
     
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	 BEGIN TRAN [PRODUCTOR]

	 IF ( @IdProductorDocumentoEntregado > 0)
	    BEGIN   
            UPDATE ProductorDocumentoEntregado SET
		    IdProductor = @IdProductor , 
			IdTipoDocumento = @IdTipoDocumento,
			Detalle = @Detalle,
			Estado = @Estado
		    WHERE Identificador = @Identificador AND  IdProductorDocumentoEntregado =  @IdProductorDocumentoEntregado;
	    END

	 ELSE
	    BEGIN 
		        INSERT INTO ProductorDocumentoEntregado (Identificador,Idproductor,IdTipoDocumento,Detalle,Estado)
                                               VALUES  (@Identificador,@Idproductor,@IdTipoDocumento,@Detalle,@Estado)
		END


   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
   COMMIT TRAN [PRODUCTO]

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
		COMMIT TRAN [PRODUCTORTRACK]
   END CATCH

END ;