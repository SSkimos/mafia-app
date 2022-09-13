create table game (
    id bigserial,
    user_id bigint[],
    club_id bigint,
    start_time timestamp,
    end_time timestamp,
    winner varchar(100)
);

create table club (
    id bigserial,
    name varchar(100),
    city_id bigint
);

create table city (
    id bigserial,
    city varchar(100)
);

create table action (
    id bigserial,
    title varchar(100)
);

create table achievement (
    id bigserial,
    actions_id bigint,
    points bigint
);

create table user_game_data (
    id bigserial,
    user_id bigint,
    role_id bigint,
    achievements_id bigint[]
);

create table "user" (
    id bigserial,
    login varchar(100),
    password varchar(100),
    role varchar(100),
    club_id bigint
);

create table role (
    id bigserial,
    title varchar(100)
);