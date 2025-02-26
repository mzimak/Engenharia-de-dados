
    
    create view main."total_vendas_por_cliente" as
    SELECT c.cliente_id,
       c.nome,
       c.estado,
       SUM(v.valor) AS total_vendas
FROM main."clientes" c
JOIN main."vendas" v
ON c.cliente_id = v.cliente_id
WHERE c.estado IN ('SP', 'RJ')
GROUP BY c.cliente_id, c.nome, c.estado;