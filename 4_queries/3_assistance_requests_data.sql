SELECT teachers.name as teacher, students.name as student,
assignments.name as assignment,completed_at - started_at as duration
FROM  assistance_requests
JOIN assignments ON assistance_requests.assignment_id = assignments.id
JOIN students ON assistance_requests.student_id = students.id
JOIN teachers on assistance_requests.teacher_id = teachers.id
order by duration;