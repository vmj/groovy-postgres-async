-- USAGE:
--
--  To create the database, connect to the PostgreSQL server
--  using a database role who has CREATEDB priviledge (or as superuser),
--  and execute the commands in this file.  For example:
--
--    su - postgres
--    psql -q -f db-create.sql -v dbName=users
--
--  Note that the database and the objects in it should NOT be owned by
--  any of the roles that will be used by the software.  Some
--  database administrative role is better suited for the owner.
--

CREATE DATABASE :"dbName"
       WITH ENCODING 'UTF8'
            LC_COLLATE='en_US.UTF-8'
            LC_CTYPE='en_US.UTF-8'
       TEMPLATE=template0;
