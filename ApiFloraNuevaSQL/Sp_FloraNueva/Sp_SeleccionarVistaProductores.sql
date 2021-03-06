USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_SeleccionarVistaProductores]    Script Date: 29/10/2018 18:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Sp_SeleccionarVistaProductores]

AS
   BEGIN
           SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

           BEGIN TRAN [Productor]
 SELECT   
				    IdProductor,
                    Identificador,                    
                    Nombres,
                    Apellido1,
                    Apellido2,
                    Foto,
                    CodigoFloraNueva,
                    NumeroCedula,
                    X.IdPais,
                    (SELECT Nombre  FROM Pais WHERE IdPais = X.IdPais) AS NombrePais,
                    X.IdGrupo,
                    (SELECT Nombre FROM Grupo WHERE IdGrupo = X.IdGrupo) AS  NombreGrupo ,
                    X.IdDivisionAdministrativa1,
                    (SELECT Nombre FROM DivisionAdministrativa1 WHERE IdDivisionAdministrativa1 = X.IdDivisionAdministrativa1)  AS   NombreDivisionAdministrativa1 ,
                    X.IdDivisionAdministrativa2,
                    (SELECT Nombre FROM DivisionAdministrativa2  WHERE IdDivisionAdministrativa2 = X.IdDivisionAdministrativa2)  AS   NombreDivisionAdministrativa2 ,
                    X.IdDivisionAdministrativa3,
                    (SELECT Nombre FROM DivisionAdministrativa3  WHERE IdDivisionAdministrativa3 = X.IdDivisionAdministrativa3)  AS   NombreDivisionAdministrativa3 ,      
                    Estado
                    FROM Productor X 

           COMMIT TRAN [Productor]
   END;
