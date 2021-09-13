SELECT students.name AS student,
       avg(assignment_submissions.duration) as avg_assign_duration,
       avg(assignments.duration) as avg_estimated_duration
FROM students 
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)

ORDER BY avg_assign_duration ASC;