CREATE DATABASE sorveteriah;

USE sorveteriah

CREATE TABLE tbfornecedor(
codfornecedor int primary key identity(100,1),
nomefornecedor varchar(50),
contato varchar(30)
) 

CREATE TABLE tbfuncionario(
codfuncionario int primary key identity(100,1),
nomefuncionario varchar(70),
cpffuncionario varchar(30),
datenascfuncionario date,
ruafuncionario varchar(70),
numerofuncionario varchar(30),
bairrofuncionario varchar(70),
cidadefuncionario varchar(70)
)

CREATE TABLE tbOrdemdeServico(
codOs int primary key identity(100,1),
observacaoOs varchar(70),
codfuncionario int foreign key references tbfuncionario (codfuncionario),
codfornecedor int foreign key references tbfornecedor (codfornecedor)
)

CREATE TABLE tbsorvetes(
codsorvete int primary key identity(100,1),
nomesorvete varchar(70),
valorsorvete decimal,
codfornecedor int foreign key references tbfornecedor (codfornecedor)
)

insert into tbfornecedor(nomefornecedor,contato)
	values ('Ana Beatriz','(11)98900-9222'),
	 ('Eduarda','(11)97777-8888'),
	('Luisa','(11)91345-6789')

insert into tbfuncionario (nomefuncionario,cpffuncionario,datenascfuncionario,ruafuncionario,numerofuncionario, bairrofuncionario, cidadefuncionario)
	values ('Gustavo','123.456.789-81','04/05/2000','águas de janeiro','(11)92345-7890','Itaquera','São Paulo'),
			('Arthur','987.654.321-82','01/02/2000','águas de março','(11)98765-1234','Patriarca','São Paulo'),
			('Vitor','246.810.112-84','07/08/2000','águas de setembro','(11)99305-8990','Tatuapé','São Paulo')

insert into tbOrdemdeServico (observacaoOs)
	values ('chegou atrasado'),
			('chegou na hora'),
			('não chegou')


insert into tbsorvetes (nomesorvete,valorsorvete)
		values ('flocos',14.00),
		('creme',11.00),
		('limão',07.00)
