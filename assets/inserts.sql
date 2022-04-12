insert into genre(name)values("H");
insert into genre(name)values("M");
insert into genre(name)values("HN");
insert into genre(name)values("MN");
insert into genre(name)values("HB");
insert into genre(name)values("MB");
insert into genre(name)values("WO");

insert into color(name)values("000000");
insert into color(name)values("FFFFFF");
insert into color(name)values("000000");
insert into color(name)values("000000");
insert into color(name)values("000000");
insert into color(name)values("000000");
insert into color(name)values("000000");
insert into color(name)values("000000");

call db.providerC('Elizabeth', 'Espinoza', 'eli@gmail.com', 'AV. El cerro el pino', '97654321', 'Picarones Corp', 'Av. Mercado Mariscal');
call db.providerC('Carla', 'Jhoana', 'carjho@gmail.com', 'Galeria Shadai 3er piso', '910635253', 'Pompis','Mercado Asalella');
call db.providerC('Jhoana', 'Lisa', 'jholi@gmail.com', 'Santa Lucia 3er piso', '98025652', 'Polos Emp', 'Saga Falabella');

call db.userC('Paul', 'Ticlavilca', 'pticlavilca@gmail.com', 'Av. Lorenzo Encalada 178 A', '910632716', 1, 'pticlavilca@gmail.com', 'amnesiac');
call db.userC('Cesia', 'Leon', 'cesia.kleon@gmail.com', 'Av. Lorenzo Encalada 178 A', '953105002', 1, 'cesiak', 'teclado');
call db.userC('Merly', 'Guevara', 'merlyguevara@gmail.com', 'Plaza Vea 178', '974547965', 3, 'merlygueva', 'merlygue');

call db.categoryC('Polos');
call db.categoryC('Poleras');
call db.categoryC('Jeans');
call db.categoryC('Blusas');
call db.categoryC('Vestidos');
call db.categoryC('Enterizos');
call db.categoryC('Chompas');
call db.categoryC('Shorts');
call db.categoryC('Joggers');
call db.categoryC('Toreros');
call db.categoryC('Baggi');
call db.categoryC('Faldas');
call db.categoryC('Bustieres');
call db.categoryC('Pantalones');
call db.categoryC('Tutus');


