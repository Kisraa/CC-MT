
create database QuanLyKho
use QuanLyKho

create table TheLoaiSP
(
maloaisp int identity primary key,
tenloaisp nvarchar(30)
)

create table SanPham
(
masp int identity(1,1) primary key,
maloaisp int references TheLoaiSP(maloaisp),
tensp nvarchar(100) not null,
hinh varchar(50),
giaban decimal(18,0),
ngaycapnhat smalldatetime,
soluongton int
)

create table KhachHang
(
makh int identity(1,1) primary key,
hoten nvarchar(50),
tendangnhap varchar(20),
matkhau varchar(10),
email varchar(50),
diachi nvarchar(100),
dienthoai varchar(15),
ngaysinh date
)

create table DonHang
(
madon int identity(1,1) primary key,
thanhtoan bit,
giaohang bit,
ngaydat date,
ngaygiao date,
makh int references KhachHang(makh)
)

create table ChiTietDonHang
(
madon int references DonHang(madon),
masp int references SanPham(masp),
soluong int,
gia decimal(18,0),
primary key(madon,masp)
)


