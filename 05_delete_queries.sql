-- Deletar um cliente específico
DELETE FROM cliente 
WHERE nome = 'Rafael Souza';

-- Deletar um produto específico
DELETE FROM produto 
WHERE nome = 'Camiseta Básica';

-- Deletar uma reposição antiga
DELETE FROM reposicao 
WHERE id_reposicao = 1;

-- Deletar um item de venda específico
DELETE FROM item_venda 
WHERE id_item_venda = 4;

-- Deletar um pagamento específico
DELETE FROM pagamento 
WHERE id_pagamento = 2;
