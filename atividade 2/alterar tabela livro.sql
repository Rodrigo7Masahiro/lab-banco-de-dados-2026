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
 