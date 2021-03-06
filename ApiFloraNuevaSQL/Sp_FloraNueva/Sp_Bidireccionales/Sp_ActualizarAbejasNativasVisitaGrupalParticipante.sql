USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarAbejasNativasVisitaGrupalParticipante]    Script Date: 03/10/2018 14:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarAbejasNativasVisitaGrupalParticipante] 
       (
	        @IdAbejasNativasVisitaGrupalParticipante INT,
            @Identificador UNIQUEIDENTIFIER,
	        @IdAbejasNativasVisitaGrupal INT,
            @IdProductor INT,
            @Observaciones VARCHAR(500),		
            @Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50),
			@IdentificadorGrupal UNIQUEIDENTIFIER
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

  BEGIN TRAN [TABLETRACK]

   BEGIN TRY
       
	    IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador); END 
        IF (@IdAbejasNativasVisitaGrupal = 0)  BEGIN  SET  @IdAbejasNativasVisitaGrupal = (SELECT IdAbejasNativasVisitaGrupal FROM AbejasNativasVisitaGrupal WHERE Identificador = @IdentificadorGrupal); END
	    IF (@IdProductor = 0)  BEGIN  SET  @IdProductor = NULL; END
	    IF (LEN(@Observaciones) = 0) BEGIN SET  @Observaciones = NULL; END 	

      INSERT INTO AbejasNativasVisitaGrupalParticipanteTrack(
		           Identificador,
				   IdAbejasNativasVisitaGrupal,
                   IdProductor,
                   Observaciones,	
				   Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)
          VALUES  (@Identificador,
			       @IdAbejasNativasVisitaGrupal,
                   @IdProductor,
                   @Observaciones,
				   @Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)

    SAVE TRAN [TABLETRACK]
    SET @TRANCOUNTER = 1
    BEGIN TRAN [TABLE]

	IF( @IdAbejasNativasVisitaGrupalParticipante > 0)
	    BEGIN
              UPDATE AbejasNativasVisitaGrupalParticipante SET 
	               IdAbejasNativasVisitaGrupal = @IdAbejasNativasVisitaGrupal,
                   IdProductor = @IdProductor,
                   Observaciones = @Observaciones ,	
				   Estado = @Estado
				   WHERE Identificador = @Identificador AND  IdAbejasNativasVisitaGrupalParticipante =  @IdAbejasNativasVisitaGrupalParticipante;
	   END 
	   ELSE
	   BEGIN
	     INSERT INTO AbejasNativasVisitaGrupalParticipante(
		           Identificador,
				   IdAbejasNativasVisitaGrupal,
                   IdProductor,
                   Observaciones,	
				   Estado)
          VALUES  (@Identificador,
			       @IdAbejasNativasVisitaGrupal,
                   @IdProductor,
                   @Observaciones,
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