CREATE PROCEDURE dbo.SSP_DELPACIENTE (
@IDPACIENTE INT,
@MENSAJE VARCHAR(200) OUTPUT,
@BOLVALIDO BIT OUTPUT
)
AS
BEGIN

	IF EXISTS (SELECT * FROM dbo.TB_PACIENTES WHERE IDPACIENTE = @IDPACIENTE)
	BEGIN
		DELETE FROM dbo.TB_PACIENTES WHERE IDPACIENTE = @IDPACIENTE
		SET @MENSAJE = 'Paciente borrado correctamente'
		SET @BOLVALIDO = 1
	END
	ELSE
	BEGIN
		SET @MENSAJE = 'Paciente no existe'
		SET @BOLVALIDO = 0
	END

END


