select top 100 *
from [DataCleaning].[data]


--Checking of dublicates in the primary key
select Transaction_id
from DataCleaning.data
group by Transaction_id
having COUNT(*)>1
/* No dublicates in the primary key*/