use ecommerce;

-- Adicionando mais registros à tabela clientes
insert into clientes (nomeCliente, inicialNome, sobreNome, CPF, endereco)
values
('João', 'Jo', 'Silva', '12345678901', 'Rua das Flores, 123'),
('Maria', 'Ma', 'Santos', '98765432100', 'Avenida Brasil, 456'),
('Pedro', 'Pe', 'Almeida', '12312312345', 'Travessa Verdes, 789'),
('Ana', 'An', 'Carvalho', '45645645678', 'Praça Central, 100'),
('Lucas', 'Lu', 'Oliveira', '78978978901', 'Rua do Sol, 234'),
('Clara', 'Cl', 'Ferreira', '23456789012', 'Rua Verdejante, 500'),
('Rafael', 'Ra', 'Lima', '34567890123', 'Travessa Serenidade, 120'),
('Eduarda', 'Ed', 'Gomes', '45678901234', 'Avenida Paz, 75'),
('Gabriel', 'Ga', 'Nascimento', '56789012345', 'Rua das Orquídeas, 300'),
('Juliana', 'Ju', 'Batista', '67890123456', 'Praça Luz, 50'),
('Marcelo', 'Ma', 'Monteiro', '78901234567', 'Avenida Esperança, 80'),
('Sofia', 'So', 'Cardoso', '89012345678', 'Rua Tranquila, 140'),
('Daniel', 'Da', 'Pereira', '90123456789', 'Rua Alegre, 230'),
('Beatriz', 'Be', 'Medeiros', '01234567890', 'Travessa Harmonia, 60'),
('Carla', 'Ca', 'Souza', '11223344556', 'Rua Nova, 220'),
('Tiago', 'Ti', 'Moura', '22334455667', 'Avenida Central, 90'),
('Renata', 'Re', 'Araújo', '33445566778', 'Rua Bela Vista, 115'),
('Felipe', 'Fe', 'Duarte', '44556677889', 'Praça do Sol, 310'),
('Vitória', 'Vi', 'Barros', '55667788990', 'Rua Primavera, 400'),
('Caio', 'Ca', 'Amaral', '66778899001', 'Travessa Esperança, 135'),
('Isabela', 'Is', 'Ribeiro', '77889900112', 'Rua Felicidade, 85'),
('Samuel', 'Sa', 'Costa', '88990011223', 'Avenida Paraíso, 150'),
('Luana', 'Lu', 'Figueiredo', '99001122334', 'Rua Encantada, 270'),
('Arthur', 'Ar', 'Machado', '10101010101', 'Travessa Harmonia, 45'),
('Evelyn', 'Ev', 'Vieira', '20202020202', 'Rua Aurora, 310');

-- Adicionando mais registros à tabela produtos
insert into produtos (nomeProduto, classificacao_infantil, categoria, avaliacao, dimensao)
values
('Celular X', false, 'eletronicos', 4.5, '10x5x1'),
('Camiseta Azul', false, 'vestuarios', 4.0, 'M'),
('Boneco Z', true, 'brinquedos', 4.8, '20x10x5'),
('Chocolate Y', false, 'alimenticios', 4.9, '5x2x1'),
('Cadeira W', false, 'moveis', 4.3, '100x50x50'),
('Tablet Z', false, 'eletronicos', 4.2, '25x15x1'),
('Bermuda Jeans', false, 'vestuarios', 3.8, 'G'),
('Carrinho de Brinquedo', true, 'brinquedos', 4.9, '30x10x10'),
('Biscoito Integral', false, 'alimenticios', 4.6, '10x10x3'),
('Mesa de Madeira', false, 'moveis', 4.4, '200x80x75'),
('Smartwatch', false, 'eletronicos', 4.7, '5x5x1'),
('Casaco Inverno', false, 'vestuarios', 4.3, 'GG'),
('Boneca Y', true, 'brinquedos', 4.8, '20x7x5'),
('Pão de Forma', false, 'alimenticios', 4.5, '15x10x5'),
('Estante Modular', false, 'moveis', 4.1, '180x120x40'),
('Carregador Rápido', false, 'eletronicos', 4.5, '8x5x2'),
('Saia Estampada', false, 'vestuarios', 4.2, 'M'),
('Quebra-Cabeça', true, 'brinquedos', 4.7, '40x30x5'),
('Bolacha Recheada', false, 'alimenticios', 4.4, '12x8x4'),
('Poltrona Reclinável', false, 'moveis', 4.6, '100x100x120'),
('Fone Bluetooth', false, 'eletronicos', 4.8, '5x4x2'),
('Calça Jeans', false, 'vestuarios', 4.1, 'P'),
('Jogo de Tabuleiro', true, 'brinquedos', 4.9, '50x40x10'),
('Bolo de Chocolate', false, 'alimenticios', 4.3, '25x25x10'),
('Armário Suspenso', false, 'moveis', 4.0, '100x50x30');

