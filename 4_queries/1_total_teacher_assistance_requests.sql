SELECT COUNT(assistance_requests.id), teachers.name
from assistance_requests
JOIN teachers ON assistance_requests.teacher_id = teachers.id
Where teachers.name = 'Waylon Boehm'
group by teachers.name;