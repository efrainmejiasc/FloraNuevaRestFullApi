USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_SyncExito] 
(
  @Version VARCHAR(50),
  @Estado VARCHAR(50)
)
AS
BEGIN

SET NOCOUNT ON;

SELECT Numero  FROM SyncTransaccion WHERE Version = @Version AND Estado = UPPER(@Estado) ;

END 
