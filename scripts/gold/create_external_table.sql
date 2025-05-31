CREATE DATABASE SCOPED CREDENTIAL ####
WITH
    IDENTITY = 'Managed Identity';
GO

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awprojectdatalakestorage.dfs.core.windows.net/silver',
    CREDENTIAL = ####
)
GO

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awprojectdatalakestorage.dfs.core.windows.net/gold',
    CREDENTIAL = ####
)
GO

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)
GO

--CREATE EXTERNA TABLE EXTSALES
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales
GO
