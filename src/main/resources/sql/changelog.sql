--liquibase formatted sql

--changeset anupama:003_create_table
CREATE TABLE example_table (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL
);
--rollback drop table your_table;

