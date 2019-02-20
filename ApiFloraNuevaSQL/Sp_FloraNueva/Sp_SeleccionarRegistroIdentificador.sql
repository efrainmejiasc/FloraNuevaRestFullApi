USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarRegistroIdentificador]    Script Date: 11/09/2018 3:29:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_SeleccionarRegistroIdentificador]  
 (
   @SQL  NVARCHAR (MAX)
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [SELECCIONARREGISTRO]
                                              EXEC sp_executesql  @SQL
                       COMMIT TRAN [SELECCIONARREGISTRO] 
END
