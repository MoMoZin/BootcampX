SELECT cohorts.name AS cohort, COUNT(assignment_submissions.id) as total_submissions
FROM cohorts
JOIN students
  ON cohorts.id = students.cohort_id
JOIN assignment_submissions
  ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;