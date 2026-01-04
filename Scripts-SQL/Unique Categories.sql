select top 100 *
from [DataCleaning].[data]

/* Unique Categories*/
select distinct
Categories as Unique_Categories
into DataCleaning.Unique_Categories
from DataCleaning.data