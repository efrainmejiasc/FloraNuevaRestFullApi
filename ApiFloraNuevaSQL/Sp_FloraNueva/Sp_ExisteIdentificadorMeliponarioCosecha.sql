USE [FloraNueva]
GO
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteIdentificadorMeliponarioCosecha]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdMeliponarioCosecha FROM MeliponarioCosecha WHERE Identificador = @Identificador;

             COMMIT TRAN [Identificador]
   END;
