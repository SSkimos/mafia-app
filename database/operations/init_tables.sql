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
insert into role (title)
values ('ведущий');

insert into action (title)
values ('победа мирным жителем');
insert into action (title)
values ('победа мафией');
insert into action (title)
values ('победа доном');
insert into action (title)
values ('победа шерифом');
insert into action (title)
values ('дополнительный балл');
insert into action (title)
values ('штраф');
insert into action (title)
values ('лучший ход мирного жителя или шерифа');
insert into action (title)
values ('удаление с игрового стола');

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

-- insert into game (user_id, club_id, start_time, end_time, winner)
-- values ((select array(select id from "user" where login in ('curtrika', 'teresecl'))),
--                (select id from club where club.name = 'РТУ МИРЭА'),
--                '2022/09/13 13:50', '2022/09/13 15:10', 'test');

insert into game (user_id, club_id, start_time, end_time, winner)
values ('{1,2,3,4,5,6,7,8,9,10,11}', 1, '2022/09/13 13:50', '2022/09/13 15:10', 'мафия');

insert into user_game_data(user_id, role_id)
values (1, 5);
insert into user_game_data(user_id, role_id, achievements_id)
values (2, 1, '{1}');
insert into user_game_data(user_id, role_id, achievements_id)
values (3, 4, '{2}');
insert into user_game_data(user_id, role_id, achievements_id)
values (4, 2, '{3}');
insert into user_game_data(user_id, role_id)
values (5, 4);
insert into user_game_data(user_id, role_id)
values (6, 4);
insert into user_game_data(user_id, role_id, achievements_id)
values (7, 1, '{4}');
insert into user_game_data(user_id, role_id)
values (8, 4);
insert into user_game_data(user_id, role_id, achievements_id)
values (9, 4, '{5}');
insert into user_game_data(user_id, role_id)
values (10, 3);
insert into user_game_data(user_id, role_id)
values (11, 4);

insert into achievement(actions_id, points)
values (2, -1);
insert into achievement(actions_id, points)
values (6, -1);
insert into achievement(actions_id, points)
values (3, -1);
insert into achievement(actions_id, points)
values (2, -1);
insert into achievement(actions_id, points)
values (6, -1);
