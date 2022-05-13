/*PROCEDURE CRUD CATEGORY*/

delimiter //
create procedure stpCategoryC(
		in name_param varchar(35)
    )
	begin 
		insert into category(name,idCatalogStatus) values (name_param,1);
    end
//

delimiter //
create procedure stpCategoryR()
	begin 
		select name from category where idCatalogStatus = 1;
	end
//

delimiter //
create procedure stpCategoryU(
		in idCategory_param int, 
		in name_param varchar(35)
    )
	begin
		update category set name = name_param where idCategory = idCategory_param;
	end
//

delimiter //
create procedure stpCategoryD(
		in idCatalogStatus_param int,
		in idCategory_param int
    )
	begin
		update category set idCatalogStatus = idCatalogStatus_param where idCategory = idCategory_param;
	end 
//