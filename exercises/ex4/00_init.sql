CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE toys (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL,
  people_id INTEGER,
  CONSTRAINT fk_people  FOREIGN KEY(people_id) REFERENCES people(id)
);

INSERT INTO people(id, name)
VALUES
  (1,'John'),
  (2,'Jane'),
  (3,'Jack'),
  (4,'Jeen');

INSERT INTO toys(id, name, people_id)
VALUES
  (1,'toy1',1),
  (2,'toy2',1),
  (3,'toy3',1),
  (4,'toy4',4),
  (5,'toy5',3),
  (6,'toy6',3);
