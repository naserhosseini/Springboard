#Write a SQL query to find the referees who booked the most number of players.
SELECT 
	r.referee_name,
    pm.player_name,
    count(p.match_no) as total_booked
FROM 
	euro_cup_2016.player_booked as p
INNER JOIN
	euro_cup_2016.match_mast as m
ON
	p.match_no=m.match_no
INNER JOIN
	euro_cup_2016.referee_mast as r
ON
	r.referee_id=m.referee_id
INNER JOIN
	euro_cup_2016.player_mast as pm
ON
	pm.player_id=p.player_id
GROUP BY
	r.referee_name,p.player_id
ORDER BY
	count(p.match_no) desc