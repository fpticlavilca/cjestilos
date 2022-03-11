use db;

delimiter //
create procedure createCategory(in nameIn varchar(35))
	begin 
		insert into category(name) values (nameIn);
    end
//

/*create provider*/
use db;
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
		DECLARE keyPerson int default 0;
        DECLARE keyProvider int default 0;
        
		insert into person(name,lastName,email,direction,phone)values(namePerson,lastNamePerson,emailPerson,directionPerson,phonePerson);
        set keyPerson = last_insert_id();
		insert into provider(name)values(nameProvider);
        set keyProvider = last_insert_id();
        insert into personProvider(idPerson,idProvider)values(keyPerson,keyProvider);
    end
//

delimiter //

select provider.name, person.name, person.phone from provider
	inner join personprovider on provider.idProvider = personprovider.idProvider
	inner join person on person.idPerson = personprovider.idPerson;

delimiter //
	create procedure createUser(
		namePerson varchar(35), 
		lastNamePerson varchar(35), 
		emailPerson varchar(35),
		directionPerson varchar(35),
		phonePerson varchar(35),
        idUser int,
        userName varchar(35),
        userPassword varchar(35)
        
    ) 
    begin
		insert into person(name,lastName,email,direction,phone)values(namePerson,lastNamePerson,emailPerson,directionPerson,phonePerson);
        insert into personUser(idUser,name,password)values(idUser,userName,userPassword);
    end
// 

select * from personuser;
