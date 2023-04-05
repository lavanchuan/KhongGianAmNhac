-- Music Space


-- 
drop database if exists kgan;

create database kgan;

use kgan;

-- table adminInfo
create table adminInfo(
	email		varchar(256) primary key,
	nameAdmin	varchar(256),
	address		varchar(256),
	phone		varchar(256)
);

insert into adminInfo value("admin@gmail.com", "La Văn Chuân", "Thừa Thiên Huế", "0363196215");

-- table admin
create table admin(
	email		varchar(256) primary key references adminInfo,
	password	varchar(256)
);

-- admin
insert into admin value("admin@gmail.com", "admin");

-- table listener
create table listener(
	email			varchar(256) primary key,
	nameListener	varchar(256) ,
	birthday		date ,
	address			varchar(256)
);

-- insert listener
insert into listener values ('chuan@gmail.com', 'Chuân', '2000/06/06', 'Huế'),
	('binh@gmail.com', 'Bình', '2000/12/06', 'Huế'),
	('vinh@gmail.com', 'Vinh', '2002/12/20', 'Đà Nẵng');

-- table account
create table account(
	email			varchar(256) unique,
	password		varchar(256),
	constraint foreign key (email) references listener(email)
);

-- insert account
insert into account values ('chuan@gmail.com', 'admin'),
	('vinh@gmail.com', 'admin');

-- table Singer
create table singer(
	email		varchar(256) primary key,
	nameSinger	varchar(256) ,
	birthday	date default '2000/1/1',
	address		varchar(256) ,
	imageSinger	varchar(256) default 'image.png'
);
-- data singer
-- insert into singer(email, nameSinger, birthday, address, imageSinger) values
-- 	('hieu@gmail.com', 'Hồ Quang Hiếu', '1986/09/20', 'Buôn Ma Thuộc', 'HoQuangHieu.png'),
-- 	('dan@gmail.com', 'Chi Dân', '1989/06/02', 'Kiên Giang', 'ChiDan.png'),
-- 	('hung@gmail.com', 'Hồ Gia Hùng', '1989/06/02', 'An Giang', 'HoGiaHung.png'),
-- 	('kiet@gmail.com', 'Lý Tuấn Kiệt', '1989/06/02', 'Bình Dương', 'LyTuanKiet.png'),
-- 	('tam@gmail.com', 'Mỹ Tâm', '1989/06/02', 'Đà Nẵng', 'MyTam.png'),
-- 	('thanh@gmail.com', 'Hồng Thanh', '1989/06/02', 'Đồng Tháp', 'HongThanh.png'),
-- 	('tram@gmail.com', 'Thiều Bảo Trâm', '1989/06/02', 'Thanh Hóa', 'ThieuBaoTram.png'),
-- 	('nhan@gmail.com', 'Trúc Nhân', '1989/06/02', 'Bình Định', 'TrucNhan.png'),
-- 	('viet@gmail.com', 'Khang Việt', '1989/06/02', 'Hồ Chí Minh', 'KhangViet.png'),
-- 	('hoc@gmail.com', 'Nguyễn Thái Học', '2000/04/30', 'Hà Tĩnh', 'NguyenThaiHoc.png')
-- 	;

