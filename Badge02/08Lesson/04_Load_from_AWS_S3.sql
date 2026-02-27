use database vin;
use schema decode;
use role sysadmin;

COPY INTO vin.decode.wmi_to_manuf
from @vin.decode.aws_s3_bucket
files = ('Maxs_WMIToManuf_data.csv')
file_format =(format_name = vin.decode.comma_sep_oneheadrow);

COPY INTO vin.decode.manuf_to_make
from @vin.decode.aws_s3_bucket
files = ('Maxs_ManufToMake_Data.csv')
file_format =(format_name = vin.decode.comma_sep_oneheadrow);

COPY INTO vin.decode.model_year
from @vin.decode.aws_s3_bucket
files = ('Maxs_ModelYear_Data.csv')
file_format =(format_name = vin.decode.comma_sep_oneheadrow);

COPY INTO vin.decode.manuf_plants
from @vin.decode.aws_s3_bucket
files = ('Maxs_ManufPlants_Data.csv')
file_format =(format_name = vin.decode.comma_sep_oneheadrow);

--Test File Format
select $1
from @vin.decode.aws_s3_bucket/Maxs_MMVDS_Data.csv
(file_format => vin.decode.comma_sep_oneheadrow);

COPY INTO vin.decode.make_model_vds
from @vin.decode.aws_s3_bucket
files = ('Maxs_MMVDS_Data.csv')
file_format =(format_name = vin.decode.comma_sep_oneheadrow);


