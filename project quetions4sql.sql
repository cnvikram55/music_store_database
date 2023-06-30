Q3 which city has  the best customer? we would like to throw a promotional music festivel in the city we made the most money.
write a query that one city which has highest sum of invoice_total returns both city name abd sum of invoice total?
select sum(total) as invoice_total,billing_city
from invoice
group by billing_city
order by invoice_total desc