USE master
GO
drop database AIS_DB
GO
CREATE DATABASE AIS_DB
GO
USE AIS_DB

GO
CREATE TABLE TAIKHOAN
(
	id int PRIMARY KEY,
	name varchar(50) NOT NULL,
	pass varchar(50) NOT NULL,
	id_admin int NOT NULL
)

GO
CREATE TABLE SANPHAM
(
	mssp varchar(20) PRIMARY KEY,
	ten_sp varchar(100) NOT NULL,
	don_vi_tinh varchar(10) NOT NULL
)

GO
CREATE TABLE CUAHANG
(
	msch int PRIMARY KEY,
	ten_ch varchar(100) NOT NULL,
	dia_chi varchar(100) NOT NULL
)

GO
CREATE TABLE KHACHHANG
(
	mskh int PRIMARY KEY,
	ho_ten varchar(50) NOT NULL,
	dia_chi varchar(100) NOT NULL,
	ms_thue varchar(20) NOT NULL
)

GO
CREATE TABLE PHIEUCHI
(
	stt_pc int PRIMARY KEY,
	ng_chi datetime NOT NULL,
	so_tien_chi int NOT NULL,
	mskh int NOT NULL
)
ALTER TABLE PHIEUCHI ADD FOREIGN KEY (mskh) REFERENCES KHACHHANG(mskh)

GO
CREATE TABLE PHIEUTHU
(
	stt_pt int PRIMARY KEY,
	ng_thu datetime NOT NULL,
	so_tien_thu int NOT NULL,
	mskh int NOT NULL
)
ALTER TABLE PHIEUTHU ADD FOREIGN KEY (mskh) REFERENCES KHACHHANG(mskh)

GO 
CREATE TABLE GOCPHIEU
(
	phieu_so int PRIMARY KEY,
	msch int NOT NULL,
	mskh int NOT NULL,
	so_hd int NOT NULL,
	ng_lap datetime NOT NULL,
	ng_phhd datetime ,
	thue_suat int NOT NULL,
	thue_gtgt int NOT NULL,
	tk_chinh varchar(15) NOT NULL,
	ly_do varchar(200)
)
ALTER TABLE GOCPHIEU ADD FOREIGN KEY (mskh) REFERENCES KHACHHANG(mskh)
ALTER TABLE GOCPHIEU ADD FOREIGN KEY (msch) REFERENCES CUAHANG(msch)

GO
CREATE TABLE CTHD
(
	phieu_so int,
	mssp varchar(20),
	tk_du varchar(15) NOT NULL,
	slg int NOT NULL,
	don_gia int NOT NULL,
	thanh_tien int NOT NULL,
	PRIMARY KEY (phieu_so, mssp)
)
ALTER TABLE CTHD ADD FOREIGN KEY (phieu_so) REFERENCES GOCPHIEU(phieu_so)
ALTER TABLE CTHD ADD FOREIGN KEY (mssp) REFERENCES SANPHAM(mssp)


INSERT INTO CUAHANG VALUES 
(01, 'Kho Bia', '96-98-100 Nguyễn An Ninh, Q. Ninh Kiều, TP. Cần Thơ'),
(02, 'Kho Xe & phụ tùng', '96-98-100 Nguyễn An Ninh, Q. Ninh Kiều, TP. Cần Thơ' ),
(03, 'Kho Vị Thanh', '135 đường 3 tháng 2, Thị xã Vị Thanh, tỉnh Hậu Giang'),
(04, 'Kho Thực Phẩm Sữa', '96-98-100 Nguyễn An Ninh, Q. Ninh Kiều, TP. Cần Thơ'),
(05, 'Kho Thực phẩm các loại', '96-98-100 Nguyễn An Ninh, Q. Ninh Kiều, TP. Cần Thơ')

