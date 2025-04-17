create database aula_vendas;
use aula_vendas;

create table cliente(
	cod_cliente int not null,
    nome_cliente varchar(50),
    tipo_cliente varchar(50),
    logradouro_cliente varchar(50),
    cidade varchar(50),
    cep varchar(10),
    uf char(2),
    cnpj varchar(30),
    inc_estadual integer(10),
    constraint pk_cliente primary key (cod_cliente)
);

create table vendedor(
	cod_vendedor integer not null,
    nome_vendedor varchar(50),
    salario_vendedor decimal(10,2),
    faixa_comissao char(2),
    constraint pk_vendedor primary key (cod_vendedor)
);

create table produto(
	cod_produto integer not null,
    unid_produto varchar(10),
    desc_produto varchar(50),
    valor_unitario decimal(10,2),
    constraint pk_produto primary key (cod_produto)
);

create table pedido(
	num_pedido integer not null,
    prazo_entrega integer(10),
    cod_cliente integer not null,
    cod_vendedor integer not null,
    constraint pk_pedido primary key (num_pedido),
    constraint fk_cliente_pedido foreign key (cod_cliente) references cliente(cod_cliente),
    constraint fk_vendedor_pedido foreign key (cod_vendedor) references vendedor(cod_vendedor)
);

create table produto_pedido(
	num_pedido integer not null,
    cod_produto integer not null,
    qtde_produto integer not null,
    constraint fk_num_pedido_pedido foreign key (num_pedido) references pedido(num_pedido),
    constraint fk_cod_produto_produto foreign key (cod_produto) references produto(cod_produto)
);

/*---------------------------------------------------
|             INSERT NA TABELA CLIENTE              |
|   SCRIPT PARA INSERIR DADOS NA TABELA CLIENTE     |
---------------------------------------------------*/
insert into cliente(cod_cliente,nome_cliente,tipo_cliente,logradouro_cliente,cidade,cep,uf,cnpj,inc_estadual)
VALUES
(720,'Ana','Rua','17 n. 19','Niteroi','24358310','RJ',12113231/0001-34,2134),
(870,'Flavio','Avenida',' Pres Vargas 10','São Paulo','22763931','SP',2253412693879,4631),
(110,'Jorge','Rua',' Caiapó 13','Curitiba','30078500','PR',1451276498349,null),
(222,'Lúcia','Rua',' Itabira 123 loja 09','Belo Horizonte','22124391','MG',2831521393488,2985),
(830,'Mauricio','Avenida',' Paulista 1236 sl/2345','São Paulo','3012683','SP',3281698574656,9343),
(130,'Edmar','Rua',' da Prais s/n','Salvador','30079300','BA',234632842349,7121),
(410,'Rodolfo','Largo',' da Lapa 27 sobrado','Rio de Janeiro','30078900','RJ',1283512823469,7431),
(20,'Beth','Avenida',' Climério n. 45','São Paulo','25679300','SP',3248512673268,9280),
(157,'Paulo','Avenida',' Moraes c/3','Londrina',null,'PR',328482233242,1923),
(180,'Livio','Avenida',' Beira Mar n.1256','Florianópolis','30077500','SC',1273657123474,null),
(260,'Susana','Rua',' Lopes Mendes 12','Niterói','30046500','RJ',217635712329,2530),
(290,'Renato','Rua',' Meireles n. 123 bl.2 sl.345','São Paulo','30225900','SP',1327657112314,1820),
(390,'Sebastião','Rua',' da Igreja n. 10','Uberaba','30438700','MG',321765472133,9071),
(234,'José','Quadra',' 3 bl. 3 sl 1003','Brasilia','22841650','DF',2176357612323,2931);


/*---------------------------------------------------
|             INSERT NA TABELA PEDIDO              |
|   SCRIPT PARA INSERIR DADOS NA TABELA PEDIDO     |
---------------------------------------------------*/

insert into pedido(num_pedido,prazo_entrega,cod_cliente,cod_vendedor)
VALUES
(121,20,410,209),
(97,20,720,101),
(101,15,720,101),
(137,20,720,720),
(148,20,720,101),
(189,15,870,213),
(104,30,110,101),
(203,30,830,250),
(98,20,410,209),
(143,30,20,111),
(105,15,180,240),
(111,20,260,240),
(103,20,260,11),
(91,20,260,11),
(138,20,260,11),
(108,15,290,310),
(119,30,390,250),
(127,10,410,11);


/*---------------------------------------------------
|             INSERT NA TABELA VENDEDOR             |
|   SCRIPT PARA INSERIR DADOS NA TABELA VENDEDOR    |
---------------------------------------------------*/

INSERT INTO vendedor 
(cod_vendedor, nome_vendedor, salario_vendedor, faixa_comissao) 
VALUES 
('209', 'José', 1800.00, 'C'),
('111', 'Carlos', 2490.00, 'A'),
('11', 'João', 2780.00, 'C'),
('240', 'Antonio', 9500.00, 'C'),
('720', 'Felipe', 4600.00, 'A'),
('213', 'Jonas', 2300.50, 'A'),
('101', 'João', 2650.32, 'C'),
('310', 'Josias',870.00,'B'),
('250', 'Mauricío',2930.00, 'B');


