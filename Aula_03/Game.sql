create database db_game;

use db_game;

create table tb_classes(
id bigint auto_increment,
nome varchar (255)  not null,
habilidade varchar (255),
arma varchar (255),
primary key (id)
);

insert into tb_classes (nome, habilidade, arma)
value ("feiticeiro", "Bola de Fogo", "cajado");
insert into tb_classes (nome, habilidade, arma)
value ("Arqueiro", "Chuva de flechas", "Arco e Flechas");
insert into tb_classes (nome, habilidade, arma)
value ("Druida", "Gelo e cura", "Livro");
insert into tb_classes (nome, habilidade, arma)
value ("Guerreiro", "Excalibur", "Espada");
insert into tb_classes (nome, habilidade, arma)
value ("Curandeiro", "Ressurreição", "Gaze");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar (255) not null,
nivel int,
ataque int,
defesa int,
classe_in bigint,
primary key (id),
foreign key (classe_id) references tb_classes (id)
);

insert into tb_personagens(nome,nivel,ataque,defesa,classe_id)
values("Minseok", 100, 3000, 2800, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Junmyeon", 100, 2000, 2000, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Baekhyun", 10, 1000, 1500, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Jongdae", 1000, 1300, 1110, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Chanyeol", 500, 2300, 3000, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Kyungsoo", 400, 1800, 2200, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Jongin", 300, 1300, 850, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES ("Sehun", 150, 2100, 900, 3);
-- faltam personagens

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa > 1000 and defesa < 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id;

select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id
where tb_classes.id = 02;
