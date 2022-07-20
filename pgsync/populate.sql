CREATE TABLE IF NOT EXISTS book (
    isbn INT NOT NULL,
    title varchar(100) NOT NULL,
    description varchar(500) NOT NULL,
    PRIMARY KEY (isbn)
);


CREATE TABLE IF NOT EXISTS author (
    id SERIAL NOT NULL,
    name varchar(100) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS bookauthor (
    id SERIAL NOT NULL,
    book_isbn INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (book_isbn) REFERENCES book (isbn),
    FOREIGN KEY (author_id) REFERENCES author (id)
);

INSERT INTO book (isbn,title,description) 
VALUES (9785, 'Charlie and the chocolate factory','Willy Wonkas famous chocolate factory is opening at last!'),
 (9788	, 'Kafka on the Shore','Kafka on the Shore is a 2002 novel by Japanese author Haruki Murakami.'),
(9781	, '1984', '1984 was George Orwells chilling prophecy about the dystopian future.');


INSERT INTO author (name) 
VALUES ('Roald Dahl'),
 ('Haruki Murakami'),
('Philip Gabriel'),
('George Orwell');



INSERT INTO bookauthor (book_isbn,author_id) 
VALUES (9785, 1),
 (9788, 2),
(9788, 3),
(9781, 4);




