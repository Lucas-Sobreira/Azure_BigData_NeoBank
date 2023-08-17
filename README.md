# Migração de uma dimensão do DW - POC

Migrar uma dimensão do DW da Neo Bank utilizando DataBricks e Azure Synapse Analytics

1) Criar uma arquitetura no Data Lake (Bronze, Silver, Gold)
<div align="center">
<img src="https://github.com/Lucas-Sobreira/Azure_BigData_NeoBank/blob/main/imgs/Azure_Synapse_Analytics.png" width="700" height="300"/>
<img src="https://github.com/Lucas-Sobreira/Azure_BigData_NeoBank/blob/main/imgs/Synapse_Components.PNG" width="700" height="400"/>
</div>

<br>
<br>

2) Criar tabelas externas no Pool serverless (usando o Polybase) para apontar para os arquivos csv que estão presentes no Data Lake
    - Criar a Master Key
    - Credenciais para acessar o Data Lake
    - Criar o Data Source que se encontra dentro do Data Lake
    - Criar o formato CSV para depois criar a Tabela Externa
    - Criar a Tabela Externa com o arquivo CSV

<div align="center">
<img src="https://github.com/Lucas-Sobreira/Azure_BigData_NeoBank/blob/main/imgs/Polybase.PNG" width="450" height="300"/>
</div>

<br>
<br>

3) Criar um processo de ELT/ETL no DataBrick usando PySpark
    - Conectar o DataBricks com a fonte de dados (Data Lake)
    - Carregar o arquivo CSV para o DataBricks (Extração)
    - Tratar os dados (Transformação)
    - Inserir / Historizar os dados (Transformação)

<div align="center">
<img src="https://github.com/Lucas-Sobreira/Azure_BigData_NeoBank/blob/main/imgs/Spark.PNG" width="600" height="350"/>
<img src="https://github.com/Lucas-Sobreira/Azure_BigData_NeoBank/blob/main/imgs/Azure_Databricks.PNG" width="600" height="400"/>
</div>

<br>
<br>

4) Verificar as modificações as modificações nas tabelas externas


5) Criar / Carregar, via SQL, uma dimensão no DW do Azure Synapse Studio


## Segurança no acesso aos dados 
<img src="https://github.com/Lucas-Sobreira/Azure_BigData_NeoBank/blob/main/imgs/Seguranca_Dados.PNG"/>

Existem basicamente 3 formas de acessar os dados com segurança no Azure

1) Azure Active Directory (Azure AD)
2) Shared Key
3) Shared access signatures (SAS)

A quarta forma seria   
    - Acesso anônimo a contêineres e blobs
    
<div align="center">
<img src="https://github.com/Lucas-Sobreira/Azure_BigData_NeoBank/blob/main/imgs/Azure_role-based_acess_control(RBAC).png" width="600" height="600"/>
</div>
