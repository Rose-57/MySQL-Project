CREATE DATABASE library;


USE library;


CREATE TABLE Branch (
    branch_no INT PRIMARY KEY,
    manager_id INT,
    branch_address VARCHAR(100),
    contact_no VARCHAR(15)
);


CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    position VARCHAR(50),
    salary INT,
    branch_no INT, 
    FOREIGN KEY (branch_no) REFERENCES Branch(branch_no)
);


CREATE TABLE Books (
    isbn INT PRIMARY KEY,
    book_title VARCHAR(100),
    category VARCHAR(50),
    rental_price DECIMAL(5,2),
    status VARCHAR(3),
    author VARCHAR(50),
    publisher VARCHAR(50)
);


CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_address VARCHAR(100),
    reg_date DATE
);


CREATE TABLE IssueStatus (
    issue_id INT PRIMARY KEY,
    issued_cust INT,
    issued_book_name VARCHAR(100),
    issue_date DATE,
    isbn_book INT,
    FOREIGN KEY (issued_cust) REFERENCES Customer(customer_id),
    FOREIGN KEY (isbn_book) REFERENCES Books(isbn)
);


CREATE TABLE ReturnStatus (
    return_id INT PRIMARY KEY,
    return_cust INT,
    return_book_name VARCHAR(100),
    return_date DATE,
    isbn_book INT,
    FOREIGN KEY (return_cust) REFERENCES Customer(customer_id),
    FOREIGN KEY (isbn_book) REFERENCES Books(isbn)
);


INSERT INTO Branch (branch_no, manager_id, branch_address, contact_no) VALUES
(1, 101, 'MG Road, Kochi', '9876543210'),
(2, 102, 'Palakkad Town', '9845123456'),
(3, 103, 'Calicut Beach', '9898765432'),
(4, 104, 'Thrissur Center', '9988776655'),
(5, 105, 'Kannur City', '9123456780'),
(6, 106, 'Alappuzha Canal', '9654321876'),
(7, 107, 'Ernakulam Market', '9182736455'),
(8, 108, 'Malappuram Main', '9856472310'),
(9, 109, 'Kottayam Junction', '9445566778'),
(10, 110, 'Kasargod Fort', '9898221122'),
(11, 111, 'Vytilla Hub', '9543218876'),
(12, 112, 'Angamaly Airport', '9841123445'),
(13, 113, 'Chalakudy Waterfalls', '9123457860'),
(14, 114, 'Ottapalam Station', '9123776654'),
(15, 115, 'Ponnani Seashore', '9191827364'),
(16, 116, 'Kozhikode Market', '9812374655'),
(17, 117, 'Perinthalmanna Town', '9822334455'),
(18, 118, 'Cherthala Lakeview', '9445567878'),
(19, 119, 'Irinjalakuda Center', '9955442211'),
(20, 120, 'Valapad Beach', '9212345678'),
(21, 121, 'Manjeri City', '9542123456'),
(22, 122, 'Aluva Station', '9911223344'),
(23, 123, 'Guruvayoor Temple', '9211324545'),
(24, 124, 'Chavakkad Center', '9845456767'),
(25, 125, 'Feroke Town', '9555123421'),
(26, 126, 'Payyannur Fort', '9443344555'),
(27, 127, 'Thalassery Bakery', '9011223344'),
(28, 128, 'Parappanangadi Town', '9441236778'),
(29, 129, 'Tirur Railway', '9123459988'),
(30, 130, 'Nilambur Forest', '9449988776'),
(31, 131, 'Sulthan Bathery', '9494949494'),
(32, 132, 'Wayanad Hills', '9898899888'),
(33, 133, 'Punalur City', '9333344555'),
(34, 134, 'Pathanamthitta', '9555566667'),
(35, 135, 'Thiruvalla', '9111992233'),
(36, 136, 'Kollam Port', '9887766555'),
(37, 137, 'Neyyattinkara', '9443334455'),
(38, 138, 'Varkala Cliff', '9877665544'),
(39, 139, 'Trivandrum Central', '9112245678'),
(40, 140, 'Changanassery', '9321123344'),
(41, 141, 'Muvattupuzha', '9447766555'),
(42, 142, 'Kothamangalam', '9448877665'),
(43, 143, 'Thodupuzha', '9988776655'),
(44, 144, 'Peerumedu', '9441122334'),
(45, 145, 'Adimali', '9455445566'),
(46, 146, 'Devikulam', '9212123412'),
(47, 147, 'Idukki Dam', '9332233445'),
(48, 148, 'Munnar', '9441122112'),
(49, 149, 'Vagamon', '9445566778'),
(50, 150, 'Kumarakom', '9233344556');


