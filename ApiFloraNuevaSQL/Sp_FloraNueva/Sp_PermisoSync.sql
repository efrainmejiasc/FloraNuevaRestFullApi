USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_PermisoSync]  
 (
   @Version UNIQUEIDENTIFIER
 )

AS
BEGIN

	SET NOCOUNT ON;
	                   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
	                   BEGIN TRAN [PERMISOSYNC]
                                              SELECT Numero FROM SyncTransaccion WHERE Version = @Version AND Estado = 'INICIADO'
                       COMMIT TRAN [PERMISOSYNC] 
END
