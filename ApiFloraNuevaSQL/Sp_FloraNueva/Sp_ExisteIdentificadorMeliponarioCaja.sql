USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteIdentificadorMeliponarioCosecha]    Script Date: 25/10/2018 9:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteIdentificadorMeliponarioCaja]
(
  @Identificador UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Identificador]

	                       SELECT IdMeliponarioCaja FROM MeliponarioCaja WHERE Identificador = @Identificador;

             COMMIT TRAN [Identificador]
   END;
