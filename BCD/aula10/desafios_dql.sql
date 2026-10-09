-- Active: 1788519229089@@127.0.0.1@3306@smartcoffee_dml_keynan
-- ============================================================
-- AULA 09 - ATIVIDADE PRÁTICA DE DQL
-- Nome: Keynan 
-- Turma: 2devis Data: 09/10/2026
-- Base: smartcoffee_dql
-- ============================================================
USE smartcoffee_dml_keynan;

-- PARTE A - AQUECIMENTO

-- 1. Liste todos os clientes cadastrados.
SELECT *FROM clientes;


-- 2. Exiba apenas nome, cidade e e-mail dos clientes.

SELECT nome,cidade,email FROM clientes;


-- 3. Liste os nomes das cidades sem repetir valores.
SELECT DISTINCT cidade FROM clientes;

-- 4. Liste todos os produtos em ordem crescente de preço.
SELECT nome,preco FROM produto ORDER BY preco ASC;


-- 5. Mostre apenas os 5 produtos mais caros.
SELECT nome, preco FROM produto ORDER BY preco desc LIMIT 5;

-- PARTE B - FILTROS

-- 6. Liste os produtos com preço entre R$ 8,00 e R$ 15,00.
SELECT nome,preco FROM produto WHERE preco BETWEEN 8.00 and 15.00;


-- 7. Liste os clientes das cidades Limeira ou Americana.
SELECT nome,cidade FROM clientes WHERE cidade IN ('Limeira','Americana');


-- 8. Localize os produtos cujo nome contém a palavra “Café”.
SELECT nome FROM produto WHERE nome LIKE '%cafe%';


-- 9. Liste os clientes que não informaram telefone.
SELECT nome, telefone FROM clientes WHERE telefone is NULL;


-- 10. Mostre os pedidos FINALIZADOS com valor acima de R$ 20,00,
--     do maior para o menor valor.
SELECT valor_total FROM pedido WHERE status_pedido='Finalizado' and(valor_total>20.00) ORDER BY valor_total DESC;


-- PARTE C - CÁLCULOS E AGRUPAMENTOS

-- 11. Informe quantos produtos estão cadastrados.
SELECT COUNT(*) as qtde_produtos FROM produto ;


-- 12. Mostre menor preço, maior preço e preço médio dos produtos.
SELECT MIN(preco) as preços_baixos,
 max(preco) as preço_alto,
 ROUND(AVG(preco),2) as media_de_precos 
 FROM produto;

-- 13. Informe quantos clientes existem em cada cidade.
SELECT  cidade,COUNT(*) as qtde_clientes
from clientes
GROUP BY cidade;

-- 14. Mostre somente as cidades que possuem dois ou mais clientes.
SELECT cidade , COUNT(*) as qtde_clientes
from clientes
GROUP BY cidade
HAVING COUNT(*) >= 2;

-- 15. Calcule o faturamento total considerando apenas pedidos FINALIZADOS.
SELECT SUM(valor_total) as faturamento
FROM pedido
WHERE status_pedido = 'Preparando';