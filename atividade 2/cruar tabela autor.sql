USE biblioteca_pessoal_1s2026;
CREATE table Autor(
id_autor int auto_increment primary key,
nome varchar (255) not null unique,
ano_nascimento year,
ano_morte year,
apresentacao text,
data_cadastro timestamp,
data_atualizacao timestamp
);
 