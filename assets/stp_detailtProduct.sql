use db;
delimiter //
create procedure detailtProductC(
		in idProduct_param int,
        in idSize_param int,
        in idColor_param int,
        in salePrice_param double,
        in purchasePrice_param double,
        in idStatus_param int,
        in quantity_param int
	)
	begin
		insert into detailProduct(idProduct,idSize,idColor,salePrice,idStatus,quantity)values(idProduct_param,idSize_param,idColor_param,salePrice_param,purchasePrice_param,idStatus_param,quantity_param); 
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
		in idDetailProduct int,
        
    	in idProduct_param int,
        in idSize_param int,
        in idColor_param int,
        in salePrice_param double,
        in purchasePrice_param double,
        in idStatus_param int,
        in quantity_param int
	)
	begin
		update detailtProduct
        set
		idSize = idSize_param,
        idColor = idColor_param,
        salePrice = salePrice_param,
        idStatus = idStatus_param,
        quantity = quantity_param
        where idDetailProduct = idProduct_param;
    end
//
delimiter //
	create procedure detailProductD(
		in idDetailProduct int
    )
    begin
		update detailProduct set idStatus = 3; 
    end
//
