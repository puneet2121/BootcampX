SELECT cohort.name as cohort_name,count(assignment_submissions.id)
FROM cohort
INNER JOIN students
ON cohort.id = students.cohort_id
INNER JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
GROUP BY cohort_name
ORDER BY count(assignment_submissions.id) DESC;