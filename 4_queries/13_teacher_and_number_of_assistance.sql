SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(*) as total_assistances 
FROM assistance_requests
JOIN students
  ON students.id = student_id
JOIN cohorts
  ON cohorts.id = cohort_id
JOIN teachers
  ON teachers.id = teacher_id
WHERE cohorts.name = 'JUL02' 
GROUP BY teachers.name, cohorts.name
ORDER BY total_assistances DESC;