--liquibase formatted sql

--changeset pl.manes:001_1

create table if not exists category
(
    id   uuid not null primary key,
    name varchar(255)
)

--changeset pl.manes:001_2

insert into category (id, name)
values (random_uuid(), 'Music');