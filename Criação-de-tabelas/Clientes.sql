CREATE TABLE CLIENTES (
    id_cliente SERIAL PRIMARY KEY,
    razao_social VARCHAR(255) NOT NULL,
    data_cadastro DATE NOT NULL,
    id_vendedor INT NOT NULL,
    id_empresa INT NOT NULL,
    inativo BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (id_vendedor) REFERENCES VENDEDORES(id_vendedor),
    FOREIGN KEY (id_empresa) REFERENCES EMPRESA(id_empresa)
);