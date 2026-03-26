USE biblioteca_pessoal_1s2026;
CREATE table Categoria(
id_categoria int auto_increment primary key,
nome varchar (128) not null unique,
descricao text,
data_cadastro timestamp,
data_atualizacao timestamp
);
 