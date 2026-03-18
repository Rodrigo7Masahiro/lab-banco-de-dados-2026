USE biblioteca_pessoa_1s2026;
CREATE table Usuário(
id_usuario int auto_increment primary key,
username varchar (255) not null,
email varchar (255) unique,
data_cadastro date
);