INSERT INTO SANPHAM VALUES
('010001', 'Globe','Gói'),
('010002', 'Melia hộp','Gói'),
('010003', 'Vĩnh Hội Hộp','Gói'),
('010004', 'Đà Lạt','Gói'),
('010005', 'Đà Lạt XK','Gói'),
('010006', 'Vitab','Gói'),
('010007', 'Du lịch cột','Gói'),
('010008', 'Du lịch hộp','Gói'),
('010009', '475','Gói'),
('010010', 'Melia mềm (The)','Gói'),
('010011', 'Melia hộp (The)','Gói'),
('010012', 'Era','Gói'),
('010013', 'Vitab Premium','Gói'),
('010014', 'Sài Gòn Xanh','Gói'),
('010015', 'Sài Gòn The','Gói'),
('010016', 'Sài Gòn Hộp','Gói'),
('010017', 'Era the','Gói'),
('010018', 'Era tím','Gói'),
('010019', 'Đà lạt hộp (XK)','Gói'),
('010020', 'Souvenir','Gói'),
('010025', 'Fasol mềm','Gói'),
('010027', 'Fasol hộp','Gói'),
('010029', 'Era nâu','Gói'),
('010101', 'Globe','gói'),
('010102', 'Phenix đen','gói'),
('010103', 'Souvenir hộp','gói'),
('010104', 'Super','gói'),
('010105', 'Memory đỏ','gói'),
('010106', 'Memory xanh','gói'),
('010107', 'Boy Boy','gói'),
('010108', 'Tây Đô','gói'),
('010109', 'Hoà Bình','gói'),
('010110', 'SG','gói'),
('010111', 'Stars','gói'),
('010112', 'Era','gói'),
('010113', 'Globe hộp','gói'),
('010114', 'Boy Boy (the)','gói'),
('010115', 'Vinataba','Gói'),
('010116', 'Fasol','Gói'),
('010117', 'Era the','gói'),
('010118', 'Era Tím','Gói'),
('010119', 'Jupiter','Gói'),
('010120', 'Souvernir đỏ','Gói'),
('010121', 'SG Vàng','Gói'),
('010122', 'Fasol','Gói'),
('010123', 'Tây Đô','Gói'),
('010124', 'Globe hộp','Gói'),
('010125', 'Fasol','Gói'),
('010126', 'Tây Đô','Gói'),
('010127', 'Fasol hộp','Gói'),
('010129', 'Era nâu','Gói'),
('010201', 'Vỉnh hội Lux','gói'),
('010202', 'Đà lạt NT','gói'),
('010203', 'Đà lạt hộp','gói'),
('010204', 'Du lịch cột','gói'),
('010205', '475 đầu lọc','gói'),
('010207', 'Mélia mềm','gói'),
('010208', 'Vitab','gói'),
('010209', 'Vỉnh Hội đầu lọc','gói'),
('010210', 'Vĩnh Hội Hộp','gói'),
('010211', 'Đà lạt đỏ L1','gói'),
('010212', 'Sài Gòn xanh','gói'),
('010213', 'vitab mềm','gói'),
('010214', 'vitab hộp','gói'),
('010215', 'Sài Gòn Vàng','gói'),
('010216', 'Du Lịch hộp','gói'),
('010217', 'Đà lạt xanh','Gói'),
('010218', 'Sài Gòn Menthol','Gói'),
('010219', 'Thống Nhất','Gói'),
('010220', 'Jof','Gói'),
('010221', 'SAVI','Gói'),
('010222', 'Mélia hộp','Gói'),
('010223', 'Sài Gòn Hộp','Gói'),
('010225', 'Fasol','Gói'),
('010226', 'Tây Đô','Gói'),
('010227', 'Fasol hộp','Gói'),
('010229', 'Era nâu','Gói'),
('010301', 'Trị An','gói'),
('010302', 'Bastos xanh *','gói'),
('010303', 'Bastos Vàng','gói'),
('010304', 'Bastos đỏ','gói'),
('010305', 'Bastos xanh','gói'),
('010306', 'Bastos The','Gói'),
('010307', 'Trị An','Gói'),
('010308', 'Bastos xanh','Gói'),
('010309', 'Bastos đỏ','Gói'),
('010310', 'Bastos the','Gói'),
('010401', 'Globe','gói'),
('010402', 'Phenix','Gói'),
('010403', 'Souvenir','Gói'),
('010404', 'Globe hộp','Gói'),
('010405', 'Memory đỏ','Gói'),
('010410', 'SG','Gói'),
('010411', '',''),
('010412', 'Era','Gói'),
('010417', 'Era the','Gói'),
('010418', 'Era Tím','Gói'),
('010419', 'Jupiter','Gói'),
('010420', 'Souvernir đỏ','Gói'),
('010421', 'SG Vàng','Gói'),
('010425', 'Fasol','Gói'),
('010426', 'Tây Đô','Gói'),
('010427', 'Fasol hộp','Gói'),
('010428', 'Catus','Gói'),
('010429', 'Era nâu','Gói'),
('010501', 'Vil','gói'),
('010502', '333 đầu lọc','gói'),
('010503', 'Vĩnh Hội hộp','gói'),
('010505', 'Đà Lạt hộp','Gói'),
('010507', 'Du Lịch cột','Gói'),
('010508', 'Du lịch hộp','Gói'),
('010510', 'Melia mềm','Gói'),
('010511', 'Melia hộp','Gói'),
('010513', 'Vitab hộp','Hộp'),
('010514', 'Sài gòn xanh','Gói'),
('010517', 'Sài Gòn hộp thiếc','Gói'),
('010518', 'Sài Gòn đỏ','Gói'),
('010519', 'Đà Lạt hộp','Gói'),
('010520', 'Melia hộp lớn','Gói'),
('010521', 'Vitab vàng','Gói'),
('010601', 'Globe','gói'),
('010602', 'Melia hộp','Gói'),
('010603', 'Souvenir hộp','Gói'),
('010604', 'Đà lạt','Gói'),
('010605', 'Paladin','gói'),
('010606', 'Vitab','gói'),
('010607', 'Melia mềm the','gói'),
('010610', 'Đà lạt XK','goi'),
('010612', 'Era','gói'),
('010617', 'Era the','Gói'),
('010618', 'Era tím (tiger)','Gói'),
('010619', 'Đà Lạt xanh','Gói'),
('010620', 'Souvenir Tím','gói'),
('010625', 'fasol','gói'),
('010626', 'Tây Đô','Gói'),
('010627', 'Fasol Hộp','Gói'),
('010628', 'Coustener','Gói'),
('010629', 'Era nâu','gói'),
('010706', '555 (quà tết)','Hộp'),
('010707', '555 hộp thiếc','Hộp'),
('010708', '555 lights hộp thiếc','Hộp'),
('010801', 'Melia tím','gói'),
('010802', 'Hửu Nghị','Gói'),
('013405', '40530-KTL-641 sên','Cái'),
('0190201', 'Thuốc lá',''),
('02', 'Bia các loại',''),
('020001', 'Bia Tiger lon','thùng'),
('020002', 'Bia Tiger lon lẻ','lon'),
('020003', 'Bia Tiger chai 330ml','kết'),
('020004', 'Bia Tiger chai lẻ 330ml','chai'),
('020005', 'Bia Tiger chai 640ml','kết'),
('020006', 'Bia Tiger chai lẻ 640ml','chai'),
('020007', 'Bia Heineken lon 330ml','thùng'),
('020008', 'Bia Heineken lon lẻ','lon'),
('020009', 'Bia Heineken chai 330ml','kết'),
('020010', 'Bia Heineken chai lẻ 330ml','chai'),
('020011', 'Bia Tiger Draft','Bình'),
('020012', 'Bia Coors light','kết'),
('020013', 'Bia Coor (chai lẻ)','Chai'),
('020014', 'Bivina (carton)','Thùng'),
('020015', 'Bivina Két nhựa','Két'),
('020016', 'Bivina lon','Thùng'),
('020017', 'Bia BIVINA (chai lẻ)','Chai'),
('020018', 'BIVINA lon (lẻ)','Lon'),
('020019', 'Bia BIVINA chai','Két'),
('020020', 'Bivina chai lẻ','chai'),
('020021', 'Heinken chai (thùng giấy)','Thùng'),
('020022', 'Bia Tiger PT Crystal','Kết'),
('020023', 'Bia Tiger Crystal (chai lẻ)','chai'),
('020024', 'Foster k/mai','ket'),
('020025', 'Bia Heineken Draft','Bình'),
('020026', 'Bia Larue Draught','Bình'),
('020030', 'Bia Strongbow lon','Thung'),
('020077', 'Bia Heinenken 24 lon cao','Thùng'),
('020078', 'Bia Heineken lon cao lẻ','lon'),
('020101', 'Bia Tiger lon*','Thùng'),
('020103', 'Bia Tiger chai 330ml*','kết'),
('020104', 'Tiger chai 33 lẻ','Chai'),
('020105', 'Bia Tiger chai 640ml*','kết'),
('020106', 'Tiger 64 chai lẻ','Chai'),
('020107', 'Bia Heineken lon*','Thùng'),
('020109', 'Bia Heineken chai 330ml*','kết'),
('020110', 'Heinken chai lẻ','Chai'),
('020116', 'Bivina lon','Thùng'),
('020119', 'Bia Bivina chai*','Kết'),
('020120', 'Bivina chai lẻ','Chai'),
('020201', 'Bia Tiger lon','Thùng'),
('020202', 'Tiger lon lẻ','lon'),
('020203', 'Bia Tiger 33','Kết'),
('020204', 'Bia Tiger 33 lẻ','Chai'),
('020205', 'Bia Tiger 64','Kết'),
('020206', 'Bia Tiger 64 lẻ','Chai'),
('020207', 'Bia Heinken lon','Thùng'),
('020208', 'Bia Heinken lon lẻ','Lon'),
('020209', 'Bia Heinken chai','Kết'),
('020210', 'Bia Heinken chai lẻ','Chai'),
('020211', 'Bia Desperados lon','Thung'),
('020216', 'Bivina lon','Thùng'),
('020217', 'Bivina lon lẻ','Lon'),
('020219', 'Bivina chai','Kết'),
('020220', 'Bivana chai lẻ','Chai'),
('020221', 'Bia Heinken 12 lon','Thùng'),
('020222', 'Bia Crystal','Kết'),
('020223', 'Bia Crystal chai lẻ','Chai'),
('020261', 'Bia Heineken 16 lon','Thung'),
('020281', 'Bia Larue 18 lon','Thung'),
('020301', 'Bia BGI','Kết'),
('020302', 'Bia Larue','Kết'),
('020303', 'Bia Larue chai lẻ','chai'),
('020304', 'Bia BGI lon','Thùng'),
('020305', 'Bia Larue Export (Chai Xanh)','Kết'),
('020306', 'Larue chai (thùng)','Thùng'),
('020307', 'Bia BGI chai','Kết'),
('020308', 'BIa BGI lon','Thùng'),
('020309', 'Bia Larue','Kết'),
('020310', 'Bia BGI chai lẻ','Chai'),
('020311', 'Bia Larue Export lon','Thùng'),
('020312', 'Larue Export chai lẻ','Chai'),
('020313', 'BGI lon lẻ','Lon')

