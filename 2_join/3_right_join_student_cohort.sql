-- OUTER JOIN

-- The RIGHT OUTER JOIN will return all cohorts, even ones without any students enrolled.

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students 
RIGHT JOIN cohorts 
  ON cohorts.id = cohort_id;
