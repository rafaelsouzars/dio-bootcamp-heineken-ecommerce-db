use ecommerce;

-- Recupera pedido com produto associado
create view vw_pedido_com_produto as
select c.idCliente as id, concat(nomeCliente, ' ', sobreNome) as Clientes, p.descricaoPedido as Descrição_do_Pedido, po.nomeProduto as Produto from clientes c 
		inner join pedidos p on c.idCliente = p.idClientePedido
		inner join produtoPedido pp on pp.idPedido = p.idPedido
        inner join produtos po on pp.idProduto = po.idProduto
    order by c.idCliente;
    
-- Quantos pedidos foram realizados pelos clientes?   
create view vw_pedidos_por_clientes as 
select c.idCliente as id, concat(nomeCliente, ' ', sobreNome) as Clientes, count(*) as Numero_de_Pedidos from clientes c 
		inner join pedidos p on c.idCliente = p.idClientePedido
    group by c.idCliente; 
    
-- Clientes com pedido em processamento
create view vw_pedidos_processamento as
select c.idCliente as id, concat(nomeCliente, ' ', sobreNome) as Clientes, p.descricaoPedido as Descrição, p.statusPedido as Status_do_Pedido from clientes c
	inner join pedidos p on c.idCliente = p.idClientePedido     
    having p.statusPedido = 'processando';
    
-- Clientes com pedido confirmado
create view vw_pedidos_confirmado as
select c.idCliente as id, concat(nomeCliente, ' ', sobreNome) as Clientes, p.statusPedido as Status_do_Pedido, p.descricaoPedido as Descrição from clientes c
	inner join pedidos p on c.idCliente = p.idClientePedido
    group by c.idCliente
    having p.statusPedido = 'confirmado';

-- Relação de produtos fornecedores e estoques    
create view vw_produto_fornecedor_estoque as
select p.nomeProduto as Nome_do_Produto, f.razaoSocial as Fornecedor, e.localEstoque as Localização, e.quantidade as Quantidade
from produtos p 
	inner join produtoFornecedor pf on p.idProduto = pf.idProduto
    inner join fornecedores f on pf.idFornecedor = f.idFornecedor
    inner join produtoEstoque pe on pf.idProduto = pe.idEstoque
    inner join estoques e on pe.idEstoque = e.idEstoque
    order by p.nomeProduto;
 
-- Relação de nomes dos fornecedores e nomes dos produtos 
create view vw_produto_fornecedor as
select p.nomeProduto as Nome_do_Produto, f.razaoSocial as Fornecedor
from produtos p 
	inner join produtoFornecedor pf on p.idProduto = pf.idProduto
    inner join fornecedores f on pf.idFornecedor = f.idFornecedor    
    order by p.nomeProduto;