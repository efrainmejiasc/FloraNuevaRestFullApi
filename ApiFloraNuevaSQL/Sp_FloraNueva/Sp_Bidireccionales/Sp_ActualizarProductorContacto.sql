USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorContacto]    Script Date: 05/10/2018 6:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorContacto] 
       (
	        @IdProductorContacto INT,
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

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY
    
                IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END 
		    	IF (@IdTipoContacto = 0)  BEGIN  SET @IdTipoContacto= null; END
				IF (LEN(@Contacto) = 0) BEGIN SET @Contacto = NULL; END 
				IF (LEN(@Detalle) = 0) BEGIN SET @Detalle = NULL; END

		
         
     INSERT INTO ProductorContactoTrack (Identificador, IdProductor , IdTipoContacto , Contacto ,Detalle,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                                VALUES  (@Identificador, @IdProductor , @IdTipoContacto , @Contacto ,@Detalle,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [PRODUCTORTRACK]
    SET @TRANCOUNTER = 1
	   BEGIN TRAN [PRODUCTOR]


	 IF (@IdProductorContacto > 0)
	    BEGIN  
            UPDATE ProductorContacto SET
		    IdProductor = @IdProductor , 
			Contacto = @Contacto,
			Detalle = @Detalle ,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorContacto = @IdProductorContacto;
       END
	  ELSE
	    BEGIN 
		     INSERT INTO ProductorContacto (Identificador, IdProductor , IdTipoContacto , Contacto ,Detalle,Estado) 
                             VALUES  (@Identificador, @IdProductor , @IdTipoContacto , @Contacto ,@Detalle,@Estado)
		END

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
	    COMMIT TRAN  [PRODUCTORTRACK]; 
		COMMIT TRAN [PRODUCTOR];
   END CATCH


END ;