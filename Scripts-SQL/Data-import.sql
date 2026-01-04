drop table if exists [DataCleaning].[data];
Go
create table DataCleaning.data(
	Transaction_id varchar(20) not null,
	Customer_id varchar(20) not null,
	Categories varchar(50) not null,
	Item varchar(50),
	Price_per_unit varchar(50),
	Quantity varchar(50),
	Total_spent varchar(50),
	Payment_method varchar(50),
	Location varchar(50),
	Transaction_date date,
	Discount_applied varchar(20)
	)

BULK INSERT [DataCleaning].[data]
FROM 'C:\Users\Krishnapalsinh\Downloads\archive\retail_store_sales.csv'
WITH (
    FIRSTROW = 2,                 
    FIELDTERMINATOR = ',',       
    ROWTERMINATOR = '\n',         
    TABLOCK,
	CODEPAGE = '65001'
);

ALTER TABLE [DataCleaning].[data]
ADD CONSTRAINT PK_data_Transaction
PRIMARY KEY (Transaction_id);