lets invite the artist who have written the most rock music in our data set
write a query that retuens artist name and total count of top 10 rock bands
select artist.artist_id,artist.name,count(artist.artist_id) as number_of_songs
from track
join album on track.album_id = album.album_id
join artist on album.artist_id = artist.artist_id
join genre on genre.genre_id = track.genre_id
where genre.name like 'Rock'
group by artist.artist_id 
order by number_of_songs desc
limit 10;