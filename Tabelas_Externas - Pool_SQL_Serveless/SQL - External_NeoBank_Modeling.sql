/* Por fim, a tabela Externa com o arquivo CSV */

--DROP EXTERNAL TABLE ExtSaEmployee

CREATE EXTERNAL TABLE extNeoBankClient (
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
    LOCATION='NeoBank_Modelling.csv',
    DATA_SOURCE = DS_NeoBankbronze,
    FILE_FORMAT = formato_CSV
)
