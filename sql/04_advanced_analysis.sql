--Top producing countries
select country, count(*) as total_titles
from netflix
where country is not null
group by country
order by total_titles desc
limit 10;
/*
The United States produces the largest
number of netflix titles.
*/

--Movies vs TV shows by country
select country, type, count(*) as total
from netflix
where country is not null
group by country, type
order by total desc;

/*----
Genre Analysis
*/
--Most popular genres
SELECT listed_in, COUNT(*) AS total_titles
FROM netflix
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;
/*
Drama and international movies dominate netflix.
*/

/*------
Director Analysis
*/
--Most active directors
SELECT director, COUNT(*) AS total_titles
FROM netflix
WHERE director <> 'Unknown'
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;
/*
Rajib Chilaka is most active among all
*/

--HAVING Analysis
--Countries producing significant content.
select country, count(*) as total_titles
from netflix
group by country
having count(*) >100
order by total_titles desc;

--CTE Analysis
-- Top 5 producing countries.
with country_counts as(
	select country, count(*) as total_titles
	from netflix
	group by country
)
select *
from country_counts
order by total_titles desc
limit 5;
