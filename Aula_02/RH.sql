create database db_rh;

use db_rh;

-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
-- trabalhará com as informações dos funcionaries desta empresa.
-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados;
-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

create table tb_funcionarios( 
id bigint auto_increment,
nome varchar (255) not null,
idade int,
setor varchar (255) not  null,
funcao varchar (255) not null,
salario decimal(8,2),
primary key (id)
);

insert into tb_funcionarios(nome,idade,setor,funcao,salario)
values ("Tayná",23,"Administração","Assistente",1000.00);
insert into tb_funcionarios(nome,idade,setor,funcao,salario)
values("Pedro",24,"Tec","Desenvolvedor", 4000.00);
insert into tb_funcionarios(nome,idade,setor,funcao,salario)
values ("Geraldo",25,"Administração","Assistente",3000.00);
insert into tb_funcionarios(nome,idade,setor,funcao,salario)
values("Jacque",24,"Tec","Desenvolvedor", 8000.00);


select * from tb_funcionarios;

select id, nome, salario from tb_funcionarios where salario > 2000;
select id, nome, salario from tb_funcionarios where salario < 2000;

update tb_funcionarios set funcao = "Dev Pleno", salario = 5000 where id = 10;


delete from tb_funcionarios where id = 8;



