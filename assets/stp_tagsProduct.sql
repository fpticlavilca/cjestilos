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