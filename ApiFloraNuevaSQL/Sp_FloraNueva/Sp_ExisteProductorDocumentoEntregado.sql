USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteProductorAbejasNativasMaterialEntregado]    Script Date: 21/10/2018 17:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteProductorDocumentoEntregado]
(
  @Identificador UNIQUEIDENTIFIER,
  @IdTipoDocumento INT
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdProductorDocumentoEntregado FROM ProductorDocumentoEntregado
						              WHERE Identificador = @Identificador AND IdTipoDocumento = @IdTipoDocumento;

             COMMIT TRAN [Identificador]
   END;
