CREATE TABLE author (
    author_id serial PRIMARY KEY,
    author_name VARCHAR(20)
);

CREATE TABLE books (
    book_id serial PRIMARY KEY,
    book_name VARCHAR(20),
    author_book INTEGER REFERENCES author(author_id)
);

-- CREATE TABLE books (
--     book_id serial PRIMARY KEY,
--     book_name VARCHAR(20),
--     author_book INTEGER REFERENCES author(author_id) on DELETE CASCADE -- this is used for maintaining consistency 
-- );

INSERT INTO
    author (author_name)
VALUES
    ('J.K. Rowling'),
    ('George Orwell'),
    ('Jane Austen'),
    ('Agatha Christie'),
    ('Stephen King');

INSERT INTO
    books (book_name, author_book)
VALUES
    ('Harry Potter and the Sorcerer''s Stone', 1),
    ('1984', 2),
    ('Pride and Prejudice', 3),
    ('Murder on the Orient Express', 4),
    ('The Shining', 5),
    ('Harry Potter and the Chamber of Secrets', 1),
    ('Sense and Sensibility', 3),
    ('The Hobbit', 2);

SELECT * FROM books WHERE author_book = 1;

