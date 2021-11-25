use bansach;
# select TenSach,TenNXB
# from tblsach join tblnxb on tblsach.MaNXB = tblnxb.MaNXB
# where (TenNXB ='kd')
# select TenSach,SoLuong,(SoLuong * price) as TongThu from tblsach
# order by  SoLuong desc;

select TenSach,TenTacGia
from tblsach,tbltacgia

    use quanlysinhvien;
select StudentName,SubName,Mark
from mark,subject,student
where mark.SubId=subject.SubId and Mark.StudentId=Student.StudentId

    use bansach;
select TenTacGia
from tblsach join tbltacgia t on tblsach.MaTacGia = t.MaTacGia
where NamXB='2020'
group by TenTacGia

