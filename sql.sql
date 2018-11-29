CREATE DATABASE AIS_DB
GO
USE AIS_DB
GO
CREATE TABLE TAIKHOAN
(
	id int,
	name varchar(50),
	pass varchar(50),
	id_admin int
)

GO
CREATE TABLE SANPHAM
(
	mssp int,
	ten_sp varchar(100),
	don_vi_tinh varchar(10)
)
GO
CREATE TABLE CUAHANG
(
	msch int,
	ten_ch varchar(100),
	dia_chi varchar(100)
)

GO
CREATE TABLE KHACHHANG
(
	mskh int,
	ho_ten varchar(50),
	dia_chi varchar(100),
	ms_thue varchar(20)
)

GO
CREATE TABLE PHIEUCHI
(
	stt_pc int,
	ng_chi datetime,
	so_tien_chi int,
	mskh int
)

GO
CREATE TABLE PHIEUTHU
(
	stt_pt int,
	ng_thu datetime,
	so_tien_thu int,
	mskh int
)

GO 
CREATE TABLE GOCPHIEU
(
	phieu_so int,
	msch int,
	mskh int,
	so_hd int,
	ng_lap datetime,
	ng_phhd datetime,
	thue_suat int,
	thue_gtgt int,
	tk_chinh varchar(15),
	ly_do varchar(200)
)

GO
CREATE TABLE CTHD
(
	phieu_so int,
	mssp int,
	tk_du varchar(15),
	slg int,
	don_gia int,
	thanh_tien int
)