SELECT 
	s.name
FROM 
	student as s
INNER JOIN
	transcript as t
ON
	s.id=t.studId
INNER JOIN
	teaching as c
USING(crsCode)
INNER JOIN
	professor as p
ON 
	p.id=c.profId
WHERE
	p.name=@v5;