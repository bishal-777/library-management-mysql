insert into category (category_name, description) values
  ('Science', 'Books on natural and applied sciences'),
  ('Literature', 'Novels, poetry, and fiction'),
  ('Technology', 'Computing and engineering books'),
  ('History', 'World and regional history'),
  ('Mathematics', 'Pure and applied mathematics');

insert into book (title, author, genre, quantity, category_id) values
  ('A Brief History of Time', 'Stephen Hawking', 'Physics', 3, 1),
  ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 5, 2),
  ('Clean Code', 'Robert Martin', 'Programming', 4, 3),
  ('Sapiens', 'Yuval Harari', 'History', 6, 4),
  ('Introduction to Algorithms', 'Cormen et al.', 'CS', 2, 3),
  ('1984', 'George Orwell', 'Dystopia', 4, 2),
  ('The Elements', 'Euclid', 'Math', 2, 5),
  ('Cosmos', 'Carl Sagan', 'Astronomy', 3, 1);

insert into member (name, email, phone, join_date) values
  ('Ram Sharma', 'ram@email.com', '9841001001', '2024-01-10'),
  ('Sita Thapa', 'sita@email.com', '9841002002', '2024-02-15'),
  ('Hari Yadav', 'hari@email.com', '9841003003', '2024-03-20'),
  ('Gita Basnet', 'gita@email.com', '9841004004', '2024-04-05'),
  ('Mohan KC', 'mohan@email.com', '9841005005', '2024-05-12'),
  ('Sunita Rai', 'sunita@email.com', '9841006006', '2024-06-18'),
  ('Bikash Pun', 'bikash@email.com', '9841007007', '2024-07-22');

insert into borrow (member_id, book_id, borrow_date, return_date, status) values
  (1, 1, '2025-01-05', '2025-01-19', 'returned'),
  (2, 3, '2025-01-10', null, 'borrowed'),
  (3, 2, '2025-01-15', '2025-01-29', 'returned'),
  (4, 5, '2025-02-01', null, 'overdue'),
  (5, 4, '2025-02-10', '2025-02-24', 'returned'),
  (1, 6, '2025-02-15', null, 'borrowed'),
  (6, 7, '2025-02-20', null, 'overdue'),
  (7, 8, '2025-03-01', '2025-03-15', 'returned');

insert into fine (borrow_id, amount, paid_status, fine_date) values
  (4, 150.00, 'unpaid', '2025-03-01'),
  (7, 200.00, 'unpaid', '2025-03-10'),
  (1, 50.00, 'paid', '2025-01-20'),
  (3, 75.00, 'paid', '2025-01-30'),
  (5, 25.00, 'paid', '2025-02-25');