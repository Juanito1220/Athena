SELECT * FROM dbo.TB_PACIENTES WHERE IDPACIENTE = 12

DECLARE @MENSAJE VARCHAR(200),
        @BOLVALIDO BIT

EXEC dbo.SSP_SETPACIENTE @IDPACIENTE = 12,                 -- int
                         @NUMERODOCUMENTO = '12345',           -- varchar(200)
                         @NOMBRE1 = 'JUANA',                   -- varchar(200)
                         @NOMBRE2 = '',                   -- varchar(200)
                         @APELLIDO1 = 'USMA',                 -- varchar(200)
                         @APELLIDO2 = '',                 -- varchar(200)
                         @FECHANACIMIENTO = '1991-08-02', -- date
                         @TELEFONO = '34544',                  -- varchar(200)
                         @ACTIVO = 1,                  -- bit
                         @EDAD = 30,                       -- smallint
                         @MENSAJE = @MENSAJE OUTPUT,      -- varchar(200)
                         @BOLVALIDO = @BOLVALIDO OUTPUT   -- bit

SELECT @MENSAJE , @BOLVALIDO

SELECT * FROM dbo.TB_PACIENTES WHERE IDPACIENTE = 12