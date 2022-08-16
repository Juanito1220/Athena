IF NOT EXISTS(SELECT TOP 1 1 FROM GENERAL.TB_PANELES WHERE MODULO = 'CFG' AND NOMBRE = 'Prueba' AND ORDEN = 14373)
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
			14373,
			1, 
			'Seguridad',   
			'Prueba',   
			'',   
			1, 
			'',  
			'',  
			1, 
			0  
		)
	END


	IF NOT EXISTS(SELECT TOP 1 1 FROM GENERAL.TB_PANELES WHERE MODULO = 'CFG' AND NOMBRE = 'Prueba2' AND ORDEN = 14379)
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
			14379,
			0, 
			'Prueba',   
			'Prueba2',   
			'',   
			1, 
			'',  
			'Configuracion/Seguridad/ISEGPruebaCWR',  
			1, 
			0  
		)
	END


