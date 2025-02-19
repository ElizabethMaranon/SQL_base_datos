USE universidad;

SELECT 
    AVG(n.nota) AS Nota, c.nombre_curso AS Curso
FROM
    notas n
        JOIN
    curso c ON n.nota_curso = c.id_curso
GROUP BY c.nombre_curso
ORDER BY Nota ASC;