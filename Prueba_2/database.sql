
/*CREACIÓN DE BASE DE DATOS Y TABLAS*/
CREATE DATABASE TestDevBackJr;
GO

USE TestDevBackJr;

GO

CREATE TABLE usuarios
(
    userId INT PRIMARY KEY IDENTITY,
    Login VARCHAR(100) NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Paterno VARCHAR(100) NOT NULL,
    Materno VARCHAR(100) NOT NULL
);

GO

CREATE TABLE empleados
(
    userId INT NOT NULL,
    Sueldo DECIMAL(18, 2) NOT NULL,
    FechaIngreso DATE NOT NULL,
	FOREIGN KEY (userId) REFERENCES dbo.usuarios(userId)
);

GO
       
/*INSERCIÓN DE LA INFORMACIÓN A LA TABLA USUARIOS Y EMPLEADOS*/
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user01','BERE'  ,'NARANJO'  ,'GONZALEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user02','ALEXIS'  ,'CAMPOS'  ,'NARANJO');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user03','SERGIO ALEJANDRO'  ,'CAMPOS'  ,'HERNANDEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user04','DIEGO ISMAEL'  ,'BERUMEN'  ,'CEDILLO');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user05','AURORA'  ,'ESCALANTE'  ,'PALAFOX');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user06','JOYCELENE FABIOLA'  ,'ESTRADA'  ,'BARBA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user07','FRANCISCO'  ,'ESTRADA'  ,'GOMEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user08','LEONARDO DANIEL'  ,'FARIAS'  ,'ROSAS');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user09','RAMON ANDRES'  ,'FIERROS'  ,'ROBLES');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user10','EDGAR ANDRES'  ,'FLORES'  ,'OLIVARES');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user11','MARIA FERNANDA'  ,'FRANCO'  ,'ESQUIVEL');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user12','ALEJANDRO'  ,'GALVAN'  ,'MUÑIZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user13','MARTHA ALICIA'  ,'GUTIERREZ'  ,'ORTIZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user14','JOSAFAT GERARDO'  ,'HERNANDEZ'  ,'SAUCEDO');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user15','ROSALIA'  ,'JIMENEZ'  ,'GONZALEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user16','LAURA CELENE'  ,'JIMENEZ'  ,'RIOS');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user17','ANGELICA'  ,'LOPEZ'  ,'CORTES');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user18','CRISTIAN IVAN'  ,'LOPEZ'  ,'GOMEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user19','MARLENE GABRIELA'  ,'LOPEZ'  ,'MEZA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user20','ALEJANDRA'  ,'MEDINA'  ,'IBARRA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user21','CONSUELO YURIDIANA THALIA'  ,'MEJIA'  ,'ALVAREZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user22','JAVIER ADRIAN'  ,'MEJIA'  ,'ALVAREZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user23','JUAN CARLOS EVARISTO'  ,'PEÑA'  ,'GUTIERREZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user24','JAZMIN ALEJANDRA'  ,'PEREZ'  ,'VELEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user25','GUSTAVO'  ,'RAMIREZ'  ,'RIVERA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user26','CARLOS NIVARDO'  ,'RODRIGUEZ'  ,'ASCENCIO');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user27','KARLA JOHANA'  ,'ROMERO'  ,'LUEVANOS');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user28','YESSICA YOSELINNE'  ,'RUIZ'  ,'HERNANDEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user29','CHRISTIAN EDUARDO'  ,'SALAS'  ,'SANCHEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user30','LUIS ROBERTO'  ,'SALDAÑA'  ,'ESPINOZA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user31','ADRIAN'  ,'SANCHEZ'  ,'ORTIZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user32','EDUARDO YAIR'  ,'SUAREZ'  ,'HERNANDEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user33','JUAN FRANCISCO'  ,'TABAREZ'  ,'GARCIA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user34','ZULEICA ELIZABETH'  ,'TERAN'  ,'TORRES');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user35','ADRIANA YUNUHEN'  ,'VARGAS'  ,'AYALA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user36','OSCAR URIEL'  ,'VELAZQUEZ'  ,'ALVAREZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user37','ERICK DE JESUS'  ,'CORONA'  ,'DIAZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user38','MARIA GUADALUPE'  ,'RAMOS'  ,'HERNANDEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user39','JESSICA NOEMI'  ,'JIMENEZ'  ,'VENTURA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user40','FLOR MARGARITA'  ,'ROJAS'  ,'HERNANDEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user41','LUIS ANTONIO'  ,'ALVARADO'  ,'VALENCIA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user42','EDGAR IVAN'  ,'AGUILAR'  ,'PADILLA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user43','LUIS ALFONSO'  ,'MICHEL'  ,'SANCHEZ');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user44','JOSE CARLOS'  ,'SILVA'  ,'ROCHA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user45','JUDITH'  ,'RODRIGUEZ'  ,'REYES');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user46','BRENDA SORAYA'  ,'CHAVEZ'  ,'GARCIA');
INSERT INTO dbo.usuarios(Login, Nombre, Paterno, Materno)VALUES('user47','ALMA ROSA'  ,'MARQUEZ'  ,'AGUILA');

