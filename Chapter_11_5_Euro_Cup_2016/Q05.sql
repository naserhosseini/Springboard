#Write a SQL query to find the number of bookings that happened in stoppage time
SELECT 
	count(*) as  booking_in_stoppage
FROM 
	euro_cup_2016.player_booked 
WHERE 
	play_schedule='ST';