-- Testa se o campo de e-mail contém o caracter @
SELECT *
FROM main."clientes"
WHERE email NOT LIKE '%@%'