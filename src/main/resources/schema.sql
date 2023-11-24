
CREATE TABLE IF NOT EXISTS public.team (
	team_id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	description varchar NOT NULL,
	CONSTRAINT team_pkey PRIMARY KEY (team_id)
);

CREATE TABLE IF NOT EXISTS public.user_access (
	user_id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	username varchar NOT NULL,
	password varchar NULL,
	role varchar NULL,
	CONSTRAINT user_access_pkey PRIMARY KEY (user_id),
	CONSTRAINT user_access_username_key UNIQUE (username)
);

CREATE TABLE IF NOT EXISTS public.team_user_access (
	team_id int8 NOT NULL,
	user_id int8 NOT NULL,
	CONSTRAINT fk_team_user_access_constraint_on_team FOREIGN KEY (team_id) REFERENCES public.team(team_id),
	CONSTRAINT fk_team_user_access_constraint_on_user_access FOREIGN KEY (user_id) REFERENCES public.user_access(user_id)
);

CREATE TABLE IF NOT EXISTS public.student (
	student_id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	team_id int8 NOT NULL,
	surname varchar NULL,
	name varchar NULL,
	patronymic varchar NULL,
	CONSTRAINT student_pkey PRIMARY KEY (student_id),
	CONSTRAINT fk_student_constraint_on_team FOREIGN KEY (team_id) REFERENCES public.team(team_id)
);

CREATE TABLE IF NOT EXISTS public.student_attendance (
	student_id int8 NOT NULL,
	control_date text NOT NULL,
	status bool NULL,
	CONSTRAINT student_attendance_pkey PRIMARY KEY (student_id, control_date),
	CONSTRAINT fk_student_attendance_constraint_on_student FOREIGN KEY (student_id) REFERENCES public.student(student_id)
);