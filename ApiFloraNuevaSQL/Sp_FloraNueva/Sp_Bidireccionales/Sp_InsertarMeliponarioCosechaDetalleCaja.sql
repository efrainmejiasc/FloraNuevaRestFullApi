USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarMeliponarioCosechaDetalleCaja] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdMeliponarioCosechaDetalle INT,
			@IdMeliponarioCaja INT,
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

             IF (@IdMeliponarioCosechaDetalle= 0)  BEGIN  SET @IdMeliponarioCosechaDetalle = NULL; END
			 IF (@IdMeliponarioCaja= 0)  BEGIN  SET @IdMeliponarioCaja = NULL; END

         INSERT INTO  MeliponarioCosechaDetalleCajaTrack (Identificador,IdMeliponarioCosechaDetalle,IdMeliponarioCaja,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                               VALUES  (@Identificador,@IdMeliponarioCosechaDetalle,@IdMeliponarioCaja,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion) 
 
    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1

           INSERT INTO  MeliponarioCosechaDetalleCaja (Identificador,IdMeliponarioCosechaDetalle,IdMeliponarioCaja,Estado) 
                                          VALUES  (@Identificador,@IdMeliponarioCosechaDetalle,@IdMeliponarioCaja,@Estado) 

     SAVE TRAN [TABLE];
   COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLE];
   END CATCH

END ;
