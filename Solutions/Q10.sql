with teacher_zhang_san_course as (SELECT CId
FROM   Teacher
       FULL OUTER JOIN
       Course
       ON Teacher.TId = Course.TId
where Tname = 'zhang san'),

student_in_zhang_san_course as (select Student.SId
from Student
full join SC on Student.SId = SC.SId
where SC.CId in (select CId from teacher_zhang_san_course)
)

select *
from Student
where SId not in (select SId from student_in_zhang_san_course)