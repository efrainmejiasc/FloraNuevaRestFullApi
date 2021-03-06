USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorAbejasNativasMaterialEntregado]    Script Date: 22/10/2018 5:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasMaterialEntregado] 
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

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

              IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END 
			  IF (@NumeroBoleta= 0)  BEGIN  SET @NumeroBoleta = NULL; END
			  IF (@IdTipoMaterialEntregado= 0)  BEGIN  SET @IdTipoMaterialEntregado = NULL; END
			  IF (@Cantidad= 0)  BEGIN  SET @Cantidad = NULL; END
			  IF (LEN(@Comentario) = 0) BEGIN SET @Comentario = NULL; END

          INSERT INTO ProductorAbejasNativasMaterialEntregadoTrack   (Identificador,IdProductor,Fecha,NumeroBoleta,IdTipoMaterialEntregado,Cantidad,Comentario,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@NumeroBoleta,@IdTipoMaterialEntregado,@Cantidad,@Comentario,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	  BEGIN TRAN [PRODUCTOR]

	 IF (@IdProductorAbejasNativasMaterialEntregado > 0)
	 BEGIN
           UPDATE ProductorAbejasNativasMaterialEntregado SET
		   IdProductor = @IdProductor,
		   Fecha = @Fecha,
		   NumeroBoleta = @NumeroBoleta,
		   IdTipoMaterialEntregado = @IdTipoMaterialEntregado,
		   Cantidad = @Cantidad,
		   Comentario = @Comentario,
		   Estado = @Estado
		   WHERE Identificador = @Identificador AND IdProductorAbejasNativasMaterialEntregado = @IdProductorAbejasNativasMaterialEntregado;
		   END
     ELSE
		   BEGIN 
		       INSERT INTO ProductorAbejasNativasMaterialEntregado (Identificador,IdProductor,Fecha,NumeroBoleta,IdTipoMaterialEntregado,Cantidad,Comentario,Estado)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@NumeroBoleta,@IdTipoMaterialEntregado,@Cantidad,@Comentario,@Estado)

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