USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarMeliponarioCajaAccion] 
       (
            @Identificador UNIQUEIDENTIFIER,
            @IdMeliponarioCaja INT,
            @IdTipoAccionMeliponario INT,
            @IdOrigenColonia INT,
            @IdUsuarioResponsable INT,
            @FechaAccion DATETIME,
            @Comentario VARCHAR(500),
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

              IF ( @IdMeliponarioCaja = 0)  BEGIN  SET  @IdMeliponarioCaja = NULL; END
			  IF (@IdTipoAccionMeliponario = 0)  BEGIN  SET @IdTipoAccionMeliponario = NULL; END
			  IF (@IdOrigenColonia = 0)  BEGIN  SET @IdOrigenColonia = NULL; END
			  IF (@IdUsuarioResponsable = 0)  BEGIN  SET @IdUsuarioResponsable = NULL; END
			  IF (LEN( @Comentario) = 0) BEGIN SET  @Comentario = NULL; END
         
          INSERT INTO MeliponarioCajaAccionTrack(
		           Identificador,
				   IdMeliponarioCaja ,
                   IdTipoAccionMeliponario ,
                   IdOrigenColonia ,
                   IdUsuarioResponsable ,
                   FechaAccion ,
                   Comentario ,
				   Estado,Usuario,Dispositivo,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
			       @IdMeliponarioCaja ,
                   @IdTipoAccionMeliponario ,
                   @IdOrigenColonia ,
                   @IdUsuarioResponsable ,
                   @FechaAccion ,
                   @Comentario ,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
      
    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1

         INSERT INTO  MeliponarioCajaAccion (
		           Identificador,
		           IdMeliponarioCaja ,
                   IdTipoAccionMeliponario ,
                   IdOrigenColonia ,
                   IdUsuarioResponsable ,
                   FechaAccion ,
                   Comentario ,
				   Estado)
          VALUES  (@Identificador,
			       @IdMeliponarioCaja ,
                   @IdTipoAccionMeliponario ,
                   @IdOrigenColonia ,
                   @IdUsuarioResponsable ,
                   @FechaAccion ,
                   @Comentario ,		
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
