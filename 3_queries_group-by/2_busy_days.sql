SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY assignments.day
HAVING COUNT(*) >= 10;