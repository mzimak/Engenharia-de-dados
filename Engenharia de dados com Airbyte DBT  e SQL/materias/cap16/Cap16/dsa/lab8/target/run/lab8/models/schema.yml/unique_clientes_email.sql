select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

select
    email as unique_field,
    count(*) as n_records

from main."clientes"
where email is not null
group by email
having count(*) > 1



      
    ) dbt_internal_test