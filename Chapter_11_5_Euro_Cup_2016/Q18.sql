#Write a SQL query to find the highest number of foul cards given in one match.
SELECT 
	max(a.number_of_cards) as Max_Number_of_cards
FROM
	(SELECT 
		count(match_no) as Number_of_cards
	FROM 
		euro_cup_2016.player_booked
	GROUP BY
		match_no
	ORDER BY
		count(match_no) desc) as a