SELECT institution,
ano_mes,
total_new_connections valor,
'total_new_connections' type
FROM "dataplatform_refined_investment"."ctrl_eventos_statusconnection" ce
where ano_mes = '2023-02'
and institution = 'B3'
union all
SELECT institution,
ano_mes,
total_created_connections valor,
'total_created_connections' as type
FROM "dataplatform_refined_investment"."ctrl_eventos_statusconnection" ce
where ano_mes = '2023-02'
and institution = 'B3'
