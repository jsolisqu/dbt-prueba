

select c.c_custkey,
c.c_name,
c.c_nationkey as nacion,
sum(o.o_totalprice) as total_precio
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER c
left join SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS o
on c.c_custkey = o.o_custkey
group by
c.c_custkey,
c.c_name,
c.c_nationkey
