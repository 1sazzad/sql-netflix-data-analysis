--Total titles
SELECT COUNT(*) AS total_titles
FROM netflix;

--Movies vs TV Shows
select type, count(*) as total
from netflix
group by type
order by total desc;
/*
Insight: Netflix hosts significantly
more movies than tv shows.
*/

--Titles per release year
select release_year, count(*) as total_titles
from netflix group by release_year
order by release_year;
/*
Insight: Content production increased
dramatically after 2015
*/

--Most common ratings
select rating, count(*) as total
from netflix
group by rating
order by total desc;
/*
TV-MA and TV-14 dominate netfilx content.
*/
