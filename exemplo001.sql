create database exemplos_db;
use exemplos_db;

create table depto(
	cdDepto integer not null,
    nmDepto varchar(35),
    ramal integer,
    constraint pk_depto primary key(cdDepto)
);

create table cargo(
	cdCargo int not null,
    nmCargo varchar(35),
    vrSalario int(11),
    constraint pk_cargo primary key(cdCargo)
    );
    
create table func(
	nrMatric int not null,
    nmFunc varchar(35),
    dtAdm date,
    sexo char,
    cdCargo int,
    cdDepto int,
    constraint pk_func primary key(nrMatric),
    constraint fk_func_cdCargo foreign key(cdCargo) references cargo(cdCargo),
    constraint fk_func_cdDepto foreign key(cdDepto) references depto(cdDepto)
);

create table produto(
	cdProduto int not null,
    nomeProduto varchar(35),
    constraint pk_produto primary key(cdProduto)
);

create table cliente(
	cdCliente int not null,
    nomeCliente varchar(35),
    constraint pk_cliente primary key(cdCliente)
);

create table ficha(
	cdCliente int not null,
    cdProduto int not null,
    saldo int,
    constraint pk_ficha primary key(cdCliente, cdProduto),
    constraint fk_ficha_cdCliente foreign key(cdCliente) references cliente(cdCliente),
    constraint fk_ficha_cdProduto foreign key(cdProduto) references produto(cdProduto)
);

create table pessoa(
	PessoaID int,
    Nome varchar(255),
    Endereco varchar(255),
    Telefone varchar(255),
    cidade varchar(255)
);

alter table pessoa
add constraint pk_pessoa_id primary key (PessoaID);

create table TabCidade(
	cidID int not null,
    cidNome varchar(200) not null,
    cid_estID int not null
);

create table TabEstado(
	estID int not null,
    estUF char(2) not null
);

alter table TabCidade
add constraint pk_cidade_id primary key (cidID);

alter table TabEstado
add constraint pk_estado_id primary key (estID);

alter table TabCidade
add constraint fk_est_cid foreign key (cid_estID) references TabEstado(estID);