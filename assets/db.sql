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
    name varchar(2)
);
insert into genre(name)values("F");
insert into genre(name)values("M");


create table category(
	idCategory int auto_increment,
    primary key(idCategory),
    name varchar(35)
);

create table person(
	idPerson int auto_increment,
    primary key(idPerson),
    
    idGenre int,
    foreign key(idGenre) references genre(idGenre),
	
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
    direction varchar(35)
);
create table personProvider(
	idPersonProvider int auto_increment,
    primary key(idPersonProvider),
    
    idPerson int,
    foreign key(idPerson) references person(idPerson),
    
    idProvider int,
    foreign key(idProvider) references provider(idProvider)
);

create table user(
	idUser int auto_increment,
    primary key(idUser),
    name varchar(35)
);

insert into user(name)values("admin");
insert into user(name)values("saler");
insert into user(name)values("database");

create table personUser(
	idPersonUser int auto_increment,
    primary key(idPersonUser),
    
    idUser int,
    foreign key(idUser) references user(idUser),

    idPerson int,
    foreign key(idPerson) references person(idPerson),
    
    name varchar(35),
    password varchar(35)
);



create table size(
	idSize int auto_increment,
    primary key(idSize),
    name varchar(35)
);

create table product(
	idProduct int auto_increment,
    primary key(idProduct),
    name varchar(35),
    
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
    foreign key(idStatus) references status(idStatus),
    
    quantity int
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