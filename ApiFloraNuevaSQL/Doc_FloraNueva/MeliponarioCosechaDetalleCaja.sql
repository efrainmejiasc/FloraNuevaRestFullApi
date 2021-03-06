/*
   miércoles, 28 de noviembre de 201812:12:53
   Usuario: sa
   Servidor: EMCSERVER
   Base de datos: FloraNueva
   Aplicación: 
*/

/* Para evitar posibles problemas de pérdida de datos, debe revisar este script detalladamente antes de ejecutarlo fuera del contexto del diseñador de base de datos.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.MeliponarioCosechaDetalleCaja
	DROP CONSTRAINT FK_MeliponarioCosechaDetalleCaja_MeliponarioCosechaDetalle
GO
ALTER TABLE dbo.MeliponarioCosechaDetalle SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalle', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalle', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalle', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.MeliponarioCosechaDetalleCaja
	DROP CONSTRAINT FK_MeliponarioCosechaDetalleCaja_MeliponarioCaja
GO
ALTER TABLE dbo.MeliponarioCaja SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.MeliponarioCaja', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.MeliponarioCaja', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.MeliponarioCaja', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_MeliponarioCosechaDetalleCaja
	(
	IdMeliponarioCosechaDetalleCaja int NOT NULL IDENTITY (1, 1),
	Identificador uniqueidentifier NOT NULL,
	IdMeliponarioCosechaDetalle int NULL,
	IdMeliponarioCaja int NULL,
	NumeroCaja int NULL,
	Estado varchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_MeliponarioCosechaDetalleCaja SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_MeliponarioCosechaDetalleCaja ON
GO
IF EXISTS(SELECT * FROM dbo.MeliponarioCosechaDetalleCaja)
	 EXEC('INSERT INTO dbo.Tmp_MeliponarioCosechaDetalleCaja (IdMeliponarioCosechaDetalleCaja, Identificador, IdMeliponarioCosechaDetalle, IdMeliponarioCaja, Estado)
		SELECT IdMeliponarioCosechaDetalleCaja, Identificador, IdMeliponarioCosechaDetalle, IdMeliponarioCaja, Estado FROM dbo.MeliponarioCosechaDetalleCaja WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_MeliponarioCosechaDetalleCaja OFF
GO
DROP TABLE dbo.MeliponarioCosechaDetalleCaja
GO
EXECUTE sp_rename N'dbo.Tmp_MeliponarioCosechaDetalleCaja', N'MeliponarioCosechaDetalleCaja', 'OBJECT' 
GO
ALTER TABLE dbo.MeliponarioCosechaDetalleCaja ADD CONSTRAINT
	PK_MeliponarioCosechaDetalleCaja PRIMARY KEY CLUSTERED 
	(
	IdMeliponarioCosechaDetalleCaja
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.MeliponarioCosechaDetalleCaja ADD CONSTRAINT
	FK_MeliponarioCosechaDetalleCaja_MeliponarioCaja FOREIGN KEY
	(
	IdMeliponarioCaja
	) REFERENCES dbo.MeliponarioCaja
	(
	IdMeliponarioCaja
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.MeliponarioCosechaDetalleCaja ADD CONSTRAINT
	FK_MeliponarioCosechaDetalleCaja_MeliponarioCosechaDetalle FOREIGN KEY
	(
	IdMeliponarioCosechaDetalle
	) REFERENCES dbo.MeliponarioCosechaDetalle
	(
	IdMeliponarioCosechaDetalle
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalleCaja', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalleCaja', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalleCaja', 'Object', 'CONTROL') as Contr_Per 