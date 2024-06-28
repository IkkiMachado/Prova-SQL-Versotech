SELECT
    c.id_cliente,
    c.razao_social AS cliente_razao_social,
    p.id_produto,
    p.descricao AS produto_descricao,
    e.id_empresa,
    e.razao_social AS empresa_razao_social,
    v.id_vendedor,
    v.nome AS vendedor_nome,
    cp.preco_minimo,
    cp.preco_maximo,
    COALESCE(ip.preco_praticado, cp.preco_minimo) AS preco_base
FROM
    CLIENTES c
JOIN
    PEDIDO ped ON c.id_cliente = ped.id_cliente
JOIN
    ITENS_PEDIDO ip ON ped.id_pedido = ip.id_pedido
JOIN
    PRODUTOS p ON ip.id_produto = p.id_produto
JOIN
    EMPRESA e ON ped.id_empresa = e.id_empresa
JOIN
    VENDEDORES v ON c.id_vendedor = v.id_vendedor
LEFT JOIN
    CONFIG_PRECO_PRODUTO cp ON cp.id_produto = p.id_produto AND cp.id_empresa = e.id_empresa
WHERE
    c.inativo = FALSE AND p.inativo = FALSE AND e.inativo = FALSE
    AND ip.id_item_pedido = (
        SELECT MAX(ip_inner.id_item_pedido)
        FROM ITENS_PEDIDO ip_inner
        WHERE ip_inner.id_pedido = ped.id_pedido
          AND ip_inner.id_produto = p.id_produto
    )
ORDER BY
    c.id_cliente, p.id_produto;