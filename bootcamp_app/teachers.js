
const { Pool } =require('pg');

const pool = new Pool({
  user: 'corbin',
  host: 'localhost',
  database: 'bootcampx'
})


pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort 
FROM assistance_requests
JOIN teachers ON teacher_id=teachers.id
JOIN students ON student_id=students.id
JOIN cohorts ON cohort_id=cohorts.id
WHERE cohorts.name = '${process.argv[2]}'
ORDER BY teacher
`)
.then((res) => {
  res.rows.forEach((teacher) => {
    console.log(`${teacher.cohort}: ${teacher.teacher}`)
  })
  
})