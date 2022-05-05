use cjestilos;
select product.idProduct, product.name, category.name, enterprise.name, catalogGenre.name from product
		inner join category as category on product.idCategory = category.idCategory
		inner join enterprise as enterprise on product.idEnterprise = enterprise.idEnterprise
        inner join catalogGenre as genre on product.idCatalogGenre = catalogGenre.idCatalogGenre;
        
select product.name, catalogGenre.name as genre, category.name as catagory, enterprise.name as enterprise from product
	inner join catalogGenre on product.idCatalogGenre= catalogGenre.idCatalogGenre
    inner join category as category on product.idCategory = category.idCategory
    inner join enterprise as enterprise on product.idEnterprise = enterprise.idEnterprise
    where idCatalogStatus = 1;
    
    describe product;
    describe catalogGenre;
        
describe product;
	