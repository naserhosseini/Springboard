#Write a SQL query to find the number of matches that were won by penalty shootout.
SELECT  
	count(distinct match_no) as number_matches_penalty_shootout
FROM 
	euro_cup_2016.penalty_shootout;