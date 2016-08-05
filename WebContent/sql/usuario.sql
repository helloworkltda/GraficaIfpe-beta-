create table usuario(

siape int(11) primary key,
nome varchar(50) not null,
cargo varchar(30) not null,
email varchar(30) not null unique,
senha varchar(20) not null,
tipo_id int(11) not null 


);