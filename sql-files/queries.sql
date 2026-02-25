
-- inner join 
select b.book_id, b.title, b.author, c.category_name
from book b
inner join category c on b.category_id = c.category_id;
 
-- left join 
select m.name, m.email, br.borrow_date, br.status
from member m
left join borrow br on m.member_id = br.member_id
order by m.name;
 
-- right join 
select br.borrow_id, m.name, b.title, br.status
from member m
right join borrow br on m.member_id = br.member_id
inner join book b on br.book_id = b.book_id;
 
-- aggregate - count + group by
select c.category_name,
       count(b.book_id) as total_books,
       sum(b.quantity)  as total_quantity
from category c
left join book b on c.category_id = b.category_id
group by c.category_id, c.category_name;
 
-- aggregate - avg 
select m.name,
       count(f.fine_id) as total_fines,
       avg(f.amount)    as avg_fine_amount,
       sum(f.amount)    as total_fine_due
from member m
join borrow br on m.member_id = br.member_id
join fine f    on br.borrow_id = f.borrow_id
group by m.member_id, m.name
having total_fine_due > 0;
 
-- sub-query
select name, email
from member
where member_id in (
    select distinct member_id
    from borrow
    where status = 'overdue'
);
 
-- view 
create or replace view vw_activeborrows as
select br.borrow_id,
       m.name       as member_name,
       m.email      as member_email,
       b.title      as book_title,
       b.author     as book_author,
       br.borrow_date,
       br.status
from borrow br
join member m on br.member_id = m.member_id
join book   b on br.book_id   = b.book_id
where br.status in ('borrowed', 'overdue');
 
--
select * from vw_activeborrows;
 
-- transaction 
start transaction;
 
update borrow
set status = 'returned', return_date = curdate()
where borrow_id = 4;
 
update fine
set paid_status = 'paid'
where borrow_id = 4;
 
-- rollback; 
commit;     