SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignment_submissions.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions on students.id = student_id
JOIN assignments on assignment_id = assignments.id
WHERE students.end_date IS NOT null
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration DESC;