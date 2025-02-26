select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      -- Testa se há algum valor maior ou igual a 450 (não permitido de acordo com nossas regras de negócio, por exemplo)
SELECT *
FROM main."pedidos"
WHERE quantidade < 1
      
    ) dbt_internal_test