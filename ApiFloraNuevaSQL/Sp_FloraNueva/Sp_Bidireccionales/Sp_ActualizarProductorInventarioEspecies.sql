USE [FloraNueva]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorInventarioEspecies] 
       (
	        @IdProductorInventarioEspecies INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@IdEspecieAbeja INT,
			@CantidadEnTronco INT,
			@CantidadEnNidoArtificial INT,
			@CantidadEnCajaRustica INT,
			@CantidadEnCajaTecnificada INT,
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
			 IF (@IdEspecieAbeja = 0) BEGIN SET @IdEspecieAbeja =  Null END 
			 IF (@CantidadEnTronco = 0) BEGIN SET @CantidadEnTronco =  Null END 
			 IF (@CantidadEnNidoArtificial = 0) BEGIN SET @CantidadEnNidoArtificial =  Null END 
			 IF (@CantidadEnCajaRustica = 0) BEGIN SET @CantidadEnCajaRustica =  Null END 
			 IF (@CantidadEnCajaTecnificada = 0) BEGIN SET @CantidadEnCajaTecnificada =  Null END 
			   
       INSERT INTO ProductorInventarioEspeciesTrack  (Identificador,IdProductor,IdEspecieAbeja,CantidadEnTronco,CantidadEnNidoArtificial,CantidadEnCajaRustica,CantidadEnCajaTecnificada,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                               VALUES  (@Identificador,@IdProductor,@IdEspecieAbeja,@CantidadEnTronco,@CantidadEnNidoArtificial,@CantidadEnCajaRustica,@CantidadEnCajaTecnificada,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
 
    SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	  BEGIN TRAN [PRODUCTOR]


	 IF (@IdProductorInventarioEspecies > 0)
	    BEGIN
            UPDATE ProductorInventarioEspecies SET
		    IdProductor = @IdProductor , 
			IdEspecieAbeja = @IdEspecieAbeja ,
			CantidadEnTronco = @CantidadEnTronco ,
			CantidadEnNidoArtificial = @CantidadEnNidoArtificial ,
			CantidadEnCajaRustica = @CantidadEnCajaRustica,
			CantidadEnCajaTecnificada = @CantidadEnCajaTecnificada,
			Estado = @Estado
		    WHERE Identificador = @Identificador AND IdProductorInventarioEspecies = @IdProductorInventarioEspecies;
        END
    ELSE  
		  BEGIN
              INSERT INTO ProductorInventarioEspecies (Identificador,IdProductor,IdEspecieAbeja,CantidadEnTronco,CantidadEnNidoArtificial,CantidadEnCajaRustica,CantidadEnCajaTecnificada,Estado) 
                               VALUES  (@Identificador,@IdProductor,@IdEspecieAbeja,@CantidadEnTronco,@CantidadEnNidoArtificial,@CantidadEnCajaRustica,@CantidadEnCajaTecnificada,@Estado)
 
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