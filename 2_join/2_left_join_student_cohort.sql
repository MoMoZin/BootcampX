-- OUTER JOIN

-- The LEFT OUTER JOIN will return all of the students, even ones without a cohort_id.

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students 
LEFT JOIN cohorts 
  ON cohorts.id = cohort_id;