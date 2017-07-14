-- USAGE:
--
--  Connect to the PostgreSQL server as the same database
--  administrator role who created the database, and execute
--  the commands in this file.  For example:
--
--     su - postgres
--     psql -q -f db-drop.sql -v dbName=users
--

-- Dropping the database drops all the custom data types, domains, and
-- tables in it.
DROP DATABASE :"dbName";
