USE sakila;

SHOW tables;   #Display all available tables in the Sakila database.

SELECT * 
FROM actor;   #Retrieve all the data from the tables actor, film and customer
SELECT * 
FROM film;
SELECT * 
FROM customer;

SELECT title  #Titles of all films from the film table
FROM film;

SELECT name AS language   # List of languages used in films, with the column aliased as language from the language table
FROM language;

SELECT first_names   #List of first names of all employees from the staff table:
FROM staff;

SELECT DISTINCT release_year   # Retrieve unique release years.
FROM film;

select count(*) from store;  #Number of stores
select count(*) from staff;   #Number of employees
select * from rental;

SELECT   #Films are available for rent 
    (SELECT COUNT(*) FROM film) - (SELECT COUNT(*) FROM rental) AS films_available_for_rent;     
SELECT COUNT(*) AS films_rented    #Films have been rented
FROM rental;
SELECT COUNT(DISTINCT last_name) AS distinct_last_names  # Number of distinct last names
FROM actor;
SELECT *  #The 10 longest films
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *   #Retrieve all actors with the first name "SCARLETT"
FROM actor
WHERE first_name = 'SCARLETT'; 

SELECT * FROM film   #Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
WHERE title LIKE '%ARMAGEDDON%' AND length>100 ;

select count(*) from film   #Determine the number of films that include Behind the Scenes content
where special_features like '%Behind the Scenes%';







 







