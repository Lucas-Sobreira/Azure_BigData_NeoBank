IF NOT EXISTS (SELECT * FROM sys.objects O JOIN sys.schemas S ON O.schema_id = S.schema_id WHERE O.NAME = 'ClientNeoBank_Parquet' AND O.TYPE = 'U' AND S.NAME = 'dbo')
CREATE TABLE dbo.ClientNeoBank_Parquet
	(
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
WITH
	(
	DISTRIBUTION = ROUND_ROBIN,
	 CLUSTERED COLUMNSTORE INDEX
	)
GO

COPY INTO dbo.ClientNeoBank_Parquet(
	RowNumber 1,
	CustomerId 2, 
	Surname 3, 
	CreditScore 4, 
	Geography 5, 
	Gender 6, 
	Age 7, 
	Tenure 8, 
	Balance 9, 
	NumOfProducts 10, 
	HasCrCard 11, 
	IsActiveMember 12, 
	EstimatedSalary 13, 
	Exited 14
	)
FROM 'https://saneobanklucas.dfs.core.windows.net/silver/NeoBank_Modelling/Parquet/*.parquet'
WITH
(
	FILE_TYPE = 'PARQUET',
	CREDENTIAL = (IDENTITY = 'Storage Account Key', 
                  SECRET = 'vwzvt5OqOoUhdCK62Jou9tF67bGU38Qrj4FgjzC3zQSS2hSxESla14QU+PXuxk+pLd1+k3Ym2dKd+AStbY19lQ=='
                  )
)
GO

SELECT TOP 100 * FROM dbo.ClientNeoBank_Parquet
GO

SELECT COUNT(*) FROM dbo.ClientNeoBank_Parquet
GO