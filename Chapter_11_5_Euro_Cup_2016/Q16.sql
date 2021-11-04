#Write a SQL query to find referees and the number of matches they worked in each venue.
SELECT 
	v.venue_name,
    r.referee_name,
	count(m.referee_id) as number_of_match
FROM 
	euro_cup_2016.match_mast as m
INNER JOIN
	euro_cup_2016.referee_mast as r
ON
	m.referee_id=r.referee_id
INNER JOIN
	euro_cup_2016.soccer_venue as v
ON
	v.venue_id=m.venue_id
GROUP BY
	v.venue_id,
    r.referee_name