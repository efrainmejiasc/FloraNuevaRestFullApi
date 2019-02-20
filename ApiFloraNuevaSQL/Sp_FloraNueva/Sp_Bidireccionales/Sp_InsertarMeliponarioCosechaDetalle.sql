USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_InsertarMeliponarioCosechaDetalle] 
       (
            @Identificador UNIQUEIDENTIFIER,
			@IdMeliponarioCosecha INT,
			@Lote VARCHAR(50),
			@IdEspecieAbeja INT,
			@Alzas DECIMAL(20, 6),
			@PesoKg DECIMAL(20, 6),
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

              IF (@IdMeliponarioCosecha = 0)  BEGIN  SET @IdMeliponarioCosecha = NULL; END
			  IF (LEN(@Lote) = 0) BEGIN SET @Lote = NULL; END
			  IF (@IdEspecieAbeja = 0)  BEGIN  SET @IdEspecieAbeja = NULL; END
			  IF (@Alzas = 0)  BEGIN  SET @Alzas = NULL; END
			  IF (@PesoKg = 0)  BEGIN  SET @PesoKg = NULL; END   

INSERT INTO MeliponarioCosechaDetalleTrack (Identificador,IdMeliponarioCosecha,Lote,IdEspecieAbeja,Alzas,PesoKg,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
                      VALUES (@Identificador,@IdMeliponarioCosecha,@Lote,@IdEspecieAbeja,@Alzas,@PesoKg,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
   
     SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1

            INSERT INTO MeliponarioCosechaDetalle (Identificador,IdMeliponarioCosecha,Lote,IdEspecieAbeja,Alzas,PesoKg,Estado)
                                          VALUES (@Identificador,@IdMeliponarioCosecha,@Lote,@IdEspecieAbeja,@Alzas,@PesoKg,@Estado)

   SAVE TRAN [TABLE];
   COMMIT TRAN [TABLE];

   END TRY
   
    BEGIN CATCH
        ROLLBACK TRAN [TABLETRACK] 
		ROLLBACK TRAN  [TABLE]; 
	    COMMIT TRAN [TABLE];
   END CATCH

END ;
