USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCajaAccion]    Script Date: 29/11/2018 18:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarMeliponarioCajaAccion] 
       (
	        @IdMeliponarioCajaAccion INT,
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

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY

              IF ( @IdMeliponarioCaja = 0)  BEGIN  SET  @IdMeliponarioCaja = (SELECT IdMeliponarioCaja FROM MeliponarioCaja WHERE Identificador = @Identificador) ; END
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
				   Estado,Usuario,Dispositivo,FechaCreacion ,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
			       @IdMeliponarioCaja ,
                   @IdTipoAccionMeliponario ,
                   @IdOrigenColonia ,
                   @IdUsuarioResponsable ,
                   @FechaAccion ,
                   @Comentario ,
				   @Estado,@Usuario,@Dispositivo,@FEchaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	 BEGIN TRAN [TABLE]

	IF (@IdMeliponarioCajaAccion > 0)
	  BEGIN
        UPDATE  MeliponarioCajaAccion SET 
                   IdMeliponarioCaja = @IdMeliponarioCaja ,
                   IdTipoAccionMeliponario = @IdTipoAccionMeliponario ,
                   IdOrigenColonia = @IdOrigenColonia ,
                   IdUsuarioResponsable = @IdUsuarioResponsable ,
                   FechaAccion = @FechaAccion ,
                   Comentario = @Comentario ,
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND IdMeliponarioCajaAccion = @IdMeliponarioCajaAccion;
	 END
	 ELSE
	 BEGIN
	  INSERT INTO MeliponarioCajaAccion(
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
   END CATCH

END ;