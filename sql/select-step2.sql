select
for 1 to count(linha)
then
linha
else
SUBSTRING(linha FROM 1 FOR LENGTH(linha)-1)
from step2
limit 5
