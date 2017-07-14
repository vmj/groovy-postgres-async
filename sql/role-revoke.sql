-- USAGE:
--
--  Connect to the database as a database administrator role
--  (or superuser) and execute the commands in this file.  For
--  example:
--
--     su - postgres
--     psql -q -f role-revoke.sql -v rolename=user-service users
--

-- Revokes any priviledges given to the role in current
-- database.
DROP OWNED BY :"rolename";
