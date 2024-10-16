T Primeiro registro - Type
minIf(lastupdate, isNotNull(type))

T Último registro - Type
maxIf(lastupdate, isNotNull(type))

T Total Geral - Type
count(type)

T Qtd. de registros em branco
countIf(lastupdate, type = NULL)

T Qtd. de registros válidos
countIf(lastupdate, type <> '')

T % de registros válidos
(countIf(lastupdate, type = '') / abs({T Total Geral - Type}) - 1) * -1

T % de registros não válidos
(countIf(lastupdate, type <> '' ) / abs({T Total Geral - Type}) - 1) * -1
