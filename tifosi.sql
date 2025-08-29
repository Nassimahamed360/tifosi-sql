 -- Création Base +table --
create DATABASE tifosi character SET utf8mb4 collate utf8mb4_general_ci ;
create user 'tifosi'@'localhost' identified by 'Nassim-3745' ;
grant all privileges on tifosi.*to 'tifosi'@'localhost' ; 
flush privileges ; 
use tifosi;
-- table Marque --
create table marque (
 id_marque int auto_increment primary key,
 nom varchar(100) not null unique );

-- table boisson --
create table boisson ( 
id_boisson int auto_increment primary key, 
nom varchar (100) not null unique,
prix decimal(5,2) not null check (prix >= 0 ),
id_marque int not null,
foreign key (id_marque) references marque  (id_marque) );
-- table focaccia -- 
create table focaccia ( 
id_focaccia int auto_increment primary key,
nom varchar(100) not null unique , 
prix decimal (5,2) not null check (prix >= 0) );
-- table ingredient --
create table ingredient (
id_ingredient int auto_increment primary key ,
nom varchar (100) not null unique );
-- table de liaison Focaccia et ingredient --
create table focaccia_ingredient (
id_focaccia int not null,
id_ingredient int not null,
primary key (id_focaccia, id_ingredient),
foreign key (id_focaccia) references focaccia(id_focaccia) on delete cascade,
foreign key (id_ingredient) references ingredient (id_ingredient) on delete cascade );
