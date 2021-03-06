USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCaja]    Script Date: 02/11/2018 12:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarMeliponarioCaja] 
       (
	        @IdMeliponarioCaja INT,
            @Identificador UNIQUEIDENTIFIER,
			@NumeroCaja INT,
		    @IdMeliponario INT ,
            @IdEspecieAbeja INT, 
            @FechaEntregaAlProductor DATETIME, 
            @Comentario VARCHAR(500), 
            @IdOrigenColonia INT,
            @Activa BIT,	
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
DECLARE @ID INT ;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY

            --IF (@IdMeliponario = 0)  BEGIN  SET  @IdMeliponario = (SELECT IdMeliponario FROM Meliponario WHERE Identificador = @Identificador); END
			IF ( @IdEspecieAbeja= 0)  BEGIN  SET  @IdEspecieAbeja = NULL; END
			IF (LEN(@Comentario) = 0) BEGIN SET   @Comentario = NULL; END 
			IF ( @IdOrigenColonia = 0)  BEGIN  SET   @IdOrigenColonia = NULL; END

         INSERT INTO MeliponarioCajaTrack(
		           Identificador,
				   NumeroCaja ,
				   IdMeliponario ,
                   IdEspecieAbeja, 
                   FechaEntregaAlProductor, 
                   Comentario, 
                   IdOrigenColonia ,
                   Activa,
				   Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
		           @NumeroCaja ,
			       @IdMeliponario ,
                   @IdEspecieAbeja, 
                   @FechaEntregaAlProductor, 
                   @Comentario, 
                   @IdOrigenColonia ,
                   @Activa,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	BEGIN TRAN [TABLE];

	  IF(@IdMeliponarioCaja > 0)
	  BEGIN
           UPDATE  MeliponarioCaja SET 
		   		   NumeroCaja = @NumeroCaja,
                   IdMeliponario = @IdMeliponario ,
                   IdEspecieAbeja = @IdEspecieAbeja, 
                   FechaEntregaAlProductor = @FechaEntregaAlProductor, 
                   Comentario = @Comentario, 
                   IdOrigenColonia = @IdOrigenColonia ,
                   Activa = @Activa,
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND IdMeliponarioCaja = @IdMeliponarioCaja;
				   SET @ID = @IdMeliponarioCaja;
	     END
	 ELSE
	    BEGIN
		  INSERT INTO MeliponarioCaja(
		           Identificador,
				   NumeroCaja ,
				   IdMeliponario ,
                   IdEspecieAbeja, 
                   FechaEntregaAlProductor, 
                   Comentario, 
                   IdOrigenColonia ,
                   Activa,
				   Estado)
          VALUES  (@Identificador,
		           @NumeroCaja,
			       @IdMeliponario ,
                   @IdEspecieAbeja, 
                   @FechaEntregaAlProductor, 
                   @Comentario, 
                   @IdOrigenColonia ,
                   @Activa,
				   @Estado)

				    SET @ID =  SCOPE_IDENTITY() 
		END

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLETRACK];
    COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLETRACK];
		 COMMIT TRAN [TABLE];
		 	SET @ID  = -2;
   END CATCH

     SELECT @ID
END ;