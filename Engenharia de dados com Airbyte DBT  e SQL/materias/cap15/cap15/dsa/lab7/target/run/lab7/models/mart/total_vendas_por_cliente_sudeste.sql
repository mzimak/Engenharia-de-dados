
    
    create view main."total_vendas_por_cliente_sudeste" as
    SELECT c.cliente_id,
       c.nome,
       c.estado,
       
    SUM(v.valor)
 AS total_vendas
FROM main."clientes_sudeste" c
JOIN main."vendas" v
ON c.cliente_id = v.cliente_id
GROUP BY c.cliente_id, c.nome, c.estado;