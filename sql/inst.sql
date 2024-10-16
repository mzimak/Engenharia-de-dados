--- Pesquisa para criação de um filtro local por instituição
SELECT
ano_mes "ANO_MES",
Inst Inst,
sum(total_created_connections) total_created_connections,
sum(total_updated_connections) total_updated_connections,
sum(total_enriched_events) total_enriched_events
FROM "datap_ref_inv"."ctrl_eventos_statusconnection"
group by Inst, ano_mes
ORDER BY Inst, ANO_MES DESC
