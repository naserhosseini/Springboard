SELECT 
	s.name
FROM 
	student as s
INNER JOIN
	transcript as t
ON
	s.id=t.studId
WHERE
	t.crsCode=@v4;