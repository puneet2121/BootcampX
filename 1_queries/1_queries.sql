SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;

-- Number of students in choort 
SELECT count(cohort_id)
FROM students
WHERE cohort_id IN (1,2,3);

--contact details
SELECT name, id , cohort_id
FROM students
WHERE phone IS NULL OR email IS NULL;

--NON gmail students

SELECT name, email, id, cohort_id
FROM students
WHERE phone IS NULL AND email NOT LIKE '%gmail.com';

-- Currently endrolled students

SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

-- Graduates without a linked github account

SELECT name, email, phone 
FROM students
WHERE github IS NULL AND end_date IS NOT NULL;