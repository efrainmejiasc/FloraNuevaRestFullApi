USE [FloraNueva]
GO
/****** Object:  StoredProcedure [dbo].[Sp_ActualizarProductorMiembroHogar]    Script Date: 06/10/2018 12:31:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Sp_ActualizarProductorMiembroHogar] 
       (
	        @IdProductorMiembroHogar INT,
            @Identificador UNIQUEIDENTIFIER,
			@IdProductor INT, 
			@Nombre VARCHAR(520),
			@IdParentezco INT,
			@Sexo BIT,
			@Edad INT,
			@TieneAlgunaDiscapacidadOEnfermedadGrave BIT,
			@Ocupacion VARCHAR(100),
			@IdCondicionLaboral INT,
			@SeguridadTrabajaTodoElAnno BIT,
			@SeguridadTrabajaEntre48Y40Horas BIT,
			@SeguridadCotizaALaCaja BIT,
            @SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales BIT,
			@SeguridadPercibeSuEmpleoComoSeguro BIT,
			@IndiceSeguridad DECIMAL(20,6),
			@IdSituacionAutoEmpleo INT,
			@IndiceInsercionLaboral DECIMAL(20,6),
			@IdSabeLeerYEscribir INT,
			@IdNivelEscolar INT,
			@IndiceNivelEducativo DECIMAL(20,6),
			@IdCondicionAseguramiento INT,
			@IndiceCiudadaniaSocial DECIMAL(20,6),
			@IdPertenenciaGrupoComunitario INT,
			@PertenenciaGrupoComunitarioEspecificar VARCHAR(500),
			@IndiceInclusionSocialPersona DECIMAL(20,6),
			@Estado VARCHAR(50),
            @Usuario VARCHAR(50),
            @Dispositivo VARCHAR(50),
            @FechaCreacion DATETIME,
            @FechaCreacionUtc VARCHAR(50),
            @FechaModificacion DATETIME,
            @FechaModificacionUtc VARCHAR(50),
            @Transaccion VARCHAR(50)
       )
AS
BEGIN

DECLARE @TRANCOUNTER INT = 0;

SET NOCOUNT ON;

SET  TRANSACTION ISOLATION LEVEL SERIALIZABLE

   BEGIN TRAN [PRODUCTORTRACK]

   BEGIN TRY

   
            IF (@IdProductor = 0)  BEGIN   SET @IdProductor = (SELECT IdProductor FROM Productor WHERE Identificador = @Identificador ); END
			IF (LEN(@Nombre) = 0) BEGIN SET @Nombre =  Null END 
			IF (@IdParentezco = 0) BEGIN SET @IdParentezco =  Null END 
			IF (@Edad = 0) BEGIN SET @Edad =  Null END 
			IF (LEN(@Ocupacion ) = 0) BEGIN SET @Ocupacion  =  Null END 
			IF (@IdCondicionLaboral = 0) BEGIN SET @IdCondicionLaboral =  Null END 
            IF (@IndiceSeguridad = 0) BEGIN SET @IndiceSeguridad =  Null END 
			IF (@IdSituacionAutoEmpleo = 0) BEGIN SET @IdSituacionAutoEmpleo =  Null END 
            IF (@IndiceInsercionLaboral = 0) BEGIN SET @IndiceInsercionLaboral =  Null END 
			IF (@IdSabeLeerYEscribir = 0) BEGIN SET @IdSabeLeerYEscribir =  Null END 
			IF (@IdNivelEscolar = 0) BEGIN SET @IdNivelEscolar =  Null END 
			IF (@IndiceNivelEducativo = 0) BEGIN SET @IndiceNivelEducativo =  Null END 
			IF (@IdCondicionAseguramiento = 0) BEGIN SET @IdCondicionAseguramiento =  Null END 
			IF (@IndiceCiudadaniaSocial = 0) BEGIN SET @IndiceCiudadaniaSocial =  Null END 
			IF (@IdPertenenciaGrupoComunitario = 0) BEGIN SET @IdPertenenciaGrupoComunitario =  Null END 
			IF (LEN(@PertenenciaGrupoComunitarioEspecificar) = 0) BEGIN SET @PertenenciaGrupoComunitarioEspecificar  =  Null END 
			IF (@IndiceInclusionSocialPersona = 0) BEGIN SET @IndiceInclusionSocialPersona =  Null END

			
 
     INSERT INTO ProductorMiembroHogarTrack (Identificador,IdProductor,Nombre,IdParentezco,Sexo,Edad,TieneAlgunaDiscapacidadOEnfermedadGrave,Ocupacion,IdCondicionLaboral,SeguridadTrabajaTodoElAnno,SeguridadTrabajaEntre48Y40Horas,SeguridadCotizaALaCaja,
              SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales,SeguridadPercibeSuEmpleoComoSeguro,IndiceSeguridad,IdSituacionAutoEmpleo,IndiceInsercionLaboral,IdSabeLeerYEscribir,IdNivelEscolar,IndiceNivelEducativo,IdCondicionAseguramiento,
			  IndiceCiudadaniaSocial,IdPertenenciaGrupoComunitario,PertenenciaGrupoComunitarioEspecificar,IndiceInclusionSocialPersona,Estado,Usuario,Dispositivo,FechaCreacion,FechaCreacionUtc,FechaModificacion,FechaModificacionUtc,Transaccion)			  
			  VALUES  (@Identificador,@IdProductor,@Nombre,@IdParentezco,@Sexo,@Edad,@TieneAlgunaDiscapacidadOEnfermedadGrave,@Ocupacion,@IdCondicionLaboral,@SeguridadTrabajaTodoElAnno,@SeguridadTrabajaEntre48Y40Horas,@SeguridadCotizaALaCaja,
              @SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales,@SeguridadPercibeSuEmpleoComoSeguro,@IndiceSeguridad,@IdSituacionAutoEmpleo,@IndiceInsercionLaboral,@IdSabeLeerYEscribir,@IdNivelEscolar,@IndiceNivelEducativo,@IdCondicionAseguramiento,
			  @IndiceCiudadaniaSocial,@IdPertenenciaGrupoComunitario,@PertenenciaGrupoComunitarioEspecificar,@IndiceInclusionSocialPersona,@Estado,@Usuario,@Dispositivo,@FechaCreacion,@FechaCreacionUtc,@FechaModificacion,@FechaModificacionUtc,@Transaccion)
 
     SAVE TRAN [PRODUCTORTRACK]
     SET @TRANCOUNTER = 1
	 BEGIN TRAN [PRODUCTOR]

	  IF (@IdProductorMiembroHogar > 0)
	    BEGIN 

            UPDATE ProductorMiembroHogar SET
		  	IdProductor = @IdProductor , 
			Nombre = @Nombre ,
			IdParentezco = @IdParentezco,
			Sexo = @Sexo ,
			Edad  = @Edad ,
			TieneAlgunaDiscapacidadOEnfermedadGrave = @TieneAlgunaDiscapacidadOEnfermedadGrave,
			Ocupacion  = @Ocupacion ,
			IdCondicionLaboral = @IdCondicionLaboral ,
			SeguridadTrabajaTodoElAnno = @SeguridadTrabajaTodoElAnno ,
			SeguridadTrabajaEntre48Y40Horas = @SeguridadTrabajaEntre48Y40Horas ,
			SeguridadCotizaALaCaja = @SeguridadCotizaALaCaja ,
            SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales = @SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales ,
			SeguridadPercibeSuEmpleoComoSeguro = @SeguridadPercibeSuEmpleoComoSeguro ,
			IndiceSeguridad = @IndiceSeguridad ,
			IdSituacionAutoEmpleo = @IdSituacionAutoEmpleo ,
			IdSabeLeerYEscribir = @IdSabeLeerYEscribir,
			IdNivelEscolar = @IdNivelEscolar ,
			IndiceNivelEducativo = @IndiceNivelEducativo ,
			IdCondicionAseguramiento = @IdCondicionAseguramiento ,
			IndiceCiudadaniaSocial = @IndiceCiudadaniaSocial ,
			IdPertenenciaGrupoComunitario = @IdPertenenciaGrupoComunitario ,
			PertenenciaGrupoComunitarioEspecificar = @PertenenciaGrupoComunitarioEspecificar ,
			IndiceInclusionSocialPersona = @IndiceInclusionSocialPersona ,
			Estado = @Estado
		    WHERE Identificador = @Identificador AND IdProductorMiembroHogar = @IdProductorMiembroHogar;

         END
	  ELSE
	      BEGIN 
			  INSERT INTO ProductorMiembroHogar  (Identificador,IdProductor,Nombre,IdParentezco,Sexo,Edad,TieneAlgunaDiscapacidadOEnfermedadGrave,Ocupacion,IdCondicionLaboral,SeguridadTrabajaTodoElAnno,SeguridadTrabajaEntre48Y40Horas,SeguridadCotizaALaCaja,
              SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales,SeguridadPercibeSuEmpleoComoSeguro,IndiceSeguridad,IdSituacionAutoEmpleo,IndiceInsercionLaboral,IdSabeLeerYEscribir,IdNivelEscolar,IndiceNivelEducativo,IdCondicionAseguramiento,
			  IndiceCiudadaniaSocial,IdPertenenciaGrupoComunitario,PertenenciaGrupoComunitarioEspecificar,IndiceInclusionSocialPersona,Estado) 
			  VALUES  (@Identificador,@IdProductor,@Nombre,@IdParentezco,@Sexo,@Edad,@TieneAlgunaDiscapacidadOEnfermedadGrave,@Ocupacion,@IdCondicionLaboral,@SeguridadTrabajaTodoElAnno,@SeguridadTrabajaEntre48Y40Horas,@SeguridadCotizaALaCaja,
              @SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales,@SeguridadPercibeSuEmpleoComoSeguro,@IndiceSeguridad,@IdSituacionAutoEmpleo,@IndiceInsercionLaboral,@IdSabeLeerYEscribir,@IdNivelEscolar,@IndiceNivelEducativo,@IdCondicionAseguramiento,
			  @IndiceCiudadaniaSocial,@IdPertenenciaGrupoComunitario,@PertenenciaGrupoComunitarioEspecificar,@IndiceInclusionSocialPersona,@Estado)
          END

   SAVE TRAN [PRODUCTOR];
   COMMIT TRAN [PRODUCTORTRACK];
    COMMIT TRAN [PRODUCTOR];

   END TRY

   BEGIN CATCH
        ROLLBACK TRAN [PRODUCTORTRACK] ;
		ROLLBACK TRAN  [PRODUCTOR]; 
		 COMMIT TRAN [PRODUCTORTRACK];
	    COMMIT TRAN [PRODUCTOR]; 
   END CATCH


END ;