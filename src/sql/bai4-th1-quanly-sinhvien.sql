use quanlysinhvien;
# SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
# FROM Student
# GROUP BY Address;

# select StudentName,avg(Mark)
# from mark
# join student s on s.StudentId = mark.StudentId
# group by StudentName, s.StudentId

# select StudentName
# from mark
# join student s on mark.StudentId = s.StudentId
# group by StudentName,s.StudentId
# having avg(Mark)>15

# select *
# from mark
# join student s on s.StudentId = mark.StudentId
# group by StudentName,s.StudentId
# having avg(mark)>= all (select avg(Mark) from mark )


select *
from student
         join mark s on s.StudentId = student.StudentId
group by StudentName,s.StudentId
having avg(mark)>= all (select avg(Mark) from mark group by s.StudentId)