{{ config
(
    materialized = 'table'
)
}}

SELECT 
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'ethereum' as blockchain
FROM ETHEREUM.RAW.TRACES
WHERE TO_ADDRESS = '0x12302fe9c02ff50939baaaaf415fc226c078613c'
AND SELECTOR = '0x61b69abd'
AND ERROR IS NULL

UNION SELECT 
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'ethereum' as blockchain 
FROM ETHEREUM.RAW.TRACES
WHERE TO_ADDRESS = '0x12302fe9c02ff50939baaaaf415fc226c078613c'
AND SELECTOR = '0x1688f0b9'
AND ERROR IS NULL

UNION SELECT 
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'ethereum' as blockchain 
FROM ETHEREUM.RAW.TRACES
WHERE TO_ADDRESS = '0x50e55af101c777ba7a1d560a774a82ef002ced9f'
AND SELECTOR = '0x61b69abd'
AND ERROR IS NULL

UNION SELECT 
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'ethereum' as blockchain 
FROM ETHEREUM.RAW.TRACES
WHERE TO_ADDRESS = '0x50e55af101c777ba7a1d560a774a82ef002ced9f'
AND SELECTOR = '0x1688f0b9'
AND ERROR IS NULL

UNION SELECT 
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'ethereum' as blockchain 
FROM ETHEREUM.RAW.TRACES
WHERE TO_ADDRESS = '0x76e2cfc1f5fa8f6a5b3fc4c8f4788f0116861f9b'
AND SELECTOR = '0x61b69abd'
AND ERROR IS NULL

UNION SELECT 
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'ethereum' as blockchain 
FROM ETHEREUM.RAW.TRACES
WHERE TO_ADDRESS = '0x76e2cfc1f5fa8f6a5b3fc4c8f4788f0116861f9b'
AND SELECTOR = '0x1688f0b9'
AND ERROR IS NULL

UNION SELECT 
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'ethereum' as blockchain 
FROM ETHEREUM.RAW.TRACES 
WHERE TO_ADDRESS = '0x76e2cfc1f5fa8f6a5b3fc4c8f4788f0116861f9b'
AND SELECTOR = '0xd18af54d'
AND ERROR IS NULL

UNION SELECT 
DISTINCT '0x' || SUBSTRING(DATA,91,40) as address,
'ethereum' as blockchain 
FROM ETHEREUM.RAW.LOGS
WHERE ADDRESS = '0xa6b71e26c5e0845f74c812102ca7114b6a896ab2'
AND TOPIC0 = '0x4f51faf6c4561ff95f067657e43439f0f856d97c04d9ec9070a6199ad418e235'

UNION SELECT 
DISTINCT '0x' || SUBSTRING(DATA,27,40) as address,
'ethereum' as blockchain 
FROM ETHEREUM.RAW.LOGS
WHERE ADDRESS = '0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67' 
AND TOPIC0 = '0x4f51faf6c4561ff95f067657e43439f0f856d97c04d9ec9070a6199ad418e235'

UNION SELECT
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'polygon' as blockchain
FROM POLYGON.RAW.TRACES
WHERE TO_ADDRESS = '0x76e2cfc1f5fa8f6a5b3fc4c8f4788f0116861f9b'
AND SELECTOR = '0x61b69abd'
AND ERROR IS NULL

UNION SELECT
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'polygon' as blockchain
FROM POLYGON.RAW.TRACES
WHERE TO_ADDRESS = '0x76e2cfc1f5fa8f6a5b3fc4c8f4788f0116861f9b'
AND SELECTOR = '0x1688f0b9'
AND ERROR IS NULL

UNION SELECT
DISTINCT '0x' || SUBSTRING(INPUT,35,40) as address,
'polygon' as blockchain
FROM POLYGON.RAW.TRACES
WHERE TO_ADDRESS = '0x76e2cfc1f5fa8f6a5b3fc4c8f4788f0116861f9b'
AND SELECTOR = '0xd18af54d'
AND ERROR IS NULL

UNION SELECT 
DISTINCT '0x' || SUBSTRING(DATA,91,40) as address,
'polygon' as blockchain 
FROM POLYGON.RAW.LOGS
WHERE ADDRESS = '0xa6b71e26c5e0845f74c812102ca7114b6a896ab2'
AND TOPIC0 = '0x4f51faf6c4561ff95f067657e43439f0f856d97c04d9ec9070a6199ad418e235'

UNION SELECT 
DISTINCT '0x' || SUBSTRING(DATA,91,40) as address,
'optimism' as blockchain 
FROM OPTIMISM.RAW.LOGS
WHERE ADDRESS = '0xa6b71e26c5e0845f74c812102ca7114b6a896ab2'
AND TOPIC0 = '0x4f51faf6c4561ff95f067657e43439f0f856d97c04d9ec9070a6199ad418e235'

UNION SELECT 
DISTINCT '0x' || SUBSTRING(DATA,91,40) as address,
'arbitrum' as blockchain 
FROM ARBITRUM.RAW.LOGS
WHERE ADDRESS = '0xa6b71e26c5e0845f74c812102ca7114b6a896ab2'
AND TOPIC0 = '0x4f51faf6c4561ff95f067657e43439f0f856d97c04d9ec9070a6199ad418e235'