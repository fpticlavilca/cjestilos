/*procedure crud catalog*/
use cjestilos;

delimiter //
create procedure catalogTagC(
		in name_param varchar(35)
	)
    begin 
		insert into catalogTag(name)values(name_param);
    end
//

delimiter //
create procedure catalogTagR()
    begin
		select name from catalogTag;
    end
//

delimiter //
create procedure catalogTagU(
		in idCatalogTag_param int,
		in name_param varchar(35)
    )
    begin
		update catalogTag 
        set name = name_param
        where idCatalogTag = idCatalogTag_param;
    end
    
//

delimiter //
create procedure catalogTagD(
		in idCatalogTag_param int
    )
    begin
		delete from catalogTag where idCatalogTag = idCatalogTag_param;
    end
//

/*procedure crud tags product*/

delimiter //
	create procedure tagProductC(
		in idProduct_param int,
        in idCatalogTag_param int
	)
    begin
		insert into tagProduct(idProduct,idCatalogTag)values(idProduct_param, idCatalogTag_param);
    end
//

delimiter //
	create procedure tagProductR(
		in idTagProduct_param int
	)
    begin
		select * from tagProduct where idProduct = idProduct_param;
    end
//

delimiter //
	create procedure tagProductD(
		in idTagProduct_param int
    )
    begin
		update tagProduct set idCatalogStatus = 3 where idTagProduct = idTagProduct_param;
    end
//

/*procedure crud category*/

delimiter //
create procedure categoryC(in nameIn varchar(35))
	begin 
		insert into category(name) values (nameIn);
    end
//

delimiter //
create procedure categoryR()
	begin 
		select * from category;
	end
//

delimiter //
create procedure categoryU(in indexIn int, in nameIn varchar(35))
	begin
		update category
        set name = nameIn
        where idCategory = indexIn;
	end
//

delimiter //
create procedure categoryD(in indexIn int)
	begin
		delete from category
        where idCategory = indexIn;
	end 
//

/*procedure crud product*/

delimiter //
create procedure productC(
		nameProduct_param varchar(35),
        idCategory_param int,
        idProvider_param int,
        idCatalogGenre_param int,
        idCatalogStatus_param int
	)
    begin 
		insert into product(name,idCategory,idProvider,idCatalogGenre,idCatalogStatus)values(nameProduct_param,idCategory_param,idProvider_param,idCatalogGenre_param,idCatalogStatus_param);
    end
//
delimiter //
create procedure productR()
    begin 
		select * from product;
    end
//

delimiter //
create procedure productU(
		in idProduct_param int,
        
		in nameProduct_param varchar(35),
        in idCategory_param int,
        in idProvider_param int,
        in idCatalogGenre_param int,
        in idCatalogStatus_param int
	)
	begin 
		update product 
			set 
				name = nameProduct_param,
				idCategory = idCategory_param,
                idProvider = idProvider_param,
                idCatalogGenre = idCatalogGenre_param,
                idCatalogStatus = idCatalogStatus_param
                where idProduct = idProduct_param;
	end
//
delimiter //
create procedure productD(
		in idProduct_param int
	)
	begin
		update product
			set 
            idStatus = 3
		where idProduct = idProduct_param;
    end
//

/*create crud detailt product */

delimiter //
create procedure detailtProductC(
		in idProduct_param int,
        in idCatalogSize_param int,
        in idCatalogColor_param int,
        in salePrice_param double,
        in purchasePrice_param double,
        in idCatalogStatus_param int,
        in quantity_param int
	)
	begin
		insert into detailProduct(idProduct,idCatalogSize,idCatalogColor,salePrice,idCatalogStatus,quantity)values(idProduct_param,idCatalogSize_param,idCatalogColor_param,salePrice_param,purchasePrice_param,idCatalogStatus_param,quantity_param); 
    end
//

delimiter //
	create procedure detailtProductR(
    )
    begin
		select * from detailtProduct;
    end
//

