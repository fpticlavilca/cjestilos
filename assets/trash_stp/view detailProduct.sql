describe detailProduct;

select * from detailproduct;

select product.name, catalogSize.name as catalogSize, catalogColor.name as catalogColor, salePrice, purchasePrice, quantity from detailProduct
	inner join product on product.idProduct = detailProduct.idProduct
    inner join catalogSize on catalogSize.idCatalogSize = detailProduct.idCatalogSize
    inner join catalogColor on catalogColor.idCatalogColor = detailproduct.idCatalogColor
    where idCatalogStatus = 1;
    