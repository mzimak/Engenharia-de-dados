select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      -- Testa se o campo de e-mail contém o caracter @
SELECT *
FROM main."clientes"
WHERE email NOT LIKE '%@%'
      
    ) dbt_internal_test