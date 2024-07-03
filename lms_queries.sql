#drop tables

drop table books_rentals;
drop table customers;
drop table books;
drop table authors;

#Create Table Authors

CREATE TABLE AUTHORS(
AUTHOR_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
FIRST_NAME VARCHAR(250),
LAST_NAME VARCHAR(250),
DATE_OF_BIRTH DATE);

#Create Table Books

CREATE TABLE BOOKS(
BOOK_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
TITLE VARCHAR(250),
AUTHOR_ID INTEGER,
DATE_OF_CREATION DATE,
DATE_OF_PUBLICATION DATE,
UNIQUE(TITLE),
FOREIGN KEY(AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID));

#Create Table Customers

CREATE TABLE CUSTOMERS(
CUSTOMER_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
FIRST_NAME VARCHAR(250),
LAST_NAME VARCHAR(250),
EMAIL_ID VARCHAR(250),
MEMBERSHIP_DATE DATE,
UNIQUE(EMAIL_ID));

#Create Table Books_rentals

CREATE TABLE BOOKS_RENTALS(
BOOK_ID INTEGER,
CUSTOMER_ID INTEGER,
RENTAL_START_DATE DATE,
RENTAL_END_DATE DATE,
CHECK (RENTAL_END_DATE >= RENTAL_START_DATE),
FOREIGN KEY(BOOK_ID) REFERENCES BOOKS(BOOK_ID),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID));

insert into authors(first_name, last_name, date_of_birth) 
values
(trim("William   "), trim("Shakespeare      "), "1564-04-23"),
(trim("Jane      "), trim("Austen           "), "1775-12-16"),
(trim("Charles   "), trim("Dickens          "), "1812-02-07"),
(trim("George    "), trim("Orwell           "), "1903-06-25"),
(trim("J.R.R.    "), trim("Tolkien          "), "1892-01-03"),
(trim("Virginia  "), trim("Woolf            "), "1882-01-25"),
(trim("Emily     "), trim("Brontë           "), "1818-07-30"),
(trim("Mary      "), trim("Shelley          "), "1797-08-30"),
(trim("Thomas    "), trim("Hardy            "), "1840-06-02"),
(trim("Oscar     "), trim("Wilde            "), "1854-10-16"),
(trim("Joseph    "), trim("Conrad           "), "1857-12-03"),
(trim("Agatha    "), trim("Christie         "), "1890-09-15");

insert into books(title, author_id, date_of_creation, date_of_publication)
Values
(trim("Hamlet                         "),01,"1980-02-02","1603-01-02"),
(trim("Pride and Prejudice            "),02,"1980-02-02","1813-01-03"),
(trim("A Tale of Two Cities           "),03,"1980-02-02","1859-01-04"),
(trim("1984                           "),04,"1980-02-02","1949-01-05"),
(trim("The Hobbit                     "),05,"1980-02-02","1937-01-06"),
(trim("Mrs Dalloway                   "),06,"1980-02-02","1925-01-07"),
(trim("Wuthering Heights              "),07,"1980-02-02","1847-01-08"),
(trim("Frankenstein                   "),08,"1980-02-02","1818-01-09"),
(trim("Tess of the d'Urbervilles      "),09,"1980-02-02","1891-01-10"),
(trim("The Picture of Dorian Gray     "),10,"1980-02-02","1890-01-11"),
(trim("Heart of Darkness              "),11,"1980-02-02","1899-01-12"),
(trim("The Mysterious Affair at Styles"),12,"1980-02-02","1920-01-13"),
(trim("Macbeth                                          "),01,"1980-02-02","1606-01-02"),
(trim("Sense and Sensibility                            "),02,"1980-02-02","1811-01-03"),
(trim("Great Expectations                               "),03,"1980-02-02","1861-01-04"),
(trim("Animal Farm                                      "),04,"1980-02-02","1945-01-05"),
(trim("The Lord of the Rings: The Fellowship of the Ring"),05,"1980-02-02","1954-01-06"),
(trim("To the Lighthouse                                "),06,"1980-02-02","1927-01-07"),
(trim("Poems by Currer, Ellis, and Acton Bell           "),07,"1980-02-02","1846-01-08"),
(trim("The Last Man                                     "),08,"1980-02-02","1826-01-09"),
(trim("Far from the Madding Crowd                       "),09,"1980-02-02","1874-01-10"),
(trim("The Importance of Being Earnest                  "),10,"1980-02-02","1895-01-11"),
(trim("Lord Jim                                         "),11,"1980-02-02","1900-01-12"),
(trim("Murder on the Orient Express                     "),12,"1980-02-02","1934-01-13");

