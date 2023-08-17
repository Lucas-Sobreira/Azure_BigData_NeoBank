/* Criando a Master Key */ 

CREATE MASTER KEY ENCRYPTION BY PASSWORD = '23987hxJ#Passw@rdKL95234nl0zTiZk';

/* Consultando as Keys criadas para o banco de dados selecionado */
-- SELECT * FROM sys.symmetric_keys 