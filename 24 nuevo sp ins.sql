
ALTER PROCEDURE [dbo].[SSP_INSPACIENTE]
(
    @NUMERODOCUMENTO VARCHAR(200),
    @NOMBRE1 VARCHAR(200),
    @NOMBRE2 VARCHAR(200),
    @APELLIDO1 VARCHAR(200),
    @APELLIDO2 VARCHAR(200),
    @FECHANACIMIENTO DATE,
    @TELEFONO VARCHAR(200),
    @ACTIVO BIT,
    @EDAD SMALLINT,
    @PESO FLOAT,
    @ESTATURA FLOAT,
    @IDPACIENTE INT OUTPUT,
    @MENSAJE VARCHAR(200) OUTPUT,
    @BOLVALIDO BIT OUTPUT
)
AS
BEGIN

    IF NOT EXISTS
    (
        SELECT *
        FROM dbo.TB_PACIENTES
        WHERE NUMERODOCUMENTO = @NUMERODOCUMENTO
    )
    BEGIN
		DECLARE @IMC FLOAT
		SET @IMC = dbo.FNN_IMClINA(@PESO, @ESTATURA)

		DECLARE @CATEGORIA VARCHAR(20)
		SET @CATEGORIA = CASE
                        WHEN @IMC < 18.5 THEN
                            'Bajo peso'
                        WHEN @IMC
                            BETWEEN 18.5 AND 24.9 THEN
                            'Normal'
                        WHEN @IMC
                            BETWEEN 25.0 AND 29.9 THEN
                            'Sobrepeso'
                        WHEN @IMC >= 30 THEN
                            'Obesidad'
                                END

        INSERT INTO dbo.TB_PACIENTES
        (
            NUMERODOCUMENTO,
            NOMBRE1,
            NOMBRE2,
            APELLIDO1,
            APELLIDO2,
            FECHANACIMIENTO,
            TELEFONO,
            ACTIVO,
            EDAD,
            PESO,
            ESTATURA,
            IMC,
            CATEGORIAIMC
        )
        VALUES
        (   @NUMERODOCUMENTO, @NOMBRE1, @NOMBRE2, @APELLIDO1, @APELLIDO2, @FECHANACIMIENTO, @TELEFONO, @ACTIVO, @EDAD,
            @PESO, @ESTATURA, @IMC, @CATEGORIA)

        SET @IDPACIENTE = SCOPE_IDENTITY()
        SET @MENSAJE = 'Paciente insertado correctamente'
        SET @BOLVALIDO = 1
    END
    ELSE
    BEGIN
        SET @IDPACIENTE = 0
        SET @MENSAJE = 'El paciente ya existe'
        SET @BOLVALIDO = 0
    END


END

