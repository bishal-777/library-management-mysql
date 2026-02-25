create table category (
    category_id   int auto_increment primary key,
    category_name varchar(50) not null,
    description   text
);
 
create table book (
    book_id     int auto_increment primary key,
    title       varchar(200) not null,
    author      varchar(100) not null,
    genre       varchar(50),
    quantity    int default 1,
    category_id int,
    foreign key (category_id) references category(category_id)
);
 
create table member (
    member_id int auto_increment primary key,
    name      varchar(100) not null,
    email     varchar(100) unique not null,
    phone     varchar(15),
    join_date date default (curdate())
);
 

create table borrow (
    borrow_id   int auto_increment primary key,
    member_id   int not null,
    book_id     int not null,
    borrow_date date not null default (curdate()),
    return_date date,
    status      enum('borrowed','returned','overdue') default 'borrowed',
    foreign key (member_id) references member(member_id),
    foreign key (book_id)   references book(book_id)
);
 
create table fine (
    fine_id     int auto_increment primary key,
    borrow_id   int not null,
    amount      decimal(8,2) not null,
    paid_status enum('unpaid','paid') default 'unpaid',
    fine_date   date default (curdate()),
    foreign key (borrow_id) references borrow(borrow_id)
);