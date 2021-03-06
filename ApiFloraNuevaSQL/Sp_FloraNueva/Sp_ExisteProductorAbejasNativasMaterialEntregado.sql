USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteProductorAbejasNativasMaterialEntregado]
(
  @Identificador UNIQUEIDENTIFIER,
  @IdTipoMaterialEntregado INT
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdProductorAbejasNativasMaterialEntregado FROM ProductorAbejasNativasMaterialEntregado
						              WHERE Identificador = @Identificador AND IdTipoMaterialEntregado = @IdTipoMaterialEntregado;

             COMMIT TRAN [Identificador]
   END;
