CREATE TABLE generationc2.mascotas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	color varchar(100) NOT null,
	tipoAnimal varchar(100) NOT null,
	edad int (100) not null
);

insert into mascotas ( nombre, color, tipoAnimal, edad)
values ("Haku","Negro","Gato","4"),("Lulu","Blanca","Gata","3"),("Jhin","Blanco Atigrado","Gato","2"),("Galita","Atigrado","Gata","2"),("Tinguiritinguis","Naranjo Claro","Gata","3"),("Jake","Tricolor","Perro","7");
select *
from mascotas;



