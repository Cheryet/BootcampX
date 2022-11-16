SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (started_at-completed_at) as duration 
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN teachers ON teacher_id = teachers.id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration DESC