
-- Insercao na tabela funcionario
INSERT INTO funcionario(cpf, nome, salario, data_contrato)
VALUES ('88288702066', 'Sergio Neres', 8500, '2022-08-29');

INSERT INTO funcionario(cpf, nome, salario, data_contrato)
VALUES ('03177230064', 'Gabriel Bellon', 6000.48, '2023-02-21');

INSERT INTO funcionario(cpf, nome, salario, data_contrato)
VALUES ('99158848002', 'Rafael Campos', 4500, '2023-03-07');

INSERT INTO funcionario(cpf, nome, salario, data_contrato)
VALUES ('53936763011', 'Leonardo Rodrigues', 1500.97, '2023-01-30');

INSERT INTO funcionario(cpf, nome, salario, data_contrato)
VALUES ('46757106035', 'Carlos Alberto', 2500, '2023-01-30');

-- Insercao na tabela pedido
INSERT INTO pedido(total, forma_pgto)
VALUES (44.50, 'pix');

INSERT INTO pedido(total, forma_pgto)
VALUES (136.80, 'cartao');

INSERT INTO pedido(total, forma_pgto)
VALUES (29.00, 'dinheiro');

INSERT INTO pedido(total, forma_pgto)
VALUES (102.80, 'pix');

INSERT INTO pedido(total, forma_pgto)
VALUES (68.60, 'cartao');

-- Insercao na tabela prepara_pedido

INSERT INTO prepara_pedido(id_pedido, cpf_funcionario)
VALUES (1, '88288702066');

INSERT INTO prepara_pedido(id_pedido, cpf_funcionario)
VALUES (2, '03177230064');

INSERT INTO prepara_pedido(id_pedido, cpf_funcionario)
VALUES (3, '99158848002');

INSERT INTO prepara_pedido(id_pedido, cpf_funcionario)
VALUES (4, '53936763011');

INSERT INTO prepara_pedido(id_pedido, cpf_funcionario)
VALUES (5, '46757106035');

-- Insercao na tabela item_cardapio

-- Entradas
INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Beringela com molho tahine', TRUE, 29.00);

INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Frango empanado', TRUE, 35.90);

-- Pratos principais
INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Escondidinho de camarao', TRUE, 69.90);

INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Risoto com queijo brie', TRUE, 59.90);

INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Veggie cheeseburger', TRUE, 38.50);

-- Sobremesas
INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Pudim de leite condensado', TRUE, 32.90);

INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Merengue de morango', TRUE, 25.00);

-- Bebidas
INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Coca cola', TRUE, 6.00);

INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Cerveja', TRUE, 8.70);

INSERT INTO item_cardapio(nome, ativo, preco)
VALUES ('Suco de laranja', FALSE, 6.00);

-- Insercao na tabela pedido_item

-- Pedido 1
INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Coca cola', 1);

INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Veggie cheeseburger', 1);

-- Pedido 2
INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Frango empanado', 2);

INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Coca cola', 2);

INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Escondidinho de camarao', 2);

INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Merengue de morango', 2);

-- Pedido 3
INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Beringela com molho tahine', 3);

-- Pedido 4
INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Escondidinho de camarao', 4);

INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Pudim de leite condensado', 4);

-- Pedido 5
INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Cerveja', 5);

INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Risoto com queijo brie', 5);

INSERT INTO pedido_item(nome_item, id_pedido)
VALUES ('Pudim de leite condensado', 5);

-- Insercao prato
INSERT INTO prato(nome_item, tipo_prato)
VALUES ('Beringela com molho tahine', 'entrada');

INSERT INTO prato(nome_item, tipo_prato)
VALUES ('Frango empanado', 'entrada');

INSERT INTO prato(nome_item, tipo_prato)
VALUES ('Escondidinho de camarao', 'principal');

INSERT INTO prato(nome_item, tipo_prato)
VALUES ('Risoto com queijo brie', 'principal');

