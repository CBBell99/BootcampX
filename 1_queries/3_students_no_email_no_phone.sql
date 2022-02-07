SELECT name, id, cohort_id 
FROM students
WHERE phone is null OR 
email IS null;