 CREATE SCHEMA gold;
 GO

 ----------------------
--CREATE VIEW CALENDAR
----------------------
CREATE VIEW gold.calendar
AS
SELECT
*
FROM
    OPENROWSET
    (
        BULK 'https://awprojectdatalakestorage.dfs.core.windows.net/silver/AdventureWorks_Calendar/part-00000-tid-344251652405678592-3f7ce76e-dba7-48ea-b9d8-040627858528-18-1-c000.snappy.parquet',
        FORMAT = 'PARQUET'
    ) as query1
GO

------------------------
--CREATE VIEW CUSTOMERS
------------------------
CREATE VIEW gold.customers
AS
SELECT
*
FROM
    OPENROWSET
    (
        BULK 'https://awprojectdatalakestorage.dfs.core.windows.net/silver/AdventureWorks_Customers/part-00000-tid-9189316346318786276-87688e3c-be46-4383-85c1-f0ce5b63e9ac-19-1-c000.snappy.parquet',
        FORMAT = 'PARQUET'
    ) as query2
GO
------------------------
--CREATE VIEW PROD CAT
------------------------
CREATE VIEW gold.product_categories
AS
SELECT
*
FROM
    OPENROWSET
    (
        BULK 'https://awprojectdatalakestorage.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT = 'PARQUET'
    ) as query3
GO

------------------------
--CREATE VIEW PROD SUBCAT
------------------------
CREATE VIEW gold.product_subcategories
AS
SELECT
*
FROM
    OPENROWSET
    (
        BULK 'https://awprojectdatalakestorage.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
        FORMAT = 'PARQUET'
    ) as query4
GO

------------------------
--CREATE VIEW PROD
------------------------
CREATE VIEW gold.products
AS
SELECT
*
FROM
    OPENROWSET
    (
        BULK 'https://awprojectdatalakestorage.dfs.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    ) as query5
GO

------------------------
--CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT
*
FROM
    OPENROWSET
    (
        BULK 'https://awprojectdatalakestorage.dfs.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) as query6
GO

------------------------
--CREATE VIEW SALES
------------------------
CREATE VIEW gold.sales
AS
SELECT
*
FROM
    OPENROWSET
    (
        BULK 'https://awprojectdatalakestorage.dfs.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) as query7
GO

------------------------
--CREATE VIEW SALES
------------------------
CREATE VIEW gold.territories
AS
SELECT
*
FROM
    OPENROWSET
    (
        BULK 'https://awprojectdatalakestorage.dfs.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) as query8
GO
