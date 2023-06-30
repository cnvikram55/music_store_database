--return a song name that have a song length longer than the average song legth.
--return the name and milliseconds for each track . order by song length with the longest songs listed first
select name,milliseconds 
from track
where milliseconds >(
	select avg(milliseconds) as avg_track_length
	from track)
	order by milliseconds desc;
	
	
	select name,milliseconds 
from track
where milliseconds >393599
	order by milliseconds desc;
	