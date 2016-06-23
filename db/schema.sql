DROP TABLE IF EXISTS arenas;
DROP TABLE IF EXISTS gladiators;

CREATE TABLE arenas(
  id SERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE gladiators(
  id SERIAL PRIMARY KEY,
  name TEXT,
  weapon TEXT,
  arena_id INT
);
