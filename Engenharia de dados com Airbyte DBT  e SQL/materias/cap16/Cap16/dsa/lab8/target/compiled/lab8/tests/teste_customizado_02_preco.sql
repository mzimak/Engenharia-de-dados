-- Testa se o preço está dentro de umm intervalo definido nas regras de negócio
SELECT *
FROM main."produtos"
WHERE preco < 10 OR preco > 5000