drop table if exists club;
create table club (
    id integer primary key,
    title varchar(100) not null
);

drop table if exists users;
create table users (
    id integer primary key,
    login varchar(100),
    password varchar(100),
    role integer
);

drop table if exists role;
create table role (
    id integer primary key,
    title varchar(100)
);

drop table if exists actions;
create table actions (
    id integer primary key,
    title varchar(100)
);

drop table if exists achievement;
create table achievement (
    id integer primary key,
    actions_id integer,
    points integer,
    foreign key (actions_id)
        references actions (id)
        on update cascade
        on delete restrict
);

drop table if exists user_game_data;
create table user_game_data (
    id integer primary key,
    user_id integer,
    role_id integer,
    achievements_id integer[],
    foreign key (user_id)
        references users (id)
        on update cascade
        on delete restrict,
    foreign key (role_id)
        references role (id)
        on update cascade
        on delete restrict,
    foreign key (achievements_id)
        references achievement (id)
        on update cascade
        on delete restrict
);

drop table if exists game;
create table game (
    id integer primary key,
    user_id integer[],
    club_id integer,
    start_date date,
    end_date date,
    winner varchar(100),
    foreign key (club_id)
        references club (id)
        on update cascade
        on delete restrict,
    foreign key (user_id)
        references user_game_data (id)
        on update cascade
        on delete restrict
);

