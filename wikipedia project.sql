/* PROJECT QUESTIONS */

/* what were some of the most trending search topics on Wikipedia on the 
 * following days? Using the provided dataset, can you show some evidence to 
 * support your answer? a- New year's day b- November 8, 2016 */

select date, page, sum(visits)
from wiki
where date = '2016-11-08 00:00:00'
group by date, page, visits
order by visits desc
limit 1;

select date, page, sum(visits)
from wiki
where date = '2016-01-01 00:00:00'
group by date, page, visits
order by visits desc
limit 1;

/* Which page experienced the biggest decline in page visits during 2016? */
 
select page, min(visits)
from wiki
group by page
order by min(visits) asc 
limit 5;

/* Which page experienced the biggest increase in page visits during 2016? */

select page, max(visits)
from wiki
group by page
order by max(visits) desc 
limit 5;

/* Based on the provided dataset, which day(s) of the week is/are the most popular for visiting wikipedia?
*/

select dayofweek(date) as day_of_the_week, sum(visits) as total_visits
from Wiki
group by day_of_the_week
order by total_visits desc 
limit 3;

/* Based on the provided dataset, which day(s) of the week is/are the least popular for visiting wikipedia?
*/

select dayofweek(date) as day_of_the_week, sum(visits) as total_visits
from Wiki
group by day_of_the_week
order by total_visits asc
limit 3;




