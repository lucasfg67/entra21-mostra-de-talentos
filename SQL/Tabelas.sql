create table equipamento(
	id  	integer      not null,
	nome    varchar(100) not null,
	marca   varchar(100) not null,
	n_serie integer      not null,	
	
	constraint pk_equipamento primary key (id)	
);

create generator gen_equipamento_id;
	
create table tecnico(
	id     		integer     not null,
	nome       	varchar(60) not null,
	valor_hora 	float       not null,
	
	constraint pk_tecnico primary key (id)	
);

create generator gen_tecnico_id;

create table material(
	id         		integer      not null,
	descricao      	varchar(100) not null,
	valor_unitario 	float        not null,
	
	constraint pk_material primary key (id)
);

create generator gen_material_id;

create table cidade(
	id 		  integer     not null,
	nome 	  varchar(60) not null,
	id_estado integer     not null,
	
	constraint pk_cidade primary key (id),
	
	constraint fk_cidade_estado foreign key 
		(id_estado) references estado (id);
);


create generator gen_cidade_id;

alter table cidade 
add id_estado integer not null,
add constraint fk_cidade_estado foreign key 
	(id_estado) references estado (id);

create table cliente(
	id        		integer      not null,
	nome		  	varchar(100) not null,
	solicitante   	varchar(60)  not null,
	cnpj_cpf      	varchar(60)  not null,
	telefone      	varchar(60)  not null,
	id_cidade 		integer      not null,
	endereco      	varchar(100) not null,
	tipo_pessoa     varchar(1)   not null,
	constraint pk_cliente primary key (id),
	
	constraint fk_cliente_cidade foreign key 
		(id_cidade) references cidade(id)
);

create generator gen_cliente_id;


create table os(
	id                	integer       not null,
	data_entrada 		date          not null,
	descricao_servico 	varchar(4000) not null,
	id_cliente        	integer       not null,
	id_equipamento 	  	integer       not null,	
	
	constraint pk_os primary key (id),
	
	constraint fk_os_dados_cliente foreign key 
		(id_cliente) references cliente(id),
		
	constraint fk_os_equipamento foreign key 
		(id_equipamento)  references equipamento(id)
	
);

create generator gen_os_id;

create table os_tecnico(
	id         		integer   not null,
	id_tecnico 		integer   not null,
	id_os      		integer   not null,
	data           	date      not null,
	inicio_manha   	timestamp not null, 
	termino_manha  	timestamp not null, 
	inicio_tarde   	timestamp not null,
	termino_tarde  	timestamp not null,
	
	constraint pk_os_tecnico primary key (id),
	
	constraint fk_os_tecnico_tecnico foreign key 
		(id_tecnico) references tecnico(id),
		
	constraint fk_os_tecnico_os foreign key 
		(id_os)      references os(id)
);

create generator gen_os_tecnico_id;

create table os_material(
	id          	integer not null,
	id_os       	integer not null,
	id_material 	integer not null,
	quantidade 	    integer not null,
		
	constraint pk_os_material primary key (id),
	
	constraint fk_os_material_material foreign key 
		(id_material) references material(id),
		
	constraint fk_os_material foreign key 
		(id_os)      references os(id)
);

create generator gen_os_material_id;

create table usuario (
	id    integer     not null,
	nome  varchar(40) not null,
	login varchar(60) not null,
	senha varchar(40) not null,
	id_papel integer  not null,
	
	constraint pk_usuario primary key (id),
	constraint uk_usuario_login unique (login),
	constraint fk_usuario_papel foreign key (id_papel) references papel(id)
	
);


create generator gen_usuario_id;

create table movimentacao (
	id          integer    not null,
	operacao    varchar(1) not null,
	data        timestamp  not null,
	id_material integer    not null,
	quantidade  float      not null,
	situacao    varchar(1) not null,
	
	constraint pk_movimentacao primary key (id),
	
	constraint fk_movimentacao_material foreign key 
		(id_material) references material(id)
);

create generator gen_movimentacao;

create table os_mat_movi(
	id              integer not null,
	id_os_material  integer not null,
	id_movimentacao integer not null,
	
	constraint pk_os_mat_movi primary key (id),
	
	constraint fk_os_mat_movi_os_material foreign key 
		(id_os_material) references os_material(id),
		
	constraint fk_os_mat_movi_movimentcao foreign key 
		(id_movimentacao) references movimentacao(id)

);

create generator gen_os_mat_movi;


create table pais (
	id    integer     not null,
	nome  varchar(60) not null,
	sigla varchar(5)  not null,
	
	
	constraint pk_pais primary key (id)
);

create generator gen_pais;

create table estado (
	id      integer      not null,
	nome    varchar (60) not null,
	uf      varchar(10)  not null,
	id_pais integer      not null,
	
	constraint pk_estado primary key (id),
	
	constraint fk_estado_pais foreign key 
	 	(id_pais) references pais(id)

);

create generator gen_estado;



create table papel (
	id integer not null,
	descricao varchar(60) not null,
	
	constraint pk_papel primary key (id)
);


create table permissao (
	id integer not null,
	descricao varchar(60) not null,
	
	constraint pk_permissao primary key (id)
);


create table papel_permissao (
	id_papel integer not null,
	id_permissao integer not null,
	
	constraint pk_papel_permissao primary key (id_papel, id_permissao),
	constraint fk_papel_permissao_papel foreign key (id_papel) references papel(id),
	constraint fk_papel_permissao_permissao foreign key (id_permissao) references permissao(id)
);

select * from usuario;