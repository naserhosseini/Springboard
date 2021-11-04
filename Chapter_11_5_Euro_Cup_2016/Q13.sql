#Write a SQL query to find all the defenders who scored a goal for their teams.
SELECT
    p.posi_to_play,
    p.player_name,
    count(g.match_no) as total_goal
FROM 
	euro_cup_2016.goal_details as g
INNER JOIN
	euro_cup_2016.player_mast as p
ON
	g.player_id=p.player_id
WHERE
	p.posi_to_play='DF'
GROUP BY 
	p.posi_to_play,p.player_name