INSERT INTO Employee (emp_id, emp_name, position, salary, branch_no) VALUES
(101, 'Alice', 'Manager', 60000, 1),
(102, 'Bob', 'Assistant', 40000, 1),
(103, 'Charlie', 'Clerk', 45000, 2),
(104, 'David', 'Librarian', 35000, 2),
(105, 'Eve', 'Clerk', 30000, 3),
(106, 'Frank', 'Manager', 62000, 3),
(107, 'Grace', 'Assistant', 38000, 4),
(108, 'Hank', 'Librarian', 34000, 4),
(109, 'Ivy', 'Manager', 65000, 5),
(110, 'Jack', 'Assistant', 42000, 5),
(111, 'Kane', 'Clerk', 32000, 6),
(112, 'Lily', 'Librarian', 37000, 6),
(113, 'Mia', 'Manager', 61000, 7),
(114, 'Nate', 'Assistant', 39000, 7),
(115, 'Olive', 'Clerk', 31000, 8),
(116, 'Paul', 'Librarian', 35500, 8),
(117, 'Quinn', 'Manager', 67000, 9),
(118, 'Rita', 'Assistant', 43000, 9),
(119, 'Sam', 'Clerk', 34000, 10),
(120, 'Tina', 'Librarian', 36000, 10),
(121, 'Uma', 'Manager', 60000, 11),
(122, 'Vince', 'Assistant', 41000, 11),
(123, 'Wade', 'Clerk', 31000, 12),
(124, 'Xena', 'Librarian', 37500, 12),
(125, 'Yuri', 'Manager', 62000, 13),
(126, 'Zara', 'Assistant', 39000, 13),
(127, 'Amir', 'Clerk', 30000, 14),
(128, 'Bella', 'Librarian', 35000, 14),
(129, 'Carl', 'Manager', 64000, 15),
(130, 'Dana', 'Assistant', 41000, 15),
(131, 'Eli', 'Clerk', 33000, 16),
(132, 'Faye', 'Librarian', 34500, 16),
(133, 'Gabe', 'Manager', 66000, 17),
(134, 'Hilda', 'Assistant', 42000, 17),
(135, 'Ivan', 'Clerk', 34000, 18),
(136, 'Jade', 'Librarian', 36500, 18),
(137, 'Karl', 'Manager', 63000, 19),
(138, 'Lena', 'Assistant', 40000, 19),
(139, 'Mark', 'Clerk', 32000, 20),
(140, 'Nina', 'Librarian', 35000, 20),
(141, 'Oscar', 'Manager', 65000, 21),
(142, 'Penny', 'Assistant', 42000, 21),
(143, 'Quincy', 'Clerk', 31000, 22),
(144, 'Rose', 'Librarian', 34000, 22),
(145, 'Sean', 'Manager', 67000, 23),
(146, 'Tara', 'Assistant', 43000, 23),
(147, 'Uri', 'Clerk', 35000, 24),
(148, 'Vera', 'Librarian', 36000, 24),
(149, 'Will', 'Manager', 61000, 25),
(150, 'Xavier', 'Assistant', 39000, 25),
(151, 'William', 'Manager', 61000, 25),
(152, 'Joe', 'Assistant', 34000, 25),
(153, 'Mike', 'Librarian', 64000, 25),
(154, 'Jomys', 'Clerk', 30000, 25);


