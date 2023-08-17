/* Criar o Data Source que encontre-se dentro do Data Lake () */
--abfss://<container>@<storage _account>.dfs.core.windows.net
-- <container> = rawdw
-- <storage_account> = bistorageaccountcarlos

/* 
CREATE EXTERNAL DATA SOURCE DS_NeoBankbronze_abfs
WITH(
    LOCATION = 'abfs://bronze@saneobanklucas.dfs.core.windows.net',
    CREDENTIAL = CredencialNeoBank
)
*/

CREATE EXTERNAL DATA SOURCE DS_NeoBankbronze
WITH
(
    LOCATION = 'https://saneobanklucas.blob.core.windows.net/bronze',
    CREDENTIAL = CredencialNeoBank
)
