-- Assistance Requests Data
SELECT teachers.name AS teacher, students.name AS student, assignments.name as assignement, SUM(completed_at - started_at) as duration
FROM assistance_requests 
JOIN teachers
ON teachers.id = teacher_id
JOIN students
ON students.id = student_id
JOIN assignments
ON assignments.id = assignment_id
GROUP BY teachers.name, students.name, assignments.name
ORDER BY duration;