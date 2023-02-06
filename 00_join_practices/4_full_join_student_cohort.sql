-- OUTER JOIN

-- The FULL OUTER JOIN will return all cohorts and all students, even when there is no match.
-- An OUTER JOIN will join the tables similarly to an INNER JOIN but will return all results for one of the tables, even when the join condition is not met. 
-- For any row where the condition was not met, a row is added with NULL data.

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students 
FULL JOIN cohorts 
  ON cohorts.id = cohort_id;
