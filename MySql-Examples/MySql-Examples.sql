CREATE DATABASE curso_sql;

USE curso_sql;

create table funcionarios
(
	id int unsigned not null auto_increment,
    nome varchar(30) not null,
    salario double not null default '0',
    departamento varchar(30) not null,
    primary key(id)
);

create table veiculos
(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(30) not null default '',
    placa varchar(10) not null default '',
    primary key (id),
    constraint fk_veiculos_funcionarios foreign key (funcionario_id) references funcionarios (id)
);

create table salarios
(
	faixa varchar(30) not null,
    inicio double not null,
    fim double not null,
    primary key (faixa)
);

alter table funcionarios change column nome_funcinario nome varchar (30) not null;

drop table salarios;



drop index nomes on funcionarios;


insert into funcionarios (nome, salario, departamento) values ('fernando',1400,'TI');
insert into funcionarios (nome, salario, departamento) values ('guilherme',1400,'TI');


set SQL_SAFE_UPDATES = 0;
/*	SQL_SAFE-UPDATES = 1*/
update funcionarios set salario = salario*1.1;
update funcionarios set salario = round(salario*1.1,2);

select * from funcionarios;