INSERT INTO Books (isbn, book_title, category, rental_price, status, author, publisher) VALUES
(101, 'Harry Potter and the Sorcerer\'s Stone', 'Fiction', 30.00, 'yes', 'J.K. Rowling', 'Bloomsbury'),
(102, 'To Kill a Mockingbird', 'Fiction', 25.50, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
(103, 'Introduction to Algorithms', 'Education', 50.00, 'yes', 'Thomas H. Cormen', 'MIT Press'),
(104, 'Python Crash Course', 'Education', 35.00, 'yes', 'Eric Matthes', 'No Starch Press'),
(105, 'The History of the World', 'History', 40.00, 'no', 'J.M. Roberts', 'Oxford University Press'),
(106, 'The Theory of Everything', 'Science', 45.00, 'yes', 'Stephen Hawking', 'Bantam Books'),
(107, 'The Great Gatsby', 'Fiction', 20.00, 'no', 'F. Scott Fitzgerald', 'Scribner'),
(108, 'Data Science for Beginners', 'Education', 55.00, 'yes', 'Andrew Park', 'Independently Published'),
(109, 'A Brief History of Time', 'Science', 30.00, 'yes', 'Stephen Hawking', 'Bantam Books'),
(110, 'Pride and Prejudice', 'Fiction', 22.00, 'yes', 'Jane Austen', 'Penguin Books'),
(111, 'World History: The Basics', 'History', 28.00, 'no', 'Peter N. Stearns', 'Routledge'),
(112, 'The Pragmatic Programmer', 'Education', 60.00, 'yes', 'Andy Hunt', 'Addison-Wesley'),
(113, 'Cosmos', 'Science', 35.00, 'yes', 'Carl Sagan', 'Random House'),
(114, 'War and Peace', 'Fiction', 45.00, 'no', 'Leo Tolstoy', 'Vintage'),
(115, 'The Selfish Gene', 'Science', 25.00, 'yes', 'Richard Dawkins', 'Oxford University Press'),
(116, 'Thinking, Fast and Slow', 'Psychology', 50.00, 'yes', 'Daniel Kahneman', 'Farrar, Straus and Giroux'),
(117, 'The Catcher in the Rye', 'Fiction', 18.00, 'no', 'J.D. Salinger', 'Little, Brown and Company'),
(118, '1984', 'Fiction', 22.00, 'yes', 'George Orwell', 'Secker & Warburg'),
(119, 'Sapiens: A Brief History of Humankind', 'History', 48.00, 'yes', 'Yuval Noah Harari', 'Harper'),
(120, 'Clean Code', 'Education', 55.00, 'yes', 'Robert C. Martin', 'Prentice Hall'),
(121, 'The Origin of Species', 'Science', 35.00, 'no', 'Charles Darwin', 'John Murray'),
(122, 'JavaScript: The Good Parts', 'Education', 42.00, 'yes', 'Douglas Crockford', 'O\'Reilly Media'),
(123, 'Animal Farm', 'Fiction', 20.00, 'yes', 'George Orwell', 'Secker & Warburg'),
(124, 'The Diary of a Young Girl', 'Biography', 28.00, 'no', 'Anne Frank', 'Contact Publishing'),
(125, 'The Lean Startup', 'Business', 38.00, 'yes', 'Eric Ries', 'Crown Business'),
(126, 'Artificial Intelligence: A Modern Approach', 'Education', 65.00, 'yes', 'Stuart Russell', 'Pearson'),
(127, 'The Art of War', 'History', 25.00, 'no', 'Sun Tzu', 'Oxford University Press'),
(128, 'The Road to Character', 'Psychology', 30.00, 'yes', 'David Brooks', 'Random House'),
(129, 'Deep Work', 'Business', 40.00, 'yes', 'Cal Newport', 'Grand Central Publishing'),
(130, 'Homo Deus: A Brief History of Tomorrow', 'History', 50.00, 'yes', 'Yuval Noah Harari', 'Harper'),
(131, 'Java: The Complete Reference', 'Education', 45.00, 'yes', 'Herbert Schildt', 'McGraw-Hill'),
(132, 'The Intelligent Investor', 'Business', 58.00, 'yes', 'Benjamin Graham', 'Harper Business'),
(133, 'The Science of Interstellar', 'Science', 48.00, 'yes', 'Kip Thorne', 'W.W. Norton & Company'),
(134, 'The Psychology of Money', 'Business', 35.00, 'yes', 'Morgan Housel', 'Harriman House'),
(135, 'The Book Thief', 'Fiction', 25.00, 'no', 'Markus Zusak', 'Picador'),
(136, 'The Shining', 'Fiction', 30.00, 'yes', 'Stephen King', 'Doubleday'),
(137, 'Astrophysics for People in a Hurry', 'Science', 28.00, 'yes', 'Neil deGrasse Tyson', 'W.W. Norton & Company'),
(138, 'The Hobbit', 'Fiction', 40.00, 'yes', 'J.R.R. Tolkien', 'Allen & Unwin'),
(139, 'The History of Ancient Egypt', 'History', 30.00, 'no', 'Bob Brier', 'Oxford University Press'),
(140, 'Effective Java', 'Education', 60.00, 'yes', 'Joshua Bloch', 'Addison-Wesley'),
(141, 'The Subtle Art of Not Giving a F*ck', 'Psychology', 35.00, 'yes', 'Mark Manson', 'HarperOne'),
(142, 'The Innovators', 'Biography', 50.00, 'yes', 'Walter Isaacson', 'Simon & Schuster'),
(143, 'The Immortal Life of Henrietta Lacks', 'Biography', 28.00, 'yes', 'Rebecca Skloot', 'Crown Publishing'),
(144, 'The Wright Brothers', 'Biography', 30.00, 'no', 'David McCullough', 'Simon & Schuster'),
(145, 'The Silk Roads: A New History of the World', 'History', 45.00, 'yes', 'Peter Frankopan', 'Bloomsbury'),
(146, 'The Man Who Knew Infinity', 'Biography', 35.00, 'yes', 'Robert Kanigel', 'Simon & Schuster'),
(147, 'Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future', 'Biography', 38.00, 'yes', 'Ashlee Vance', 'Ecco Press'),
(148, 'The Power of Habit', 'Psychology', 40.00, 'yes', 'Charles Duhigg', 'Random House'),
(149, 'How to Win Friends and Influence People', 'Psychology', 28.00, 'yes', 'Dale Carnegie', 'Simon & Schuster'),
(150, 'Good to Great', 'Business', 55.00, 'yes', 'Jim Collins', 'Harper Business');


INSERT INTO Customer VALUES
(1, 'Anjali Menon', 'Kochi', '2021-05-10'),
(2, 'Rahul Raj', 'Trivandrum', '2020-08-15'),
(3, 'Sneha Thomas', 'Kozhikode', '2022-01-20'),
(4, 'Vijay Kumar', 'Palakkad', '2019-12-01'),
(5, 'Ayesha Mohammed', 'Kannur', '2023-02-11'),
(6, 'Rakesh Nair', 'Ernakulam', '2021-07-24'),
(7, 'Divya Pillai', 'Thrissur', '2022-10-05'),
(8, 'Neha Sharma', 'Kottayam', '2021-04-18'),
(9, 'Arjun Prakash', 'Alappuzha', '2020-09-30'),
(10, 'Suresh Babu', 'Malappuram', '2018-11-14'),
(11, 'Leena Mathew', 'Kasargod', '2023-03-22'),
(12, 'Kiran Joseph', 'Idukki', '2019-05-07'),
(13, 'Meera Ramesh', 'Pathanamthitta', '2022-12-28'),
(14, 'Abdul Rahman', 'Manjeri', '2021-06-12'),
(15, 'Priya Varma', 'Guruvayoor', '2019-03-25'),
(16, 'Ravi Shankar', 'Sulthan Bathery', '2023-04-17'),
(17, 'Sana S', 'Perinthalmanna', '2022-08-19'),
(18, 'Vikram S', 'Chalakudy', '2021-11-30'),
(19, 'Maya Krishnan', 'Munnar', '2020-01-03'),
(20, 'Rajesh P', 'Nilambur', '2019-06-10'),
(21, 'Anand K', 'Ponnani', '2022-09-21'),
(22, 'Bhavya D', 'Cherthala', '2021-02-11'),
(23, 'Farhan Ahmed', 'Payyannur', '2023-01-01'),
(24, 'Gopalakrishnan', 'Thalassery', '2018-10-15'),
(25, 'Mohan Lal', 'Varkala', '2020-07-23'),
(26, 'Lakshmi Nair', 'Punalur', '2021-03-05'),
(27, 'Deepak M', 'Aluva', '2022-06-15'),
(28, 'Ashwin Kumar', 'Ottapalam', '2019-11-27'),
(29, 'Soumya V', 'Valapad', '2020-12-12'),
(30, 'Manoj N', 'Chavakkad', '2021-08-08'),
(31, 'Aparna R', 'Muvattupuzha', '2023-05-10'),
(32, 'Vishnu P', 'Adimali', '2022-07-20'),
(33, 'Nithya S', 'Irinjalakuda', '2019-09-05'),
(34, 'Basil George', 'Peerumedu', '2021-01-16'),
(35, 'Tina Francis', 'Changanassery', '2020-04-30'),
(36, 'Rohan N', 'Feroke', '2023-02-22'),
(37, 'Sibin Raj', 'Guruvayoor', '2018-08-09'),
(38, 'Arya Krishnan', 'Angamaly', '2022-03-11'),
(39, 'Joseph P', 'Thodupuzha', '2020-02-18'),
(40, 'Varun K', 'Ernakulam', '2019-07-13'),
(41, 'Snehalatha S', 'Malappuram', '2023-06-01'),
(42, 'Rani Thomas', 'Kozhikode', '2021-10-10'),
(43, 'Vivek G', 'Kasargod', '2019-12-19'),
(44, 'Fathima N', 'Kollam', '2020-09-07'),
(45, 'Aravind R', 'Thiruvalla', '2022-11-28'),
(46, 'Simran K', 'Vytilla', '2021-12-25'),
(47, 'Rithika S', 'Trivandrum', '2023-07-15'),
(48, 'Ajith Kumar', 'Kumarakom', '2020-05-05'),
(49, 'Malavika P', 'Wayanad', '2022-04-29'),
(50, 'Anu Mathew', 'Kottayam', '2021-09-14');


INSERT INTO IssueStatus VALUES
(1, 2, 'To Kill a Mockingbird', '2023-01-10', 102),
(2, 5, 'The Great Gatsby', '2023-02-15', 107),
(4, 10, 'The Origin of Species', '2021-09-20', 121),
(5, 12, 'Sapiens: A Brief History of Humankind', '2023-05-08', 119),
(6, 15, 'The Road to Character', '2022-11-01', 128),
(8, 20, 'War and Peace', '2021-07-10', 114),
(9, 23, 'The Art of War', '2022-08-18', 127),
(10, 25, 'Thinking, Fast and Slow', '2023-09-12', 116),
(11, 27, 'Deep Work', '2022-04-16', 129),
(12, 30, 'Good to Great', '2023-02-10', 150),
(13, 32, 'Java: The Complete Reference', '2021-12-24', 131),
(14, 35, 'Clean Code', '2022-10-29', 120),
(15, 37, 'Harry Potter and the Sorcerer\'s Stone', '2023-03-04', 101),
(16, 39, 'Astrophysics for People in a Hurry', '2023-06-19', 137),
(17, 42, 'Cosmos', '2022-03-15', 113),
(18, 44, 'The Diary of a Young Girl', '2022-09-05', 124),
(19, 45, 'Pride and Prejudice', '2023-01-19', 110),
(20, 47, 'The Hobbit', '2023-05-28', 138),
(21, 48, 'Introduction to Algorithms', '2022-07-01', 103),
(22, 3, 'Data Science for Beginners', '2023-08-12', 108),
(23, 6, 'Artificial Intelligence: A Modern Approach', '2023-02-05', 126),
(24, 9, 'The Intelligent Investor', '2023-04-11', 132),
(25, 11, 'The Power of Habit', '2023-09-02', 148),
(26, 13, 'The Silk Roads: A New History of the World', '2022-12-25', 145),
(27, 16, 'The Subtle Art of Not Giving a F*ck', '2022-05-20', 141),
(28, 19, 'Animal Farm', '2021-11-14', 123),
(29, 22, '1984', '2023-01-30', 118),
(30, 24, 'The Shining', '2023-03-21', 136),
(32, 31, 'The Selfish Gene', '2023-07-06', 115),
(33, 33, 'The Book Thief', '2022-10-13', 135),
(34, 36, 'Homo Deus: A Brief History of Tomorrow', '2023-06-30', 130),
(35, 38, 'The Science of Interstellar', '2022-09-24', 133),
(36, 40, 'The Immortal Life of Henrietta Lacks', '2021-05-18', 143),
(37, 43, 'The Wright Brothers', '2023-02-27', 144),
(38, 46, 'Man Who Knew Infinity', '2023-03-29', 146),
(39, 49, 'Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future', '2023-05-17', 147),
(40, 50, 'The Psychology of Money', '2023-06-25', 134),
(41, 1, 'JavaScript: The Good Parts', '2022-07-22', 122),
(42, 7, 'The Theory of Everything', '2021-08-01', 106),
(43, 14, 'World History: The Basics', '2022-11-10', 111),
(44, 17, 'The History of the World', '2023-04-25', 105),
(45, 21, 'The Innovators', '2022-12-08', 142),
(46, 26, 'Effective Java', '2021-10-20', 140),
(47, 29, 'Vikram Sarabhai: A Life', '2023-03-18', 146),
(48, 34, 'The Man Who Solved the Market', '2022-09-27', 147),
(49, 41, 'The Innovators Dilemma', '2023-07-14', 148),
(50, 4, 'The Art of War', '2023-08-18', 127);


INSERT INTO ReturnStatus VALUES
(1, 2, 'To Kill a Mockingbird', '2023-01-20', 102),
(2, 5, 'The Great Gatsby', '2023-02-25', 107),
(3, 8, 'Python Crash Course', '2023-01-10', 104),
(4, 10, 'The Origin of Species', '2021-10-10', 121),
(5, 12, 'Sapiens: A Brief History of Humankind', '2023-05-18', 119),
(6, 15, 'The Road to Character', '2023-02-01', 128),
(7, 18, 'The Lean Startup', '2023-07-02', 125),
(8, 20, 'War and Peace', '2021-08-05', 114),
(9, 23, 'The Art of War', '2022-08-28', 127),
(10, 25, 'Thinking, Fast and Slow', '2023-09-22', 116),
(11, 27, 'Deep Work', '2023-05-01', 129),
(12, 30, 'Good to Great', '2023-03-20', 150),
(13, 32, 'Java: The Complete Reference', '2022-01-04', 131),
(14, 35, 'Clean Code', '2022-11-10', 120),
(15, 37, 'Harry Potter and the Sorcerer\'s Stone', '2023-04-14', 101),
(16, 39, 'Astrophysics for People in a Hurry', '2023-07-10', 137),
(17, 42, 'Cosmos', '2022-03-25', 113),
(18, 44, 'The Diary of a Young Girl', '2022-09-15', 124),
(19, 45, 'Pride and Prejudice', '2023-01-29', 110),
(20, 47, 'The Hobbit', '2023-06-01', 138),
(21, 48, 'Introduction to Algorithms', '2022-07-12', 103),
(22, 3, 'Data Science for Beginners', '2023-08-25', 108),
(23, 6, 'Artificial Intelligence: A Modern Approach', '2023-03-10', 126),
(24, 9, 'The Intelligent Investor', '2023-04-21', 132),
(25, 11, 'The Power of Habit', '2023-09-12', 148),
(26, 13, 'The Silk Roads: A New History of the World', '2023-01-10', 145),
(27, 16, 'The Subtle Art of Not Giving a F*ck', '2022-06-05', 141),
(28, 19, 'Animal Farm', '2021-11-24', 123),
(29, 22, '1984', '2023-02-15', 118),
(30, 24, 'The Shining', '2023-04-29', 136),
(31, 28, 'How to Win Friends and Influence People', '2023-05-19', 149),
(32, 31, 'The Selfish Gene', '2023-08-10', 115),
(33, 33, 'The Book Thief', '2022-10-23', 135),
(34, 36, 'Homo Deus: A Brief History of Tomorrow', '2023-07-20', 130),
(35, 38, 'The Science of Interstellar', '2022-10-04', 133),
(36, 40, 'The Immortal Life of Henrietta Lacks', '2021-06-20', 143),
(37, 43, 'The Wright Brothers', '2023-03-07', 144),
(38, 46, 'Man Who Knew Infinity', '2023-04-05', 146),
(39, 49, 'Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future', '2023-05-27', 147),
(40, 50, 'The Psychology of Money', '2023-07-25', 134),
(41, 1, 'JavaScript: The Good Parts', '2022-08-12', 122),
(42, 7, 'The Theory of Everything', '2021-08-10', 106),
(43, 14, 'World History: The Basics', '2022-12-10', 111),
(44, 17, 'The History of the World', '2023-05-10', 105),
(45, 21, 'The Innovators', '2022-12-18', 142),
(46, 26, 'Effective Java', '2021-11-30', 140),
(47, 29, 'Vikram Sarabhai: A Life', '2023-04-28', 146),
(48, 34, 'The Man Who Solved the Market', '2022-10-07', 147),
(49, 41, 'The Innovator’s Dilemma', '2023-07-21', 148),
(50, 4, 'The Art of War', '2023-08-28', 127);


SELECT * FROM Branch;
SELECT * FROM Employee;
SELECT * FROM Books;
SELECT * FROM Customer;
SELECT * FROM IssueStatus;
SELECT * FROM ReturnStatus;


SELECT book_title, category, rental_price FROM Books 
WHERE status = 'yes';



SELECT emp_name, salary FROM Employee 
ORDER BY salary DESC;



SELECT book_title, customer_name FROM IssueStatus  
JOIN Books ON isbn_book = isbn 
JOIN Customer ON issued_cust = customer_id;



SELECT category, COUNT(*) AS total_books FROM Books
GROUP BY category;



SELECT emp_name, position FROM Employee 
WHERE salary > 50000;



SELECT customer_name FROM Customer 
LEFT JOIN IssueStatus ON customer_id = issued_cust 
WHERE reg_date < '2022-01-01' AND issue_id IS NULL;



SELECT branch_no, COUNT(*) AS total_employees FROM Employee 
GROUP BY branch_no;



SELECT DISTINCT customer_name FROM Customer 
JOIN IssueStatus ON customer_id = issued_cust
WHERE issue_date BETWEEN '2023-06-01' AND '2023-06-30';



SELECT book_title FROM Books 
WHERE book_title LIKE '%history%';



SELECT branch_no, COUNT(*) AS total_employees FROM Employee 
GROUP BY branch_no 
HAVING total_employees > 5;



SELECT emp_name, branch_address FROM Employee 
JOIN Branch ON emp_id = manager_id;



SELECT customer_name FROM IssueStatus 
JOIN Books ON isbn_book = isbn 
JOIN Customer ON issued_cust = customer_id 
WHERE rental_price > 25;