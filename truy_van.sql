-- câu 1

select MaNv as 'Mã Nhân Viên', hoten as 'Họ Tên', ngaysinh as 'Ngày Sinh', quequan as 'Quê Quán',
n.sodienthoai as 'Số Điện Thoại', chucvu as 'Chức Vụ', ngayvao as 'Ngày Vào Công Ty', phongban.tenpb as 'Tên bộ phận'
from nhanvien n join phongban on n.MaPB = phongban.mapb
where ngayvao >= '2021-8-3';


-- câu 2

select n.MaNv as 'Mã Nhân Viên', n.hoten as 'Họ Tên', n.ngaysinh as 'Ngày Sinh', n.quequan as 'Quê Quán',
n.sodienthoai as 'Số Điện Thoại', n.chucvu as 'Chức Vụ', n.ngayvao as 'Ngày Vào Công Ty',
format(b.luongcoban,0) as 'Lương cơ bản', format(b.phucap,0) as 'Phụ cấp'
from hopdonglaodong h join nhanvien n on n.manv = h.manv
join bangluong b on n.bacluong = b.bacluong
where h.loaihd = 'Chính th?c' and h.tungay >= '2018-03-01';


-- câu 3

select MaNv as 'Mã Nhân Viên', hoten as 'Họ Tên', ngaysinh as 'Ngày Sinh', quequan as 'Quê Quán',
n.sodienthoai as 'Số Điện Thoại', chucvu as 'Chức Vụ', ngayvao as 'Ngày Vào Công Ty',
format(luongcoban,0) as 'Lương cơ bản', format(phucap,0) as 'Phụ cấp'
from nhanvien n join bangluong b on n.bacluong = b.bacluong
where mapb = 'PB02' and ChucVu = 'Trý?ng Ph?ng'
;

-- câu 4

select p.tenpb as 'Tên phòng ban', count(manv) as 'Số lượng nhân viên' 
from nhanvien n join phongban p on n.mapb = p.mapb
where n.mapb = 'PB03'
group by p.tenpb;

-- câu 5

select MaNv as 'Mã Nhân Viên', hoten as 'Họ Tên', ngaysinh as 'Ngày Sinh', quequan as 'Quê Quán',
n.sodienthoai as 'Số Điện Thoại', chucvu as 'Chức Vụ', ngayvao as 'Ngày Vào Công Ty', phongban.tenpb as 'Tên bộ phận',
(year(current_date()) - year(ngayvao)) as 'Số năm làm việc'
from nhanvien n join phongban on n.MaPB = phongban.mapb
where (year(current_date()) - year(ngayvao)) > 4;

-- câu 6

update  nhanvien set ngaysinh = '1988-03-15' where manv = 31019;

select MaNv as 'Mã Nhân Viên', hoten as 'Họ Tên', ngaysinh as 'Ngày Sinh', quequan as 'Quê Quán',
n.sodienthoai as 'Số Điện Thoại', chucvu as 'Chức Vụ', ngayvao as 'Ngày Vào Công Ty', phongban.tenpb as 'Tên bộ phận'
from nhanvien n join phongban on n.MaPB = phongban.mapb
where manv = 31019;

-- câu 7

select MaNv as 'Mã Nhân Viên', hoten as 'Họ Tên', ngaysinh as 'Ngày Sinh', quequan as 'Quê Quán',
n.sodienthoai as 'Số Điện Thoại', chucvu as 'Chức Vụ', ngayvao as 'Ngày Vào Công Ty', phongban.tenpb as 'Tên bộ phận'
from nhanvien n join phongban on n.MaPB = phongban.mapb
where substr(hoten, -3, 3) = 'Nam';

-- câu 8

SET foreign_key_checks = 0;
delete from nhanvien where manv = '31030';
SET foreign_key_checks = 1;

select MaNv as 'Mã Nhân Viên', hoten as 'Họ Tên', ngaysinh as 'Ngày Sinh', quequan as 'Quê Quán',
n.sodienthoai as 'Số Điện Thoại', chucvu as 'Chức Vụ', ngayvao as 'Ngày Vào Công Ty', phongban.tenpb as 'Tên bộ phận'
from nhanvien n join phongban on n.MaPB = phongban.mapb
where manv = '31030';

-- câu 9

select p.tenpb as 'Tên phòng ban', quequan as 'Tỉnh thành', count(manv) as 'Số lượng nhân viên' 
from nhanvien n join phongban p on n.MaPB = p.mapb
GROUP BY p.TenPB, quequan ;

-- câu 10

select p.tenpb as 'Tên phòng ban', format(avg(b.luongcoban + b.phucap),0)  as 'Lương trung bình'
from phongban p join nhanvien n on p.mapb = n.mapb
join bangluong b on b.bacluong = n.bacluong
GROUP BY p.tenpb;

