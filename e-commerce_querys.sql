use ecommerce;

-- Execução de views
select * from vw_pedido_com_produto;
select * from vw_pedidos_confirmado;
select * from vw_pedidos_processamento;
select * from vw_pedidos_por_clientes;
select * from vw_produto_fornecedor_estoque;
select * from vw_produto_fornecedor;

-- Querys para visualização geral
select * from clientes;
select * from produtos;
select * from pedidos;
select count(*) as Quantidade_de_Clientes from clientes;
select * from clientes c, pedidos p where c.idCliente = p.idPedido;
select idCliente, nomeCliente, sobreNome, CPF, endereco, statusPedido, descricaoPedido, valorFrete from clientes c, pedidos p where c.idCliente = p.idPedidoCliente;
select concat(nomeCliente, ' ', sobreNome) as cliente, CPF, endereco, statusPedido, descricaoPedido, valorFrete from clientes c, pedidos p where c.idCliente = p.idPedidoCliente;    