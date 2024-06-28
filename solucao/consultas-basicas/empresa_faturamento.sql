SELECT
    e.id_empresa,
    e.razao_social,
    SUM(p.valor_total) AS faturamento_total
FROM
    EMPRESA e
JOIN
    PEDIDO p ON e.id_empresa = p.id_empresa
WHERE
    e.inativo = FALSE
GROUP BY
    e.id_empresa, e.razao_social
ORDER BY
    faturamento_total DESC;