USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertarSync]    Script Date: 09/09/2018 5:01:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_InsertarSync]
(
  @Version UNIQUEIDENTIFIER,
  @Usuario VARCHAR(50),
  @Dispositivo VARCHAR(50), 
  @FechaCreacion DATETIME,
  @FechaCreacionUtc VARCHAR(50),
  @Estado VARCHAR(50)
)
AS
BEGIN

     DECLARE @CODIGO INT ;
     DECLARE @STATE VARCHAR(50);
	 DECLARE @TIEMPO INT;
	 DECLARE @NUMERO INT;

	  BEGIN TRAN;
         BEGIN TRY

    SET @NUMERO =(SELECT MAX(NUMERO) FROM SyncTransaccion);
    SELECT @STATE = Estado, @TIEMPO = DATEDIFF(MINUTE,FECHACREACION,GETDATE())   FROM SyncTransaccion WITH (HOLDLOCK, ROWLOCK)  WHERE NUMERO = @NUMERO

	           IF (@TIEMPO >= 10 AND @STATE ='INICIADO')
	            BEGIN
			    	PRINT @NUMERO
		            DELETE FROM SYNCTRANSACCION WHERE NUMERO = @NUMERO;
					SET @STATE ='TERMINADO'
                END

    If (@STATE = 'INICIADO')
    BEGIN
        SET @CODIGO = - 200;
    END

    ELSE
	   BEGIN
	      INSERT INTO SyncTransaccion 
		                      (Version, Usuario, Dispositivo,FechaCreacion, FechaCreacionUtc, Estado) 
		   VALUES
		                     (@Version, @Usuario ,@Dispositivo, @FechaCreacion, @FechaCreacionUtc , @Estado)

          SET @CODIGO = 200;
	   END

    COMMIT TRAN;
         SELECT @CODIGO;

         END TRY
		 BEGIN CATCH
             SELECT ERROR_NUMBER() AS ErrorNumber,
                    ERROR_SEVERITY() AS ErrorSeverity,
                    ERROR_STATE() AS ErrorState,
                    ERROR_PROCEDURE() AS ErrorProcedure,
                    ERROR_LINE() AS ErrorLine,
                    ERROR_MESSAGE() AS ErrorMessage;
             ROLLBACK TRAN;
         END CATCH;
END
