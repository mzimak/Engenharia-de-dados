No Athenna
SELECT column_name AS "Colunas"
FROM information_schema.columns
where table_catalog = 'awsdatacatalog'
and table_schema = 'datap_ref_inv'
and table_name = 'ctrl_event_statuscon'
No Postgree
SELECT column_name AS "Colunas"
FROM information_schema.columns
where table_schema = 'modelmanager'
and table_name = 'investment_type'
