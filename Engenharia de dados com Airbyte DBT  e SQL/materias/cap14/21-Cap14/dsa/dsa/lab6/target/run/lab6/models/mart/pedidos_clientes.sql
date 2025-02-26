
      
  
    
    
    create  table main."pedidos_clientes"
    as
          
-- Configura o modelo para ser materializado de forma "incremental".
-- A chave única (unique_key) definida é 'data', o que significa que o DBT usará essa coluna para identificar e atualizar os registros.
-- No modo incremental, apenas os registros novos ou modificados serão processados e inseridos na tabela, em vez de reconstruir a tabela inteira.

WITH ultima_data AS (
    SELECT MAX(data) AS max_data
    FROM main."pedidos_clientes"  
    -- Esta CTE (Common Table Expression) seleciona a data mais recente ('MAX(data)') da tabela que está sendo materializada atualmente.
    -- 'main."pedidos_clientes"' se refere à tabela que está sendo incrementada.
)

SELECT
    DATE(data_pedido) AS data,  -- Converte a data do pedido para o formato de data (sem hora) e a renomeia como 'data'.
    SUM(valor_total) AS total_vendas  -- Soma o valor total das vendas para cada data e o renomeia como 'total_vendas'.
FROM main."pedidos"  
-- Refere-se à tabela 'pedidos' dentro do projeto DBT. A função 'ref' permite referenciar outros modelos no DBT.



GROUP BY 1  -- Agrupa os resultados pela primeira coluna selecionada, que é 'data'.

  
  