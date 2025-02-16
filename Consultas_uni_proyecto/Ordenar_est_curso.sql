USE universidad;

SELECT 
    c.nombre_curso As Curso, e.nombre_est AS Estudiante
FROM
    curso c
        JOIN
    notas n ON n.nota_curso = c.id_curso
        JOIN
    estudiantes e ON e.id_est = n.nota_est
ORDER BY c.nombre_curso;