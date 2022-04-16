
create table person(
	idPerson int auto_increment,
    primary key(idPerson),
    
    idCatalogGenre int,
    foreign key(idCatalogGenre) references catalogGenre(idCatalogGenre),
	
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
    foreign key(idProvider) references provider(idProvider),
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
);

create table user(
	idUser int auto_increment,
    primary key(idUser),
    name varchar(35)
);

create table personUser(
	idPersonUser int auto_increment,
    primary key(idPersonUser),
    
    idUser int,
    foreign key(idUser) references user(idUser),

    idPerson int,
    foreign key(idPerson) references person(idPerson),
    
    name varchar(35),
    password varchar(35),
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
);

create table category(
	idCategory int auto_increment,
    primary key(idCategory),
    name varchar(35),
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
);

create table product(
	idProduct int auto_increment,
    primary key(idProduct),
    name varchar(35),
    
    idCategory int,
    foreign key(idCategory) references category(idCategory),
    
    idProvider int,
    foreign key(idProvider) references provider(idProvider),
    
	idCatalogGenre int,
    foreign key(idCatalogGenre) references catalogGenre(idCatalogGenre),
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
    
);

create table detailProduct(
	idDetailProduct int auto_increment,
    primary key(idDetailProduct),

    idProduct int,
    foreign key(idProduct) references product(idProduct),
    
    idCatalogSize int,
    foreign key(idCatalogSize) references catalogSize(idCatalogSize),
    
    idCatalogColor int,
    foreign key(idCatalogColor) references catalogColor(idCatalogColor),
    
    salePrice double(9,2),
    purchasePrice double(9,2),
    
    quantity int,
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
);

create table tagsProduct(
	idTagProduct int auto_increment,
    primary key(idTagProduct),
    
    idProduct int,
    foreign key(idProduct) references product(idProduct),
    
    idCatalogTag int,
    foreign key(idCatalogTag) references catalogTag(idCatalogTag)
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
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
);

create table saleDetail(
	idSaleDetail int,
    primary key(idSaleDetail),
    
    quantity int,
        
    idSale int,
    foreign key(idSale) references sale(idSale),
    
    idProduct int,
    foreign key(idProduct) references product(idProduct),
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
);

create table pos(
	idPos int auto_increment,
    primary key(idPos),
    
    quantity int,
    
    idSale int,
    foreign key(idSale) references sale(idSale)
);