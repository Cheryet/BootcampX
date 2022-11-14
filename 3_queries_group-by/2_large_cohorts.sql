SELECT cohorts.name as cohort_name, count(cohort_id) as student_count
FROM cohorts
JOIN students on cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(cohort_id) >= 18
ORDER BY student_count