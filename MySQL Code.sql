create database library;
use library;

//creating table books for adding a new book.
create table books(
book_id char(50) not null,
book_name char(50) not null,
author char(50) not null,
stream char(50) not null,
class char(50) not null,
available char(50) not null,
primary key(book_id)
);

//creating table issue for issuing a book to a student.
create table issue(
student_id char(50) not null,
student_name char(50) not null,
book_id char(50) not null,
book_name char(50) not null,
address char(50) not null,
issue_date DATE,
stream char(50) not null,
class char(50) not null
);

//creating a table student that will contain details of students in different classes & streams.
create table student(
student_id char(50) not null,
student_name char(50) not null,
stream char(50) not null,
class char(50) not null,
address char(100) not null,
primary key(student_id)
);

//creating a table return_book that will contain details of books returned by students along with issue date,return date respectively.
create table return_book(
student_id char(50) not null,
student_name char(50) not null,
book_id char(50) not null,
book_name char(50) not null,
issue_date DATE,
return_date DATE
);





FOREIGN KEY (student_id,student_name) REFERENCES student(student_id,student_name),
FOREIGN KEY (book_id,available,book_name) REFERENCES books(book_id,available,book_name)
insert into issue values('s001','tanmay','001','let us c','kichha','2019-11-19'
