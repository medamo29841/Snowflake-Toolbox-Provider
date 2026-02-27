--In each function call below, we pass in a different VIN as THIS_VIN
select *
from table(vin.decode.PARSE_AND_ENHANCE_VIN('SAJAJ4FX8LCP55916'));

select *
from table(vin.decode.PARSE_AND_ENHANCE_VIN('19UUB2F34LA001631'));
 
select *
from table(vin.decode.PARSE_AND_ENHANCE_VIN('5UXCR6C0XL9C77256'));

select *
from table(vin.decode.PARSE_AND_ENHANCE_VIN('5UXCR6C0XL9C77256'));