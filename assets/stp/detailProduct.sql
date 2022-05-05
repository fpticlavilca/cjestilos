/*CREATE CRUD DETAIL PRODUCT*/

delimiter //
create procedure detailtProductC(
		in idProduct_param int,
        in idCatalogSize_param int,
        in idCatalogColor_param int,
        in salePrice_param double,
        in purchasePrice_param double,
        in quantity_param int
	)
	begin
		insert into detailProduct(idProduct,idCatalogSize,idCatalogColor,salePrice,quantity,idCatalogStatus)values(idProduct_param,idCatalogSize_param,idCatalogColor_param,salePrice_param,purchasePrice_param,quantity_param,1); 
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
		in idCatalogStatus_param int,
		in idDetailtProduct_param int
    )
    begin 
		update detailProduct 
        set idCatalogStatus = idCatalogStatus_param
        where idDetailProduct = idDetailProduct_param;
    end
//
