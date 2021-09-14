SELECT avg(total_duration)
from (
  SELECT cohorts.name as name, sum(completed_at-started_at) as total_duration
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY total_duration
) as  average_total_duration ;