-- POKEMONES RELACIONAR

add -- agregar columna

select *
from mis_pokemones mp 

select *
from pokemoneskanto p 

-- hacer pk a una columna
alter table pokemoneskanto 
add primary key (pokedex)

-- hacer fk a una columna
ALTER TABLE mis_pokemones 
ADD FOREIGN KEY(pokedex) REFERENCES pokemonesKanto(pokedex);


truncate mis_pokemones;

ALTER TABLE generationc2.mis_pokemones ADD id int primary key auto_increment NOT NULL;

-- Filtrar todos los pokemones que tengan la habilidad de fuego como habilidad principal.

select p.nombre,p.tipo1
from pokemoneskanto p
where tipo1 = 'fuego';

-- pokemones tipo veneneno tipo1 y tipo2

select p.nombre,p.tipo1
from pokemoneskanto p
where p.tipo1 = 'veneno'
and p.tipo2 = 'veneno'

-- cuantos charmander tengo

