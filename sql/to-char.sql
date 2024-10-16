select to_char(lastupdate, 'dd-mm-yyyy')
from account_transf
select lastupdate
,date_format (lastupdate, '%d_%m_%d')
,format_datetime (lastupdate, 'd_M_y')
from account_transf
limit 10;
