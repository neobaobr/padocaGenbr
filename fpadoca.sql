create database db_padoca;
use db_padoca;

create table tb_bolo(
idBolo bigint auto_increment,
 descricao varchar(30) not null,
 amanhecido boolean not null,
 valor decimal(10,2) not null,
 primary key(idBolo)

);

create table tb_cliente(
idCliente bigint auto_increment,
nome varchar(255) not null ,
cpf 	char(11) not null,
celular char(12) not null,
end varchar(255) not null,
numero int not null, 
cep char(8) not null,
primary key(idCliente)

);

create table tb_pao(
idPao bigint auto_increment not null,
descricao varchar(70) not null,
disponivel boolean not null,
valor decimal(10,2) not null,
primary key(idPao)
);



create table tb_bebida(
idBebida bigint not null auto_increment,
descricao varchar(50)not null,
disponivel boolean not null,
valor decimal(10,2) not null,
primary key(idBebida)
);

create table tb_forma_pag(
idFormaPag bigint not null auto_increment,
descricao varchar(50) not null ,
primary key(idFormaPag)
);


create table tb_comanda(
idComanda bigint not null auto_increment,
descricao varchar(255) not null,
pao_id bigint not null,
bolo_id bigint not null,
pagto_id int not null ,
bebida_id bigint not null,
cliente_id bigint not null,
primary key(idComanda),
foreign key (bolo_id) references tb_bolo(idBolo),
foreign key(pao_id) references tb_pao(idPao),
foreign key(pagto_id) references tb_forma_pag(idFormaPag),
foreign key(bebida_id) references tb_bebida(idBebida),
foreign key(cliente_id) references tb_cliente(idCliente)
);



INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Lorem ipsum dolor sit","1",20);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Lorem ","0",30);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES (" ipsum ","0",20);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES (" dolor sit","1",22);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Lo ipsdolorsit","1",25);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Loremtsit","1",39);

insert into tb_cliente (nome,cpf,celular,end,numero,cep) values ("rodrigo",42234567865,00983546728,"rua das flores",898,19034098);
insert into tb_cliente (nome,cpf,celular,end,numero,cep) values ("marcelo",42434567865,00989546728,"rua das flores",88,19034098);
insert into tb_cliente (nome,cpf,celular,end,numero,cep) values ("karina",47634567865,00983646728,"rua das flores",88,19039898);
insert into tb_cliente (nome,cpf,celular,end,numero,cep) values ("lorena",42234587365,00983549828,"rua das flores",898,19034098);
insert into tb_cliente (nome,cpf,celular,end,numero,cep) values ("Genero",42239067865,009835396728,"rua das flores",778,19034098);
insert into tb_cliente (nome,cpf,celular,end,numero,cep) values ("Kleiton",42654567865,00983246728,"rua das flores",448,19034098);
insert into tb_cliente (nome,cpf,celular,end,numero,cep) values ("Clarientino",42234567665,0098006728,"rua das flores",558,19034098);
insert into tb_cliente (nome,cpf,celular,end,numero,cep) values ("Maicon",42299567865,00983532128,"rua das flores",866,19034098);

insert into tb_pao (descricao,disponivel,valor) values ("forma",1,10.99);
insert into tb_pao (descricao,disponivel,valor) values ("italiano",1,18.99);
insert into tb_pao (descricao,disponivel,valor) values ("frances",1,14.99);
insert into tb_pao (descricao,disponivel,valor) values ("fermentado",1,29.99);
insert into tb_pao (descricao,disponivel,valor) values ("folheado",0,23.99);


insert into tb_bebida(descricao,disponivel,valor) values ("coca",1,3.99);
insert into tb_bebida(descricao,disponivel,valor) values ("suco misto",1,11.99);
insert into tb_bebida(descricao,disponivel,valor) values ("cafe",1,4.99);
insert into tb_bebida(descricao,disponivel,valor) values ("suco",1,5.99);
insert into tb_bebida(descricao,disponivel,valor) values ("tamarindo",1,9.99);

insert into tb_forma_pag (descricao) values ("cartao");
insert into tb_forma_pag (descricao) values ("dinheiro");
insert into tb_forma_pag (descricao) values ("cheque");
insert into tb_forma_pag (descricao) values ("app");

insert into tb_comanda (descricao,pao_id,bolo_id,pagto_id,bebida_id,cliente_id) values ("consuma local",3,3,4,5,6);
insert into tb_comanda (descricao,pao_id,bolo_id,pagto_id,bebida_id,cliente_id) values ("consuma local",2,5,4,5,6);
insert into tb_comanda (descricao,pao_id,bolo_id,pagto_id,bebida_id,cliente_id) values ("consuma local",4,3,4,3,6);
insert into tb_comanda (descricao,pao_id,bolo_id,pagto_id,bebida_id,cliente_id) values ("consuma local",3,2,4,3,6);
insert into tb_comanda (descricao,pao_id,bolo_id,pagto_id,bebida_id,cliente_id) values ("consuma + viagem",1,2,4,5,6);
insert into tb_comanda (descricao,pao_id,bolo_id,pagto_id,bebida_id,cliente_id) values ("viagem",2,3,4,4,6);