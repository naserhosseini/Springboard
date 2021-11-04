#Write a SQL query that returns the total number of goals scored by each position on
#each country’s team. Do not include positions which scored no goals.
SELECT
	c.country_name,
    p.posi_to_play,
    count(g.match_no) as total_goal
FROM 
	euro_cup_2016.goal_details as g
INNER JOIN
	euro_cup_2016.player_mast as p
ON
	g.player_id=p.player_id
INNER JOIN
	euro_cup_2016.soccer_country as c
ON	
	p.team_id=c.country_id
GROUP BY 
	p.posi_to_play,
    c.country_name
ORDER BY 
	c.country_name
