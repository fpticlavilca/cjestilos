use db;
delimiter //
	create procedure userC(
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
		DECLARE keyPerson int default 0;
		insert into person(name,lastName,email,direction,phone)values(namePerson,lastNamePerson,emailPerson,directionPerson,phonePerson);
        set keyPerson = last_insert_id();
        insert into personUser(idUser,idPerson,name,password)values(idUser,keyPerson,userName,userPassword);
    end
// 

delimiter //
create procedure userR()
	begin
		select person.name, user.name, person.email from personuser
		inner join person on person.idPerson = personUser.idPerson
		inner join user on user.idUser = personUser.idUser;
	end
//

delimiter //
	create procedure userU(
		idPersonUser_param int,
		idUser_param int,
		idPerson_param int,
		username_param varchar(35),
		password_param varchar(35),
		
		idGenre_param int,
		name_param varchar(35),
		lastName_param varchar(35),
		email_param varchar(35),
		direction_param varchar(35),
		phone_param varchar(9)		
    )
    begin
		update personUser 
        set idUser = idUser_param,
			username = username_param,
            password = password_param
        where idPersonUser = idPersonUser_param;
        
        update person 
        set idGenre = idGenre_param,
			name = name_param,
            lastName = lastName_param,
            email = email_param,
            direction = userRdirection_param,
            phone = phone_param
        where idPerson = idPerson_param;
    end
//

delimiter //
	create procedure userD(
		idPersonUser_param int
	)
    begin
		delete from personUser where idPersonUser = idPersonUser_param;
    end
//

delimiter //
	create procedure userCH(
		idPersonUser_param int,
		password_param varchar(35)
	)
    begin
		update personuser set password = password_param where idPersonUser = idPersonUser_param;
    end 
//
