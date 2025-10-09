CREATE DATABASE contatos;

use contatos;

CREATE TABLE IF NOT EXISTS categoria(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS contatos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(14),
    rg VARCHAR(12),
    email VARCHAR(255),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias (id)
);

INSERT INTO categorias (name) VALUES
('familia'),
('amigos'),
('trabalho');

INSERT INTO contatos (name, cpf, rg, email, categoria_id) VALUES
('Lucas', '00000000000', '1111111111', 'lucas@email.com', 1),
('Fernanda', '11111111111', '2222222222', 'fernanda@email.com', 1),
('Julio', '2222222222', '3333333333', 'julio@email.com' 1),
('Maria', '33333333333', '4444444444', 'maria@email.com', 1);

