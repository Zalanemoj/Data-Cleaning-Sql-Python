select top 100 *
from [DataCleaning].[data]

--seen the data by joining
select * 
from [DataCleaning].[data] as d
left join [DataCleaning].[product_master] as p
on d.Categories=p.[Category]
where p.[Price]=d.Price_per_unit

--made changes in the main table
ALTER TABLE [DataCleaning].[data]
ADD Item_Code NVARCHAR(50);

--added item code column to main table
UPDATE d
SET d.Item_Code = p.Item_Code
FROM [DataCleaning].[data] AS d
INNER JOIN [DataCleaning].[product_master] AS p
    ON d.Categories = p.[Category]
    AND d.Price_per_unit = p.[Price];

/* droped the item coloumn*/
alter table [DataCleaning].[data]
drop column [Item]