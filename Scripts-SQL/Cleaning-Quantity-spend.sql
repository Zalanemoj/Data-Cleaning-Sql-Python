select top 1000 *
from [DataCleaning].[data]


alter table [DataCleaning].[data]
add Status varchar(50) default 'valid';

update DataCleaning.data
set Status='Invalid'
where Quantity is null and Total_spent is null;

update DataCleaning.data
set Status='Valid'
where Status is null

