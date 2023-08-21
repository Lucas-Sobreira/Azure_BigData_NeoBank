IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseParquetFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseParquetFormat] 
	WITH ( FORMAT_TYPE = PARQUET)
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'silver_saneobanklucas_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [silver_saneobanklucas_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://silver@saneobanklucas.dfs.core.windows.net' 
	)
GO

CREATE EXTERNAL TABLE dbo.extClientNeoBank_Parquet (
	[RowNumber] int,
	[CustomerId] int,
	[Surname] nvarchar(200),
	[CreditScore] int,
	[Geography] nvarchar(200),
	[Gender] nvarchar(200),
	[Age] int,
	[Tenure] int,
	[Balance] float,
	[NumOfProducts] int,
	[HasCrCard] int,
	[IsActiveMember] int,
	[EstimatedSalary] float,
	[Exited] int
	)
	WITH (
	LOCATION = 'NeoBank_Modelling/Parquet',
	DATA_SOURCE = [silver_saneobanklucas_dfs_core_windows_net],
	FILE_FORMAT = [SynapseParquetFormat]
	)
GO


SELECT TOP 100 * FROM dbo.extClientNeoBank_Parquet
GO