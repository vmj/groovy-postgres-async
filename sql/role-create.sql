-- USAGE:
--
--  Connect to the PostgreSQL server using a database role who has
--  CREATEROLE priviledge and execute the commands in this file.  For
--  example:
--
--     su - postgres
--     psql -q -f role-create.sql \
--          -v rolename=user-service \
--          -v password=password
--

CREATE ROLE :"rolename"
       PASSWORD :'password'
       LOGIN;
