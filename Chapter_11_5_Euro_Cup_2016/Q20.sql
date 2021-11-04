#Write a SQL query to find the substitute players who came into the field in the first
#half of play, within a normal play schedule.
SELECT 
	p.player_name,
    i.time_in_out,
    i.play_schedule
FROM 
	euro_cup_2016.player_mast as p
INNER JOIN
	euro_cup_2016.player_in_out as i
ON
	p.player_id=i.player_id
WHERE
	i.time_in_out<=45
    AND
    i.play_schedule='NT';