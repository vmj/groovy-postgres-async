-- USAGE:
--
--  Connect to the database as the database administrator
--  and execute the commands in this file.  For example:
--
--     su - postgres
--     psql -q -f role-grant.sql -v rolename=user-service users


-- Allow read and delete access to everything.

GRANT SELECT,
      DELETE
   ON users
   TO :"rolename";

-- Allow creation of new rows.  But prevent setting the ID column
-- directly since they are managed by PostgreSQL.  Also, item
-- modification and creation timestamps are managed by PostgreSQL.
-- Finally, UUIDs can never change once inserted.

GRANT INSERT (username, uuid),
      UPDATE (username)
   ON users
   TO :"rolename";

-- Creating new rows requires read access to the sequences.

GRANT USAGE
   ON SEQUENCE users_id_seq
   TO :"rolename";
