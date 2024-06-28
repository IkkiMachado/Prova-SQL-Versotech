CREATE TABLE ITENS_PEDIDO (
    id_item_pedido SERIAL PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    preco_praticado DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
);