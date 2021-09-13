SELECT day, count(id) AS total_assign
FROM assignments
GROUP BY assignments.day
ORDER BY day;