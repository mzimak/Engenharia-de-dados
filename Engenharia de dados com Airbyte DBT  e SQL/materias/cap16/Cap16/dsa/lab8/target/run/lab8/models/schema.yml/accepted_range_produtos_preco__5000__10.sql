select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      

-- Cria uma CTE (Common Table Expression) chamada 'validation' para armazenar os valores que não passam no teste de faixa
WITH validation AS (
    SELECT
        preco AS value             -- Seleciona os valores da coluna especificada
    FROM main."produtos"                           -- Seleciona a partir do modelo/tabela especificado
    WHERE preco < 10  -- Condição: seleciona valores menores que o valor mínimo
       OR preco > 5000  -- Condição: seleciona valores maiores que o valor máximo
)

-- Contabiliza os registros que falharam no teste (que estão fora do intervalo)
SELECT COUNT(*) AS failures  -- Conta o número de falhas (valores fora do intervalo) na CTE 'validation'
FROM validation              -- Realiza a contagem dos registros inválidos

HAVING COUNT(*) > 0  -- O teste falha se houver pelo menos uma linha fora do intervalo


      
    ) dbt_internal_test