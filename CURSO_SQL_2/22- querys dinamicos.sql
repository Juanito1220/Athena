ALTER PROCEDURE SSP_GETSOLCIITUDESBYCRITERIO
(
    @NOMBRE1 VARCHAR(200),
    @NOMBRE2 VARCHAR(200),
    @APELLIDO1 VARCHAR(200),
    @APELLIDO2 VARCHAR(200),
    @EDAD SMALLINT,
	@MES INT
)
AS
BEGIN

    DECLARE @SQL NVARCHAR(MAX)

    SET @SQL
        = 
		N'
	SELECT * FROM dbo.TB_PACIENTES AS X
	JOIN dbo.TB_SOLICITUDES AS Y 
	ON X.IDPACIENTE = Y.IDPACIENTE
	WHERE 1 = 1 '


    IF @NOMBRE1 <> ''
    BEGIN
        SET @SQL += N' AND  X.NOMBRE1 = @NOMBRE1_ '
    END

    IF @NOMBRE2 <> ''
    BEGIN
        SET @SQL += N' AND X.NOMBRE2 = @NOMBRE2_ '
    END

    IF @APELLIDO1 <> ''
    BEGIN
        SET @SQL += N' AND X.APELLIDO1 = @APELLIDO1_ '
    END

    IF @APELLIDO2 <> ''
    BEGIN
        SET @SQL += N' AND X.APELLIDO2 = @APELLIDO2_ '
    END


    IF @EDAD >= 0
    BEGIN
        SET @SQL += N' AND X.EDAD = @EDAD_ '
    END

	
    DECLARE @PAR NVARCHAR(200)
    SET @PAR
        = N' 
		@NOMBRE1_ VARCHAR(200),
		@NOMBRE2_ VARCHAR(200),
		@APELLIDO1_ VARCHAR(200),
		@APELLIDO2_ VARCHAR(200),
		@EDAD_ SMALLINT
	'

    EXEC sp_executesql @SQL,
                       @PAR,
                       @NOMBRE1_ = @NOMBRE1,
                       @NOMBRE2_ = @NOMBRE2,
                       @APELLIDO1_ = @APELLIDO1,
                       @APELLIDO2_ = @APELLIDO2,
                       @EDAD_ = @EDAD

END