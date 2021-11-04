#Write a SQL query to find the country where the most assistant referees come from,
#and the count of the assistant referees.
SELECT 
	c.country_name,
    count(a.country_id) as count_asst_referee
FROM 
	euro_cup_2016.asst_referee_mast as a
INNER JOIN
	euro_cup_2016.soccer_country as c
ON
	a.country_id=c.country_id
GROUP BY
	a.country_id
ORDER BY
	count(a.country_id) desc