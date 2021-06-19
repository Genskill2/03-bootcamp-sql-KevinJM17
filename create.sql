create table publisher(
    id integer primary key,
    name text,
    country text
);

create table books(
    id primary key,
    title text,
    foreign key (publisher) references publisher(id)
);

create table subjects(
    id primary key,
    name text
);

create table books_subjects(
   foreign key (book) references books(id),
   foreign key (subject) references subjects(id)
);