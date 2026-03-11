USE biblioteca_pessoa_1s2026;
CREATE table Usuário(
id_usuario int auto_increment primary key,
username varchar (255) not null,
email varchar (255) unique,
data_cadastro date
);
CREATE table livro (
id_livro int auto_increment primary key,
titulo varchar (255) not null,
descricao varchar (255) not null,
data_publicacao year
);


