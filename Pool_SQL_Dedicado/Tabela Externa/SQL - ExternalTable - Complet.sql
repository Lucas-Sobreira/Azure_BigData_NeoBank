IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
	WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
	       FORMAT_OPTIONS (
			 FIELD_TERMINATOR = ',',
			 STRING_DELIMITER = '"',
			 FIRST_ROW = 2,
			 USE_TYPE_DEFAULT = TRUE
			))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'silver_saneobanklucas_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [silver_saneobanklucas_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://silver@saneobanklucas.dfs.core.windows.net', 
		TYPE = HADOOP 
	)
GO

CREATE EXTERNAL TABLE dbo.extClientNeoBank (
	RowNumber        INT,
    CustomerId       INT,
    Surname          VARCHAR(100),
    CreditScore      VARCHAR(100),
    Geography        VARCHAR(100),
    Gender           VARCHAR(100),
    Age              VARCHAR(100),
    Tenure           VARCHAR(100),
    Balance          VARCHAR(100),
    NumOfProducts    VARCHAR(100),
    HasCrCard        VARCHAR(100),
    IsActiveMember   VARCHAR(100),
    EstimatedSalary  VARCHAR(100),
    Exited           VARCHAR(100)
	)
	WITH (
	LOCATION = 'NeoBank_Modelling/part-00000-tid-1958159374062838923-18782303-b0d5-456f-90f4-f385a08e7342-94-1-c000.csv',
	DATA_SOURCE = [silver_saneobanklucas_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
GO


SELECT TOP 100 * FROM dbo.extClientNeoBank
GO