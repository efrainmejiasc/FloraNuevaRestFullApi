USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_NumeroDeCajasIdMeliponario]
(
  @IdMeliponario INT
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [NumeroDeCajasMeliponario]

	                       SELECT COUNT(IdMeliponario) FROM MeliponarioCaja WHERE IdMeliponario = @IdMeliponario;

             COMMIT TRAN [NumeroDeCajasMeliponario]
   END;