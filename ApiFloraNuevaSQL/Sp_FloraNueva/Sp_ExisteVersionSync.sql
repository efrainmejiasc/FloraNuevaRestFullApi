USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_ExisteVersionSync]
(
  @Version UNIQUEIDENTIFIER
)
AS
   BEGIN
             SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [Sync]

	                       SELECT Numero FROM SyncTransaccion WHERE Version = @Version;

             COMMIT TRAN [Sync]
   END;
