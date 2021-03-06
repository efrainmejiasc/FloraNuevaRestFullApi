USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarMeliponarioCaja] 
       (
            @Identificador UNIQUEIDENTIFIER,
		    @IdMeliponario INT ,
            @IdEspecieAbeja INT, 
            @FechaEntregaAlProductor DATETIME, 
            @Comentario VARCHAR(500), 
            @IdOrigenColonia INT,
            @Activa BIT,	
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
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

  BEGIN TRAN [TABLE]

   BEGIN TRY

            IF (@IdMeliponario = 0)  BEGIN  SET  @IdMeliponario = NULL; END
			IF ( @IdEspecieAbeja= 0)  BEGIN  SET  @IdEspecieAbeja = NULL; END
			IF (LEN(@Comentario) = 0) BEGIN SET   @Comentario = NULL; END 
			IF ( @IdOrigenColonia = 0)  BEGIN  SET   @IdOrigenColonia = NULL; END

          INSERT INTO MeliponarioCajaTrack(
		           Identificador,
				   IdMeliponario ,
                   IdEspecieAbeja, 
                   FechaEntregaAlProductor, 
                   Comentario, 
                   IdOrigenColonia ,
                   Activa,
				   Estado,Usuario,Dispositivo,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
			       @IdMeliponario ,
                   @IdEspecieAbeja, 
                   @FechaEntregaAlProductor, 
                   @Comentario, 
                   @IdOrigenColonia ,
                   @Activa,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
      
    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1

         INSERT INTO  MeliponarioCaja (
		           Identificador,
		           IdMeliponario ,
                   IdEspecieAbeja, 
                   FechaEntregaAlProductor, 
                   Comentario, 
                   IdOrigenColonia ,
                   Activa,	
				   Estado)
          VALUES  (@Identificador,
			       @IdMeliponario ,
                   @IdEspecieAbeja, 
                   @FechaEntregaAlProductor, 
                   @Comentario, 
                   @IdOrigenColonia ,
                   @Activa,		
				   @Estado)

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLE];
   END CATCH

END ;
