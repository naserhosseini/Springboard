#Write a SQL query to find all available information about the players under contract to
#Liverpool F.C. playing for England in EURO Cup 2016.
SELECT 
	p.* 
FROM 
	euro_cup_2016.player_mast as p
WHERE
	p.playing_club= 'Liverpool' and p.team_id=
    (SELECT 
		country_id
	FROM
		euro_cup_2016.soccer_country
	WHERE
		country_name='England');