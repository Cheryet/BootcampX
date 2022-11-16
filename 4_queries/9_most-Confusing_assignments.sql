SELECT assistance_requests.assignment_id as id, name, day, chapter, COUNT(assistance_requests.id) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id=assistance_requests.assignment_id
GROUP BY assistance_requests.assignment_id, name, day, chapter
ORDER BY total_requests DESC