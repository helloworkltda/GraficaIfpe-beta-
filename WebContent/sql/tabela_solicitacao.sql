create table solicitacao(

codigo	int(11) primary key  AUTO_INCREMENT, // colocar auto incremente na tabela 
siape_solicitante	int(11) not null,
siape_executor	int(11)  null ,
anexo1	varchar(100)  null,
anexo2	varchar(100)  null,
anexo3	varchar(100)  null,
anexo4	varchar(100)  null,
descricao	varchar(30)  null,
id_status	int,
data_solicitacao date,
foreign key(siape_solicitante) references usuario(siape),
foreign key(siape_executor) references usuario(siape),
foreign key(id_status) references status(id)

);