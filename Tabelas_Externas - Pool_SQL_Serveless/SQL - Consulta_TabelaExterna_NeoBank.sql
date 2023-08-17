SELECT TOP (100) [RowNumber]
,[CustomerId]
,[Surname]
,[CreditScore]
,[Geography]
,[Gender]
,[Age]
,[Tenure]
,[Balance]
,[NumOfProducts]
,[HasCrCard]
,[IsActiveMember]
,[EstimatedSalary]
,[Exited]
 FROM [dbo].[extNeoBankClient]

 SELECT TOP (100) * FROM [dbo].[extNeoBankClient]
 WHERE  CreditScore >= 500
 ORDER BY CreditScore ASC