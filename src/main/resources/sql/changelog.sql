--liquibase formatted sql

--changeset anupama:001_create_table
CREATE TABLE example (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL
);
--rollback drop table your_table;

--changeset anupama:002_create_table
CREATE TABLE example1 (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL
);

