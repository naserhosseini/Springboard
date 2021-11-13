SELECT 
	distinct s.name
FROM 
	student as s
INNER JOIN
	transcript as t
ON
	s.id=t.studId
INNER JOIN
	course as c
USING(crsCode)
WHERE
	t.crsCode IN 
				(SELECT 
					crsCode
				FROM
					course
				WHERE
					deptId=@v8
                )
ORDER BY s.name;