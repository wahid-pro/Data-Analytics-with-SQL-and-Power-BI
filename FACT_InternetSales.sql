-- Cleaning FACT_InternetSales Table --

SELECT 
[ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
  FROM
  dbo.FactInternetSales
  where 
  left (OrderDateKey,4) >= YEAR(getdate())-2 --Ensures we only brings two years of data from extraction
  order by
  OrderDateKey asc