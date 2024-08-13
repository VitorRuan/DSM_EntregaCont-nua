CREATE TABLE Cliente (
    documento CHAR(14) PRIMARY KEY,
    Nome VARCHAR(120) NOT NULL,
    nome_fantasia VARCHAR(120),
    data_nascimento DATE,
    email VARCHAR(255),
    telefone CHAR(11),
    tipo_pessoa CHAR(1),
    ativo BIT NOT NULL DEFAULT 1
);

select * from Cliente;

CREATE TABLE ContaBancaria (
    IdCliente INT PRIMARY KEY,
    documento CHAR(14) NOT NULL,
    CodigoBanco CHAR(3),
    Agencia CHAR(4),
    NumeroConta CHAR(20),
    TipoConta CHAR(8) CHECK (TipoConta IN ('CORRENTE', 'POUPANCA', 'SALARIO')),
    ativo BIT NOT NULL DEFAULT 1,
    FOREIGN KEY (documento) REFERENCES Cliente(documento)
);

select * from ContaBancaria;

INSERT INTO cliente (documento, Nome, nome_fantasia, data_nascimento, email, telefone, tipo_pessoa, Ativo)
VALUES 
('07242868812', 'Vitor Ruan', 'Vitor Oliveira', '2000-01-05', 'vitor.test@gmail.com', '15996675273', 'F', 1);

INSERT INTO ContaBancaria (IdCliente, documento, CodigoBanco, Agencia, NumeroConta, TipoConta, ativo)
VALUES 
(1, '07242868812', '001', '1234', '000123456789', 'CORRENTE', 1);

