-- Criando o DB Quitanda
create database db_quitanda;

use db_quitanda;

create table tb_produtos( 
id bigint auto_increment,
nome varchar (255) not null,
quantidade int,
preco decimal,
primary key (id)
);

insert into tb_produtos(nome,quantidade, preco)
values ("Maçã", 10, 1.99);
insert into tb_produtos(nome,quantidade, preco)
values ("Tomate", 20, 3.99);
insert into tb_produtos(nome,quantidade, preco)
values ("Melancia", 15, 10.99);
insert into tb_produtos(nome,quantidade, preco)
values ("Manga", 30, 4.49);
insert into tb_produtos(nome,quantidade, preco)
values ("Batata", 40, 2.99);

select * from tb_produtos;

update tb_produtos set preço = 1.99 where id = 1;

delete from tb_produtos where id = 7;

set SQL_SAFE_UPDATES = 0;

update tb_produtos set descricao = "Banana Ouro";

alter table tb_produtos modify preço decimal (8,2);

alter table tb_produtos add descricao varchar (255);

alter table  tb_produtos drop descricao;
