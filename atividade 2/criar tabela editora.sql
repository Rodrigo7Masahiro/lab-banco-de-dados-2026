USE biblioteca_pessoal_1s2026;
CREATE table Editora(
id_editora int auto_increment primary key,
nome varchar (255) not null unique,
cidade varchar (64),
estado varchar (64),
pais varchar (64),
data_cadastro timestamp,
data_atualizacao timestamp
);
 