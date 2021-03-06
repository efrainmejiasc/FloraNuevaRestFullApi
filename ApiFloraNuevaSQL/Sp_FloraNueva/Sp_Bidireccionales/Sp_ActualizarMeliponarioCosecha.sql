USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCosecha]    Script Date: 29/11/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarMeliponarioCosecha] 
       (
	        @IdMeliponarioCosecha INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdMeliponario INT,
			@IdUsuarioResponsable INT,
			@PrecioCompra DECIMAL(20, 6),
			@Comentario VARCHAR(MAX),
			@FechaCosecha DATETIME,
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

   


             --IF (@IdMeliponario = 0)  BEGIN  SET @IdMeliponario = (SELECT IdMeliponario FROM Meliponario WHERE Identificador = @Identificador); END
			 IF (@IdUsuarioResponsable = 0)  BEGIN  SET @IdUsuarioResponsable = NULL; END
			 IF (@PrecioCompra = 0)  BEGIN  SET @PrecioCompra= NULL; END
			 IF (LEN(@Comentario) = 0) BEGIN SET @Comentario = NULL; END

              INSERT INTO MeliponarioCosechaTrack (Identificador,IdMeliponario,IdUsuarioResponsable,precioCompra,Comentario,FechaCosecha,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                                VALUES  (@Identificador,@IdMeliponario,@IdUsuarioResponsable,@PrecioCompra,@Comentario,@FechaCosecha,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion);
     SAVE TRAN [TABLETRACK]
     SET @TRANCOUNTER = 1
	   BEGIN TRAN [TABLE]        


   IF (@IdMeliponarioCosecha > 0)
        BEGIN
            UPDATE MeliponarioCosecha SET
			IdMeliponario = @IdMeliponario ,
			IdUsuarioResponsable  = @IdUsuarioResponsable ,
			PrecioCompra = @PrecioCompra ,
			Comentario = @Comentario ,
			FechaCosecha = @FechaCosecha,
			Estado = @Estado    
            WHERE Identificador = @Identificador AND IdMeliponarioCosecha = @IdMeliponarioCosecha
	    END
	  ELSE
	     BEGIN
	    INSERT INTO MeliponarioCosecha(Identificador,IdMeliponario,IdUsuarioResponsable,PrecioCompra,Comentario,FechaCosecha,Estado)
                                VALUES  (@Identificador,@IdMeliponario,@IdUsuarioResponsable,@PrecioCompra,@Comentario,@FechaCosecha,@Estado);   
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