CREATE TABLE CONFIG_PRECO_PRODUTO (
    id_config_preco_produto SERIAL PRIMARY KEY,
    id_vendedor INT NOT NULL,
    id_empresa INT NOT NULL,
    id_produto INT NOT NULL,
    preco_minimo DECIMAL(10, 2) NOT NULL,
    preco_maximo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES VENDEDORES(id_vendedor),
    FOREIGN KEY (id_empresa) REFERENCES EMPRESA(id_empresa),
    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
);