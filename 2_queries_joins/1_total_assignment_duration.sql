SELECT sum(assignment_submissions.duration) as total_duration 
FROM assignment_submissions 
JOIN students on students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';
