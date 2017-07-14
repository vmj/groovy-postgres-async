-- USAGE:
--
--  Connect to the database as the role and
--  execute the commands in this file.  For example:
--
--     psql -f test-insert.sql users user-service
--
--  This will fill the tables with some simple test data.
--

INSERT INTO server (uuid, url)
       VALUES ('06b535fb-2d44-48a8-93fe-f49fe7766cf8', 'http://api.recycloid.org/');

INSERT INTO owner (uuid, server_id)
       VALUES ('fbb8958f-1384-4c26-85bf-18adb690e8fd', 1),
              ('50679cf3-934a-464f-98a8-4d0e897bda6b', 1);

INSERT INTO stash (uuid, location, owner_id)
       VALUES ('065345f3-87dd-4070-a5df-e5b14546e0fb', (45.12345, 65.12345), 1),
              ('b744525e-ea54-4020-aeac-56feaf1e9222', (45.12345, 65.12345), 1),
              ('c3373e86-c7aa-486d-b7ad-7f9aca94f4be', (45.12345, 65.12345), 2),
              ('989e88f0-1d4e-45d9-915a-ca66a1e7f6aa', (45.12345, 65.12345), 2);

INSERT INTO item (uuid, stash_id)
       VALUES ('d552c519-62cd-4b09-b9e6-315ff4b6955a', 1),
              ('042c5284-01b4-412a-b44e-73becf8e1118', 1),
              ('a90a66cd-0d1c-4181-9a05-8ec608cff7e4', 2),
              ('1c6a654d-179e-437d-a49c-7fc9bbf6f2de', 2),
              ('8769018a-6e11-486a-bf48-71a8d43a8fcd', 3),
              ('becf6aa7-aee2-4932-9378-ac13cab345dc', 3),
              ('14ed4ce7-9e9b-4340-9f3e-87438ac5f1f0', 4),
              ('579957e5-8ec0-41dc-bfe4-dcdd50918e9c', 4);

INSERT INTO image (uuid, url, item_id)
       VALUES ('2ce60a42-78f0-4b05-868b-21b4a1649d99', 'http://static.some.tld/icon.png', 1),
              ('b886d28c-274b-4013-9c01-0c6e50e716db', 'http://static.some.tld/icon.png', 1),
              ('7bb7fce4-a8ad-4d1c-a92b-0bad0251a430', 'http://static.some.tld/icon.png', 2),
              ('94c3a8c8-051b-4b88-88a2-0cdc16f14f37', 'http://static.some.tld/icon.png', 2),
              ('7e3654a0-d981-468e-8cb0-04c5f317a4a6', 'http://static.some.tld/icon.png', 3),
              ('4d1374b9-f99d-430b-8819-d58a38bd3f05', 'http://static.some.tld/icon.png', 3),
              ('bd4bf249-e57e-4603-8f89-50a9baf3df6c', 'http://static.some.tld/icon.png', 4),
              ('d601733a-5373-4758-8a38-9241f6ace776', 'http://static.some.tld/icon.png', 4),
              ('8c5da899-2b0e-4bed-8e72-42d1e0cd413e', 'http://static.some.tld/icon.png', 5),
              ('4924c02c-76b2-4ae0-a8f3-989be0d6efa5', 'http://static.some.tld/icon.png', 5),
              ('cefba542-caa4-402b-b973-e075d84fcaac', 'http://static.some.tld/icon.png', 6),
              ('be3295aa-5bd4-4ced-9b27-a025878f7166', 'http://static.some.tld/icon.png', 6),
              ('278c7a9c-b9fa-4421-8cbd-0e6f76a71349', 'http://static.some.tld/icon.png', 7),
              ('4f618e0b-b995-4b80-ae54-acd3c637a40b', 'http://static.some.tld/icon.png', 7),
              ('b2e45149-b260-4429-b358-3dcf3cc26042', 'http://static.some.tld/icon.png', 8),
              ('faf454e1-6f63-4323-81b9-e6dcb2effdf6', 'http://static.some.tld/icon.png', 8);
