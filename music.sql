-- CREATE TABLE album (
--     id serial PRIMARY KEY,
--     name varchar,
--     genre varchar,
--     producer varchar
-- );

-- CREATE TABLE artist (
--     id serial PRIMARY KEY,
--     name varchar,
--     genre varchar,
--     era integer
-- );

-- CREATE TABLE songs (
--     id serial PRIMARY KEY,
--     nameSong varchar,
--     album_id integer REFERENCES album (id),
--     artist_id integer REFERENCES artist (id),
--     duration time
-- );

-- UPDATE artist 
--     SET era = 2017
--     WHERE id = 3;

-- ALTER TABLE album
-- ADD release_year varchar;

-- ALTER TABLE album DROP release_year;

-- ALTER TABLE album
-- ADD release_year integer;