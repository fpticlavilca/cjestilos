
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

create table enterprise(
	idEnterprise int auto_increment,
    primary key(idEnterprise),
    ruc varchar(11),
    direction varchar(35),
    telephone varchar(9),
    name varchar(35)    
);

create table personEnterprise(
	idPersonEnterprise int auto_increment,
    primary key(idPersonEnterprise),
    
    idPerson int,
    foreign key(idPerson) references person(idPerson),
    
    idEnterprise int,
    foreign key(idEnterprise) references enterprise(idEnterprise),
    
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
    
    idEnterprise int,
    foreign key(idEnterprise) references enterprise(idEnterprise),
    
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

create table tagProduct(
	idTaProduct int auto_increment,
    primary key(idTaProduct),
    
    idProduct int,
    foreign key(idProduct) references product(idProduct),
    
    idCatalogTag int,
    foreign key(idCatalogTag) references catalogTag(idCatalogTag),
    
	idCatalogStatus int,
	foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
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
    
    discount double,
    subtotal double,
    total double(9,2),
    
    idPayment int,
    foreign key(idPayment) references payment(idPayment),
    
    idEnterprise int,
    foreign key(idEnterprise) references enterprise(idEnterprise),
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
);

create table saleDetail(	    
    quantity int,

	idSaleDetail int,
    primary key(idSaleDetail),

    idDetailProduct int,
    foreign key(idDetailProduct) references detailProduct(idDetailProduct),

    idSale int,
    foreign key(idSale) references sale(idSale),    
    
    idCatalogStatus int,
    foreign key(idCatalogStatus) references catalogStatus(idCatalogStatus)
);

