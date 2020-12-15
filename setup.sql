CREATE TABLE person
(
    id BIGSERIAL PRIMARY KEY,
    firstName varchar NOT NULL,
    lastname varchar NOT NULL,
    email varchar NOT NULL,
    createdOn TIMESTAMP NOT NULL,
    dob DATE NOT NULL
);