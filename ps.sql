-- create new_schema ;
USE new_schema;

-- Create the authors table
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50)
);

-- Create the books table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Insert data into the authors table
INSERT INTO authors (author_id, author_name)
VALUES 
(1, 'J.K. Rowling'),
(2, 'George R.R. Martin'),
(3, 'J.R.R. Tolkien');

-- Insert data into the books table
INSERT INTO books (book_id, book_title, author_id)
VALUES 
(101, 'Harry Potter and the Sorcerer\'s Stone', 1),
(102, 'Harry Potter and the Chamber of Secrets', 1),
(103, 'A Game of Thrones', 2),
(104, 'A Clash of Kings', 2),
(105, 'The Fellowship of the Ring', 3),
(106, 'The Two Towers', 3);

-- Join the tables and retrieve data
SELECT 
    books.book_id, 
    books.book_title, 
    authors.author_name
FROM 
    books
INNER JOIN 
    authors ON books.author_id = authors.author_id;