INSERT INTO `singer` (`email`, `nameSinger`, `birthday`, `address`, `imageSinger`) VALUES
('dan1@gmail.com', 'Lê Nguyễn Trung Đan', '1988-05-24', 'Hồ Chí Minh', 'Binz.png'),
('dan@gmail.com', 'Chi Dân', '1989-06-02', 'Kiên Giang', 'ChiDan.png'),
('dat@gmail.com', 'Nguyễn Tấn Đạt', '1995-07-14', 'Hồ Chí Minh', 'DatG.png'),
('hien@gmail.com', 'Hiền Hồ', '1997-02-26', 'Hồ Chí Minh', 'HienHo.png'),
('hieu@gmail.com', 'Hồ Quang Hiếu', '1986-09-20', 'Buôn Ma Thuộc', 'HoQuangHieu.png'),
('hoc@gmail.com', 'Nguyễn Thái Học', '2000-04-30', 'Hà Tĩnh', 'NguyenThaiHoc.png'),
('hung@gmail.com', 'Hồ Gia Hùng', '1989-06-02', 'An Giang', 'HoGiaHung.png'),
('kiet@gmail.com', 'Lý Tuấn Kiệt', '1989-06-02', 'Bình Dương', 'LyTuanKiet.png'),
('nhan@gmail.com', 'Trúc Nhân', '1989-06-02', 'Bình Định', 'TrucNhan.png'),
('son@gmail.com', 'Nguyễn Hoàng Sơn', '1992-09-10', 'Hà Nội', 'Sobin.png'),
('tam@gmail.com', 'Mỹ Tâm', '1989-06-02', 'Đà Nẵng', 'MyTam.png'),
('thanh@gmail.com', 'Hồng Thanh', '1989-06-02', 'Đồng Tháp', 'HongThanh.png'),
('thien@gmail.com', 'Vũ Đức Thiện', '1991-04-08', 'Hà Nội', 'Thien.png'),
('tram@gmail.com', 'Thiều Bảo Trâm', '1989-06-02', 'Thanh Hóa', 'ThieuBaoTram.png'),
('viet@gmail.com', 'Khang Việt', '1989-06-02', 'Hồ Chí Minh', 'KhangViet.png');

-- table Composer
create table composer(
	email 	varchar(256) primary key,
	nameComposer	varchar(256) ,
	birthday	date ,
	address		varchar(256) ,
	imageComposer	varchar(256) default 'image.png'
);

-- table composer
-- insert into composer(email, nameComposer, birthday, address, imageComposer) values
-- 	('dan@gmail.com', 'Chi Dân', '1989/06/02', 'Kiên Giang', 'ChiDan.png'),
-- 	('vu@gmail.com', 'Nguyên Đình Vũ', '1991/03/17', 'Hồ Chí Minh', 'NguyenDinhVu.png'),
-- 	('anh@gmail.com', 'Quốc Anh', '1991/03/17', 'Hồ Chí Minh', 'QuocAnh.png'),
-- 	('thanh@gmail.com', 'Hồng Thanh', '1991/03/17', 'Đồng Tháp', 'HongThanh.png')
-- 	;

-- insert into composer(email, nameComposer) values
-- 	('vi@gmail.com', 'Nguyễn Vĩ'),
-- 	('huong@gmail.com', 'Chí Hướng'),
-- 	('other@gmail.com', 'Other')
-- 	;

INSERT INTO `composer` (`email`, `nameComposer`, `birthday`, `address`, `imageComposer`) VALUES
('anh@gmail.com', 'Quốc Anh', '1991-03-17', 'Hồ Chí Minh', 'QuocAnh.png'),
('dan1@gmail.com', 'Lê Nguyễn Trung Đan', '1988-05-24', 'Hồ Chí Minh', 'Binz.png'),
('dan@gmail.com', 'Chi Dân', '1989-06-02', 'Kiên Giang', 'ChiDan.png'),
('dat@gmail.com', 'Nguyễn Tấn Đạt', '1995-07-14', 'Hồ Chí Minh', 'DatG.png'),
('hung@gmail.com', 'Nguyễn Khắc Hưng', '1992-12-12', 'Yên Bái', 'Hung.png'),
('huong@gmail.com', 'Chí Hướng', NULL, NULL, 'image.png'),
('nam@gmail.com', 'Bùi Công Nam', '1994-08-03', 'Đắk Lắk', 'Nam.png'),
('other@gmail.com', 'Other', NULL, NULL, 'image.png'),
('thanh@gmail.com', 'Hồng Thanh', '1991-03-17', 'Đồng Tháp', 'HongThanh.png'),
('thien@gmail.com', 'Vũ Đức Thiện', '1991-04-08', 'Hà Nội', 'Thien.png'),
('tu@gmail.com', 'Vương Anh Tú', '1989-09-16', ' Hồ chí Minh', 'VuongAnhThu.png'),
('vi@gmail.com', 'Nguyễn Vĩ', NULL, NULL, 'image.png'),
('vu@gmail.com', 'Nguyên Đình Vũ', '1991-03-17', 'Hồ Chí Minh', 'NguyenDinhVu.png');

-- table Song
create table song(
	idSong			varchar(256) primary key,
	nameSong		varchar(256) ,
	emailSinger		varchar(256) ,
	emailComposer	varchar(256) ,
	srcSong			varchar(256),
	releaseTime		date ,
	numLike			int default 0,
	numComment		int default 0,
	numDownload		int default 0,
	constraint foreign key (emailSinger) references singer(email),
	constraint foreign key (emailComposer) references composer(email)
);