delimiter //
	create procedure detailProductU(
		in idDetailtProduct_param int,
        
		in idProduct_param int,
        in idCatalogSize_param int,
        in idCatalogColor_param int,
        in salePrice_param double,
        in purchasePrice_param double,
        in idCatalogStatus_param int,
        in quantity_param int
        )
    begin
		update detailtProduct
        set idProduct = idProduct_param,
        idCatalogSize = idCatalogSize_param,
        idCatalogColor = idCatalogColor_param,
        salePrice = salePrice_param,
        purchasePrice = purchasePrice_param,
        idCatalogStatus = idCatalogStatus_param,
        quantity = quatity_param
        where idDetailtProduct = idDetailtProduct_param;
    end
//
delimiter //
	create procedure detailtProductD(
		in idDetailtProduct_param int
    )
    begin 
		update detailProduct 
        set idStatus = 3
        where idDetailProduct = idDetailProduct_param;
    end
//

/*create procedure crud enterprise*/

delimiter //
	create procedure enterpriseC(
		in namePerson_param varchar(35), 
		in lastNamePerson_param varchar(35), 
		in emailPerson_param varchar(35),
		in directionPerson_param varchar(35),
		in phonePerson_param varchar(35),
        
        in nameEnterprise_param varchar(35),
        in directionEnterprise varchar(35)
    ) 
    begin
		DECLARE keyPerson int default 0;
        DECLARE keyEnterprise int default 0;
		insert into person(name,lastName,email,direction,phone)values(namePerson,lastNamePerson,emailPerson,directionPerson,phonePerson);
        set keyPerson = last_insert_id();
        insert into Enterprise(name,direction)values(nameEnterprise,directionEnterprise);
        set keyEnterprise = last_insert_id();
        insert into personEnterprise(idPerson,idEnterprise)values(keyPerson,keyEnterprise);
    end
// 

delimiter //
	create procedure enterpriseU(
		idPersonEnterprise_param int,
    
        idCatalogGenre int,
		namePerson varchar(35), 
		lastNamePerson varchar(35), 
		emailPerson varchar(35),
		directionPerson varchar(35),
		phonePerson varchar(35),
        
        nameEnterprise varchar(35),
        directionEnterprise varchar(35)
    )
    begin
		set @idPerson_var = (select idPerson from personentEnterprise where idPersoEnterprise = idPersonEnterprise_param);
        set @idEnterprise_var = (select idEnterprise from personEnterprise where idPersonEnterprise = idPersonEnterprise_param);
        
		update person 
			set 
            idCatalogGenre = idCatalogGenre,
            name = namePerson, 
            lastName = lastNamePerson,
            email = emailPerson,
            direction = directionPerson,
            phone = phonePerson
        where idPerson = @idPerson_var;
        
        update enterprise
        set name = nameEnterprise,
        direction = directionEnterprise
        where idEnterprise = @idEnterprise_var;
    end
//

delimiter //
	create procedure enterpriseR()
    begin
		select * from enterprise;
    end
//

delimiter //
	create procedure enterpriseD(
		idPersonEnterprise_param int
	)
  
    begin
		set @idPerson_var = (select idPerson from personEnterprise where idPersonEnterprise = idPersonEnterprise_param);
		set @idEnterprise_var = (select idEnterprise from personEnterprise where idPersonEnterprise = idPersonEnterprise_param);
        
        delete from personEnterprise where idPersonEnterprise = idPersonEnterprise_param;
		delete from person where idPerson = @idPerson_var;
		delete from enterprise where idEnterprise = @idEnterprise_var;
        
    end
//

/*create procedure user*/

use cjestilos;
delimiter //
	create procedure userC(
		namePerson varchar(35), 
		lastNamePerson varchar(35), 
		emailPerson varchar(35),
		directionPerson varchar(35),
		phonePerson varchar(35),
        idUser int,
        userName varchar(35),
        userPassword varchar(35)
        
    ) 
    begin
		DECLARE keyPerson int default 0;
		insert into person(name,lastName,email,direction,phone)values(namePerson,lastNamePerson,emailPerson,directionPerson,phonePerson);
        set keyPerson = last_insert_id();
        insert into personUser(idUser,idPerson,name,password)values(idUser,keyPerson,userName,userPassword);
    end
