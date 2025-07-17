{{ config(materialized='view') }}

WITH SRC AS (
    SELECT
        C_CUSTKEY,
        C_NAME,
        C_ADDRESS,
        C_NATIONKEY,
        C_PHONE,
        C_ACCTBAL,
        C_MKTSEGMENT,
        C_COMMENT
    FROM {{ source('SNOWFLAKE_LEARNING','customer') }}
)

SELECT
    C_CUSTKEY AS CUST_KEY,
    C_NAME AS CUST_NAME,
    C_ADDRESS AS ADDR,
    C_NATIONKEY AS NATION_KEY,
    C_PHONE AS PHONE,
    C_ACCTBAL AS ACCTBAL,
    C_MKTSEGMENT AS MKT_SEG,
    C_COMMENT AS CMNT,
    '{{ var('CO_CD') }}' AS CO_CD,
    '{{ var('REC_SRC') }}' AS REC_SRC
FROM SRC
