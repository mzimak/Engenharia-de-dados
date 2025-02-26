select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

select
    id_pedido as unique_field,
    count(*) as n_records

from main."pedidos"
where id_pedido is not null
group by id_pedido
having count(*) > 1



      
    ) dbt_internal_test