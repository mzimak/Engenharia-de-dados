select lastupdate
,date_format (lastupdate, '%d_%m_%d')
,format_datetime (lastupdate, 'd_M_y')
from account_transf
limit 10;
