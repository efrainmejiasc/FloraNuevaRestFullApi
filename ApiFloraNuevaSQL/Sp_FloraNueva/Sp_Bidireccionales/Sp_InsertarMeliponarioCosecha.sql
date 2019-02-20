USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarMeliponarioCosecha] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdMeliponario INT,
			@IdUsuarioResponsable INT,
			@PrecioCompra DECIMAL(20, 6),
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

   
  BEGIN TRAN [TABLE]

   BEGIN TRY

             IF (@IdMeliponario = 0)  BEGIN  SET @IdMeliponario = NULL; END
			 IF (@IdUsuarioResponsable = 0)  BEGIN  SET @IdUsuarioResponsable = NULL; END
			 IF (@PrecioCompra = 0)  BEGIN  SET @PrecioCompra= NULL; END
			 IF (LEN(@Comentario) = 0) BEGIN SET @Comentario = NULL; END

             INSERT INTO MeliponarioCosechaTrack (Identificador,IdMeliponario,IdUsuarioResponsable,precioCompra,Comentario,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                                       VALUES  (@Identificador,@IdMeliponario,@IdUsuarioResponsable,@PrecioCompra,@Comentario,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion);


    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1

             INSERT INTO MeliponarioCosecha (Identificador,idMeliponario,IdUsuarioResponsable,precioCompra,Comentario,Estado)
                                       VALUES  (@Identificador,@IdMeliponario,@IdUsuarioResponsable,@PrecioCompra,@Comentario,@Estado);

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLE];
   END CATCH

END ;
