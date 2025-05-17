create table book
(
    id           int auto_increment
        primary key,
    fileName     varchar(255)         null,
    cover        varchar(1024)        null,
    title        varchar(1024)        null,
    author       varchar(1024)        null,
    publisher    varchar(255)         null,
    bookId       varchar(255)         null,
    category     int                  null,
    categoryText varchar(255)         null,
    language     varchar(10)          null,
    rootFile     varchar(255)         null,
    del          tinyint(1) default 0 null,
    constraint fileName
        unique (fileName)
);

create table collect
(
    uid     varchar(64) not null,
    book_id int         not null
);

create table user
(
    id       varchar(50)       not null
        primary key,
    password varchar(50)       not null,
    level    tinyint default 0 null
);

