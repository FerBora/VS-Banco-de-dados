--INSERINDO REGISTROS (DADOS) EM UMA TABELA--
--PASSAR OS VALORES NA ORDEM DAS COLUNAS DA TABELA--
INSERT INTO customers VALUES(
    DEFAULT,
    'Lucas',
    'Souza',
    DEFAULT,
    'lucas@email.com',
    18
);

--INSERINDO OMITINDO VALORES DEFAULT--
INSERT INTO customers (first_name, last_name, email, age) VALUES(
    'José',
    'Pereira',
    'josep@email.com',
    56
);

--VERIFICANDO A OPERAÇÃO--
SELECT * FROM customers;

--ADICIONANDO DADOS FORA DE ORDEM--
INSERT INTO customers (email, age, first_name, last_name) VALUES(
    'maria@email',
    30,
    'Maria',
    'Silva'
);

--INSERINDO MAIS DE UM REGISTRO POR VEZ--
INSERT INTO customers (first_name, last_name, email, age) VALUES
('Antenor', 'Souza', 'antenor@email.com', 16),
('Fernanda', 'Bora', 'fernanda@email.com', 18),
('Matheus', 'Alves', 'matheus@email.com', 20),
('Jorge', 'Cruz', 'jorge@email', 27),
('Pedro', 'Branco', 'pedro@email', 19);

--LANÇANDO PEDIDOS--
--INSERINDO DADOS NA TABELA ORDERS--
INSERT INTO orders (amount, customer_id) VALUES
(150.90, 1),
(90.50, 3),
(40, 6),
(99, 2),
(210, 1),
(54.80, 5),
(9.90, 7),
(77.50, 3);

INSERT INTO customers (first_name, last_name, email, age) VALUES    
('Homer', 'Simpsons', 'homer@mail.com', 45),
('Lisa', 'Simpsons', 'lisa@mail.com', 10);

INSERT INTO orders (amount, customers)