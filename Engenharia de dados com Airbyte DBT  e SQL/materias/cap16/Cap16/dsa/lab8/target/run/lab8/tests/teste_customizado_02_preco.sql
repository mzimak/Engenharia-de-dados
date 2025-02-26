select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      -- Testa se o preço está dentro de umm intervalo definido nas regras de negócio
SELECT *
FROM main."produtos"
WHERE preco < 10 OR preco > 5000
      
    ) dbt_internal_test