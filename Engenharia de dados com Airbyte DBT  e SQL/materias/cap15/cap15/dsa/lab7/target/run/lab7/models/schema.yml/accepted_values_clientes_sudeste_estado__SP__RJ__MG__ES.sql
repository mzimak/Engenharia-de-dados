select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

with all_values as (

    select
        estado as value_field,
        count(*) as n_records

    from main."clientes_sudeste"
    group by estado

)

select *
from all_values
where value_field not in (
    'SP','RJ','MG','ES'
)



      
    ) dbt_internal_test