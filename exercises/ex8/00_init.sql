CREATE TABLE visits (
  id SERIAL PRIMARY KEY,
  entry_time TIMESTAMP NOT NULL,
  exit_time TIMESTAMP NOT NULL
);

INSERT INTO visits (entry_time,exit_time)
VALUES
  ('2019-04-01', '2019-04-06'),
  ('2019-04-02', '2019-04-11'),
  ('2019-04-03', '2019-04-05'),
  ('2019-04-07', '2019-04-13'),
  ('2019-04-07', '2019-04-12'),
  ('2019-04-10', '2019-04-17'),
  ('2019-04-08', '2019-04-12'),
  ('2019-04-11', '2019-04-20');
