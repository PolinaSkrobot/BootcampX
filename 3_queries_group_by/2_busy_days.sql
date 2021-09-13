SELECT day, count(id) AS total_assign
FROM assignments
GROUP BY assignments.day
HAVING count(id) >= 10
ORDER BY day;