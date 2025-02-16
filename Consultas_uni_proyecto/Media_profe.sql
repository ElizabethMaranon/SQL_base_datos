USE universidad;

SELECT 
    AVG(n.nota) AS Nota, p.nombre_profe AS Profesor
FROM
    notas n
        JOIN
    curso c ON n.nota_curso = c.id_curso
        JOIN
    profesores p ON c.profe_curso = p.id_profe
GROUP BY p.nombre_profe;