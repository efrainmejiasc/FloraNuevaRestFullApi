USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarProductorAbejasNativasVisitaIndividual] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@Fecha DateTime,
			@ElMeliponicultorEstaPresente BIT,
			@OtraPersonaPresente VARCHAR(500),
			@Motivo VARCHAR(500),
			@Recomendaciones VARCHAR(500),
			@Otros VARCHAR(500),
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
                IF (@IdProductor= 0)  BEGIN  SET @IdProductor = NULL; END
				IF (LEN(@OtraPersonaPresente) = 0) BEGIN SET @OtraPersonaPresente = NULL; END
				IF (LEN(@Motivo) = 0) BEGIN SET @Motivo = NULL; END
				IF (LEN(@Recomendaciones) = 0) BEGIN SET @Recomendaciones = NULL; END
				IF (LEN(@Otros) = 0) BEGIN SET @Otros = NULL; END

         
         INSERT INTO ProductorAbejasNativasVisitaIndividualTrack (Identificador,IdProductor,Fecha,ElMeliponicultorEstaPresente,OtraPersonaPresente,Motivo,Recomendaciones,Otros,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@ElMeliponicultorEstaPresente,@OtraPersonaPresente,@Motivo,@Recomendaciones,@Otros,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

        INSERT INTO ProductorAbejasNativasVisitaIndividual (Identificador,IdProductor,Fecha,ElMeliponicultorEstaPresente,OtraPersonaPresente,Motivo,Recomendaciones,Otros,Estado)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@ElMeliponicultorEstaPresente,@OtraPersonaPresente,@Motivo,@Recomendaciones,@Otros,@Estado)

SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR];
   END CATCH

END ;
