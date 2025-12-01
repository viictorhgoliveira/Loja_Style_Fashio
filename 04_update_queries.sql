-- Atualizar preço de um produto
UPDATE produto 
SET preco = 45.90 
WHERE nome = 'Camiseta Estampa X';

-- Atualizar quantidade de estoque
UPDATE estoque 
SET quantidade = 60 
WHERE id_produto = 1;

-- Atualizar telefone de um cliente
UPDATE cliente 
SET telefone = '31966666666' 
WHERE nome = 'Gabriel Costa';
