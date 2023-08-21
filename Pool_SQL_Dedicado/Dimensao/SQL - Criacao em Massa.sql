COPY INTO dbo.clientNeoBank(
    RowNumber,
    CustomerId,
    Surname,
    CreditScore,
    Geography,
    Gender,
    Age,
    Tenure,
    Balance,
    NumOfProducts,
    HasCrCard,
    IsActiveMember,
    EstimatedSalary,
    Exited           
)
FROM 'https://saneobanklucas.blob.core.windows.net/silver/NeoBank_Modelling/part-00000-tid-1958159374062838923-18782303-b0d5-456f-90f4-f385a08e7342-94-1-c000.csv'
WITH(
    FILE_TYPE = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    CREDENTIAL = (IDENTITY = 'Storage Account Key', 
                  SECRET = 'vwzvt5OqOoUhdCK62Jou9tF67bGU38Qrj4FgjzC3zQSS2hSxESla14QU+PXuxk+pLd1+k3Ym2dKd+AStbY19lQ=='
                  )
)
GO

SELECT * FROM dbo.clientNeoBank
GO

SELECT COUNT(*) FROM dbo.clientNeoBank
GO