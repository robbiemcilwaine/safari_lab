DROP TABLE animals;
DROP TABLE assignments;
DROP TABLE staff;
DROP TABLE enclosure;




CREATE TABLE enclosure(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closed_for_maintenance BOOLEAN

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
INSERT INTO animals (name, type, age) VALUES ('Poppy', 'Frog', 10);
INSERT INTO animals (name, type, age) VALUES ('Alex', 'Monkey', 10);
INSERT INTO animals (name, type, age) VALUES ('Leo', 'Lion', 8);
INSERT INTO animals (name, type, age) VALUES ('Bradley', 'Parrot', 20);
INSERT INTO animals (name, type, age) VALUES ('Jennifer', 'Camel', 30);


SELECT * FROM animals;


INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Big Cat Field',30,FALSE);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Frog Pond',100,FALSE);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Desert',100,FALSE);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Forest',45,TRUE);
INSERT INTO enclosure (name, capacity, closed_for_maintenance) VALUES ('Canopy',29,FALSE);




SELECT * FROM enclosure;
