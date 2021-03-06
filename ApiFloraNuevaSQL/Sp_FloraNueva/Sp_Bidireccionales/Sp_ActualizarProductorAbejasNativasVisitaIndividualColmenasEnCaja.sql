
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnCaja]    Script Date: 10/10/2018 14:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnCaja] 
       (
	        @IdProductorAbejasNativasVisitaIndividualColmenasEnCaja INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductorAbejasNativasVisitaIndividual INT,
			@IdEspecieAbeja INT,
			@ACFN FLOAT,
			@Rustica FLOAT,
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
   
            IF (@IdProductorAbejasNativasVisitaIndividual = 0) BEGIN SET @IdProductorAbejasNativasVisitaIndividual = (SELECT IdProductorAbejasNativasVisitaIndividual FROM ProductorAbejasNativasVisitaIndividual WHERE Identificador = @Identificador) END 
			IF (@IdEspecieAbeja = 0)  BEGIN  SET @IdEspecieAbeja = Null; END
			IF (@ACFN = 0)  BEGIN  SET @ACFN = Null; END
			IF (@Rustica= 0)  BEGIN  SET @Rustica= Null; END

    INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnCajaTrack (Identificador,IdProductorAbejasNativasVisitaIndividual,IdEspecieAbeja,ACFN,Rustica,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion) 
                              VALUES  (@Identificador,@IdProductorAbejasNativasVisitaIndividual,@IdEspecieAbeja,@ACFN,@Rustica,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

      SAVE TRAN [PRODUCTORTRACK]
      SET @TRANCOUNTER = 1
	  BEGIN TRAN [PRODUCTOR]

	 IF(@IdProductorAbejasNativasVisitaIndividualColmenasEnCaja > 0)
	     BEGIN
            UPDATE ProductorAbejasNativasVisitaIndividualColmenasEnCaja SET
		    IdProductorAbejasNativasVisitaIndividual = @IdProductorAbejasNativasVisitaIndividual,
			IdEspecieAbeja = @IdEspecieAbeja,
			ACFN = @ACFN,
			Rustica = @Rustica,
			Estado = @Estado 
		    WHERE Identificador = @Identificador AND IdProductorAbejasNativasVisitaIndividualColmenasEnCaja = @IdProductorAbejasNativasVisitaIndividualColmenasEnCaja;
			END
     ELSE
	   BEGIN
	    INSERT INTO ProductorAbejasNativasVisitaIndividualColmenasEnCaja (Identificador,IdProductorAbejasNativasVisitaIndividual,IdEspecieAbeja,ACFN,Rustica,Estado) 
                                                                      VALUES  (@Identificador,@IdProductorAbejasNativasVisitaIndividual,@IdEspecieAbeja,@ACFN,@Rustica,@Estado)

	   END

    SAVE TRAN [PRODUCTOR];
    COMMIT TRAN [PRODUCTORTRACK];
	   COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
		 COMMIT TRAN [PRODUCTORTRACK];
	    COMMIT TRAN  [PRODUCTOR]; 
   END CATCH


END ;