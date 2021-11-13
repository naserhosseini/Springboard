SELECT 
	distinct s.name,c.deptId
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
	c.deptId=@v6 
    AND
    c.deptId!=@v7
ORDER BY s.name;