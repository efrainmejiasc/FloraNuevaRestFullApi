USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteNumeroCedula]
(
  @NumeroCedula VARCHAR(50)
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [NumeroCedula]

	                       SELECT IdProductor FROM Productor WHERE NumeroCedula = @NumeroCedula ;

             COMMIT TRAN [Numerocedula]
   END;
