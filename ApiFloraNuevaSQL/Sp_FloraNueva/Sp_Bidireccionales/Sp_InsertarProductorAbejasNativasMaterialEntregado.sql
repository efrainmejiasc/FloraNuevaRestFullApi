USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarProductorAbejasNativasMaterialEntregado] 
       (
	        @IdProductorAbejasNativasMaterialEntregado INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@Fecha DATETIME,
			@NumeroBoleta INT,
			@IdTipoMaterialEntregado INT,
			@Cantidad DECIMAL(20,6),
			@Comentario VARCHAR(MAX),
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

              SET @Idproductor =(SELECT IdProductor FROM Productor WHERE Identificador = @Identificador );
			  IF (@NumeroBoleta= 0)  BEGIN  SET @NumeroBoleta = NULL; END
			  IF (@IdTipoMaterialEntregado= 0)  BEGIN  SET @IdTipoMaterialEntregado = NULL; END
			  IF (@Cantidad= 0)  BEGIN  SET @Cantidad = NULL; END
			  IF (LEN(@Comentario) = 0) BEGIN SET @Comentario = NULL; END
         
          INSERT INTO ProductorAbejasNativasMaterialEntregadoTrack   (Identificador,IdProductor,Fecha,NumeroBoleta,IdTipoMaterialEntregado,Cantidad,Comentario,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@NumeroBoleta,@IdTipoMaterialEntregado,@Cantidad,@Comentario,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

 
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

      INSERT INTO ProductorAbejasNativasMaterialEntregado (Identificador,IdProductor,Fecha,NumeroBoleta,IdTipoMaterialEntregado,Cantidad,Comentario,Estado)
                                          VALUES  (@Identificador,@IdProductor,@Fecha,@NumeroBoleta,@IdTipoMaterialEntregado,@Cantidad,@Comentario,@Estado)

    SAVE TRAN [PRODUCTOR];
    COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN  [PRODUCTOR];
   END CATCH

END ;
