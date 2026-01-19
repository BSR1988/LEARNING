{{ config(tags='raw' ) }}

WITH SRC AS (
    SELECT
        R_REGIONKEY,
        R_NAME,
        R_COMMENT
    FROM {{ source('SNOWFLAKE_LEARNING','region') }}
)

SELECT
    R_REGIONKEY AS REGION_KEY,
    R_NAME AS REGION_NAME,
    R_COMMENT AS CMNT,
    '{{ var('CO_CD') }}' AS CO_CD,
    '{{ var('REC_SRC') }}' AS REC_SRC
FROM SRC
