select u.client_id, cl.name, s.status, i.name AS inst, to_char(s.created_at, 'DD/MM/YYYY')
as data, i.provider, c.user_id
--count('public.client')
from SCHEDULER.schedule s
inner join
"inst" i
on i.id::VARCHAR(255) = s.inst_id::VARCHAR(255)
inner join
"connection" c
on i.id = c.inst_id
inner join
"user" u
on u.id = c.user_id
inner join client cl
on u.client_id = cl.id
where u.client_id = '9cd6-ccf90c76fa1a'
group by u.client_id, cl.name, s.status, i.name, s.created_at, i.provider, c.user_id
