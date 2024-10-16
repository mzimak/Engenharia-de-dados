--- Query join-connection 

select i.id, i.name, ci.institution_id, iv.connection_id, ci, iv
from institution i
join connection ci on
i.id = ci.institution_id
join modelmanager.investment iv on
connection_id = iv.connection_id
limit 20;
