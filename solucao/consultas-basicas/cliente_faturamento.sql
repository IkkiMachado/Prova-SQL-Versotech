SELECT
    c.id_cliente,
    c.razao_social,
    SUM(p.valor_total) AS faturamento_total
FROM
    CLIENTES c
JOIN
    PEDIDO p ON c.id_cliente = p.id_cliente
WHERE
    c.inativo = FALSE
GROUP BY
    c.id_cliente, c.razao_social
ORDER BY
    faturamento_total DESC;