CREATE TABLE EMPRESA (
    id_empresa SERIAL PRIMARY KEY,
    razao_social VARCHAR(255) NOT NULL,
    inativo BOOLEAN NOT NULL DEFAULT FALSE
);