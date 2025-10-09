--CONSULTAR REGISTROS DE UMA TABELA--
--CONSULTAR TODAS AS COLUNAS DA TABELA--

SELECT * FROM customers;

--INFORMANDO QUAIS COLUNAS EU QUERO CONSULTAR--
SELECT first_name, last_name FROM customers;

--DEFININDO OUTRA ORDEM PARA A CONSULTA--
SELECT email, first_name, id, age FROM customers;

--EM APLICAÇÕES REAIS EVITE UTILIZAR A CONSULTA COM *, 
--CONSOME RECURSOS COMPUTACIONAIS E PODE CUSTAR CARO, 
--ALÉM DE PODER DEMORAR

--RENOMEANO AS COLUNAS PARA A CONSULTA--
SELECT first_name AS Nome, last_name AS Sobrenome from customers;

SELECT first_name AS 'Primeiro Nome', last_name AS Sobrenome from customers;

--CONSULTANDO O ULTIMO REGISTRO INSERINDO BD--
SELECT id, first_name AS 'Primeiro Nome', created_at
FROM customers
ORDER BY id DESC
LIMIT 1;

--CONSULTANDO OS 3 ULTIMOS REGISTROS INSERIDOS NO BD--
SELECT * FROM customers ORDER BY id DESC LIMIT 3;

--CONSULTANDO OS 3 PRIMEIROS--
SELECT * FROM customers ORDER BY id LIMIT 3;

--ORDEM ALFABETICA--
--A ATE Z--
SELECT * FROM customers ORDER BY first_name;
--Z ATE A--
SELECT * FROM customers ORDER BY first_name DESC;

--BUSCANDO REGISTROS POR ID--
SELECT * FROM customers WHERE id=7;
SELECT first_name FROM customers WHERE id=21;

--OPERADORES DE COMPARAÇÃO--
--BUSCANDO OS REGISTROS QUE POSSUEM ID MAIOR QUE 10
SELECT * FROM customers WHERE id > 10;
--BUSCANDO OS REGISTROS NO QUAL O PRIMEIRO NOME É FERNANDA
SELECT * FROM customers WHERE first_name = 'Fernanda';
--BUSCANDO REGISTROS QUE POSSUEM PRIMEIRO NOME DIFERENTE DE FERNANDA
SELECT * FROM customers WHERE first_name != 'Fernanda';


--BUSCANDO MAIS DE UM REGISTRO ESPECIFICO--
SELECT * FROM customers WHERE id IN (7,19);

SELECT * FROM customers WHERE id < 7 AND last_name = 'Martins';

SELECT * FROM customers WHERE id >= 9 OR last_name = 'Silva';


--COLOCANDO PRECEDENCIA NA CONSULTA--
SELECT * FROM customers WHERE (id >=7 OR last_name = 'Silva') AND first_name = 'Carlos';

SELECT * FROM customers WHERE (id >=7 AND last_name = 'Siklva'), OR first_name = 'Lucas';

--BUSCANDO POR SOBRENOMES (MAIS DE UM)--
SELECT * FROM customers WHERE last_name in ('Silva', 'Souza');

--BUSCANDO ENTRE UM RANGE DE IDS--
SELECT * FROM customers WHERE id BETWEEN 5 AND 20;

--

