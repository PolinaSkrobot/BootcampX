SELECT COUNT(assistance_requests.id), students.name
from assistance_requests
JOIN students ON assistance_requests.student_id = students.id
Where students.name = 'Elliot Dickinson'
group by students.name;