USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarMeliponarioCajaHistorial]    Script Date: 12/11/2018 18:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarMeliponarioCajaHistorial] 
       (
	        @IdMeliponarioCajaHistorial INT,
            @Identificador UNIQUEIDENTIFIER,
			@NumeroCaja INT,
            @IdMeliponarioCaja INT,
            @IdProductor INT,
            @FechaDesde DATETIME,
            @FechaHasta DATETIME,
            @Actual BIT,
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
			@fechaCreacion DATETIME,
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
  
			  IF (@IdProductor = 0)  BEGIN  SET  @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador)  END
   
          INSERT INTO MeliponarioCajaHistorialTrack(
		           Identificador,
				   NumeroCaja,
				   IdMeliponarioCaja,
                   IdProductor ,
                   FechaDesde,
                   FechaHasta ,
                   Actual,
				   Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
		           @NumeroCaja,
			       @IdMeliponarioCaja,
                   @IdProductor ,
                   @FechaDesde,
                   @FechaHasta ,
				   @Actual,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

 SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
	BEGIN TRAN [TABLE];

	IF( @IdMeliponarioCajaHistorial > 0)
	  BEGIN
                   UPDATE  MeliponarioCajaHistorial SET 
                   IdMeliponarioCaja =  @IdMeliponarioCaja,
				   NumeroCaja = @NumeroCaja,
                   IdProductor = @IdProductor ,
                   FechaDesde = @FechaDesde,
                   FechaHasta = @FechaHasta ,
				   Actual = @Actual,
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND  IdMeliponarioCajaHistorial =  @IdMeliponarioCajaHistorial
     END
   ELSE
     BEGIN
       INSERT INTO MeliponarioCajaHistorial(
		           Identificador,
				   NumeroCaja,
				   IdMeliponarioCaja,
                   IdProductor ,
                   FechaDesde,
                   FechaHasta ,
                   Actual,
				   Estado)
          VALUES  ( @Identificador,
				   @NumeroCaja,
				   @IdMeliponarioCaja,
                   @IdProductor ,
                   @FechaDesde,
                   @FechaHasta ,
                   @Actual,
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

