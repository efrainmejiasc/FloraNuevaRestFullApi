USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarMeliponario] 
       (
            @Identificador UNIQUEIDENTIFIER,
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

  BEGIN TRAN [TABLE]

   BEGIN TRY

             SET @Idproductor =(SELECT IdProductor FROM Productor WHERE Identificador = @Identificador );
             IF (@IdProductor = 0)  BEGIN  SET  @IdProductor = NULL; END
			 IF (@GPSLatitud = 0)  BEGIN  SET  @GPSLatitud = NULL; END
			 IF (@GPSLongitud = 0)  BEGIN  SET  @GPSLongitud = NULL; END
             IF (@IdTipoMeliponario= 0)  BEGIN  SET  @IdTipoMeliponario = NULL; END
             IF (LEN(@Observaciones) = 0) BEGIN SET  @Observaciones = NULL; END 
         
          INSERT INTO MeliponarioTrack(
		           Identificador,
				   IdProductor,
                   GPSLatitud ,
                   GPSLongitud ,
                   ValidadoParaRecibirCajasFloraNueva ,
                   IdTipoMeliponario ,
                   FechaCreacion ,
                   Observaciones,	
				   Estado,Usuario,Dispositivo,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
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

         INSERT INTO  Meliponario (
		           Identificador,
		           IdProductor,
                   GPSLatitud ,
                   GPSLongitud ,
                   ValidadoParaRecibirCajasFloraNueva ,
                   IdTipoMeliponario ,
                   FechaCreacion ,
                   Observaciones,		
				   Estado)
          VALUES  (@Identificador,
			       @IdProductor,
                   @GPSLatitud ,
                   @GPSLongitud ,
                   @ValidadoParaRecibirCajasFloraNueva ,
                   @IdTipoMeliponario ,
                   @FechaCreacion ,
                   @Observaciones,		
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
