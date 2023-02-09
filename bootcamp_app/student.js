const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];
const count = process.argv[3];

pool.query(`
SELECT students.id, students.name as student, cohorts.name as cohort
FROM students
JOIN cohorts 
  ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${cohort}%'
LIMIT ${count || 5};
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.student} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    });
  })
  .catch(err => console.error('query error', err.stack));