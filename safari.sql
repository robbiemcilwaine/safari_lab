DROP TABLE animals;
DROP TABLE assignments;
DROP TABLE staff;
DROP TABLE enclosure;




CREATE TABLE enclosure(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintaince BOOLEAN

);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeee_number INT
);

CREATE TABLE assignments (
    id SERIAL PRIMARY KEY,
    employeee_id INTEGER REFERENCES staff(employeenumber)NOT NULL,
    enclosure_id INTEGER REFERENCES enclosure(id)NOT NULL,
    Day VARCHAR(255)
);


CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INTEGER REFERENCES enclosure(id)
);
INSERT INTO animals (name, type, age) VALUES ('Poppy', 'Dog', 10);
INSERT INTO animals (name, type, age) VALUES ('Alex', 'Zebra', 10);
INSERT INTO animals (name, type, age) VALUES ('Leo', 'Lion', 8);
INSERT INTO animals (name, type, age) VALUES ('Bradley', 'Giraffe', 20);
INSERT INTO animals (name, type, age) VALUES ('Jennifer', 'Hippo', 30);


SELECT * FROM animals;






