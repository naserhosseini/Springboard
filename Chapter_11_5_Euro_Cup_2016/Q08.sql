#Write a SQL query to find the match number for the game with the highest number of
#penalty shots, and which countries played that match.
SELECT 
	m.match_no, c.country_name
FROM
	euro_cup_2016.match_details as m
INNER JOIN  
	euro_cup_2016.soccer_country as c
ON
	m.team_id=c.country_id
WHERE
	m.match_no=
    (SELECT
		p.match_no
	FROM
		euro_cup_2016.penalty_shootout as p
	WHERE 	p.kick_no=
					(SELECT
						max(kick_no)
					FROM
						euro_cup_2016.penalty_shootout
					)) ;