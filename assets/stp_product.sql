use db;

delimiter //
create procedure productC(
		nameProduct_param varchar(35),
        idCategory_param int,
        idProvider_param int,
        idGenre_param int,
        idStatus_param int,
        
        idSize_param int,
        idColor_param int,
        salePrice_param double(9,2),
        purchasePrice_param double(9,2),
        idStatus_param int

	)
    begin 
		DECLARE idProduct_param int default 0;
		insert into product(name,idCategory,idProvider,idGenre,idStatus)values(nameProduct_param,idCategory_param,idProvider_param,idGenre_param,idStatus_param);
        set idProduct_param = last_insert_id();
        
        insert into detailproduct(idProduct,idSize,idColor,salePrice,purchasePrice,idStatus)values(idProduct_param,idSize_param,idColor_param,salePrice_param,purchasePrice_param,idStatus_param);
    end
//
delimiter //
create procedure productR(
		
	)
    begin 
    end
//