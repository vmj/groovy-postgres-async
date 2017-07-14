-- USAGE:
--
--  Connect to the database as the same database admin role
--  who created it, and execute the commands in this file.  For
--  example:
--
--     su - postgres
--     psql -q -f db-types-create.sql users
--
--  This creates the database objects in the users database.
--

-- URL is a more restrictive type of TEXT.
-- CREATE DOMAIN URL
--        AS TEXT CHECK ( VALUE ~ '^https?://' );

-- Latitude is an angle, in degrees, north from equator.  I.e. north
-- pole is 90 degrees and south pole is -90 degrees.
-- CREATE DOMAIN LATITUDE
--        AS REAL NOT NULL
--                CHECK ( VALUE >= -90
--                    AND VALUE <= 90 )
--                DEFAULT NULL;

-- Longitude is an angle, in degrees, east from prime meridian
-- (passing near the Royal Observatory, Greenwich near London, UK).
-- I.e. places east from Greenwich have > 0 longitude, while places
-- west have < 0 longitude.
-- CREATE DOMAIN LONGITUDE
--        AS REAL NOT NULL
--                CHECK ( VALUE >= -180
--                    AND VALUE <= 180 )
--                DEFAULT NULL;

-- Geoloc is a composite type for simple latitude longitude pair.
-- CREATE TYPE GEOLOC AS (
--        latitude      LATITUDE,
--        longitude     LONGITUDE
-- );

--
-- Tables (column grouping: attributes, content, links)
--

CREATE TABLE users (
       id          SERIAL    PRIMARY KEY,
       modified    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
       created     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

       uuid        UUID      NOT NULL UNIQUE DEFAULT NULL,

--       url         URL       NOT NULL UNIQUE DEFAULT NULL,

--       location    GEOLOC    NOT NULL DEFAULT NULL,

       username    TEXT      DEFAULT ''
);

-- CREATE TABLE owner (
--        id          SERIAL    PRIMARY KEY,
--        uuid        UUID      NOT NULL UNIQUE DEFAULT NULL,

--        description TEXT      DEFAULT '',
--        thumbnail   URL       DEFAULT NULL,

--        server_id   INTEGER   REFERENCES server
--                              ON UPDATE CASCADE
--                              ON DELETE CASCADE
-- );

-- CREATE TABLE stash (
--        id          SERIAL    PRIMARY KEY,
--        uuid        UUID      NOT NULL UNIQUE DEFAULT NULL,

--        title       TEXT      DEFAULT '',
--        description TEXT      DEFAULT '',
--        thumbnail   URL       DEFAULT NULL,
--        location    GEOLOC    NOT NULL DEFAULT NULL,

--        owner_id    INTEGER   REFERENCES owner
--                              ON UPDATE CASCADE
--                              ON DELETE CASCADE
-- );

-- CREATE TABLE item (
--        id          SERIAL    PRIMARY KEY,
--        uuid        UUID      NOT NULL UNIQUE DEFAULT NULL,

--        title       TEXT      DEFAULT '',
--        description TEXT      DEFAULT '',
--        thumbnail   URL       DEFAULt NULL,
--        expires     TIMESTAMP DEFAULT NULL,
--        modified    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
--        created     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

--        stash_id    INTEGER   REFERENCES stash
--                              ON UPDATE CASCADE
--                              ON DELETE CASCADE
-- );

-- CREATE TABLE image (
--        id          SERIAL    PRIMARY KEY,
--        uuid        UUID      NOT NULL UNIQUE DEFAULT NULL,

--        url         URL       NOT NULL DEFAULT NULL,

--        item_id     INTEGER   REFERENCES item
--                              ON UPDATE CASCADE
--                              ON DELETE CASCADE
-- );
