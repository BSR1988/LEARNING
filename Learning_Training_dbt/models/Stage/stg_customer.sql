{{ config(tags='stg') }}


SELECT
    CUST_KEY,
    CUST_NAME,
   ADDR,
     NATION_KEY,
   PHONE,
    ACCTBAL,
    MKT_SEG,
   CMNT,
    CO_CD,
    REC_SRC
FROM  {{ ref('raw_customer') }}
