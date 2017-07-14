-- USAGE:
--
--  Connect to the database as the same database admin role
--  who created it, and execute the commands in this file.  For
--  example:
--
--     su - postgres
--     psql -q -f db-types-drop.sql users
--
--  This drops the database objects in the users database.
--

-- DROP TABLE image;
-- DROP TABLE item;
-- DROP TABLE stash;
-- DROP TABLE owner;
DROP TABLE users;
DROP TYPE  GEOLOC;
DROP DOMAIN LONGITUDE;
DROP DOMAIN LATITUDE;
DROP DOMAIN URL;
