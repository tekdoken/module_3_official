use quanlysinhvien;
# select *
# from subject
# group by SubId
# having max(Credit)>= all (select Credit from subject )

# select *
# from subject
# join mark m on subject.SubId = m.SubId
# group by subject.SubId
# having max(Mark)>= all (select Mark from mark)

select *,avg(mark)
from student
join mark m on student.StudentId = m.StudentId
group by m.StudentId
order by avg(Mark) desc

