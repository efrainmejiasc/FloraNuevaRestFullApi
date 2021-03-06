USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteIdentificador]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdProductor FROM Productor WHERE Identificador = @Identificador;

             COMMIT TRAN [Identificador]
   END;
