
    
    

select
    id_pedido as unique_field,
    count(*) as n_records

from main."pedidos"
where id_pedido is not null
group by id_pedido
having count(*) > 1


