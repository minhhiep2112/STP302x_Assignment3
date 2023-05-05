describe bangluong;
describe phongban;
describe hopdonglaodong;
describe nhanvien;

-- bang luong
alter table bangluong 
add primary key (bacluong);

-- phong ban
alter table phongban add primary key (mapb);

-- hop dong lao dong
alter table hopdonglaodong add primary key (MaHD);

alter table hopdonglaodong add constraint fkey_mavn
foreign key (MaNv) references nhanvien(manv);

-- nhan vien
describe nhanvien;

alter table nhanvien add primary key (MaNv);

alter table nhanvien modify ngaysinh date, modify ngayvao DATE;

alter table nhanvien add constraint fkey_bacluong
foreign key (bacluong) references bangluong(bacluong);
alter table nhanvien add constraint fkey_mapb
foreign key (mapb) references phongban(mapb);