go



INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(1,8837,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('36536',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(2,8837,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('36536',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(3,15000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('36536',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(4,15000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('36536',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(5,7812,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('36543',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(6,7812,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('36543',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(7,10200,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('36543',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(8,10200,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('36543',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(9,13800,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37031',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(10,13800,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37031',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(11,18880,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37031',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(12,18880,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37031',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(13,8000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37085',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(14,8000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37085',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(15,6000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37085',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(16,19470,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37085',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(17,19470,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37085',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(18,10200,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37088',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(19,10200,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37088',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(20,25000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37088',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(21,7812,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37088',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(22,7812,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37088',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(23,12210,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37219',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(24,12210,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37219',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(25,7500,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37219',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(26,15020,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37219',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(27,15020,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37219',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(28,25000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37219',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(29,7812,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37219',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(30,15020,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37237',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(31,15020,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37237',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(32,12210,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37237',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(33,12210,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('37237',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(34,19470,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39677',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(35,19470,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39677',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(36,8000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39677',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(37,8000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39677',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(38,18880,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39975',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(39,18880,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39975',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(40,14000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39975',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(41,13800,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39975',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(42,13800,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('39975',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(43,15000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('40092',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(44,15000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('40092',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(45,13000,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('40092',1,5))),(101)));
INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso)VALUES(46,8837,CONVERT([varchar](10), dateadd(day,-2,convert(decimal,substring('40092',1,5))),(101)));

/*ACTIVIDADES PRUEBA 1*/

-- Depurar solo los ID diferentes de 6,7,9 y 10 de la tabla usuarios (5 puntos)
SELECT u.userId, u.Login, u.Nombre, u.Paterno, u.Materno FROM dbo.usuarios AS u WHERE u.userId NOT IN (6,7,9,10)

--Actualizar el dato Sueldo en un 10 porciento a los empleados que tienen fechas entre el año 2000 y 2001 (5 puntos)
UPDATE dbo.empleados SET Sueldo = sueldo + (Sueldo * 0.10) WHERE YEAR(FechaIngreso) BETWEEN 2000 AND 2001 ;

--Realiza una consulta para traer el nombre de usuario y fecha de ingreso de los usuarios que gananen mas de 10000 y su apellido comience con T ordernado del mas reciente al mas antiguo (10 puntos)

SELECT u.Nombre FROM dbo.usuarios AS u
INNER JOIN  dbo.empleados AS e
ON e.userId = u.userId
WHERE e.Sueldo > 10000
AND u.Paterno LIKE 'T%'
ORDER BY e.FechaIngreso DESC

-- Realiza una consulta donde agrupes a los empleados por sueldo, un grupo con los que ganan menos de 1200 y uno mayor o igual a 1200, cuantos hay en cada grupo? (10 puntos)

SELECT COUNT(T.Grupo1) AS Grupo1_Menor_1200, COUNT(T.Grupo2) AS Grupo2_Mayor_Igual_1200 FROM (SELECT CASE WHEN e.Sueldo < 1200 THEN e.Sueldo END AS Grupo1,
CASE WHEN e.Sueldo >= 1200 THEN e.Sueldo END AS Grupo2 FROM dbo.empleados AS e) AS T

--R= Hay 0 empleados que ganan menos de 1200 y hay 46 empleados que ganan mayor o igual a 1200









