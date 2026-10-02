-- Active: 1788519229089@@127.0.0.1@3306@smartcoffee_dml_keynan
-- ============================================================
-- AULA 08 - ATIVIDADE PRÁTICA DE DML
-- Nome: _______________________________________________
-- Turma: ______________________ Data: _________________
-- Base: smartcoffee_dml
-- ============================================================
USE smartcoffee_dml_keynan;

-- IMPORTANTE:
-- Para toda questão de UPDATE ou DELETE, escreva primeiro um SELECT
-- com o mesmo WHERE para validar os registros afetados.

-- PARTE A - INSERT

-- 1. Cadastre dois novos clientes com dados diferentes.


INSERT INTO clientes (nome,email,telefone,cidade,ativo) VALUES
('Matheus Oricolli','poste123@gmail.com','188888888','Limeira',TRUE),
('Julia Kuhl','julia123@gmail.com','188888887','Piracicaba',TRUE);





-- 2. Cadastre a categoria 'Especiais da Casa'.

INSERT into categoria (nome) VALUES
('Especiais da casa');


SELECT* FROM pedido


-- 3. Localize o id da categoria criada e cadastre três produtos nela.
INSERT INTO produto (nome,preco,ativo,id_categoria) VALUES
('Cupcake',8.00,TRUE,6),
('Mousse de Chocolate', 25.00, TRUE, 6),
('Fondue', 15.00, TRUE, 6);



-- 4. Cadastre um terceiro cliente sem telefone.
INSERT INTO clientes (nome,email,telefone,cidade,ativo) VALUES 
('Pote','MAtg@email.com',NULL,'Limeira',TRUE)



-- 5. Crie um novo pedido para um dos clientes cadastrados.

INSERT INTO pedido (data_pedido,status_pedido,valor_total,id_cliente) values
(NOW(),'Finalizado',55.99,11)



-- 6. Use LAST_INSERT_ID() para guardar o id do pedido em @pedido_atividade
--    e insira pelo menos dois itens nesse pedido.
INSERT INTO pedido (data_pedido,status_pedido,valor_total,id_cliente) values
(NOW(),'Finalizado',55.99,13);
set @pedido_atividade = LAST_INSERT_ID();
INSERT INTO pedido (data_pedido,status_pedido,valor_total,id_cliente) values
(NOW(),'Finalizado',55.99,@pedido_atividade)

-- PARTE B - UPDATE

-- 7. Corrija o telefone de um dos clientes criados.
-- SELECT de validação:
-- UPDATE:
-- SELECT final:


UPDATE clientes
set telefone = '999999999'
WHERE id_cliente = 11


-- 8. Altere cidade e telefone de outro cliente em um único UPDATE.

UPDATE clientes
set telefone = '999999999',
    cidade = 'fortaleza'
WHERE id_cliente = 13


-- 9. Aumente em 8% o preço dos produtos da categoria 'Especiais da Casa'.

UPDATE produto
SET preco = preco * 1.08
WHERE id_produto = 3


-- 10. Altere o status do pedido criado para 'PREPARANDO'.
UPDATE pedido
SET status_pedido = 'Finalizado'
WHERE   id_pedido   = @pedido_atividade

-- 11. Atualize valor_total do pedido de acordo com os itens cadastrados.
--     Você pode calcular previamente com SELECT SUM(quantidade * preco_unitario).



UPDATE pedido
SET valor_total = 90
WHERE id_pedido = @pedido_atividade




-- 12. Escolha um dos produtos criados e faça uma exclusão lógica (ativo = FALSE).

SELECT*FROM produto

UPDATE produto
set ativo = FALSE
WHERE id_produto = 1

-- PARTE C - DELETE

-- 13. Crie um cliente de teste sem pedidos.
--     Depois localize e exclua apenas esse cliente.
    INSERT INTO clientes (nome,email,telefone,cidade,ativo) VALUES
    ('Teste','teste@gmail',NULL,'santos',TRUE);

    SELECT*from clientes

    DELETE FROM clientes
    WHERE id_cliente = 22



-- 14. Tente excluir um cliente da base original que possua pedidos.
--     Deixe o DELETE comentado após o teste e descreva o erro abaixo.
-- Resultado observado:
SELECT*FROM categoria;
DELETE FROM clientes
WHERE id_cliente = 11
 -- Da um erro de fk, pois tem informações em outra tabela


-- 15. Explique em comentário por que a FK bloqueou a exclusão.
-- Resposta: ela bloqueia pois o cliente possui informações em outra tabela


-- 16. Crie uma categoria temporária chamada 'Excluir Depois' e remova-a.

INSERT INTO categoria (nome) VALUES
('Excluir_Depois');

SELECT*FROM categoria;
DELETE FROM categoria
WHERE id_categoria = 8