-- Adicionando mais registros à tabela pedidos
insert into pedidos (idClientePedido, statusPedido, descricaoPedido, valorFrete, pagamentoBoleto)
values
(1, 'confirmado', 'Pedido de celular', 15.0, false),
(2, 'andamento', 'Pedido de camiseta', 10.0, true),
(3, 'enviado', 'Pedido de boneco', 20.0, false),
(4, 'processando', 'Pedido de chocolate', 5.0, true),
(5, 'cancelado', 'Pedido de cadeira', 25.0, false),
(6, 'processando', 'Pedido de tablet', 12.0, true),
(7, 'confirmado', 'Pedido de bermuda', 8.0, false),
(8, 'andamento', 'Pedido de carrinho de brinquedo', 15.0, true),
(9, 'enviado', 'Pedido de biscoito', 5.0, false),
(10, 'cancelado', 'Pedido de mesa', 20.0, true),
(11, 'andamento', 'Pedido de smartwatch', 10.0, true),
(12, 'confirmado', 'Pedido de casaco', 12.0, false),
(13, 'processando', 'Pedido de boneca', 15.0, true),
(14, 'enviado', 'Pedido de pão', 5.0, false),
(15, 'confirmado', 'Pedido de estante', 18.0, true),
(16, 'processando', 'Pedido de carregador', 8.0, false),
(17, 'andamento', 'Pedido de saia', 7.0, true),
(18, 'confirmado', 'Pedido de quebra-cabeça', 16.0, true),
(19, 'enviado', 'Pedido de bolacha', 5.0, false),
(20, 'cancelado', 'Pedido de poltrona', 25.0, true);

-- Populando a tabela pagamentos
insert into pagamentos (idCliente, idPagamento, tipoPagamento, valorPagamento)
values
(1, 1, 'pix', 150.0),
(2, 2, 'credito', 300.0),
(3, 3, 'debito', 450.0),
(4, 4, 'boleto', 120.0),
(5, 5, 'pix', 230.0),
(6, 6, 'debito', 180.0),
(7, 7, 'credito', 75.0),
(8, 8, 'pix', 410.0),
(9, 9, 'boleto', 95.0),
(10, 10, 'credito', 290.0),
(11, 11, 'debito', 160.0),
(12, 12, 'pix', 220.0),
(13, 13, 'boleto', 125.0),
(14, 14, 'credito', 350.0),
(15, 15, 'debito', 200.0),
(16, 16, 'pix', 145.0),
(17, 17, 'boleto', 270.0),
(18, 18, 'credito', 185.0),
(19, 19, 'debito', 310.0),
(20, 20, 'pix', 500.0);

-- Populando a tabela estoques
insert into estoques (localEstoque, quantidade)
values
('Belém', 500),
('São Paulo', 400),
('Rio de Janeiro', 350),
('Curitiba', 300),
('Manaus', 450),
('Brasília', 600),
('Salvador', 550),
('Recife', 400),
('Porto Alegre', 375),
('Fortaleza', 525),
('Goiania', 275),
('Campinas', 375),
('Belo Horizonte', 485),
('Vitória', 420),
('João Pessoa', 375),
('Maceió', 335),
('Teresina', 310),
('Natal', 400),
('Cuiabá', 500),
('Aracaju', 275);

-- Populando a tabela fornecedores
insert into fornecedores (razaoSocial, nomeFantasia, CNPJ, contato)
values
('Tech Supplies Ltda.', 'TechSupplies', '12345678910111', '9876543210'),
('Moda Casual Ltda.', 'ModaCasual', '23456789101122', '9876543211'),
('Toys & Games Inc.', 'ToysGames', '34567891011133', '9876543212'),
('Sweet Delights SA', 'SweetDelights', '45678910111244', '9876543213'),
('Furnish Style Ltda.', 'FurnishStyle', '56789101112355', '9876543214'),
('Electronic World Inc.', 'ElectronicWorld', '67891011123466', '9876543215'),
('Clothing Co.', 'ClothingCo', '78910111234577', '9876543216'),
('PlayTime Ltd.', 'PlayTime', '89101112345688', '9876543217'),
('Food Lovers Inc.', 'FoodLovers', '91011123456799', '9876543218'),
('Furniture Direct Ltd.', 'FurnitureDirect', '10111234567890', '9876543219');

