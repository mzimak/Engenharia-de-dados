
    
    

select
    venda_id as unique_field,
    count(*) as n_records

from main."vendas"
where venda_id is not null
group by venda_id
having count(*) > 1


