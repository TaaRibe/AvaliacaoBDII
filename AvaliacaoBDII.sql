/*ex1*/
SELECT nome, idade
from alunos
where curso = 'Informática';

/*ex2*/
SELECT nome
from professores
where disciplina = ('Administração');

/*ex3*/
select nome, idade
from alunos
order by idade asc;

/*ex4*/
select curso, count(*) as total_alunos
from alunos
group by curso;

/*ex5*/
select curso, count(*) as mais_de_6
from alunos
group by curso
having count(*) >=6;

/*ex6*/
select alunos.nome
from alunos
join matricula on alunos.id = matricula.id_aluno
join turmas on matriulas.id_turma= turma.id
where turmas.nome_turma = 'Turma A';

/*ex7*/
select a.nome as aluno, t.nome_turma
from alunos a
inner join matriculas m on a.id = m.id_aluno
inner join turmas t on t.id = m.id_turma;

/*ex11*/

select avg(idade) as media_idade
from alunos
where curso = 'Contabilidade';











