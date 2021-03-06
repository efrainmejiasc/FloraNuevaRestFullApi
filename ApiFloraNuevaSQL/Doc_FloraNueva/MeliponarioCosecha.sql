/*
   lunes, 26 de noviembre de 201818:38:15
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
ALTER TABLE dbo.MeliponarioCosecha
	DROP CONSTRAINT FK_MeliponarioCosecha_Usuario
GO
ALTER TABLE dbo.Usuario SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Usuario', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Usuario', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Usuario', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.MeliponarioCosecha
	DROP CONSTRAINT FK_MeliponarioCosecha_Meliponario
GO
ALTER TABLE dbo.Meliponario SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Meliponario', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Meliponario', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Meliponario', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_MeliponarioCosecha
	(
	IdMeliponarioCosecha int NOT NULL IDENTITY (1, 1),
	Identificador uniqueidentifier NOT NULL,
	IdMeliponario int NULL,
	IdUsuarioResponsable int NULL,
	PrecioCompra decimal(20, 6) NULL,
	Comentario varchar(500) NULL,
	FechaCosecha datetime NULL,
	Estado varchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_MeliponarioCosecha SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_MeliponarioCosecha ON
GO
IF EXISTS(SELECT * FROM dbo.MeliponarioCosecha)
	 EXEC('INSERT INTO dbo.Tmp_MeliponarioCosecha (IdMeliponarioCosecha, Identificador, IdMeliponario, IdUsuarioResponsable, PrecioCompra, Comentario, Estado)
		SELECT IdMeliponarioCosecha, Identificador, IdMeliponario, IdUsuarioResponsable, PrecioCompra, Comentario, Estado FROM dbo.MeliponarioCosecha WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_MeliponarioCosecha OFF
GO
ALTER TABLE dbo.MeliponarioCosechaDetalle
	DROP CONSTRAINT FK_MeliponarioCosechaDetalle_MeliponarioCosecha
GO
DROP TABLE dbo.MeliponarioCosecha
GO
EXECUTE sp_rename N'dbo.Tmp_MeliponarioCosecha', N'MeliponarioCosecha', 'OBJECT' 
GO
ALTER TABLE dbo.MeliponarioCosecha ADD CONSTRAINT
	PK_MeliponarioCosecha PRIMARY KEY CLUSTERED 
	(
	IdMeliponarioCosecha
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.MeliponarioCosecha ADD CONSTRAINT
	FK_MeliponarioCosecha_Meliponario FOREIGN KEY
	(
	IdMeliponario
	) REFERENCES dbo.Meliponario
	(
	IdMeliponario
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.MeliponarioCosecha ADD CONSTRAINT
	FK_MeliponarioCosecha_Usuario FOREIGN KEY
	(
	IdUsuarioResponsable
	) REFERENCES dbo.Usuario
	(
	IdUsuario
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.MeliponarioCosecha', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.MeliponarioCosecha', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.MeliponarioCosecha', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.MeliponarioCosechaDetalle ADD CONSTRAINT
	FK_MeliponarioCosechaDetalle_MeliponarioCosecha FOREIGN KEY
	(
	IdMeliponarioCosecha
	) REFERENCES dbo.MeliponarioCosecha
	(
	IdMeliponarioCosecha
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.MeliponarioCosechaDetalle SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalle', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalle', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.MeliponarioCosechaDetalle', 'Object', 'CONTROL') as Contr_Per 