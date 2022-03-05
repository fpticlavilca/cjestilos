create database db;
use db;
create table status(
	idStatus int auto_increment,
	primary key(idStatus),
    name varchar(35)
);

insert into status(name)values("disable");
insert into status(name)values("enable");
insert into status(name)values("delete");

create table genre(
	idGenre int auto_increment,
    primary key(idGenre),
    name varchar(35)
);
insert into genre(name)values("Masculino");
insert into genre(name)values("Femenino");

create table category(
	idCategory int auto_increment,
    primary key(idCategory),
    name varchar(35)
);

insert into category(name)values("Pantalon");
insert into category(name)values("Poleras");
insert into category(name)values("Polos manga corta");
insert into category(name)values("Polos manga larga");
insert into category(name)values("Camisas");
insert into category(name)values("Blusas");

/*create store procedure category*/
delimiter //
create procedure createCategory(in nameIn varchar(35))
	begin 
		insert into category(name) values (nameIn);
    end
//

call createCategory(short);createCategorycreateCategory

create table person(
	idPerson int auto_increment,
    primary key(idPerson),
    
    name varchar(35),
    lastName varchar(35),
    email varchar(35),
    direction varchar(35),
    phone varchar(9)
);

create table provider(
	idProvider int auto_increment,
    primary key(idProvider),
    name varchar(35),
    idPerson int,
    
    foreign key(idPerson) references person(idPerson)
);

/*create store procedure provider*/


create table size(
	idSize int auto_increment,
    primary key(idSize),
    name varchar(35)
);

create table product(
	idProduct int auto_increment,
    primary key(idProduct),
    mame varchar(35),
    qrcode varchar(50),
    
    idCategory int,
    foreign key(idCategory) references category(idCategory),
    
    idProvider int,
    foreign key(idProvider) references provider(idProvider),
    
	idGenre int,
    foreign key(idGenre) references genre(idGenre),
    
    idStatus int,
    foreign key(idStatus) references status(idStatus)
);

create table color(
	idColor int auto_increment,
    primary key(idColor),
	
    name varchar(6)
);

create table detailProduct(
	idDetailProduct int auto_increment,
    primary key(idDetailProduct),

    idProduct int,
    foreign key(idProduct) references product(idProduct),
    
    idSize int,
    foreign key(idSize) references size(idSize),
    
    idColor int,
    foreign key(idColor) references color(idColor),
    
    salePrice double(9,2),
    purchasePrice double(9,2),
    
    idStatus int,
    foreign key(idStatus) references status(idStatus)
);

create table tag(
	idTag int auto_increment,
    primary key(idTag),
    
    code varchar(35)
);

create table tagsProduct(
	idTagProduct int auto_increment,
    primary key(idTagProduct),
    
    idProduct int,
    foreign key(idProduct) references product(idProduct),
    
    idTag int,
    foreign key(idTag) references tag(idTag)
);

create table mode(
	idMode int,
    primary key(idMode),
    
    name varchar(35)
);

create table user(
	idUser int auto_increment,
    primary key(idUser),
    name varchar(35),
    password varchar(35),
    
    idMode int,
    foreign key(idMode) references mode(idMode),
    
    idPerson int,
    foreign key(idPerson) references person(idPerson)
);

create table store(
	idStore int auto_increment,
    primary key(idStore),
    name varchar(35)
    
);

create table payment(
	idPayment int auto_increment,
    primary key(idPayment),
    
    name varchar(35),
    discount float(9,2)
);

create table sale(
	idSale int auto_increment,
    primary key(idSale),
    total double(9,2),
    
    idPayment int,
    foreign key(idPayment) references payment(idPayment),
    
    idStatus int,
    foreign key(idStatus) references status(idStatus)
);

create table saleDetail(
	idSaleDetail int,
    primary key(idSaleDetail),
    
    quantity int,
        
    idSale int,
    foreign key(idSale) references sale(idSale),
    
    idProduct int,
    foreign key(idProduct) references product(idProduct)    
);


create table pos(
	idPos int auto_increment,
    primary key(idPos),
    
    quantity int,
    
    idSale int,
    foreign key(idSale) references sale(idSale)
);

create table inventory(
	idInventory int auto_increment,
    primary key(idInventory),
    
    idProduct int,
    foreign key(idProduct) references product(idProduct),
    
    quantity int,
    
    minimumAlert int
);

