with

base as (
select 'A' client, '2023-01-01' anoMes, 2 vendas union all
select 'A' client, '2023-02-01' anoMes, 4 vendas union all
select 'A' client, '2023-03-01' anoMes, 12 vendas union all
select 'A' client, '2023-04-01' anoMes, 3 vendas union all
select 'A' client, '2023-05-01' anoMes, 1 vendas union all
select 'A' client, '2023-06-01' anoMes, 5 vendas union all
select 'B' client, '2023-01-01' anoMes, 8 vendas union all
select 'B' client, '2023-02-01' anoMes, 4 vendas union all
select 'B' client, '2023-03-01' anoMes, 6 vendas union all
select 'B' client, '2023-04-01' anoMes, 2 vendas union all
select 'B' client, '2023-05-01' anoMes, 9 vendas union all
select 'B' client, '2023-06-01' anoMes, 5 vendas)

select
  *,
  sum(vendas)over(),
  sum(vendas)over(partition by client),
  sum(vendas)over(partition by client order by anoMes asc),
  sum(vendas)over(order by anoMes asc),
  sum(vendas)over(partition by anoMes order by anoMes asc),
  sum(vendas)over(order by client ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
  sum(vendas)over(ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING),
  sum(vendas)over(ROWS BETWEEN 2 PRECEDING AND 1 PRECEDING),
  sum(vendas)over(partition by client ROWS BETWEEN 1 PRECEDING AND current row),
from base
