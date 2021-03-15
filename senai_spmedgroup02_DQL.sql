use senai_spmed_group;

GO
SELECT * FROM clinica;
SELECT * FROM consulta;
SELECT * FROM especialidade;
SELECT * FROM medico;
SELECT * FROM paciente;
SELECT * FROM situacao;
SELECT * FROM tipoUsuario;
SELECT * FROM Usuario;

select idUsuario, titulo, Email from Usuario
INNER JOIN tipoUsuario
on Usuario.idTipoUsuario=tipoUsuario.idTipoUsuario;

select idPaciente, CPF, idade from paciente;

select idade as 'tempo de vida' from paciente;
