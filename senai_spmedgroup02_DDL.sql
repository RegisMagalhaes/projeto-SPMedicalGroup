--criação do banco de dados designed by Regis
create database senai_spmed_group;
use senai_spmed_group;
go;
--criação de todas as tabelas conforme modelos conceitual, lógico e físico
create table clinica
(
	idClinica int primary key identity,
	CNPJ varchar(20),
	Endereco varchar(50)not null,
	Nome varchar(50)not null,
	razaoSocial varchar(50)
);

create table especialidade
(
	idEspecialidade int primary key identity,
	nomeEspecialidade varchar (50),
);

create table tipoUsuario
(
	idTipoUsuario int primary key identity,
	titulo varchar (20)
);
	
create table situacao
(
	idsituacao int primary key identity,
	situacao varchar(20)
);

create table Usuario
(
	idUsuario int primary key identity,
	idTipoUsuario int foreign key references tipoUsuario(idTipoUsuario),
	Email varchar (100) unique not null,
	Senha varchar (100) unique not null,

);

create table medico
(
	idMedico int primary key identity,
	idUsuario int foreign key references Usuario(idUsuario),
	idEspecialidade int foreign key references especialidade(idEspecialidade),
	idclinica int foreign key references clinica(idClinica),
	CRM varchar (20)

);
--erro foi necessario apagar essa tabela e reprogramá-la
drop table medico;

create table paciente
(
	idPaciente int primary key identity,
	idusuario int foreign key references Usuario(idUsuario),
	idade int,
	RG varchar (20),
	CPF varchar (14) not null,
	telefone varchar (12),
	Endereço varchar(255),
	email varchar (100)
);

create table consulta
(
	idconsulta int primary key identity,
	idmedico int foreign key references medico(idMedico),
	idpaciente int foreign key references paciente(idPaciente),
	idsituacao int foreign key references situacao(idsituacao),
	dataConsulta date,
	medico varchar(50),
	prontuario varchar(255),
	situacao varchar(30)

);

drop table medico;
select * from medico;