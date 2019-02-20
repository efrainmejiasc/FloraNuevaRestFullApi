USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarTodasFilasTabla]    Script Date: 11/09/2018 4:29:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_SeleccionarTodasFilasTabla]  
 (
   @SQL  NVARCHAR(MAX)  
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [SELECCIONARTODO]
                                              EXEC sp_executesql @SQL
                       COMMIT TRAN [SELECCIONARTODO] 
END
