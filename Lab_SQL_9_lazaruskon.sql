-- Lab | SQL Queries 9 --

-- In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.

   -- Create a table rentals_may to store the data from rental table with information for the month of May.
   -- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
   -- Create a table rentals_june to store the data from rental table with information for the month of June.
   -- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
   -- Check the number of rentals for each customer for May.
   -- Check the number of rentals for each customer for June.
   -- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:
		-- Check the number of rentals for each customer for May
        -- Check the number of rentals for each customer for June Hint: You can store the results from the two queries in two separate dataframes.
   -- Write a function that checks if customer borrowed more or less films in the month of June as compared to May.
   -- Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. 
   
   use sakila;
select * from rental;

drop table if exists rentals_may;
create table rentals_may as
select * from rental where rental_date like '____-05-%';

select * from rentals_may; -- sanity check
select customer_id, count(rental_id) as number_of_rentals from rentals_may group by customer_id;

drop table if exists rentals_june;
create table rentals_june as
select * from rental where rental_date like '____-06-%';

select * from rentals_june; -- sanity check
select customer_id, count(rental_id) as number_of_rentals from rentals_june group by customer_id;