insert into customers(first_name, last_name, email_id, membership_date)
values
(trim("Wright            "), trim("Jackie    "),trim("jackie.wright@example.com    "),"1983-04-06"),
(trim("Smith             "), trim("Paul      "),trim("paul.smith@example.com       "),"1980-08-07"),
(trim("Smith             "), trim("Tracy     "),trim("tracy.smith@example.com      "),"2000-09-15"),
(trim("Lopez             "), trim("Lisa      "),trim("lisa.lopez@example.com       "),"2000-12-01"),
(trim("Coleman           "), trim("Elizabeth "),trim("elizabeth.coleman@example.com"),"1997-09-11"),
(trim("Thompson          "), trim("Shawn     "),trim("shawn.thompson@example.com   "),"1996-12-16"),
(trim("Ritter            "), trim("Brittney  "),trim("brittney.ritter@example.com  "),"1984-06-17"),
(trim("Bowen             "), trim("Tammy     "),trim("tammy.bowen@example.com      "),"1993-09-23"),
(trim("Smith             "), trim("Laura     "),trim("laura.smith@example.com      "),"1995-08-28"),
(trim("Le                "), trim("Anthony   "),trim("anthony.le@example.com       "),"2023-02-11");

insert into books_rentals(book_id, customer_id, rental_start_date, rental_end_date)
values
(13, 01, "2023-01-30", "2024-07-20"),
(14, 02, "2023-03-23", "2024-02-03"),
(15, 03, "2023-09-26", "2024-06-25"),
(16, 04, "2023-10-12", "2024-06-19"),
(17, 05, "2023-11-14", "2024-09-28"),
(18, 06, "2023-02-07", "2024-02-29"),
(19, 07, "2023-04-24", "2024-12-28"),
(20, 08, "2023-08-31", "2025-01-02"),
(21, 09, "2023-09-26", "2024-01-30"),
(22, 10, "2023-10-20", "2024-11-24"),
(23, 01, "2023-02-28", "2024-08-20"),
(24, 02, "2023-03-13", "2025-03-11");

SELECT * FROM BOOKS;
SELECT * FROM AUTHORS;
SELECT * FROM CUSTOMERS;
SELECT * FROM BOOKS_RENTALS;

#This query will list all the books with their title authors first name, last name and publication date in asc publication date
SELECT BOOKS.TITLE, AUTHORS.FIRST_NAME 'FIRST NAME', AUTHORS.LAST_NAME 'LAST NAME' , BOOKS.DATE_OF_PUBLICATION 'PUBLICATION DATE'
FROM BOOKS
INNER JOIN AUTHORS 
ON BOOKS.AUTHOR_ID = AUTHORS.AUTHOR_ID
ORDER BY BOOKS.DATE_OF_PUBLICATION;

#This query will selecl all the customers who took the membership in the last year;
SELECT * FROM CUSTOMERS 
WHERE (YEAR(MEMBERSHIP_DATE) >= YEAR(CURDATE()) - 1);

#This query will retrieve all the books that are still rented by the customer.
SELECT BOOKS.TITLE 'BOOK RENTED', CUSTOMERS.FIRST_NAME 'FIRST NAME', CUSTOMERS.LAST_NAME ' LAST NAME'
FROM BOOKS
INNER JOIN BOOKS_RENTALS
ON BOOKS_RENTALS.BOOK_ID = BOOKS.BOOK_ID
INNER JOIN CUSTOMERS
ON BOOKS_RENTALS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID
WHERE BOOKS_RENTALS.RENTAL_END_DATE > DATE(CURRENT_TIMESTAMP());