-- Get Max ID from table
SELECT MAX(id)
FROM table;

-- Get Next ID from table
SELECT nextval('table_id_seq');

-- create sequence
create sequence road_names_1_id_seq;
alter table road_names
    alter column id set default nextval('public.road_names_1_id_seq'::regclass);

-- Set Next ID Value to MAX ID
SELECT setval('table_id_seq', (SELECT MAX(id) FROM table) + 1);

-- If any type error occurs

SELECT setval('road_names_1_id_seq', (SELECT MAX(id) ::bigint FROM table) + 1);