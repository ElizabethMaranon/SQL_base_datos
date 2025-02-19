USE universidad;
SELECT 
    p.nombre_profe AS Profesor,
    COUNT(c.nombre_curso) AS Curso,
    e.nombre_est AS Estudiante
FROM
    notas n
        JOIN
    curso c ON n.nota_curso = c.id_curso
        JOIN
    profesores p ON c.profe_curso = p.id_profe
        JOIN
    estudiantes e ON e.id_est = n.nota_est
GROUP BY e.nombre_est , p.nombre_profe
ORDER BY Curso DESC;