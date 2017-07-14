-- USAGE:
--
--  Connect to the PostgreSQL server using a database role who has
--  CREATEROLE priviledge and execute the commands in this file.  For
--  example:
--
--     su - postgres
--     psql -q -f role-drop.sql \
--          -v rolename=user-service
--

DROP ROLE :"rolename";
