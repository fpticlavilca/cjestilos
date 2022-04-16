use cjestilos;
delimiter //
	create procedure providerC(
		namePerson varchar(35), 
		lastNamePerson varchar(35), 
		emailPerson varchar(35),
		directionPerson varchar(35),
		phonePerson varchar(35),
        
        nameProvider varchar(35),
        directionProvider varchar(35)
    ) 
    begin
		DECLARE keyPerson int default 0;
        DECLARE keyProvider int default 0;
		insert into person(name,lastName,email,direction,phone)values(namePerson,lastNamePerson,emailPerson,directionPerson,phonePerson);
        set keyPerson = last_insert_id();
        insert into provider(name,direction)values(nameProvider,directionProvider);
        set keyProvider = last_insert_id();
        insert into personProvider(idPerson,idProvider)values(keyPerson,keyProvider);
    end
// 

delimiter //
	create procedure providerU(
		idPersonProvider_param int,
    
        idCatalogGenre int,
		namePerson varchar(35), 
		lastNamePerson varchar(35), 
		emailPerson varchar(35),
		directionPerson varchar(35),
		phonePerson varchar(35),
        
        nameProvider varchar(35),
        directionProvider varchar(35)
    )
    begin
		set @idPerson_var = (select idPerson from personProvider where idPersonProvider = idPersonProvider_param);
        set @idProvider_var = (select idProvider from personProvider where idPersonProvider = idPersonProvider_param);
        
		update person 
			set 
            idCatalogGenre = idCatalogGenre,
            name = namePerson, 
            lastName = lastNamePerson,
            email = emailPerson,
            direction = directionPerson,
            phone = phonePerson
        where idPerson = @idPerson_var;
        
        update provider
        set name = nameProvider,
        direction = directionProvider
        where idProvider = @idProvider_var;
    end
//
delimiter //
	create procedure providerR()
    begin
		select * from provider;
    end
//
delimiter //
	create procedure providerD(
		idPersonProvider_param int
	)
  
    begin
		set @idPerson_var = (select idPerson from personprovider where idPersonProvider = idPersonProvider_param);
		set @idProvider_var = (select idProvider from personprovider where idPersonProvider = idPersonProvider_param);
        
        delete from personprovider where idPersonProvider = idPersonProvider_param;
		delete from person where idPerson = @idPerson_var;
		delete from provider where idProvider = @idProvider_var;
        
    end
//
