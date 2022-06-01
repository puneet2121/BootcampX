SELECT cohort.name as cohort_name,count(students.id)
FROM cohort
INNER JOIN students
ON cohort.id = students.cohort_id

GROUP BY cohort_name
HAVING count(students.id) >= 18 
ORDER BY count(students.id);