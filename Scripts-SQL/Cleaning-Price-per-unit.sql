select top 100 *
from [DataCleaning].[data]

--Ckecking the values
select Price_per_unit,new_price
from(
select 
Price_per_unit,
CAST(
        ROUND(
            CASE 
                WHEN TRY_CAST(Price_per_unit AS DECIMAL(10,2)) IS NOT NULL 
                    THEN TRY_CAST(Price_per_unit AS DECIMAL(10,2))
                WHEN TRY_CAST(Price_per_unit AS DECIMAL(10,2)) IS NULL
                     AND TRY_CAST(Quantity AS DECIMAL(10,2)) IS NOT NULL
                     AND TRY_CAST(Quantity AS DECIMAL(10,2)) <> 0
                THEN TRY_CAST(Total_spent AS DECIMAL(10,2)) 
                     / TRY_CAST(Quantity AS DECIMAL(10,2))
            END
        ,1) AS DECIMAL(10,1)
    ) AS new_price
from [DataCleaning].[data]
)t 
where Price_per_unit is null


--adding the new values in the initial table
ALTER TABLE DataCleaning.data
ALTER COLUMN Price_per_unit DECIMAL(10,1);

UPDATE DataCleaning.data
SET Price_per_unit = CAST(
        ROUND(
            TRY_CAST(Total_spent AS DECIMAL(10,2)) 
            / TRY_CAST(Quantity AS DECIMAL(10,2))
        ,1) AS DECIMAL(10,1)
    )
WHERE TRY_CAST(Price_per_unit AS DECIMAL(10,2)) IS NULL
  AND TRY_CAST(Quantity AS DECIMAL(10,2)) IS NOT NULL
  AND TRY_CAST(Quantity AS DECIMAL(10,2)) <> 0;
