USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarRegistroIdentificador]    Script Date: 01/11/2018 10:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_ExisteIdentificadorGenerico]  
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
