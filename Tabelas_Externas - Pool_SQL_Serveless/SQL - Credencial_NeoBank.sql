/* Credenciais para acessar o Data Lake */ 
CREATE DATABASE SCOPED CREDENTIAL CredencialNeoBank
WITH IDENTITY = 'SHARED ACCESS SIGNATURE', -- this is a mandatory string and do not change it
SECRET = 'sp=r&st=2023-08-14T18:14:51Z&se=2023-08-15T02:14:51Z&sv=2022-11-02&sr=c&sig=kpjaPvBOSYzcPhzCf77r5TDIlEatOi3Ly1ur6C1hms0%3D'

/* 
    ALTER DATABASE SCOPED CREDENTIAL CredencialNeoBank
    WITH IDENTITY = 'SHARED ACCESS SIGNATURE',
    SECRET = 'sp=r&st=2023-08-14T18:14:51Z&se=2023-08-15T02:14:51Z&sv=2022-11-02&sr=c&sig=kpjaPvBOSYzcPhzCf77r5TDIlEatOi3Ly1ur6C1hms0%3D'
*/

-- IMPORTANTE!!! Ao criar a credencial, é necessário utilizar a SAS do conteiner e não do SA