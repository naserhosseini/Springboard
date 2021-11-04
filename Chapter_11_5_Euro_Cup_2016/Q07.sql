#Write a SQL query to find all the venues where matches with penalty shootouts were
#played.
SELECT 
	s.venue_id,
    s.venue_name,
    m.decided_by
FROM 
	euro_cup_2016.match_mast as m
INNER JOIN
	euro_cup_2016.soccer_venue as s
ON
	m.venue_id=s.venue_id
WHERE
	m.decided_by='P'