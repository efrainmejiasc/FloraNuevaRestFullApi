USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarMeliponarioCajaHistorial] 
       (
            @Identificador UNIQUEIDENTIFIER,
            @IdMeliponarioCaja INT,
            @IdProductor INT,
            @FechaDesde DATETIME,
            @FechaHasta DATETIME,
            @Actual BIT,
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

              IF (@IdMeliponarioCaja = 0)  BEGIN  SET  @IdMeliponarioCaja = NULL; END
			  SET @Idproductor =(SELECT IdProductor FROM Productor WHERE Identificador = @Identificador );
			  IF (@IdProductor = 0)  BEGIN  SET  @IdProductor = NULL; END
         
          INSERT INTO MeliponarioCajaHistorialTrack(
		           Identificador,
				   IdMeliponarioCaja,
                   IdProductor ,
                   FechaDesde,
                   FechaHasta ,
                   Actual,
				   Estado,Usuario,Dispositivo,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
			       @IdMeliponarioCaja,
                   @IdProductor ,
                   @FechaDesde,
                   @FechaHasta ,
				   @Actual,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
      
    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1

         INSERT INTO  MeliponarioCajaHistorial (
		           Identificador,
		           IdMeliponarioCaja,
                   IdProductor ,
                   FechaDesde,
                   FechaHasta ,
                   Actual,
				   Estado)
          VALUES  (@Identificador,
			       @IdMeliponarioCaja,
                   @IdProductor ,
                   @FechaDesde,
                   @FechaHasta ,
				   @Actual,	
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
