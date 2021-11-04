#Write a SQL query to find the goalkeeper’s name and jersey number, playing for
#Germany, who played in Germany’s group stage matches.
SELECT 
	distinct p.player_name,  p.jersey_no 
FROM 
	euro_cup_2016.match_details as m
INNER JOIN 
	euro_cup_2016.player_mast as p
ON
	m.player_gk=p.player_id
WHERE
	m.play_stage='G' and m.team_id=
    (SELECT 
		country_id
	FROM
		euro_cup_2016.soccer_country
	WHERE
		country_name='Germany');