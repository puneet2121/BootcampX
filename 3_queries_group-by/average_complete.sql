SELECT students.name as student_name,avg(assignment_submissions.duration)
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY student_name
ORDER BY avg(assignment_submissions.duration) DESC;