UPDATE cursos 
SET nome = 'Java', descricao = 'introducao a linguagem java', carga = '40', totaulas = '29', ano = '2015'
WHERE idcurso = 5 LIMIT 1;

DELETE FROM cursos WHERE idcurso = 14;