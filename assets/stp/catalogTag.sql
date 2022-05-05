/*PROCEDURE CRUD CATALOG TAG*/
use cjestilos;

delimiter //
create procedure catalogTagC(
		in name_param varchar(35)
	)
    begin 
		insert into catalogTag(name,idCatalogStatus)values(name_param,1);
    end
//

delimiter //
create procedure catalogTagR(
		
	)
    begin
		select name from catalogTag where idCatalogStatus = 1;
    end
//

delimiter //
create procedure catalogTagU(
		in idCatalogTag_param int,
		in name_param varchar(35)
    )
    begin
		update catalogTag set name = name_param where idCatalogTag = idCatalogTag_param;
    end
    
//

delimiter //
create procedure catalogTagD(
		in idCatalogStatus_param int,
		in idCatalogTag_param int
    )
    begin
		update catalogTag set idCatalogStatus = idCatalogStatus_param where idCatalogTag = idCatalogTag_param;
    end
//