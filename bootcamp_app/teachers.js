const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
const args = process.argv.slice(2);

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohort.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohort ON cohort_id = cohort.id
WHERE cohort.name = '${args[2] || 'JUL02'}'
ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});