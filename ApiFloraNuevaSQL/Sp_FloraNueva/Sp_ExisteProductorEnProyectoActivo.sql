USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ExisteProductorEnProyectoActivo]
(
  @Identificador UNIQUEIDENTIFIER,
  @FechaIntegracion DATETIME
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                   SELECT IdProductorProyecto FROM ProductorProyecto WHERE Identificador = @Identificador AND FechaSalida > @FechaIntegracion AND Estado = 'ACTIVO'

             COMMIT TRAN [Identificador]
   END;
