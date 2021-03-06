CREATE TABLE cohort (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255), start_date DATE, 
  end_date DATE,
  cohort_id INTEGER REFERENCES cohort(id) ON DELETE CASCADE);




SELECT students.name as student_name, email, cohort.name as cohort_name
FROM students RIGHT OUTER JOIN cohort ON cohort.id = cohort_id;



SELECT students.name as student_name, email, cohort.name as cohort_name
FROM students FULL OUTER JOIN cohort ON cohort.id = cohort_id;

SELECT students.name as student_name, email, cohort.name as cohort_name
FROM students INNER JOIN cohort ON cohort.id = cohort_id;