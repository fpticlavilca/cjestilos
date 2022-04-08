use db;

delimiter //
create procedure productC(
		nameProduct_param varchar(35),
        idCategory_param int,
        idProvider_param int,
        idGenre_param int,
        idStatus_param int
	)
    begin 
		insert into product(name,idCategory,idProvider,idGenre,idStatus)values(nameProduct_param,idCategory_param,idProvider_param,idGenre_param,idStatus_param);
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
        in idGenre_param int,
        in idStatus_param int
	)
	begin 
		update product 
			set 
				name = nameProduct_param,
				idCategory = idCategory_param,
                idProvider = idProvider_param,
                idGenre = idGenre_param,
                idStatus = idStatus_param
                where idProduct = idProduct_param;
	end
//