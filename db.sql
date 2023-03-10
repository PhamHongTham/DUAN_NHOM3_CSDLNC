create database DbWebChiaSeHinhAnh
go
create table Accounts
(
[userID] int IDENTITY(1,1) primary key not null,
[gmail] varchar(100) not null,
[password] varchar(100) not null,
[uImages] nvarchar(max),
[faceBook] nvarchar(max),
[soDienThoai] char(20),
firstName nvarchar(100),
lastName nvarchar(100),
gender nvarchar(50)
)
go
create table adminAccount
(
adminId int identity(1,1) primary key not null,
adUsername nvarchar(100) not null,
adPassword nvarchar(100) not null,
member int,
adName nvarchar(100)
)
go
create table cImages
(
idCategory int identity(1,1) primary key not null,
cname nvarchar(100),
)
go 
create table Images
(
idImage int identity(1,1) primary key not null,
images nvarchar(max) not null,
idCategory int not null,
userID int not null,
Tag nvarchar(max) not null,
TieuCu float(50),
KhauDo nvarchar(50),
TocDoManTrap nvarchar(50),
ISO varchar(50),
Camera nvarchar(100),
LoaiHinhAnh nvarchar (50),
[date] date,
[view] int,
ready int
FOREIGN KEY (idCategory) REFERENCES cImages (idCategory),
FOREIGN KEY (userID) REFERENCES Accounts (userID)
)
go 
create table Comments
(
idComment int IDENTITY(1,1) primary key not null,
comment nvarchar(max) not null,
userID int not null,
idImage int not null,
commentDay SMALLDATETIME,
FOREIGN KEY (userID) REFERENCES Accounts (userID),
FOREIGN KEY (idImage) REFERENCES Images (idImage)
)
go
create table web
(
idBanner int primary key identity(1,1),
banner nvarchar(255),
title1 nvarchar(100),
title2 nvarchar(100),
facebook nvarchar(255),
instagram nvarchar(255),
pinterest nvarchar(255)
)

CREATE TABLE favorite_images (
    user_id INT NOT NULL,
    image_id INT NOT NULL
	primary key  (user_id,image_id),
	foreign key (user_id) references Accounts(UserID),
	foreign key (image_id) references Images(idImage)
);