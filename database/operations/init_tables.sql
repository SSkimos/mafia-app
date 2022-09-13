insert into city (city)
values ('Москва');
insert into city (city)
values ('Липецк');

insert into club (name, city_id)
values ('РТУ МИРЭА', (select id from city where city.city = 'Москва'));
insert into club (name, city_id)
values ('Школа 21', (select id from city where city.city = 'Москва'));

insert into role (title)
values ('мафия');
insert into role (title)
values ('дон');
insert into role (title)
values ('шериф');
insert into role (title)
values ('мирный житель');

insert into game (user_id, club_id, start_time, end_time, winner)
values ((select id from "user" where login in ('curtrika1', 'curtrika2')),
       (select id from club where club.name = 'РТУ МИРЭА'),
       '2022/09/13 13:40', '2022/09/13 15:10', 'мафия');

insert into "user" (login, password, role, club_id)
values ('curtrika', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('teresecl', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('valeryje', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('janayspe', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('lisandra', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('hankmagg', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('johniety', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('boomeran', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('warbirdo', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('gerardys', '123', '1', (select id from club where club.name = 'РТУ МИРЭА'));
insert into "user" (login, password, role, club_id)
values ('howieter', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('nazeebod', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('shenatam', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('greyfeat', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('workerco', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('aphrodit', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('nanadaug', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('goblinar', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('jettajac', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('nellyole', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('posidoni', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('hydekryp', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('dariaoti', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('thadachi', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('kellabul', '123', '1', (select id from club where club.name = 'Школа 21'));
insert into "user" (login, password, role, club_id)
values ('jewfishc', '123', '1', (select id from club where club.name = 'Школа 21'));


