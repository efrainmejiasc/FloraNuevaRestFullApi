USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Sp_InsertarProductorContacto] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@IdTipoContacto INT, 
			@Contacto VARCHAR(250),
			@Detalle VARCHAR(500),
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
                IF (@IdProductor = 0)  BEGIN  SET @IdProductor = null; END  
		    	IF (@IdTipoContacto = 0)  BEGIN  SET @IdTipoContacto= null; END
				IF (LEN(@Contacto) = 0) BEGIN SET @Contacto = NULL; END 
				IF (LEN(@Detalle) = 0) BEGIN SET @Detalle = NULL; END
 
         
     INSERT INTO ProductorContactoTrack (Identificador, IdProductor , IdTipoContacto , Contacto ,Detalle,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                                VALUES  (@Identificador, @IdProductor , @IdTipoContacto , @Contacto ,@Detalle,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

   
	 SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1

   INSERT INTO ProductorContacto (Identificador, IdProductor , IdTipoContacto , Contacto ,Detalle,Estado) 
                         VALUES  (@Identificador, @IdProductor , @IdTipoContacto , @Contacto ,@Detalle,@Estado)

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH

END ;
