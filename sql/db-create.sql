-- USAGE:
--
--  Connect to the PostgreSQL server using a database role who has
--  CREATEDB priviledge (or as superuser), and execute the commands in
--  this file.  For example:
--
--    su - postgres
--    psql -q -f db-create.sql -v dbName=users
--
--  The recycloid database should be owned by a database
--  administrator, not by any of the recycloid roles.
--

CREATE DATABASE :"dbName"
       WITH ENCODING 'UTF8'
            LC_COLLATE='en_US.UTF-8'
            LC_CTYPE='en_US.UTF-8'
       TEMPLATE=template0;
