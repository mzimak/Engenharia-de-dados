- Pesquisar em Banco de Queries
- 1-Usuários criados, agrupados por mês
- Contagem de todos os registros da tabela PUBLIC.USER agrupados por mês
- B-Total de usuários criados
- Consulta detalhada - CREATED AT"
------------------------------------------------------------------------------------------------------
select I.NAME AS INSTITUTION_NAME,
C.ID AS CONNECTION_ID,
C.STATUS,
C.SCRAPE_STATUS AS DATAILED_STATUS,
C.CREATED_AT AT TIME ZONE 'UTC' AT TIME ZONE 'America/Sao_Paulo',
C.UPDATED_AT AT TIME ZONE 'UTC' AT TIME ZONE 'America/Sao_Paulo',
CASE
WHEN C.FIRST_SUCCESS IS NOT NULL THEN 'Y'
ELSE 'N'
END AS HAVE_SUCCESS
FROM PUBLIC.CONNECTION C, PUBLIC.INSTITUTION I
WHERE C.INSTITUTION_ID = I.ID
AND C.CREATED_AT > (CURRENT_DATE - INTERVAL '0 days') -- Adicionar o período em que deseja a consulta
ORDER BY C.CREATED_AT DESC;

------------------------------------------------------------------------------------------------------
"Consulta detalhada - UPDATED AT"
select I.NAME AS INSTITUTION_NAME,
C.ID AS CONNECTION_ID,
C.STATUS,
C.SCRAPE_STATUS AS DATAILED_STATUS,
C.CREATED_AT AT TIME ZONE 'UTC' AT TIME ZONE 'America/Sao_Paulo',
C.UPDATED_AT AT TIME ZONE 'UTC' AT TIME ZONE 'America/Sao_Paulo',
CASE
WHEN C.FIRST_SUCCESS IS NOT NULL THEN 'Y'
ELSE 'N'
END AS HAVE_SUCCESS
FROM PUBLIC.CONNECTION C, PUBLIC.INSTITUTION I
WHERE C.INSTITUTION_ID = I.ID
AND C.UPDATED_AT > (CURRENT_DATE - INTERVAL '0 days') -- Adicionar o período em que deseja a consulta
ORDER BY C.UPDATED_AT DESC;
