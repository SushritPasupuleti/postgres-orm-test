CREATE TABLE person
(
    id BIGSERIAL PRIMARY KEY,
    firstName varchar NOT NULL,
    lastname varchar NOT NULL,
    email varchar NOT NULL,
    createdOn TIMESTAMP default current_timestamp,
    dob DATE NOT NULL
);
INSERT INTO person
    (
    firstName,
    lastName,
    email,
    dob
    )
VALUES
    ('Bruce', 'Wayne', 'bruce@wayne.com', '1988-02-22');
INSERT INTO person
    (
    firstName,
    lastName,
    email,
    dob
    )
VALUES
    ('Clark', 'Kent', 'kent@dailyplanet.com', '1987-12-31');