-- table song
-- insert into song(idSong, nameSong, emailSinger, emailComposer, srcSong) values
-- 	('BH001', 'Không Cảm Xúc', 'hieu@gmail.com', 'vu@gmail.com', 'kcx'),
-- 	('BH002', 'Anh Không Sao Đâu', 'dan@gmail.com', 'dan@gmail.com', 'aksd'),
-- 	('BH003', 'Cây Đàn Sinh Viên', 'tam@gmail.com', 'anh@gmail.com', 'cdsv'),
-- 	('BH004', 'Đám Cưới Nha', 'thanh@gmail.com', 'thanh@gmail.com', 'dcn'),
-- 	('BH005', 'Tay Bế Tay Bồng', 'hoc@gmail.com', 'vi@gmail.com', 'tbtb'),
-- 	('BH006', 'Kiếp Này Em Gả Cho Anh', 'hoc@gmail.com', 'huong@gmail.com', 'knegca'),
-- 	('BH007', 'Anh Chưa Đủ Tư Cách', 'kiet@gmail.com', 'other@gmail.com', 'acdtc'),
-- 	('BH008', 'Ai Thật Lòng Thương Em', 'kiet@gmail.com', 'other@gmail.com', 'atlte'),
-- 	('BH009', 'Giấu Nước Mắt', 'kiet@gmail.com', 'other@gmail.com', 'gnm'),
-- 	('BH010', 'Ngã Tư Đường', 'hieu@gmail.com', 'other@gmail.com', 'ntd'),
-- 	('BH011', 'Sau Lưng Anh Có Ai Kìa', 'tram@gmail.com', 'other@gmail.com', 'slacak'),
-- 	('BH012', 'Nơi Em Mãi Mãi Là Bình Yên', 'hieu@gmail.com', 'other@gmail.com', 'nemmlby'),
-- 	('BH013', 'Một Mình Có Buồn Không', 'tram@gmail.com', 'other@gmail.com', 'mmcbk'),
-- 	('BH014', 'Thay Thế', 'kiet@gmail.com', 'other@gmail.com', 'tt'),
-- 	('BH015', 'Em Là Con Thuyền Cô Đơn', 'hoc@gmail.com', 'other@gmail.com', 'elctcd'),
-- 	('BH016', 'Sáng Mắt Chưa', 'nhan@gmail.com', 'other@gmail.com', 'smc'),
-- 	('BH017', 'Có Không Giữ Mất Đừng Tìm', 'nhan@gmail.com', 'other@gmail.com', 'ckgmdt')
-- 	;

