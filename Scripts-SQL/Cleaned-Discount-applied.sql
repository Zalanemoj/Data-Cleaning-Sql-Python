select distinct [Discount_applied]
from [DataCleaning].[data]

UPDATE DataCleaning.data
SET Discount_applied = 'Unknown'
WHERE Discount_applied IS NULL;

select * from [DataCleaning].[data]