-- count number of students for every teacher
-- Ptolemy 3
-- Pluto   1
-- Euclid  0
select teacher.teacher_id, teacher.name, count(student_id) as stud_number
  from teacher 
  left join student_teacher 
    on teacher.teacher_id=student_teacher.teacher_id 
  group by teacher.teacher_id, teacher.name
  order by teacher.teacher_id;
