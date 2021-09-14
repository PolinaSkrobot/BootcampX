SELECT cohorts.name as name, avg(completed_at-started_at) as average_assistance_time
from cohorts
join students on cohorts.id=students.cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
group by cohorts.name
order by average_assistance_time;