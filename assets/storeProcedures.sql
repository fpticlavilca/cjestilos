use db;

delimiter //
create procedure createCategory(in nameIn varchar(35))
	begin 
		insert into category(name) values (nameIn);
    end
//

/*create provider*/
delimiter //
create procedure createPersonProvider(
	namePerson varchar(35), 
    lastNamePerson varchar(35), 
    emailPerson varchar(35),
    directionPerson varchar(35),
    phonePerson varchar(35),
    nameProvider varchar(35)
    
    
	)
    begin
		declare @personId int;
        declare @providerId int;
	
		insert into person(name,lastName,email,direction,phone)values(namePerson,lastNamePerson,emailPerson,directionPerson,phonePerson);
        insert into personProvider(idPerson,idProvider)values(last_insert_id(),"");
		insert into provider(name,idPerson)values(nameProvider,last_insert_id());
    end
//

delimiter //
create procedure addPersonToProvider(
	namePerson varchar(35), 
    lastNamePerson varchar(35), 
    emailPerson varchar(35),
    directionPerson varchar(35),
    phonePerson varchar(35),
    
    primaryKeyProvider int
	)
    begin
		insert into person(name,lastName,email,direction,phone)values(namePerson,lastNamePerson,emailPerson,directionPerson,phonePerson);
	
		insert into provider(name,idPerson)values(nameProvider,last_insert_id());
    end
//