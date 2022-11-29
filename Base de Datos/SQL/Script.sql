-- query para la incersion de un registro
INSERT INTO generationc2.estudiantes (nombre,id,apellido)
	VALUES ('Jhincito',4,'Bello');

-- Query para elimar el registro
delete from generationc2.estudiantes 
where id=1 and nombre='Jhincito' and apellido='Bello'

-- creacion de usuario

CREATE USER 'rocio'@'localhost' IDENTIFIED BY 'Admin1234*';
-- permisos de acceso
GRANT ALL PRIVILEGES ON *.* TO 'rocio'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

-- creacion de usuario para acceso remoto
CREATE USER 'rocio'@'%' IDENTIFIED BY 'Admin1234*';
GRANT ALL PRIVILEGES ON *.* TO 'rocio'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;