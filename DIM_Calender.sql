-- Cleaning DIM_DateTable----

SELECT 
    [DateKey] 
      ,[FullDateAlternateKey] AS Date,
      [EnglishDayNameOfWeek] AS Day,
      [WeekNumberOfYear] AS WeekNr,
      [EnglishMonthName] AS Month,
      [MonthNumberOfYear] AS MonthNo,
      [CalendarQuarter] AS Quarter,
      [CalendarYear] AS Year
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >= 2019