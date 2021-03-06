USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteIdentificadorAbejasNativasVisitaGrupal]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdAbejasNativasVisitaGrupal FROM AbejasNativasVisitaGrupal WHERE Identificador = @Identificador;

             COMMIT TRAN [Identificador]
   END;
