USE universidad;

SELECT 
    MAX(n.nota) AS Nota, e.nombre_est AS Estudiante
FROM
    notas n
        JOIN
    estudiantes e ON n.nota_est = e.id_est
GROUP BY e.nombre_est;
