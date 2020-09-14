/* This is a SCHEMA file */
/* It contains the data structure for my tables */
/* Naming Conventions:
SQL keywords: UPPER CASE
names: lowercase or snake_case */

CREATE TABLE restaurants (
    id serial PRIMARY KEY,
    name text NOT NULL,
    distance integer,
    stars integer,
    category text,
    favorite_dish text,
    takeout boolean,
    ate_last TIMESTAMP
);

CREATE TABLE reviewer (
    id serial PRIMARY KEY,
    name text,
    email VARCHAR,
    karma INT
);

CREATE TABLE reviews (
    id serial PRIMARY KEY,
    title TEXT,
    review TEXT,
    stars INT,
    reviewer_id INT,
    restaurants_id INT,
    FOREIGN KEY (reviewer_id) REFERENCES reviewer(id),
    FOREIGN KEY (restaurants_id) REFERENCES restaurants(id)
);
