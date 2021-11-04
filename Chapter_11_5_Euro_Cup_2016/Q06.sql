#Write a SQL query to find the number of matches that were won by a single point, but
#do not include matches decided by penalty shootout.
SELECT 
	count(*) as number_matches
FROM
    (SELECT 
		*,
		row_number() over(partition by match_no order by win_lose) as rn,
		lead(goal_score) over(partition by match_no order by win_lose) as win
	FROM euro_cup_2016.match_details) as a
WHERE 
	rn=1
    AND 
    win-goal_score=1
    AND
    decided_by!='P'
