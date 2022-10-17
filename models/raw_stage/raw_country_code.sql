SELECT
    a.COUNTRY_CODE AS COUNTRY_CODE,
    a.COUNTRY AS COUNTRY
FROM {{ source('staging_sap_ecc', 'COUNTRY_CODE') }} AS a