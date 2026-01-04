select top 100 *
from [DataCleaning].[data]

/*Checking customer id is not null and countain a specific type of values*/
select Customer_id
from DataCleaning.data
where Customer_id is null or Customer_id not like 'CUST_%'