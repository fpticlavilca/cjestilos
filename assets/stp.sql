/*PROCEDURE CRUD SALE */

drop procedure if exists saleC; 
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
		in idCatalogStatus_param int,
		in idSale_param int
    )
    begin
		update sale set idCatalogStatus = idCatalogStatus_param where idSale = idSale_param;
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
	create procedure saledetailD(
		in idCatalogStatus_param int,
		in idSaleDetail_param int
    )
    begin
		update saleDetail set idCatalogStatus = idCatalogStatus_param where idSaleDetail = idSaleDetail_param;
    end
//
