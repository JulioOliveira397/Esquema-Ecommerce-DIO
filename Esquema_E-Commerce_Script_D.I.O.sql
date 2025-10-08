CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    tipo_cliente ENUM('PF','PJ') NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    cnpj VARCHAR(18) UNIQUE,
    CHECK (
        (tipo_cliente = 'PF' AND cpf IS NOT NULL AND cnpj IS NULL) OR
        (tipo_cliente = 'PJ' AND cnpj IS NOT NULL AND cpf IS NULL)
    )
);

CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    tipo_pagamento VARCHAR(50),
    detalhes VARCHAR(100),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10,2)
);

CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    data_pedido DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Entrega (
    idEntrega INT PRIMARY KEY AUTO_INCREMENT,
    idPedido INT UNIQUE,
    status_entrega VARCHAR(50),
    codigo_rastreio VARCHAR(100),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);

CREATE TABLE ItemPedido (
    idItemPedido INT PRIMARY KEY AUTO_INCREMENT,
    idPedido INT,
    idProduto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

INSERT INTO Cliente (nome, email, tipo_cliente, cpf) VALUES ('João Silva', 'joao@email.com', 'PF', '123.456.789-00');
INSERT INTO Cliente (nome, email, tipo_cliente, cnpj) VALUES ('Empresa X', 'contato@empresax.com', 'PJ', '12.345.678/0001-99');

INSERT INTO Produto (nome, descricao, preco) VALUES ('Mouse Gamer', 'Mouse com LED RGB', 150.00);
INSERT INTO Produto (nome, descricao, preco) VALUES ('Teclado Mecânico', 'Teclado com switches azuis', 250.00);

INSERT INTO Pedido (idCliente, data_pedido, valor_total) VALUES (1, '2025-10-04', 400.00);

INSERT INTO Pagamento (idCliente, tipo_pagamento, detalhes) VALUES (1, 'Cartão', 'Visa final 1234');
INSERT INTO Pagamento (idCliente, tipo_pagamento, detalhes) VALUES (1, 'Pix', 'Chave CPF');

INSERT INTO ItemPedido (idPedido, idProduto, quantidade, preco_unitario) VALUES (1, 1, 1, 150.00);
INSERT INTO ItemPedido (idPedido, idProduto, quantidade, preco_unitario) VALUES (1, 2, 1, 250.00);

INSERT INTO Entrega (idPedido, status_entrega, codigo_rastreio) VALUES (1, 'Em trânsito', 'BR123456789');
