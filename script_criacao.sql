CREATE TABLE funcionario(
    cpf varchar(11) primary key,
    nome varchar(50) not null,
    salario double precision check (salario > 0) not null,
    data_contrato date not null -- trigger
);

CREATE TABLE pedido(
    id serial primary key,
    total double precision check (total>0) not null,
    forma_pgto varchar(15) check (forma_pgto in ('dinheiro', 'pix', 'cartao')) not null
);

CREATE TABLE prepara_pedido(
    id_pedido int REFERENCES pedido(id) not null,
    cpf_funcionario varchar(11) references funcionario(cpf) not null,

    constraint pk_funcped primary key (id_pedido, cpf_funcionario)
);

CREATE TABLE item_cardapio(
    nome varchar(50) primary key,
    ativo boolean not null,
    preco double precision check (preco>0) not null
);

CREATE TABLE pedido_item(
    nome_item varchar(50) references item_cardapio(nome) not null,
    id_pedido int references pedido(id) not null,

    constraint pk_peditem primary key (nome_item,id_pedido)
);

CREATE TABLE prato(
    nome_item varchar(50) references item_cardapio(nome) not null,
    tipo_prato varchar(15) check (tipo_prato in ('entrada', 'principal', 'sobremesa')) not null,

    constraint pk_prato primary key (nome_item)
);

CREATE TABLE bebida(
    nome_item varchar(50) references item_cardapio(nome) not null,
    tipo_bebida varchar(10) check (tipo_bebida in ('cerveja', 'suco', 'refri', 'agua')) not null,
    volume_ml int check (volume_ml > 0),
    data_compra date -- trigger
);

CREATE TABLE ingrediente(
    nome varchar(50) primary key,
    vegano boolean not null,
    data_compra date not null, --trigger
    data_validade date not null,
    quantidade int not null
);

CREATE TABLE ingrediente_prato(
    nome_item varchar(50) references item_cardapio(nome) not null,
    nome_ingrediente varchar(50) references ingrediente(nome) not null,
    quantidade int not null,
    unidade_medida varchar(10) not null,

    constraint pk_ingredprato primary key (nome_item, nome_ingrediente) 
);
