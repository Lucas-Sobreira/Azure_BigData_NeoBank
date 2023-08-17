/* Criar o formato CSV para depois criar a Table External */

CREATE EXTERNAL FILE FORMAT formato_CSV
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS(
        FIELD_TERMINATOR = ',',
        STRING_DELIMITER = '"',
        FIRST_ROW = 2,
        USE_TYPE_DEFAULT = True
    )
)
