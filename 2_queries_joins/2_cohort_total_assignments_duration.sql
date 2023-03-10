SELECT SUM(duration) AS total_duration
FROM cohorts
JOIN students
  ON cohorts.id = students.cohort_id
JOIN assignment_submissions 
  ON students.id = assignment_submissions.student_id
WHERE cohorts.name = 'FEB12'

--COMPASS WAY
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'FEB12';
