SELECT
    v.id_vendedor,
    v.nome,
    SUM(p.valor_total) AS faturamento_total
FROM
    VENDEDORES v
JOIN
    CLIENTES c ON v.id_vendedor = c.id_vendedor
JOIN
    PEDIDO p ON c.id_cliente = p.id_cliente
WHERE
    v.inativo = FALSE
GROUP BY
    v.id_vendedor, v.nome
ORDER BY
    faturamento_total DESC;