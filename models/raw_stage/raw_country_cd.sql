SELECT
    a.COUNTRY_CD AS COUNTRY_CD,
    a.COUNTRY AS COUNTRY
FROM {{ source('staging_sap_ecc', 'COUNTRY_CD') }} AS a