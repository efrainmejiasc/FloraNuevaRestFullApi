USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarProductorProyecto] 
       (
	        @IdProductorProyecto INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
	    	@IdProyecto INT,
			@EstatusIntegracion BIT,
			@FechaIntegracion DATETIME,
			@FechaSalida DATETIME,
			@RazonSalida VARCHAR(500),
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

            IF (@IdProductor = 0) BEGIN SET @IdProductor = (SELECT IdProductor FROM Productor Where Identificador = @Identificador) END;
			IF (@IdProyecto = 0) BEGIN SET @IdProyecto = null END ;
			IF (LEN(@RazonSalida) = 0) BEGIN SET @RazonSalida = null END ;
 
    INSERT INTO ProductorProyectoTrack (Identificador,IdProductor,IdProyecto,EstatusIntegracion,FechaIntegracion,FechaSalida,RazonSalida,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
            VALUES  (@Identificador,@IdProductor,@IdProyecto,@EstatusIntegracion,@FechaIntegracion,@FechaSalida,@RazonSalida,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
            
			  
     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

        INSERT INTO  ProductorProyecto (Identificador,IdProductor,IdProyecto,EstatusIntegracion,FechaIntegracion,FechaSalida,RazonSalida,Estado) 
                               VALUES  (@Identificador,@IdProductor,@IdProyecto,@EstatusIntegracion,@FechaIntegracion,@FechaSalida,@RazonSalida,@Estado)

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;
