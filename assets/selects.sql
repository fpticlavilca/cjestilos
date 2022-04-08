select provider.name, person.name, person.phone from provider
	inner join personprovider on provider.idProvider = personprovider.idProvider
	inner join person on person.idPerson = personprovider.idPerson;
    
    
select user.name, person.name from personuser
	inner join user on user.idUser = personuser.idUser
    inner join person on person.idPerson = personuser.idPerson;
