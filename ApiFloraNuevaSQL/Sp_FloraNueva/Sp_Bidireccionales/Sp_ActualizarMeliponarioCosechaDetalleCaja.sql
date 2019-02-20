USE [FloraNueva]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarMeliponarioCosechaDetalleCaja] 
       (
	        @IdMeliponarioCosechaDetalleCaja INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdMeliponarioCosechaDetalle INT,
			@IdMeliponarioCaja INT,
			@NumeroCaja INT,
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

             IF (@IdMeliponarioCosechaDetalle = 0)  BEGIN  SET @IdMeliponarioCosechaDetalle = (SELECT IdMeliponarioCosechaDetalle FROM MeliponarioCosechaDetalle WHERE Identificador = @Identificador ) END
			 IF (@IdMeliponarioCaja= 0)  BEGIN  SET @IdMeliponarioCaja = NULL; END

         INSERT INTO  MeliponarioCosechaDetalleCajaTrack (Identificador,IdMeliponarioCosechaDetalle,IdMeliponarioCaja,NumeroCaja,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                               VALUES  (@Identificador,@IdMeliponarioCosechaDetalle,@IdMeliponarioCaja,@NumeroCaja,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion) 
  
       SAVE TRAN [TABLETRACK]
       SET @TRANCOUNTER = 1
	   BEGIN TRAN [TABLE]

	   IF ( @IdMeliponarioCosechaDetalleCaja  > 0)
	     BEGIN
           UPDATE MeliponarioCosechaDetalleCaja SET
		   IdMeliponarioCosechaDetalle = @IdMeliponarioCosechaDetalle,
		   IdMeliponarioCaja = @IdMeliponarioCaja,
		   NumeroCaja = @NumeroCaja,
		   Estado = @Estado
		   WHERE Identificador = @Identificador AND  IdMeliponarioCosechaDetalleCaja  =  @IdMeliponarioCosechaDetalleCaja ;
	    END 
	ELSE
	  BEGIN
	        INSERT INTO  MeliponarioCosechaDetalleCaja (Identificador,IdMeliponarioCosechaDetalle,IdMeliponarioCaja,NumeroCaja,Estado) 
                                              VALUES  (@Identificador,@IdMeliponarioCosechaDetalle,@IdMeliponarioCaja,@NumeroCaja,@Estado) 
  
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