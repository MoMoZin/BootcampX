const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2] || 'JUL02';

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN students
  ON students.id = student_id
JOIN cohorts
  ON cohorts.id = cohort_id
JOIN teachers
  ON teachers.id = teacher_id
WHERE cohorts.name = $1 
ORDER BY teacher;
`, [cohort])
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}: ${user.teacher}`);
    });
  })
  .catch(err => console.error('query error', err.stack));