INSERT INTO `song` (`idSong`, `nameSong`, `emailSinger`, `emailComposer`, `srcSong`, `releaseTime`, `numLike`, `numComment`, `numDownload`) VALUES
('BH001', 'Không Cảm Xúc', 'hieu@gmail.com', 'vu@gmail.com', 'kcx.mp3', NULL, 0, 0, 0),
('BH002', 'Anh Không Sao Đâu', 'dan@gmail.com', 'dan@gmail.com', 'aksd.mp3', NULL, 0, 0, 0),
('BH003', 'Cây Đàn Sinh Viên', 'tam@gmail.com', 'anh@gmail.com', 'cdsv.mp3', NULL, 0, 0, 0),
('BH004', 'Đám Cưới Nha', 'thanh@gmail.com', 'thanh@gmail.com', 'dcn.mp3', NULL, 0, 0, 0),
('BH005', 'Tay Bế Tay Bồng', 'hoc@gmail.com', 'vi@gmail.com', 'tbtb.mp3', NULL, 0, 0, 0),
('BH006', 'Kiếp Này Em Gả Cho Anh', 'hoc@gmail.com', 'huong@gmail.com', 'knegca.mp3', NULL, 0, 0, 0),
('BH007', 'Anh Chưa Đủ Tư Cách', 'kiet@gmail.com', 'other@gmail.com', 'acdtc.mp3', NULL, 0, 0, 0),
('BH008', 'Ai Thật Lòng Thương Em', 'kiet@gmail.com', 'other@gmail.com', 'atlte.mp3', NULL, 0, 0, 0),
('BH009', 'Giấu Nước Mắt', 'kiet@gmail.com', 'other@gmail.com', 'gnm.mp3', NULL, 0, 0, 0),
('BH010', 'Ngã Tư Đường', 'hieu@gmail.com', 'other@gmail.com', 'ntd.mp3', NULL, 0, 0, 0),
('BH011', 'Sau Lưng Anh Có Ai Kìa', 'tram@gmail.com', 'other@gmail.com', 'slacak.mp3', NULL, 0, 0, 0),
('BH012', 'Nơi Em Mãi Mãi Là Bình Yên', 'hieu@gmail.com', 'other@gmail.com', 'nemmlby.mp3', NULL, 0, 0, 0),
('BH013', 'Một Mình Có Buồn Không', 'tram@gmail.com', 'other@gmail.com', 'mmcbk.mp3', NULL, 0, 0, 0),
('BH014', 'Thay Thế', 'kiet@gmail.com', 'other@gmail.com', 'tt.mp3', NULL, 0, 0, 0),
('BH015', 'Em Là Con Thuyền Cô Đơn', 'hoc@gmail.com', 'other@gmail.com', 'elctcd.mp3', NULL, 0, 0, 0),
('BH016', 'Sáng Mắt Chưa', 'nhan@gmail.com', 'other@gmail.com', 'smc.mp3', NULL, 0, 0, 0),
('BH017', 'Có Không Giữ Mất Đừng Tìm', 'nhan@gmail.com', 'nam@gmail.com', 'ckgmdt.mp3', NULL, 0, 0, 0),
('BH018', 'Gặp Nhưng Không Ở Lại', 'hien@gmail.com', 'tu@gmail.com', 'gnkol.mp3', NULL, 0, 0, 0),
('BH019', 'Có Như Không Có', 'hien@gmail.com', 'dat@gmail.com', 'cnkc.mp3', NULL, 0, 0, 0),
('BH020', 'ĐÔ TRƯỞNG', 'dat@gmail.com', 'dat@gmail.com', 'dt.mp3', NULL, 0, 0, 0),
('BH021', 'ToGetHer ', 'dan1@gmail.com', 'dan1@gmail.com', 'tgh.mp3', NULL, 0, 0, 0),
('BH022', 'BIGCITYBOI', 'dan1@gmail.com', 'dan1@gmail.com', 'BCB.mp3', NULL, 0, 0, 0),
('BH023', 'Nến Và Hoa', 'thien@gmail.com', 'thien@gmail.com', 'nvh.mp3', NULL, 0, 0, 0),
('BH024', 'Giàu Sang', 'thien@gmail.com', 'thien@gmail.com', 'gs.mp3', NULL, 0, 0, 0),
('BH025', 'ĐÚNG CŨNG THÀNH SAI', 'tam@gmail.com', 'hung@gmail.com', 'dcts.mp3', NULL, 0, 0, 0),
('BH026', 'LẠC', 'thien@gmail.com', 'other@gmail.com', 'l.mp3', NULL, 0, 0, 0),
('BH027', 'BLACKJACK', 'son@gmail.com', 'dan1@gmail.com', 'bj.mp3', NULL, 0, 0, 0),
('BH028', 'Vẫn Nhớ', 'son@gmail.com', 'other@gmail.com', 'vn.mp3', NULL, 0, 0, 0);

-- table like_interactive
create table like_interactive(
	idLikeInteractive	varchar(256) primary key,
	idSong				varchar(256),
	emailListener		varchar(256),
	likeTime			datetime,
	constraint foreign key (idSong) references song(idSong),
	constraint foreign key (emailListener) references listener(email)
);

-- table comment_interactive
create table comment_interactive(
	idCommentInteractive	varchar(256) primary key,
	idSong					varchar(256),
	emailListener			varchar(256),
	content 				varchar(256),
	commentTime				datetime,
	constraint foreign key (idSong) references song(idSong),
	constraint foreign key (emailListener) references listener(email)
);

-- table download_interactive
create table download_interactive(
	idDownload				varchar(256) primary key,
	idSong					varchar(256),
	emailListener			varchar(256),
	downloadTime			datetime,
	constraint foreign key (idSong) references song(idSong),
	constraint foreign key (emailListener) references listener(email)
);

