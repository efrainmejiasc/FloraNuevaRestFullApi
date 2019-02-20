USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ExisteCodigoFloraNueva]    Script Date: 16/09/2018 17:31:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteCodigoFloraNueva]
(
  @CodigoFloraNueva VARCHAR(50)
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [CodigoFloraNueva]

	                       SELECT IdProductor FROM Productor WHERE CodigoFloraNueva = @CodigoFloraNueva ;

             COMMIT TRAN [CodigoFloraNueva]
   END;