// 

delimiter //
create procedure userR()
	begin
		select person.name, user.name, person.email from personuser
		inner join person on person.idPerson = personUser.idPerson
		inner join user on user.idUser = personUser.idUser;
	end
//

delimiter //
	create procedure userU(
		idPersonUser_param int,
		idUser_param int,
		idPerson_param int,
		username_param varchar(35),
		password_param varchar(35),
		
		idCatalogGenre_param int,
		name_param varchar(35),
		lastName_param varchar(35),
		email_param varchar(35),
		direction_param varchar(35),
		phone_param varchar(9)		
    )
    begin
		update personUser 
        set idUser = idUser_param,
			username = username_param,
            password = password_param
        where idPersonUser = idPersonUser_param;
        
        update person 
        set idCatalogGenre = idCatalogGenre_param,
			name = name_param,
            lastName = lastName_param,
            email = email_param,
            direction = userRdirection_param,
            phone = phone_param
        where idPerson = idPerson_param;
    end
//

delimiter //
	create procedure userD(
		idPersonUser_param int
	)
    begin
		delete from personUser where idPersonUser = idPersonUser_param;
    end
//

delimiter //
	create procedure userCH(
		idPersonUser_param int,
		password_param varchar(35)
	)
    begin
		update personuser set password = password_param where idPersonUser = idPersonUser_param;
    end 
//
/*create procedure sale*/

delimiter //
	create procedure saleC(
		in discount_param double,
		in subtotal_param double,
		in total_param double,
		in idPayment_param int,
		in idEnterprise_param int,
		in idCatalogStatus_param int
    )
    begin
		insert into sale(discount,subtotal,total,idPayment,idEnterprise,idCatalogStatus)values(discount_param,subtotal_param,total_param,idPayment_param,idEnterprise_param,idCatalogStatus_param);
    end
//

delimiter //
	create procedure saleR()
    begin
		select * from sale;
    end
//

delimiter //
	create procedure saleU(
		in idSale_param int,
    
		in discount_param double,
		in subtotal_param double,
		in total_param double,
		in idPayment_param int,
		in idEnterprise_param int,
		in idCatalogStatus_param int
    )
    begin 
		update sale set
		discount = discount_param,
		subtotal = subtotal_param,
		total = total_param,
		idPayment = idPayment_param,
		idEnterprise = idEnterprise_param,
		idCatalogStatus = idCatalogStatus_param
        where idSale = idSale_param;
    end
//

delimiter //
	create procedure saleD(
		in idSale_param int
    )
    begin
		update sale set 
        idCatalogStatus = 3
        where idSale = idSale_param;
    end
//

/*create crud detail sale*/

delimiter //
	create procedure saleDetailtC(
		in quantity_param int,
		in idDetailProduct_param int,
        in idSale_param int,
        in idCatalogStatus_param int
    )
    begin
		insert into saleDetailt(quantity,idDetailtProduct,idSale,idCatalogStatus)values(quantity_param,idDetailtProduct_param,idSale_param,idCatalogStatus_param);
    end
//


delimiter //
	create procedure saledetailR(
		in idDetailSale_param int
    )
    begin
		select * from detailProduct where idDetailSale = idDetailSale_param; 
    end
//

delimiter //
	create procedure saledetailU(
		in idSaleDetail_param int,
    
		in quantity_param int,
		in idDetailProduct_param int,
        in idSale_param int,
        in idCatalogStatus_param int
    )
    begin
		update saleDetail set
        quantity = quantity_param,
        idDetailProduct = idDetailProduct_param,
        idSale = idSale_param,
        idCatalogStatus = idCatalogStatus_param
        where idDetail;
    end
//

delimiter //
	create procedure saledetailD()
    begin
    end
//