#Write a SQL query to find the number of captains who were also goalkeepers.
SELECT 
	count(distinct p.player_id) as number_GK_captains
FROM 
	euro_cup_2016.player_mast as p
INNER JOIN
	euro_cup_2016.match_captain as m
ON
	p.player_id=m.player_captain
WHERE
	p.posi_to_play='GK'