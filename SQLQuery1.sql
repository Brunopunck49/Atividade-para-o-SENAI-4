create login aluno with password = 'Abc12345';

use clinica_medica

create user usuario_consulta for login aluno

grant select to usuario_consulta

grant insert to usuario_consulta

revoke delete from usuario_consulta

revoke insert from usuario_consulta

exec clinica_medica.dbo.sp_helprotect @username = 'usuario_consulta'

select * from paciente

insert into paciente values('567.890.123-45', 'Rogerio Ramos', '(11)97890-1234','Inovamed','Básico')

delete from paciente where cpf = '567.890.123-45'

select * from paciente where nome_plano = 'Inovamed'