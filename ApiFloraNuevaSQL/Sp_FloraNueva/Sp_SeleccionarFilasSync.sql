USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarFilasSync]    Script Date: 11/09/2018 4:30:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_SeleccionarFilasSync]  
 (
   @SQL  NVARCHAR(MAX)  
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [SELECCIONARFILASSYNC]
                                              EXEC sp_executesql @SQL
                       COMMIT TRAN [SELECCIONARFILASSYNC] 
END