/*---------------------------------------------------
|             INSERT NA TABELA PRODUTO              |
|   SCRIPT PARA INSERIR DADOS NA TABELA PRODUTO     |
---------------------------------------------------*/
insert into PRODUTO(cod_produto,unid_produto,desc_produto,valor_unitario)
VALUES
(25,'Kg','Queijo',0.97),
(31,'Bar','Chocolate',0.87),
(78,'L','Vinho',2),
(22,'M','Linho',0.11),
(30,'SAC','Açucar',0.30),
(53,'M','Linha',1.80),
(13,'G','Ouro',6.18),
(45,'M','Madeira',0.25),
(87,'M','Cano',1.97),
(77,'M','Papel',1.05);


/*-------------------------------------------------------
|             INSERT NA TABELA ITEM_PEDIDO              |
|   SCRIPT PARA INSERIR DADOS NA TABELA ITEM_PEDIDO     |
-------------------------------------------------------*/
insert into produto_pedido(num_pedido,cod_produto,qtde_produto)
VALUES
(121,25,10),
(121,31,35),
(97,77,20),
(101,31,9),
(148,45,8),
(148,31,7),
(148,77,3),
(148,25,10),
(148,78,30),
(104,53,32),
(203,31,6),
(189,78,45),
(143,31,20),
(105,78,10),
(111,25,10),
(111,78,70),
(103,53,37),
(91,77,40),
(138,22,10),
(138,77,35),
(138,53,18),
(108,13,17),
(119,77,40),
(119,13,6),
(119,22,10),
(119,53,43),
(137,13,8);

-- LISTAR TODOS OS PRODUTOS COM A RESPECTIVA DESCRIÇÃO, UNIDADE E VALOR UNITARIO

select desc_produto, unid_produto, valor_unitario from produto;

select cnpj, nome_cliente, tipo_cliente, logradouro_cliente, cidade, cep, uf from cliente;

select * from vendedor;

select cod_vendedor as Matricula, nome_vendedor as Nome, salario_vendedor as Rendimentos, faixa_comissao as Comissão from vendedor;

select nome_vendedor as Vendedor, (salario_vendedor * 2) as Salario from vendedor;

select num_pedido, cod_produto, qtde_produto from produto_pedido where qtde_produto = 35;

select nome_cliente, cidade from cliente where cidade = 'Niterói';

select * from produto where unid_produto = 'm' and valor_unitario = 1.05;

select nome_cliente, tipo_cliente, logradouro_cliente, cidade, cep from cliente where cidade = 'São Paulo' or (cep >= 30077000 and cep <= 30079000);

select num_pedido from pedido where prazo_entrega != 15;

select cod_produto, desc_produto from produto where valor_unitario between 0.32 and 2.00;

select * from produto where desc_produto like "q%";
	
select nome_vendedor from vendedor where nome_vendedor not like "jo%";

select nome_vendedor from vendedor where faixa_comissao between 'a' and 'b' order by nome_vendedor;

select nome_cliente from cliente where inc_estadual is null;

select nome_vendedor, salario_vendedor from vendedor order by nome_vendedor;

select nome_cliente, cidade, uf from cliente order by uf desc, cidade desc;

select desc_produto, valor_unitario from produto where unid_produto = 'm' order by valor_unitario asc;

select nome_vendedor, (salario_vendedor * 1.75 + 120.00) as 'Salario com aumento', faixa_comissao from vendedor where faixa_comissao = 'c' order by nome_vendedor;

select min(salario_vendedor) as 'Menor Salario', max(salario_vendedor) as 'Maior Salario' from vendedor; 

select sum(qtde_produto), cod_produto from produto_pedido where cod_produto = 78;

insert into produto_pedido (num_pedido, cod_produto, qtde_produto) values 
	('143','78','10'),
    ('101','78','18');
    
select avg(salario_vendedor) as 'average salario' from vendedor;

select count(salario_vendedor) from vendedor where salario_vendedor > 2500;

select distinct unid_produto from produto;

select num_pedido as 'numero de pedidos', count(qtde_produto) from produto_pedido group by num_pedido;

select num_pedido, count(num_pedido) as 'quantidade de produtos' from produto_pedido group by num_pedido having count(num_pedido) > 3;

select c.nome_cliente, c.cod_cliente, p.num_pedido from pedido p 
join cliente c on c.cod_cliente = p.cod_cliente;

select c.nome_cliente, c.cod_cliente, p.num_pedido from pedido p
cross join cliente c on c.cod_cliente = p.cod_cliente;

select cliente.cod_cliente, cliente.nome_cliente, pedido.num_pedido from cliente left join pedido on pedido.cod_cliente = cliente.cod_cliente;

select distinct c.nome_cliente, c.uf, p.prazo_entrega from cliente c
join pedido p on c.cod_cliente = p.cod_cliente where prazo_entrega >15 and uf in ('sp','rj');

select c.nome_cliente, p.prazo_entrega from pedido p 
join cliente c on p.cod_cliente = c.cod_cliente order by prazo_entrega desc;

select distinct v.nome_vendedor, p.prazo_entrega, v.salario_vendedor from pedido p
inner join vendedor v on p.cod_vendedor = v.cod_vendedor where prazo_entrega > 15 and salario_vendedor >= 1000 order by nome_vendedor;

select c.nome_cliente, c.uf, pe.prazo_entrega, pr.desc_produto from cliente c
inner join pedido pe on pe.cod_cliente = c.cod_cliente
inner join produto_pedido pp on pe.num_pedido = pp.num_pedido
inner join produto pr on pp.cod_produto = pr.cod_produto
where prazo_entrega > 15 and desc_produto like 'queijo' and c.uf = 'rj';