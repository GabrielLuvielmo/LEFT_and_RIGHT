Create Table Categorias (
	idcategorias int Primary Key not null,
	nome_categorias varchar not null
);

Create Table Pedidos (
	idpedidos int Primary Key not null,
	datapedidos date not null,
	valortotal real not null,
	idcategorias int References Categorias(idcategorias)
);

insert into Categorias (idcategorias, nome_categorias) values 
(01, 'Eletronicos'),
(02, 'Livros'),
(03, 'Roupas'),
(04, 'Alimentos'),
(05, 'Moveis');

insert into Pedidos (idpedidos, datapedidos, valortotal, idcategorias) values
(01, '2024-01-15', 150.75, 01),
(02, '2024-02-10', 200.50, 04),
(03, '2024-03-05', 75.00, 01),
(04, '2024-04-20', 300.25, 03),
(05, '2024-05-30', 120.00, 02),
(06, '2024-06-18', 250.00, 05);

SELECT Pedidos.idpedidos, 
	   Pedidos.datapedidos, 
	   Pedidos.valortotal, 
	   Categorias.nome_categorias 
From Pedidos
INNER JOIN Categorias ON Pedidos.idcategorias = Categorias.idcategorias;

SELECT Categorias.idcategorias, 
       Categorias.nome_categorias, 
       Pedidos.idpedidos, 
       Pedidos.datapedidos, 
       Pedidos.valortotal
FROM Categorias
LEFT JOIN Pedidos ON Categorias.idcategorias = Pedidos.idcategorias;

SELECT Pedidos.idpedidos, 
       Pedidos.datapedidos, 
       Pedidos.valortotal, 
       Categorias.idcategorias, 
       Categorias.nome_categorias
FROM Pedidos
RIGHT JOIN Categorias ON Pedidos.idcategorias = Categorias.idcategorias;
