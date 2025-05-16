
CREATE DATABASE IF NOT EXISTS agencia_viagens;
USE agencia_viagens;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(20),
    identificador VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE pacote_viagem (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(100),
    preco DOUBLE
);

CREATE TABLE servico_adicional (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100),
    valor DOUBLE
);

CREATE TABLE cliente_pacote (
    cliente_id INT,
    pacote_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (pacote_id) REFERENCES pacote_viagem(id)
);
