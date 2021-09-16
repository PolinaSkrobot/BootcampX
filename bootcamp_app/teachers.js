const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect()
  .then(()=> {
    console.log('db connected');
  })
  .catch(err => console.log('db connection error:', err));
//_______Easy query______

pool.query(`
SELECT DISTINCT teachers.name as name, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2]}'
ORDER By teachers.name;
`)
  .then(res => {
    res.rows.forEach(teacher => {
      console.log(`${process.argv[2]}: ${teacher.name}`);
      
    });
  });