-- Populando a tabela vendedores
insert into vendedores (razaoSocial, nomeFantasia, CPF, CNPJ, localizacao, contato)
values
('Vendor X', 'X-Vendas', '11122233344', '12345678910111', 'São Paulo', '9876543210'),
('Vendor Y', 'Y-Vendas', '22233344455', '23456789101122', 'Rio de Janeiro', '9876543211'),
('Vendor Z', 'Z-Vendas', '33344455566', '34567891011133', 'Curitiba', '9876543212'),
('Vendor W', 'W-Vendas', '44455566677', '45678910111244', 'Manaus', '9876543213'),
('Vendor T', 'T-Vendas', '55566677788', '56789101112355', 'Brasília', '9876543214');

-- Populando as tabelas N pra N produtoVendedor, produtoPedido, produtoEstoque e produtoFornecedor
-- Populando a tabela produtoVendedor
insert into produtoVendedor (idVendedor, idProduto, prodVendQuantidade)
values
(1, 1, 50),
(2, 2, 40),
(3, 3, 60),
(4, 4, 30),
(5, 5, 45),
(1, 6, 25),
(2, 7, 35),
(3, 8, 20),
(4, 9, 50),
(5, 10, 60),
(1, 11, 70),
(2, 12, 55),
(3, 13, 65),
(4, 14, 45),
(5, 15, 80),
(1, 16, 50),
(2, 17, 40),
(3, 18, 60),
(4, 19, 30),
(5, 20, 45);

-- Populando a tabela produtoPedido
insert into produtoPedido (idProduto, idPedido, prodPedQuantidade, prodPedStatus)
values
(1, 1, 2, 'disponivel'),
(2, 2, 1, 'disponivel'),
(3, 3, 3, 'disponivel'),
(4, 4, 1, 'sem estoque'),
(5, 5, 2, 'disponivel'),
(6, 6, 1, 'sem estoque'),
(7, 7, 3, 'disponivel'),
(8, 8, 2, 'sem estoque'),
(9, 9, 1, 'disponivel'),
(10, 10, 4, 'disponivel'),
(11, 11, 2, 'disponivel'),
(12, 12, 1, 'sem estoque'),
(13, 13, 3, 'disponivel'),
(14, 14, 2, 'sem estoque'),
(15, 15, 1, 'disponivel'),
(16, 16, 4, 'disponivel'),
(17, 17, 2, 'disponivel'),
(18, 18, 1, 'sem estoque'),
(19, 19, 3, 'disponivel'),
(20, 20, 2, 'sem estoque');

-- Populando a tabela produtoEstoque
insert into produtoEstoque (idProduto, idEstoque, localizacao)
values
(1, 1, 'Belém'),
(2, 2, 'São Paulo'),
(3, 3, 'Rio de Janeiro'),
(4, 4, 'Curitiba'),
(5, 5, 'Manaus'),
(6, 6, 'Brasília'),
(7, 7, 'Salvador'),
(8, 8, 'Recife'),
(9, 9, 'Porto Alegre'),
(10, 10, 'Fortaleza'),
(11, 11, 'Goiania'),
(12, 12, 'Campinas'),
(13, 13, 'Belo Horizonte'),
(14, 14, 'Vitória'),
(15, 15, 'João Pessoa'),
(16, 16, 'Maceió'),
(17, 17, 'Teresina'),
(18, 18, 'Natal'),
(19, 19, 'Cuiabá'),
(20, 20, 'Aracaju');

-- Populando a tabela produtoFornecedor
insert into produtoFornecedor (idProduto, idFornecedor, quantidade)
values
(1, 1, 100),
(2, 2, 150),
(3, 3, 200),
(4, 4, 175),
(5, 5, 125),
(6, 6, 300),
(7, 7, 275),
(8, 8, 150),
(9, 9, 225),
(10, 10, 250),
(11, 1, 100),
(12, 2, 150),
(13, 3, 200),
(14, 4, 175),
(15, 5, 125),
(16, 6, 300),
(17, 7, 275),
(18, 8, 150),
(19, 9, 225),
(20, 10, 250);