#Write a SQL query to compute a list showing the number of substitutions that
#happened in various stages of play for the entire tournament.
SELECT 
	m.match_no, 
    m.play_stage, 
    count(distinct p.time_in_out) as number_substitutions
FROM 
	euro_cup_2016.match_details as m
INNER JOIN
	euro_cup_2016.player_in_out as p
ON
	m.match_no=p.match_no
GROUP BY
	m.match_no, m.play_stage;