SELECT
re.institution AS "INSTITUIÇÃO"
,Concat(cc.month,'/',cc.year) AS "MÊS_ANO"
,format_datetime (date_parse(Concat(cc.day,'/',cc.month,'/',cc.year), '%d/%m/%Y'), 'd/M/Y') AS "DATA DE CRIAÇÃO"
,format_datetime (date_parse(Concat(up.day,'/',up.month,'/',up.year), '%d/%m/%Y'), 'd/M/y') AS "DATA DE UPDATE"
,count(*) as "EVENTOS REGISTRADOS"
FROM "dataplat_invest_external"."v_received_event" as re
inner join "dataplatform_investment_external"."v_created_connection" as cc
on re.connection = cc.connection
inner join "dataplatform_investment_external"."v_updated_connection" up
on re.connection = up.connection
where upper(re.institution) = 'xyz CORRETORA'
group by
Concat(cc.month,'/',cc.year)
,re.institution
,format_datetime (date_parse(Concat(cc.day,'/',cc.month,'/',cc.year), '%d/%m/%Y'), 'd/M/y')
,format_datetime (date_parse(Concat(up.day,'/',up.month,'/',up.year), '%d/%m/%Y'), 'd/M/y')
order by Concat(cc.month,'/',cc.year) asc
