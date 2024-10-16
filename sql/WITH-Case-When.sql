--- TESTE --- WITH Case When
Geração dos indicadores de produto
2º passo Extrair conexões automaticas
---
where_conexoes_automaticas
with
step1 AS (
select distinct cat.connection conexao, '' clausula_where
from v_connection cat
where cat.status = 'CATEGORIZED'
and cat.month = '01'
and cat.year = '2023'
and cat.connection not in (
select distinct cat.connection conexao
from v_connection cat
inner join v_connection conn
on cat.connection = conn.connection
and cat.day = conn.day
and cat.month = conn.month
and cat.year = conn.year
and conn.status in ('CONNECTION_CREATED', 'CONNECTION_UPDATED', 'CONNECTION_MIGRATED')
where cat.status = 'CATEGORIZED'
and cat.month = '01'
and cat.year = '2023'
)
,
step2 AS(
select concat(chr(39), conexao, chr(39),',') as linha
from step1 )
select linha
while linha = max(linha) loop
max(SUBSTRING (linha FROM 1 FOR LENGTH(linha)-1))
end loop
from step2
limit 1
/*
while counter < 5 loop
raise notice 'Counter %', counter;
counter := counter + 1;
end loop; for
/*
do
$$
declare num int := 0;
begin
for num in 1..10 loop
raise notice 'num = %', num;
end loop;
end;
$$
*/
select
(case
when linha <> max(linha)
then linha
else
max(SUBSTRING(linha FROM 1 FOR LENGTH(linha)-1))
end) as Manoel
from step2
group by linha
limit 5
select
(case
when linha <> max(linha)
then linha
else
(SUBSTRING(linha FROM 1 FOR LENGTH(linha)-1))
end) as Manoel
from step2
group by linha
limit 5
select
for 1 to count(linha)
linha
limit 5

