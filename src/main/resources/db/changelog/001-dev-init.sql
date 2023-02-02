--liquibase formatted sql

--changeset pl.manes:001_1
create table if not exists category
(
    id   uuid not null primary key,
    name varchar(255)
)

--changeset pl.manes:001_2
insert into category (id, name)
values (gen_random_uuid(), 'Music');

--changeset pl.manes:001_3
insert into category (id, name)
values (gen_random_uuid(), 'Musician');

--changeset pl.manes:001_4
insert into category (id, name)
values (gen_random_uuid(), 'Bands');

--changeset pl.manes:001_5
insert into category (id, name)
values (gen_random_uuid(), 'Music History');

--changeset pl.manes:001_6
insert into category (id, name)
values (gen_random_uuid(), 'Clips');

--changeset pl.manes:001_7
insert into category (id, name)
values (gen_random_uuid(), 'Curiosities');

--changeset pl.manes:001_8
create table if not exists question
(
    id   uuid not null primary key,
    name text
)

--changeset pl.manes:001_9
insert into question (id, name)
values (gen_random_uuid(), 'Who is the vocalist of the band Dimmu Borgir?');

--changeset pl.manes:001_10
create table if not exists answer
(
    id   uuid not null primary key,
    name text
)

--changeset pl.manes:001_11
insert into answer (id, name)
values (gen_random_uuid(), 'Shagrath (Stian Tomt Thoresen)');