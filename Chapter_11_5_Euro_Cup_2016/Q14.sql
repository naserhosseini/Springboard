#Write a SQL query to find referees and the number of bookings they made for the
#entire tournament. Sort your answer by the number of bookings in descending order.
SELECT 
	r.referee_name,
    count(p.match_no) as total_booked
FROM 
	euro_cup_2016.player_booked as p
INNER JOIN
	euro_cup_2016.match_mast as m
ON
	p.match_no=m.match_no
INNER JOIN
	euro_cup_2016.referee_mast as r
ON
	r.referee_id=m.referee_id
GROUP BY
	r.referee_name
ORDER BY
	count(p.match_no) desc
	