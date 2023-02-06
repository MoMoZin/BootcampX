-- GROUP BY allows us to combine the results based on a column so an aggregate can be applied to each group.
-- HAVING allows us to filter our results based on the result of an aggregate function.

SELECT students.name as student, count(*) AS total_submission
FROM assignment_submissions
JOIN students
  ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(*) <100;