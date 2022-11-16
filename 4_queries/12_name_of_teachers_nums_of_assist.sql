SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT(teachers.id) as total_assists
FROM assistance_requests
JOIN teachers ON teacher_id=teachers.id
JOIN students ON student_id=students.id
JOIN cohorts ON cohort_id=cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohorts.name
ORDER BY teacher