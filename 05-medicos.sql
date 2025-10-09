CREATE DATABASE medico;

use medico;

CREATE TABLE IF NOT EXISTS medico(
    medcodigo INT AUTO_INCREMENT PRIMARY KEY,
    Medname VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS paciente(
    paccodigo INT AUTO_INCREMENT PRIMARY KEY,
    paccname VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS medicamento(
    mdcodigo INT AUTO_INCREMENT PRIMARY KEY,
    mdname VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS medico(
    concodigo INT AUTO_INCREMENT PRIMARY KEY,
    mdcodigo INT AUTO_INCREMENT PRIMARY KEY,
    posologia VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS consulta(
    medcodigo_id INT,
    foreing
    paccodigo INT AUTO_INCREMENT PRIMARY KEY,
    concodigo INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (medico_id) REFERENCES medico (id)
);
