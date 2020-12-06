create table if not exists student (
  student_id serial primary key,
  name varchar(255) unique not null
);

create table if not exists teacher (
  teacher_id serial primary key, 
  name varchar(255) unique not null
);

create table if not exists student_teacher (
  student_id integer not null,
  teacher_id integer not null,
  primary key (student_id,teacher_id),
  constraint fk_student foreign key(student_id) references student(student_id),
  constraint fk_teacher foreign key(teacher_id) references teacher(teacher_id)
);
