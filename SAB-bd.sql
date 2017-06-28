CREATE TABLE autor (
 id_autor INT NOT NULL,
 nome VARCHAR(10),
 sobrenome VARCHAR(45),
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE autor ADD CONSTRAINT PK_autor PRIMARY KEY (id_autor);


CREATE TABLE categoria (
 id_categoria INT NOT NULL,
 nome VARCHAR(20),
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE categoria ADD CONSTRAINT PK_categoria PRIMARY KEY (id_categoria);


CREATE TABLE idioma (
 id_idioma INT NOT NULL,
 nome VARCHAR(20),
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE idioma ADD CONSTRAINT PK_idioma PRIMARY KEY (id_idioma);


CREATE TABLE livro (
 id_livro INT NOT NULL,
 titulo VARCHAR(255),
 descricao VARCHAR(1000),
 ano_lancamento CHAR(10),
 qtd_paginas INT,
 valor_multa NUMERIC(10),
 custo_reposicao NUMERIC(10),
 avaliacao CHAR(1),
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 observacao VARCHAR(350),
 resumo VARCHAR(5000),
 id_idioma INT
);

ALTER TABLE livro ADD CONSTRAINT PK_livro PRIMARY KEY (id_livro);


CREATE TABLE pais (
 id_pais INT NOT NULL,
 pais VARCHAR(50),
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE pais ADD CONSTRAINT PK_pais PRIMARY KEY (id_pais);


CREATE TABLE autor_livro (
 id_livro INT NOT NULL,
 id_autor INT NOT NULL,
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE autor_livro ADD CONSTRAINT PK_autor_livro PRIMARY KEY (id_livro,id_autor);


CREATE TABLE categoria_livro (
 id_categoria INT NOT NULL,
 id_livro INT NOT NULL,
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE categoria_livro ADD CONSTRAINT PK_categoria_livro PRIMARY KEY (id_categoria,id_livro);


CREATE TABLE cidade (
 id_cidade INT NOT NULL,
 cidade VARCHAR(50),
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 id_pais INT
);

ALTER TABLE cidade ADD CONSTRAINT PK_cidade PRIMARY KEY (id_cidade);


CREATE TABLE endereco (
 id_endereco INT NOT NULL,
 endereco VARCHAR(50),
 endereco2 VARCHAR(50),
 estado VARCHAR(20),
 celular VARCHAR(15),
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 cep VARCHAR(10),
 id_cidade INT
);

ALTER TABLE endereco ADD CONSTRAINT PK_endereco PRIMARY KEY (id_endereco);


CREATE TABLE bib (
 id_bib INT NOT NULL,
 id_bibliotecario INT,
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 id_endereco INT NOT NULL
);

ALTER TABLE bib ADD CONSTRAINT PK_bib PRIMARY KEY (id_bib);


CREATE TABLE bibliotecario (
 id_bibliotecario INT NOT NULL,
 nome VARCHAR(10),
 sobrenome VARCHAR(45),
 email VARCHAR(50),
 ativo BIT(1),
 nome_usuario VARCHAR(16),
 senha VARCHAR(8),
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 foto VARCHAR(100),
 id_bib INT,
 id_endereco INT
);

ALTER TABLE bibliotecario ADD CONSTRAINT PK_bibliotecario PRIMARY KEY (id_bibliotecario);


CREATE TABLE registro (
 id_registro INT NOT NULL,
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 id_livro INT,
 id_bib INT
);

ALTER TABLE registro ADD CONSTRAINT PK_registro PRIMARY KEY (id_registro);


CREATE TABLE usuario (
 id_usuario INT NOT NULL,
 nome VARCHAR(10),
 sobrenome VARCHAR(45),
 email VARCHAR(50),
 ativo_boleano BIT(1),
 data_criacao DATE,
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 ativo INT,
 id_endereco INT,
 id_bib INT
);

ALTER TABLE usuario ADD CONSTRAINT PK_usuario PRIMARY KEY (id_usuario);


CREATE TABLE emprestimo (
 id_emprestimo INT NOT NULL,
 data_emprestimo DATE WITH TIME ZONE NOT NULL,
 data_retorno DATE WITH TIME ZONE NOT NULL,
 ultima_atualizacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 id_usuario INT,
 id_registro INT,
 id_bibliotecario INT
);

ALTER TABLE emprestimo ADD CONSTRAINT PK_emprestimo PRIMARY KEY (id_emprestimo);


CREATE TABLE pagamento_multa (
 id_pm INT NOT NULL,
 preco NUMERIC(10),
 data_pagamento TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 id_usuario INT,
 id_emprestimo INT,
 id_bibliotecario INT
);

ALTER TABLE pagamento_multa ADD CONSTRAINT PK_pagamento_multa PRIMARY KEY (id_pm);


ALTER TABLE livro ADD CONSTRAINT FK_livro_0 FOREIGN KEY (id_idioma) REFERENCES idioma (id_idioma);


ALTER TABLE autor_livro ADD CONSTRAINT FK_autor_livro_0 FOREIGN KEY (id_livro) REFERENCES livro (id_livro);
ALTER TABLE autor_livro ADD CONSTRAINT FK_autor_livro_1 FOREIGN KEY (id_autor) REFERENCES autor (id_autor);


ALTER TABLE categoria_livro ADD CONSTRAINT FK_categoria_livro_0 FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria);
ALTER TABLE categoria_livro ADD CONSTRAINT FK_categoria_livro_1 FOREIGN KEY (id_livro) REFERENCES livro (id_livro);


ALTER TABLE cidade ADD CONSTRAINT FK_cidade_0 FOREIGN KEY (id_pais) REFERENCES pais (id_pais);


ALTER TABLE endereco ADD CONSTRAINT FK_endereco_0 FOREIGN KEY (id_cidade) REFERENCES cidade (id_cidade);


ALTER TABLE bib ADD CONSTRAINT FK_bib_0 FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco);


ALTER TABLE bibliotecario ADD CONSTRAINT FK_bibliotecario_0 FOREIGN KEY (id_bib) REFERENCES bib (id_bib);
ALTER TABLE bibliotecario ADD CONSTRAINT FK_bibliotecario_1 FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco);


ALTER TABLE registro ADD CONSTRAINT FK_registro_0 FOREIGN KEY (id_livro) REFERENCES livro (id_livro);
ALTER TABLE registro ADD CONSTRAINT FK_registro_1 FOREIGN KEY (id_bib) REFERENCES bib (id_bib);


ALTER TABLE usuario ADD CONSTRAINT FK_usuario_0 FOREIGN KEY (id_endereco) REFERENCES endereco (id_endereco);
ALTER TABLE usuario ADD CONSTRAINT FK_usuario_1 FOREIGN KEY (id_bib) REFERENCES bib (id_bib);


ALTER TABLE emprestimo ADD CONSTRAINT FK_emprestimo_0 FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario);
ALTER TABLE emprestimo ADD CONSTRAINT FK_emprestimo_1 FOREIGN KEY (id_registro) REFERENCES registro (id_registro);
ALTER TABLE emprestimo ADD CONSTRAINT FK_emprestimo_2 FOREIGN KEY (id_bibliotecario) REFERENCES bibliotecario (id_bibliotecario);


ALTER TABLE pagamento_multa ADD CONSTRAINT FK_pagamento_multa_0 FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario);
ALTER TABLE pagamento_multa ADD CONSTRAINT FK_pagamento_multa_1 FOREIGN KEY (id_emprestimo) REFERENCES emprestimo (id_emprestimo);
ALTER TABLE pagamento_multa ADD CONSTRAINT FK_pagamento_multa_2 FOREIGN KEY (id_bibliotecario) REFERENCES bibliotecario (id_bibliotecario);


