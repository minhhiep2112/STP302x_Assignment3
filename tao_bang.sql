use quanlynhansu;

-- tao bang nhanvien

create table nhanvien(

	MaNv int,
    HoTen text,
    ngaysinh date,
    Quequan text,
    GioiTinh text,
    SoDienThoai int,
    Dantoc text,
    TonGiao  text,
    ChucVu text,
    NgayVao date,
    MaPB varchar(10),
    bacluong varchar(10)
);

-- tao bang hopdonglaodong

create table hopdonglaodong(

	MaHD varchar(10),
    LoaiHD text,
    Tungay date,
    Denngay date,
    MaNv int
);

-- tao bang phongban

create table phongban(

	MaPB varchar(10),
    TenPB text,
    Mota text,
    DiaChi text,
    SoDienThoai int
);

-- tao bang bangluong

create table bangluong(

	bacluong varchar(10),
    LuongCoBan int,
    PhuCap int
);