INSERT INTO prato(nome_item, tipo_prato)
VALUES ('Veggie cheeseburger', 'principal');

INSERT INTO prato(nome_item, tipo_prato)
VALUES ('Pudim de leite condensado', 'sobremesa');

INSERT INTO prato(nome_item, tipo_prato)
VALUES ('Merengue de morango', 'sobremesa');

-- Insercao bebida
INSERT INTO bebida(nome_item, tipo_bebida, volume_ml, data_compra)
VALUES ('Coca cola', 'refri', 300, '2023-03-14');

INSERT INTO bebida(nome_item, tipo_bebida, volume_ml, data_compra)
VALUES ('Cerveja', 'cerveja', 300, '2023-03-27');

INSERT INTO bebida(nome_item, tipo_bebida, volume_ml, data_compra)
VALUES ('Suco de laranja', 'suco', 300, '2022-11-23');

-- Insercao ingrediente
INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Beringela', TRUE, '2023-03-30', '2023-04-08', 35);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Molho tahine', TRUE, '2023-03-27', '2023-05-13', 12);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Frango', FALSE, '2023-03-25', '2023-03-30', 20);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Farinha', TRUE, '2023-03-25', '2023-07-04', 23);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Camarao', FALSE, '2023-03-25', '2023-04-01', 56);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Queijo parmesao', FALSE, '2023-03-25', '2023-04-02', 9);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Mandioca', TRUE, '2023-03-21', '2023-04-01', 32);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Arroz', TRUE, '2023-02-22', '2024-01-13', 100);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Queijo brie', FALSE, '2023-03-30', '2023-04-08', 44);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Pao', TRUE, '2023-03-30', '2023-04-02', 39);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Queijo vegano', TRUE, '2023-03-16', '2023-03-30', 27);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Hamburguer vegano', TRUE, '2023-03-26', '2023-04-03', 55);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Leite', FALSE, '2023-03-30', '2023-03-10', 12);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Leite Condensado', FALSE, '2023-01-09', '2023-10-17', 49);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Acucar', TRUE, '2023-03-21', '2025-12-24', 33);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Ovo', FALSE, '2023-03-16', '2023-04-10', 27);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Morango', TRUE, '2023-03-29', '2023-04-04', 22);

INSERT INTO ingrediente(nome, vegano, data_compra, data_validade, quantidade)
VALUES ('Suspiro', FALSE, '2023-03-15', '2023-04-15', 70);

-- Insercao ingrediente_prato
INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Beringela com molho tahine', 'Beringela', 4, 'un');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Beringela com molho tahine', 'Molho tahine', 200, 'ml');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Frango empanado', 'Frango', 5, 'un');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Frango empanado', 'Farinha', 200, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Frango empanado', 'Ovo', 2, 'un');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Escondidinho de camarao', 'Camarao', 200, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Escondidinho de camarao', 'Queijo parmesao', 320, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Escondidinho de camarao', 'Mandioca', 400, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Risoto com queijo brie', 'Arroz', 200, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Risoto com queijo brie', 'Queijo brie', 150, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Veggie cheeseburger', 'Pao', 1, 'un');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Veggie cheeseburger', 'Queijo vegano', 100, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Veggie cheeseburger', 'Hamburguer vegano', 160, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Pudim de leite condensado', 'Leite Condensado', 375, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Pudim de leite condensado', 'Acucar', 45, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Pudim de leite condensado', 'Ovo', 2, 'un');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Pudim de leite condensado', 'Leite', 400, 'ml');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Merengue de morango', 'Leite', 500, 'ml');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Merengue de morango', 'Suspiro', 15, 'un');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Merengue de morango', 'Acucar', 35, 'g');

INSERT INTO ingrediente_prato(nome_item, nome_ingrediente, quantidade, unidade_medida)
VALUES ('Merengue de morango', 'Morango', 200, 'g');