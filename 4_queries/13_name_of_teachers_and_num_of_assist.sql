SELECT DISTINCT teachers.name as name, cohorts.name as cohort,
                 count(assistance_requests.id) as total_assistances 
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP By teachers.name, cohorts.name
ORDER By teachers.name;