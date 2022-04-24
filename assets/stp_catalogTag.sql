delimiter //
create procedure catalogTagC(
		in name_param varchar(35)
	)
    begin 
		insert into catalogTag(name)values(name_param);
    end
//

delimiter //
create procedure catalogTagR()
    begin
		select name from catalogTag;
    end
//

delimiter //
create procedure catalogTagU(
		in idCatalogTag_param int,
		in name_param varchar(35)
    )
    begin
		update catalogTag 
        set name = name_param
        where idCatalogTag = idCatalogTag_param;
    end
    
//

delimiter //
create procedure catalogTagD(
		in idCatalogTag_param int
    )
    begin
		delete from catalogTag where idCatalogTag = idCatalogTag_param;
    end
//
	