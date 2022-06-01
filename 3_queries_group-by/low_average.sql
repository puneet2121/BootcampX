SELECT students.name as student_name,avg(assignment_submissions.duration),avg(assignments.duration)
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignments.id = assignments.id
WHERE students.end_date IS NULL
GROUP BY student_name
having avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg(assignment_submissions.duration) ;

