insert into user_access (username, password, role)
values ('s15_t', 
        '$2a$10$B5ykjK6.84im7N8lRovmjOf994HjtKJ/Ax46F.xGbawYDPwsfW2By', --1234
        'TEACHER'),
        ('s15_c',
        '$2a$10$B5ykjK6.84im7N8lRovmjOf994HjtKJ/Ax46F.xGbawYDPwsfW2By', 
        'CAPTAIN'),
        ('captian6a',
        '$2a$10$B5ykjK6.84im7N8lRovmjOf994HjtKJ/Ax46F.xGbawYDPwsfW2By', 
        'CAPTAIN');

insert into team (description)
values ('5j'), ('6a');



insert into team_user_access (team_id, user_id)
values (1, 1),(1, 2), (2, 1),(2, 3);




insert into student (team_id, surname, name, patronymic)
values (1, 
        'Иванов', 
        'Иван', 
        'Иванович'),
        (1, 
        'Петров', 
        'Петр', 
        'Петрович');



insert into student_attendance (student_id, control_date, status)
values (1, '2023-11-13', false),
       (1, '2023-11-14', true),
       (1, '2023-11-15', true),
       (2, '2023-11-13', true),
       (2, '2023-11-14', false),
       (2, '2023-11-15', true);




