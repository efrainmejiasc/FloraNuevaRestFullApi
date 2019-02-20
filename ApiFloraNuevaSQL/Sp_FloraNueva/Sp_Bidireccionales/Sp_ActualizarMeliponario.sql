USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarMeliponario] 
       (
	        @IdMeliponario INT,
            @Identificador UNIQUEIDENTIFIER,
			@NumeroMeliponario INT,
	        @IdProductor INT,
            @GPSLatitud DECIMAL(20,6),
            @GPSLongitud DECIMAL(20,6),
            @ValidadoParaRecibirCajasFloraNueva BIT,
            @IdTipoMeliponario INT,
            @FechaCreacion DATETIME,
            @Observaciones VARCHAR(500),		
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

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY

             IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador) END 
			 IF (@GPSLatitud = 0)  BEGIN  SET  @GPSLatitud = NULL; END
			 IF (@GPSLongitud = 0)  BEGIN  SET  @GPSLongitud = NULL; END
             IF (@IdTipoMeliponario= 0)  BEGIN  SET  @IdTipoMeliponario = NULL; END
             IF (LEN(@Observaciones) = 0) BEGIN SET  @Observaciones = NULL; END 

       INSERT INTO MeliponarioTrack(
		           Identificador,
				   NumeroMeliponario,
				   IdProductor,
                   GPSLatitud ,
                   GPSLongitud ,
                   ValidadoParaRecibirCajasFloraNueva ,
                   IdTipoMeliponario ,
                   FechaCreacion ,
                   Observaciones,	
				   Estado,Usuario,Dispositivo,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
		           @NumeroMeliponario,
			       @IdProductor,
                   @GPSLatitud ,
                   @GPSLongitud ,
                   @ValidadoParaRecibirCajasFloraNueva ,
                   @IdTipoMeliponario ,
                   @FechaCreacion ,
                   @Observaciones,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	BEGIN TRAN [TABLET]

	IF(@IdMeliponario > 0)
	 BEGIN
        UPDATE  Meliponario SET 
	               IdProductor = @IdProductor,
				   NumeroMeliponario = @NumeroMeliponario,
                   GPSLatitud = @GPSLatitud ,
                   GPSLongitud = @GPSLongitud ,
                   ValidadoParaRecibirCajasFloraNueva = @ValidadoParaRecibirCajasFloraNueva ,
                   IdTipoMeliponario = @IdTipoMeliponario ,
                   FechaCreacion = @FechaCreacion ,
                   Observaciones = @Observaciones,
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND IdMeliponario = @IdMeliponario;
	END
	ELSE
	  BEGIN
	   INSERT INTO Meliponario(
		           Identificador,
				   NumeroMeliponario,
				   IdProductor,
                   GPSLatitud ,
                   GPSLongitud ,
                   ValidadoParaRecibirCajasFloraNueva ,
                   IdTipoMeliponario ,
                   FechaCreacion ,
                   Observaciones,	
				   Estado)
          VALUES  (@Identificador,
		           @NumeroMeliponario,
			       @IdProductor,
                   @GPSLatitud ,
                   @GPSLongitud ,
                   @ValidadoParaRecibirCajasFloraNueva ,
                   @IdTipoMeliponario ,
                   @FechaCreacion ,
                   @Observaciones,
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