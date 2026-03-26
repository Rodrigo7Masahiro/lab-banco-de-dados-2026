CREATE database biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;
SHOW tables;
CREATE table livro (
id_livro int auto_increment primary key,
titulo varchar (255) not null,
descricao varchar (255) not null,
data_publicacao year
);
USE biblioteca_pessoa_1s2026;
CREATE table Usuário(
id_usuario int auto_increment primary key,
username varchar (255) not null,
email varchar (255) unique,
data_cadastro date
);
USE biblioteca_pessoal_1s2026;
ALTER table livro
ADD COLUMN sinopse text,
MODIFY COLUMN descricao varchar (255),
ADD COLUMN lido boolean,
ADD COLUMN data_cadastro timestamp,
ADD COLUMN data_atualizacao timestamp,
ADD COLUMN id_usuario int,
ADD COLUMN id_autor int,
ADD COLUMN id_editora int,
ADD COLUMN id_categoria int,
ADD CONSTRAINT fk_livro_usuario foreign key (id_usuario) references Usuário(id_usuario) on delete cascade,
ADD CONSTRAINT fk_livro_autor foreign key (id_autor) references Autor(id_autor) on delete restrict,
ADD CONSTRAINT fk_livro_editora foreign key (id_editora) references Editora(id_editora) on delete restrict,
ADD CONSTRAINT fk_livro_categoria foreign key (id_categoria) references Categoria(id_categoria) on delete restrict;
 USE biblioteca_pessoal_1s2026;
ALTER table Usuário
ADD COLUMN senha varchar (255),
MODIFY COLUMN data_cadastro timestamp,
ADD COLUMN data_atualizacao timestamp;
USE biblioteca_pessoal_1s2026;
CREATE table Categoria(
id_categoria int auto_increment primary key,
nome varchar (128) not null unique,
descricao text,
data_cadastro timestamp,
data_atualizacao timestamp
);
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
 


