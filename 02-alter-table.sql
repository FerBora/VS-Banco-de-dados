--MODIFICANDO  UMA TABELA--
--criando o atributo e-mail--
ALTER TABLE customers ADD COLUMN email VARCHAR(255);
DESCRIBE customers;

ALTER TABLE customers COLUMN age;
DESCRIBE customers;

ALTER TABLE customers ADD COLUMN age INT DEFAULT 0;
DESCRIBE customers;

--deletando um atributo--
ALTER TABLE customers DROP COLUMN email;
DESCRIBE customers;

--MODIFICANDO TIPO DE DADO--
ALTER TABLE customers MODIFY COLUMN first_name VARCHAR(60);
DESCRIBE customers;

ALTER TABLE orders MODIFY  customer_id INT NOT NULL;
DESCRIBE orders;

--ADICIONANDO UMA NOVA COLUNA E SETANDO UM VALOR DEFAULT--
ALTER TABLE customers ADD COLUMN age INT DEFAULT 0;
DESCRIBE customers;
 
--REDEFININDO O DEFAULT DE 0 PARA 18--
ALTER TABLE customers  ALTER COLUMN age SET DEFAULT 18;
DESCRIBE customers;