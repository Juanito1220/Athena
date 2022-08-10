
--SELECT * FROM dbo.TB_PACIENTES



DECLARE @IDPACIENTE_ INT
DECLARE @MSG VARCHAR(200)
DECLARE @VALIDO BIT

EXEC dbo.SSP_INSPACIENTE @NUMERODOCUMENTO = '7678',
						 @NOMBRE1 = 'MANUEL',                   -- varchar(200)
                         @NOMBRE2 = '',                   -- varchar(200)
                         @APELLIDO1 = 'RODRIGUEZ',                 -- varchar(200)
                         @APELLIDO2 = '',                 -- varchar(200)
                         @FECHANACIMIENTO = '1990-01-01', -- date
                         @TELEFONO = '310123123',                  -- varchar(200)
                         @ACTIVO = 1,                  -- bit
                         @EDAD = 31,
						 @IDPACIENTE = @IDPACIENTE_ OUTPUT,
						@MENSAJE = @MSG OUTPUT,
						@BOLVALIDO = @VALIDO OUTPUT


SELECT @IDPACIENTE_, @MSG, @VALIDO