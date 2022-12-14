SELECT * FROM dbo.TB_PACIENTES
SELECT NOMBRE1, APELLIDO1 FROM dbo.TB_PACIENTES

--filtrar datos where

SELECT * FROM dbo.TB_PACIENTES WHERE NOMBRE1 = 'JUAN'
SELECT * FROM dbo.TB_PACIENTES WHERE ACTIVO = 1

--OPERADORES LOGICOS
--AND
--OR
--NOT

SELECT * FROM dbo.TB_PACIENTES WHERE NOMBRE2  = '' OR NOMBRE2 IS NULL

--OPERADORES ARITMETICOS
-- =  IGUALIDAD
-- < MENOR QUE
-- > MAYOR QUE
-- >= MAYOR O IGUAL
-- <= MENOR O IGUAL
-- BETWEEN RANGO
-- LIKE COMO, CONTIENE
--IN EN ALGO

SELECT * FROM dbo.TB_PACIENTES WHERE NOMBRE1 LIKE '%a%'
SELECT * FROM dbo.TB_PACIENTES WHERE NOMBRE1 LIKE 'a%'
SELECT * FROM dbo.TB_PACIENTES WHERE NOMBRE1 LIKE '%a'

SELECT * FROM dbo.TB_PACIENTES WHERE EDAD > 24
SELECT * FROM dbo.TB_PACIENTES WHERE EDAD >= 24
SELECT * FROM dbo.TB_PACIENTES WHERE EDAD = 18

SELECT * FROM dbo.TB_PACIENTES WHERE EDAD BETWEEN 25 AND 30
SELECT * FROM dbo.TB_PACIENTES WHERE EDAD >= 25 AND EDAD <= 30

SELECT * FROM dbo.TB_PACIENTES WHERE EDAD IN (18,24,30)

--OPERADAORES MATH

-- +
-- -
-- *
-- /

SELECT IDPACIENTE,
       NOMBRE1,
       NOMBRE2,
       APELLIDO1,
       APELLIDO2,
       FECHANACIMIENTO,
       TELEFONO,
       ACTIVO,
	   EDAD,
	   'PACIENTE' AS TIPO,
	   50 - EDAD AS DIFERENCIA,
	   EDAD * 2 AS EDADPORDOS
	   FROM dbo.TB_PACIENTES
	   WHERE (50 - EDAD) > 20