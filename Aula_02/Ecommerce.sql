create database db_ecom;

use db_ecom;

/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade*/

create table tb_produtos(
id bigint auto_increment,
tipo varchar (255) not null,
marca varchar (255) not null,
cor varchar (255) not  null,
tamanho varchar (255) not null,
quantidade int,
preco decimal(8,2),
primary key (id)
);

alter table tb_produtos add quantidade int;

insert into tb_produtos(tipo,marca,cor,tamanho,preco,quantidade)
values ("Tênis","Umbro","preto","38 ao 45",299.99,100);
insert into tb_produtos(tipo,marca,cor,tamanho,preco,quantidade)
values ("Camiseta","Lacoste","Verde","P ao GG",159.99,40);
insert into tb_produtos(tipo,marca,cor,tamanho,preco,quantidade)
values ("Jaqueta","Under Armour","Vermelha","P e PP",659.49,15);
insert into tb_produtos(tipo,marca,cor,tamanho,preco,quantidade)
values ("Meias","Nike","Brancas","36 ao 40 e 41 ao 45",59.90,200);
insert into tb_produtos(tipo,marca,cor,tamanho,preco,quantidade)
values ("Boné","New Era","Azul","Snapback",179.90,20);
insert into tb_produtos(tipo,marca,cor,tamanho,preco,quantidade)
values ("Short","Quiksilver","Verde","40 ao 48",219.90,70);
insert into tb_produtos(tipo,marca,cor,tamanho,preco,quantidade)
values ("Camisa Polo","Tommy Hilfiger","Branca","GG e EGGe",189.99,35);
insert into tb_produtos(tipo,marca,cor,tamanho,preco,quantidade)
values ("Tênis","Adidas","Cinza","36, 37 e 38",519.90,50);

select * from tb_produtos;

select id, tipo, preco from tb_produtos where preco > 500;
select id, tipo, preco from tb_produtos where preco < 500;

update tb_produtos set tipo = "Tenis", marca = "umbro", tamanho = "41 e 42", preco = 199.99 where id = 10;


delete from tb_produtos where id = 9;



