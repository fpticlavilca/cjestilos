/*PROCEDURE CRUD PRODUCT*/

delimiter //
create procedure productC(
		in nameProduct_param varchar(35),
        in idCategory_param int,
        in idProvider_param int,
        in idCatalogGenre_param int
        
	)
    begin 
		insert into product(name,idCategory,idProvider,idCatalogGenre,idCatalogStatus)values(nameProduct_param,idCategory_param,idProvider_param,idCatalogGenre_param,1);
    end
//
delimiter //
create procedure productR()
    begin 
		select product.name, catalogGenre.name as genre, category.name as catagory, enterprise.name as enterprise from product
		inner join catalogGenre on product.idCatalogGenre= catalogGenre.idCatalogGenre
		inner join category as category on product.idCategory = category.idCategory
		inner join enterprise as enterprise on product.idEnterprise = enterprise.idEnterprise;

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
		in idCatalogStatus_param int,
		in idProduct_param int
	)
	begin
		update product set idCatalogStatus = idCatalogStatus_param where idProduct = idProduct_param;
    end
//