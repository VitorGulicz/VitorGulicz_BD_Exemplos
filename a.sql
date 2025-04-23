select NumPedido, count(QtdeProduto)  as 'produtos diferentes' from item_pedido 
group by NumPedido
having count(QtdeProduto)>3