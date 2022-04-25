use cjestilos;

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