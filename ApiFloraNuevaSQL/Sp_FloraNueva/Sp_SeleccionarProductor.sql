USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[Sp_SeleccionarProductor]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Productor]

	                       SELECT * FROM Productor WHERE Identificador = @Identificador;

             COMMIT TRAN [Productor]
   END;
