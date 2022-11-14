SELECT day, count(day) as total_assignmnets
FROM assignments 
GROUP BY day
HAVING count(day) >= 10
ORDER BY day;
