-- Cleaning DIM_Product Table--

SELECT 
p.ProductKey, 
    p.ProductAlternateKey as ProductItemCode,
    p.EnglishProductName as [Product Name],
	ps.EnglishProductSubcategoryName as [Sub Category],--joined in from Sub Caegory Table
	pc.EnglishProductCategoryName as [Product Category],-- joined in from Product Category Table
    p.Color as [Product Color],
    p.[Size] as[Product Size],
    p.[ProductLine] as [Product Line],
    p.[ModelName] as [Model Name],
    p.[EnglishDescription] as [Product Description],

    isnull(p.status, 'Outdated') as [Product Status]
  FROM
  dbo.DimProduct as p
  left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey=p.ProductSubcategoryKey
  left join dbo.DimProductCategory as pc on ps.ProductCategoryKey=pc.ProductCategoryKey
  order by
  p.ProductKey asc