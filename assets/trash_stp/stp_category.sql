use cjestilos;

delimiter //
create procedure categoryC(in nameIn varchar(35))
	begin 
		insert into category(name) values (nameIn);
    end
//

delimiter //
create procedure categoryR()
	begin 
		select * from category;
	end
//

delimiter //
create procedure categoryU(in indexIn int, in nameIn varchar(35))
	begin
		update category
        set name = nameIn
        where idCategory = indexIn;
	end
//

delimiter //
create procedure categoryD(in indexIn int)
	begin
		delete from category
        where idCategory = indexIn;
	end 
//