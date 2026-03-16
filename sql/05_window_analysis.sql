--Ranking directors
select 
	director,
	count(*) as total_titles,
	rank() over (order by count(*) desc) as director_rank
from netflix
where director <> 'Unknown'
group by director;

-- Ranking countries
select 
	country, 
	count(*) as total_titles,
	dense_rank() over (order by count(*) desc) as country_rank
from netflix
group by country;

-- Yearly cumulative content growth
select 
	release_year,
	count(*) as yearly_titles,
	sum(count(*)) over (order by release_year) as cumulative_titles
from netflix
group by release_year
order by release_year;