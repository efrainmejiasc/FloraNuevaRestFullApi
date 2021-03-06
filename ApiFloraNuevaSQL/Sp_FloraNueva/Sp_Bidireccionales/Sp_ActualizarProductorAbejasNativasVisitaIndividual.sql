USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividual]    Script Date: 02/11/2018 11:08:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividual] 
       (
	        @IdProductorAbejasNativasVisitaIndividual INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT,
			@Fecha DateTime,
			@ElMeliponicultorEstaPresente BIT,
			@OtraPersonaPresente VARCHAR(500),
			@Motivo VARCHAR(500),
			@Observaciones VARCHAR(500), 
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
DECLARE @ID INT;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

                IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END 
				IF (LEN(@OtraPersonaPresente) = 0) BEGIN SET @OtraPersonaPresente = NULL; END
				IF (LEN(@Motivo) = 0) BEGIN SET @Motivo = NULL; END
				IF (LEN(@Observaciones) = 0) BEGIN SET @Observaciones = NULL; END
				IF (LEN(@Recomendaciones) = 0) BEGIN SET @Recomendaciones = NULL; END
				IF (LEN(@Otros) = 0) BEGIN SET @Otros = NULL; END

         
         INSERT INTO ProductorAbejasNativasVisitaIndividualTrack (Identificador,IdProductor,Fecha,ElMeliponicultorEstaPresente,OtraPersonaPresente,Motivo,Observaciones,Recomendaciones,Otros,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@ElMeliponicultorEstaPresente,@OtraPersonaPresente,@Motivo, @Observaciones , @Recomendaciones,@Otros,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	  BEGIN TRAN [PRODUCTOR]


	 IF (@IdProductorAbejasNativasVisitaIndividual > 0)
	    BEGIN
            UPDATE ProductorAbejasNativasVisitaIndividual SET
		    IdProductor = @IdProductor,
			Fecha = @Fecha ,
			ElMeliponicultorEstaPresente = @ElMeliponicultorEstaPresente ,
			OtraPersonaPresente = @OtraPersonaPresente ,
			Motivo  = @Motivo ,
			Observaciones = @Observaciones,
			Recomendaciones = @Recomendaciones ,
			Otros  = @Otros ,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorAbejasNativasVisitaIndividual= @IdProductorAbejasNativasVisitaIndividual;

			SET @ID = @IdProductorAbejasNativasVisitaIndividual
	    END 
    ELSE 
	    BEGIN
		    INSERT INTO ProductorAbejasNativasVisitaIndividual (Identificador,IdProductor,Fecha,ElMeliponicultorEstaPresente,OtraPersonaPresente,Motivo,Observaciones,Recomendaciones,Otros,Estado)
                              VALUES  (@Identificador,@IdProductor,@Fecha,@ElMeliponicultorEstaPresente,@OtraPersonaPresente,@Motivo,@Observaciones,@Recomendaciones,@Otros,@Estado)
		
		   SET @ID =  SCOPE_IDENTITY() 
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
		SET @ID  = -2;
   END CATCH

      SELECT @ID
END ;