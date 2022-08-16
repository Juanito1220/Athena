	IF NOT EXISTS(SELECT TOP 1 1 FROM GENERAL.TB_PANELES WHERE MODULO = 'CFG' AND NOMBRE = 'Consulta Resultados' AND ORDEN = 14375)
	BEGIN
		INSERT INTO GENERAL.TB_PANELES
		(
			MODULO,
			ORDEN,
			CARPETA,
			DEPENDENCIA,
			NOMBRE,
			INTERFAZ,
			ACTIVO,
			CLAVE,
			RUTA,
			VISIBLEV2,
			VISIBLEV1
		)
		VALUES
		(   'CFG',   
			14375,
			1, 
			'Seguridad',   
			'Consulta Resultados',   
			'',   
			1, 
			'',  
			'',  
			1, 
			0  
		)
	END


	IF NOT EXISTS(SELECT TOP 1 1 FROM GENERAL.TB_PANELES WHERE MODULO = 'CFG' AND NOMBRE = 'Restablecer Contrase�a' AND ORDEN = 14378)
	BEGIN
		INSERT INTO GENERAL.TB_PANELES
		(
			MODULO,
			ORDEN,
			CARPETA,
			DEPENDENCIA,
			NOMBRE,
			INTERFAZ,
			ACTIVO,
			CLAVE,
			RUTA,
			VISIBLEV2,
			VISIBLEV1
		)
		VALUES
		(   'CFG',   
			14378,
			0, 
			'Consulta Resultados',   
			'Restablecer Contrase�a',   
			'',   
			1, 
			'',  
			'Configuracion/Seguridad/ISEGRestablecerContrasenaCWR',  
			1, 
			0  
		)
	END


	
	