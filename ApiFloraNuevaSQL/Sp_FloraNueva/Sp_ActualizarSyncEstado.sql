USE [FloraNueva]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_ActualizarSyncEstado]
(
 @Version UNIQUEIDENTIFIER ,
 @Estado VARCHAR(50)
)
AS
BEGIN

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

             BEGIN TRAN [SYNCESTADO]

                UPDATE SyncTransaccion 
                SET Estado = UPPER(@Estado)
                                            WHERE Version = @Version ;

           COMMIT TRAN [SYNCESTADO]
END;