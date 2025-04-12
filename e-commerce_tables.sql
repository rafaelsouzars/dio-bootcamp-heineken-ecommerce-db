-- Criação do banco de dados para o cenário do E-commerce
create database if not exists ecommerce;
use ecommerce;

-- Criar tabelas
-- tabela cliente
create table clientes(
	idCliente int auto_increment primary key,
    nomeCliente varchar(10) not null,
    inicialNome char(3),
    sobreNome varchar(20),
    CPF char(11) not null,
    endereco varchar(255),
    constraint unique_cpf_client unique (CPF)
    
);

-- tabela produto
create table produtos(
	idProduto int auto_increment primary key,
    nomeProduto varchar(100),
    classificacao_infantil bool default false,
    categoria enum('eletronicos','vestuarios','brinquedos','alimenticios','moveis', 'outros') not null default 'outros',
    avaliacao float default 0,
    dimensao varchar(15)
    
);

-- tabela pedido
create table pedidos(
	idPedido int auto_increment primary key, 
    idClientePedido int,
    statusPedido enum('andamento','cancelado', 'confirmado', 'processando','enviado') not null default 'processando',
    descricaoPedido varchar(255),
    valorFrete float default 10,
    -- implementar pagamento
    pagamentoBoleto bool default false,
    -- idPagamento
    constraint fk_pedido_cliente foreign key (idClientePedido) references clientes(idCliente)
);

-- tabela pagamento (para ser refinado e implementado no desafio)
-- criar constraint relacionado aos pagamentos
create table pagamentos(
	idCliente int not null,
    idPagamento int not null,
    tipoPagamento enum('boleto','credito','debito','pix'),
    valorPagamento float,
    primary key (idCliente, idPagamento)
);

-- tabela estoque
create table estoques(
	idEstoque int auto_increment primary key not null,
    localEstoque varchar(45),
    quantidade int default 0
);

-- tabela fornecedor
-- drop table fornecedor;
create table fornecedores(
	idFornecedor int auto_increment primary key not null,
    razaoSocial varchar(255) not null,
    nomeFantasia varchar(255),
    CNPJ char(15) not null,
    contato varchar(11) not null,
    constraint unique_fornecedor unique(CNPJ)
);

-- tabela vendedor
create table vendedores(
	idVendedor int auto_increment primary key not null,
    razaoSocial varchar(255) not null,
    nomeFantasia varchar(255),
    CPF char(11),
    CNPJ char (15),
    localizacao varchar(255),
    contato char(11) not null,
    constraint unique_razaosocial_vendedor unique (razaoSocial),
    constraint unique_cnpj_vendedor unique (CNPJ),
    constraint unique_cpf_vendedor unique (CPF)    
);

-- tabelas N pra N
-- productSeller
create table produtoVendedor(
	idVendedor int,
    idProduto int,
    prodVendQuantidade int not null default 1,
    primary key (idVendedor, idProduto),
    constraint fk_produtoVendedor_vendedor foreign key (idVendedor) references vendedores(idVendedor),
    constraint fk_produtoVendedor_produto foreign key (idProduto) references produtos(idProduto)
);

-- productOrder
-- drop table produtoPedido;
create table produtoPedido(
	idProduto int,
    idPedido int,
    prodPedQuantidade int not null default 1,
    prodPedStatus enum('disponivel','sem estoque') not null default 'disponivel',
    primary key (idProduto, idPedido),
	constraint fk_produtoPedido_produto foreign key (idProduto) references produtos(idProduto),
    constraint fk_produtoPedido_pedido foreign key (idPedido) references pedidos(idPedido)
);

-- storageLocation
create table produtoEstoque(
	idProduto int,
    idEstoque int,
    localizacao varchar(255) not null,
    primary key (idProduto, idEstoque),
    constraint fk_produtoEstoque_produto foreign key (idProduto) references produtos(idProduto),
    constraint fk_produtoEstoque_estoque foreign key (idEstoque) references estoques(idEstoque)
);

-- productSupplier
create table produtoFornecedor(
	idProduto int,
    idFornecedor int,
    quantidade int not null,
    primary key (idProduto, idFornecedor),
    constraint fk_produtoFornecedor_produto foreign key (idProduto) references produtos(idProduto),
    constraint fk_produtoFornecedor_fornecedor foreign key (idFornecedor) references fornecedores(idFornecedor)
);

