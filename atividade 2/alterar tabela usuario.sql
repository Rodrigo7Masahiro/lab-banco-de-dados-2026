USE biblioteca_pessoal_1s2026;
ALTER table Usuário
ADD COLUMN senha varchar (255),
MODIFY COLUMN data_cadastro timestamp,
ADD COLUMN data_atualizacao timestamp;