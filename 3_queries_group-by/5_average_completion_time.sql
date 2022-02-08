SELECT students.name as student_name, avg(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS null
GROUP BY student
ORDER BY average_assignment_duration DESC