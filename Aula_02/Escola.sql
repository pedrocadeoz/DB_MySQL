/*informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create table db_escola;

use db_escola;

create table tb_alunes(
id bigint auto_increment,
nome varchar (255) not null,
RA int,
sala int,
horario time,
turma varchar (255) not null,
primary key(id)
);

insert into tb_alunes(nome,RA,sala,horario,turma,nota)
values ("Gabriel",12344,12,130000,"Teceiro Ano", 8.90);
insert into tb_alunes(nome,RA,sala,horario,turma,nota)
values ("Paulo",12987,16,080000,"Primeiro ano", 6.80);
insert into tb_alunes(nome,RA,sala,horario,turma,nota)
values ("Gabriela",13156,02,080000,"Oitava Série", 9.50);
insert into tb_alunes(nome,RA,sala,horario,turma,nota)
values ("Tayná",11255,13,130000,"Teceiro Ano",5.70);
insert into tb_alunes(nome,RA,sala,horario,turma,nota)
values ("Lucas",13866,04,080000,"Terceira Série",7.00);

alter table tb_alunes add nota decimal(8,2);

select * from tb_alunes;

select id, nome, nota from tb_alunes where nota >= 7;
select id, nome, nota from tb_alunes where nota < 7;

update tb_alunes set nome = "Gabriel", RA = "12344", sala = 12, nota = 10 where id = 12;

delete from tb_alunes where id = 11;




