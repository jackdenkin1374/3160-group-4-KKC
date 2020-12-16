SELECT ps.Name as Driver_Name, ds.student_id AS Driver_ID, ds.rating as Average_Rating
FROM (
        SELECT p.person_name AS Name, s.student_id as student_id
        FROM person AS p
        INNER JOIN student AS s
        ON p.person_id = s.person_id
) as ps
INNER JOIN (
        SELECT AVG(dr.overallRating) AS rating, d.student_id AS student_id
		FROM driver AS d
        INNER JOIN driverrating AS dr
        ON d.driver_id = dr.driver_id
        GROUP BY dr.driver_id
) AS ds
ON ps.student_id = ds.student_id
ORDER BY Average_Rating DESC
LIMIT 5
