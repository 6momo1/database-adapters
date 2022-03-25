
-- @block

CREATE TABLE accounts(
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(2)
);

-- @block

create table rooms(
    id serial , 
    street varchar(255),
    owner_id int not null,
    PRIMARY KEY (id),
    FOREIGN key (owner_id) REFERENCES Accounts(id)
)

-- @block

create table Bookings(
    id serial,
    guest_id int not null,
    room_id int not null,
    check_in date,
    primary key(id),
    foreign key (guest_id) references Accounts(id),
    foreign key (room_id) references Rooms(id)

)

-- @block
insert into Accounts(email, bio, country)
values 
('wassup@gmail.com','I hate yall','CN'),
('homie@gmail.com','I miss yall','JP'),
('hello@gmail.com','I love yall','US'),
('jib@gmail.com','I adore yall','US'),
('ikura@gmail.com','I respect yall','JP');



-- @block

insert into Rooms(owner_id, street)
values
    (1, 'san diego'),
    (1, 'Los Angeles'),
    (3, 'new york city'),
    (4, 'miami florida'),
    (5, 'toronto');


-- @block rooms a user has booked

select
    guest_id,
    street,
    check_in
from bookings
inner join Rooms ON Rooms.owner_id = guest_id
-- inner join Users ON Users.id = guest_id
-- where guest_id = 1


-- @block
 select * from Accounts
 inner join Rooms
 on Accounts.id = Rooms.owner_id;

-- @block
 select *, 
    Accounts.id as user_id, 
    Rooms.id as room_id 
 from Accounts
 left join Rooms
 on Accounts.id = Rooms.owner_id;
-- @block  
select * from accounts;

-- @block  
select email,country, id from accounts
where country = 'US'
or id > 1
order by id DESC
limit 2;

-- @block  
select email,country, id from accounts
where country = 'US'
or email like 'h%'
order by id DESC



-- @block delete all rows from accounts
delete from Accounts;

-- @block delete table
drop table Accounts;

-- @block delete database 
drop database databasename