SELECT name, email, phone 
FROM students
WHERE github is null
AND end_date IS NOT NULL;