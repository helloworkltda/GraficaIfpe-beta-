create table solicitacao(

codigo	int(11) primary key,
siape_solicitante	int(11) not null unique,
siape_executor	int(11) not null unique,
anexo1	varchar(100) not null,
anexo2	varchar(100) not null,
anexo3	varchar(100) not null,
anexo4	varchar(100) not null,
descricao	varchar(30) not null,
usuariofk	int(11),
foreign key(usuariofk) references tipo_usuario(id)

);