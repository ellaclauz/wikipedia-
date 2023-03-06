/* DATA CLEANING */

-- Check for the number rows in the dataset

select count(*) from wiki;

/* This dataset conains 549,000 number of rows */


-- Check for missing values

select *
from wiki
where date is null or page is null or visits is null;

/* There are 87 pages with missing values i.e the visits column 
* is null (it does not have any values) */

-- Check for duplicates

select date, page, visits
from wiki
group by date, page, visits
having count(*)>1;

/* There are no duplicate values */

-- Remove rows with missing values

delete from Wiki
where date is null or page is null or visits is null;


/* after deleting the rows with missing values, let's check the dataset */

select * from wiki;



