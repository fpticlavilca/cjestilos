/*PROCEDURE CRUD CATEGORY*/

delimiter //
create procedure categoryC(
		in name_param varchar(35)
    )
	begin 
		insert into category(name,idCatalogStatus) values (name_param,1);
    end
//

delimiter //
create procedure categoryR()
	begin 
		select name from category where idCatalogStatus = 1;
	end
//

delimiter //
create procedure categoryU(
		in idCategory_param int, 
		in name_param varchar(35)
    )
	begin
		update category set name = name_param where idCategory = idCategory_param;
	end
//

delimiter //
create procedure categoryD(
		in idCatalogStatus_param int,
		in idCategory_param int
    )
	begin
		update category set idCatalogStatus = idCatalogStatus_param where idCategory = idCategory_param;
	end 
//