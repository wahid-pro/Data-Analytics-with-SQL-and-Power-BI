-- Cleaning DIM_Customer Table---
SELECT 
   c.customerkey as CustomerKey,
   c.FirstName as [First Name],
   c.[LastName] as [Last Name],
   case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender,
   [DateFirstPurchase],
 g.city as [Customer City] --joined in customer city from geography table
  FROM 
     dbo.DimCustomer as c
	 left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
	 order by
	 CustomerKey asc --orderd list by customerkey