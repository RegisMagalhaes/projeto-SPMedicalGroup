--este comando permite usar dentre tantos bancos o banco no qual vamos trabalhar
use senai_spmed_group;

--Processo de popular tabela com inserts
insert situacao (situacao)
values			('Realizada'),
				('Agendada'),
				('Cancelada')
GO

insert tipoUsuario(titulo)
values			  ('Administrador'),
				  ('Médico'),
				  ('Paciente')
GO

insert especialidade(nomeEspecialidade)
values				('Acupuntura'),
					('Anestesiologia'),
					('Angiologia Cardiologia'),
					('Cirurgia Cardiovascular'),
					('Cirurgia da mão'),
					('Cirurgia do Aparelho Digestivo'),
					('Cirurgia Geral'),
					('Cirurgia Pediátrica'),
					('Cirurgia Plástica'),
					('Cirurgia Torácica'),
					('Cirurgia Vascular'),
					('Dermatologia'),
					('Radioterapia'),
					('Urologia'),
					('Pediatria'),
					('Psiquiatria')

insert medico(idUsuario, idEspecialidade, idclinica, CRM)
values			(1,2,1,'54356-SP'),
				(2,13,1,'53452-SP'),
				(3,7,1,'65463')

select * from medico;

insert Usuario(idTipoUsuario,Email, Senha)
values			( 2, 'ricardo.lemos@spmedicalgroup.com.br','123456'),
				( 2, 'roberto.possarle@spmedicalgroup.com.br', '29wdJh1530'),
				( 2, 'helena.silva@spmedicalgroup.com.br','wwwm9k30'),
				( 3, 'ligia@gmail.com', 'dddd44jj'),
				( 3, 'alexandre@gmail.com', 'sp90amovcjulia'),
				( 3, 'fernando@gmail.com', 'minhaterratempalmeiras'),
				( 3, 'henrique@gmail.com', 'onumeroatomicodocobreeh29'),
				( 3, 'joao@hotmail.com', 'esqueciasenha'),
				( 3, 'bruno@gmail.com', 'vingadores2020'),
				( 3, 'mariana@terra.com.br', 'mariana123')

insert consulta(idmedico,idpaciente, idsituacao, dataConsulta, medico, prontuario, situacao)
values			( 3, 7, 1,'20/01/2015','Helena Strada','Mariana','Realizada'),
				( 2, 2, 2,'06/01/2020','Roberto Possarle','Alexandre','Realizada'),
				( 2, 3, 1,'20/07/2020','Roberto Possarle','Fernando','Cancelada'),
				( 2, 2, 1,'02/06/2018','Roberto Possarle','Alexandre','Realizada'),
				( 1, 4, 2,'02/07/2019','Ricardo Lemos','Henrique','Realizada'),
				( 2, 7, 3,'03/08/2020','Roberto Possarle','Mariana','Agendada'),
				( 1, 4, 3,'03/09/2020','Ricardo Lemos','Henrique','Agendada')

insert paciente(idusuario, idade, RG, CPF, telefone, Endereço, email)
values			( 4, 37, 1,'43522543-5','94839859000','Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000','ligia@gmail.com'),
				( 5, 20, 2,'32654345-7','73556944057','Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200','alexandre@gmail.com'),
				( 6, 42, 1,'54636525-3','16839338002','Av. Ibirapuera - Indianópolis, 2927, São Paulo - SP, 04029-200','fernando@gmail.com'),
				( 7, 35, 1,'54366362-5','14332654765','R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030','henrique@gmail.com'),
				( 8, 45, 2,'t32544444-1','91305348010','R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380','joao@hotmail.com'),
				( 9, 48, 3,'54566266-7','79799299004','Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001','bruno@gmail.com'),
				( 10, 3, 3,'54566266-8','13771913039','R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140','mariana@outlook.com')
				

insert clinica(CNPJ, Endereco, Nome, razaoSocial)
values		  ('86.400.902/0001-30',' Av. Barão Limeira, 532, São Paulo, SP',' Clinica Possarle', 'SPMedicalGroup')



