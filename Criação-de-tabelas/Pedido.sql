CREATE TABLE PEDIDO (
    id_pedido SERIAL PRIMARY KEY,
    id_empresa INT NOT NULL,
    id_cliente INT NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    data_emissao DATE NOT NULL,
    situacao VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES EMPRESA(id_empresa),
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente)
);