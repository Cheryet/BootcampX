SELECT day, count(day) as total_assignmnets
FROM assignments 
GROUP BY day
ORDER BY day;
