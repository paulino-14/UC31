 -- =========================================
-- Banco de Dados: biblioteca.db
-- Sistema de Biblioteca
-- =========================================

CREATE TABLE autores (
   id_autor INTEGER PRIMARY KEY AUTOINCREMENT,
   nome TEXT NOT NULL
);

CREATE TABLE livros (
   id_livro INTEGER PRIMARY KEY AUTOINCREMENT,
   titulo TEXT NOT NULL,
   ano INTEGER,
   id_autor INTEGER,
   FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

CREATE TABLE leitores (
   id_leitor INTEGER PRIMARY KEY AUTOINCREMENT,
   nome TEXT NOT NULL,
   email TEXT UNIQUE
);

INSERT INTO autores (nome) VALUES
('Machado de Assis'),
('Clarice Lispector');

INSERT INTO livros (titulo, ano, id_autor) VALUES
('Dom Casmurro', 1899, 1),
('A Hora da Estrela', 1977, 2);

INSERT INTO leitores (nome, email) VALUES
('Ana Souza', 'ana@email.com'),
('Pedro Lima', 'pedro@email.com');
