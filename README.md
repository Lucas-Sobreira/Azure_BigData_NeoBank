# Migração de uma dimensão do DW - POC

Migrar uma dimensão do DW da Neo Bank utilizando DataBricks e Azure Synapse Analytics

1) Criar uma arquitetura no Data Lake (Bronze, Silver, Gold)


2) Criar tabelas externas no Pool serverless (usando o Polybase) para apontar para os arquivos csv que estão presentes no Data Lake


3) Criar um processo de ELT/ETL no DataBrick usando PySpark
    - Conectar o DataBricks com a fonte de dados (Data Lake)
    - Carregar o arquivo CSV para o DataBricks (Extração)
    - Tratar os dados (Transformação)
    - Inserir / Historizar os dados (Transformação)
  
4) Verificar as modificações as modificações nas tabelas externas


5) Criar / Carregar, via SQL, uma dimensão no DW do Azure Synapse Studio
