
    
    

with all_values as (

    select
        cidade as value_field,
        count(*) as n_records

    from main."clientes"
    group by cidade

)

select *
from all_values
where value_field not in (
    'Fortaleza','Rio de Janeiro','Porto Alegre'
)


