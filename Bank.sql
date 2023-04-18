use bank;
-- CREATE DATABASE bank;
-- CREATE TABLE Branch(branch_name varchar(25),branch_city varchar(25),assets varchar(20));
-- ALTER TABLE Branch ADD PRIMARY KEY(branch_name);
-- CREATE TABLE Customer(customer_name varchar(20) PRIMARY KEY,customer_street varchar(25),customer_city varchar(20));
-- CREATE TABLE Loan(loan_number int, branch_name varchar(25), amount int, FOREIGN KEY (branch_name) REFERENCES Branch(branch_name));
-- ALTER TABLE Loan ADD PRIMARY KEY(loan_number);
-- CREATE TABLE Borrower(customer_name varchar(20), loan_number int, FOREIGN KEY (customer_name) REFERENCES Customer(customer_name),FOREIGN KEY (loan_number) REFERENCES Loan(loan_number), PRIMARY KEY(customer_name,loan_number));
-- CREATE TABLE Account (account_number int PRIMARY KEY, branch_name varchar(25), balance int, FOREIGN KEY (branch_name) references Branch(branch_name));
-- CREATE TABLE Depositor (customer_name varchar(20),account_number int, FOREIGN KEY (customer_name) REFERENCES Customer(customer_name), FOREIGN KEY (account_number) REFERENCES Account(account_number));
-- ALTER TABLE Depositor ADD PRIMARY KEY(customer_name,account_number);

-- INSERT INTO Customer VALUES ('Tim','Taroor','Pune');
-- INSERT INTO Customer VALUES ('David','Harison','Mumbai');

-- INSERT INTO `Branch` (`branch_name`, `branch_city`, `assets`) VALUES ('Palayam', 'TVM', 'Car');
-- INSERT INTO `Branch` (`branch_name`, `branch_city`, `assets`) VALUES ('Vellayambalam', 'TVM', 'Bike');
-- INSERT INTO `Branch` (`branch_name`, `branch_city`, `assets`) VALUES ('Edakkazhiyur', 'TSR', 'Building');
-- INSERT INTO `Branch` (`branch_name`, `branch_city`, `assets`) VALUES ('Guruvayoor', 'TSR', 'Temple');
-- INSERT INTO Branch VALUES ('

-- INSERT INTO Loan VALUES (1234, 'Guruvayoor', '20000000');
-- INSERT INTO Loan VALUES (12345, 'Palayam', 100000);

-- INSERT INTO Borrower VALUES ('Aswin',1234);
-- INSERT INTO Borrower VALUES ('Rahul',12345);

-- INSERT INTO Account VALUES (112,"Guruvayoor",20000);
-- INSERT INTO Account VALUES (113,"Palayam",100000);

-- INSERT INTO Depositor VALUES ("Anand",113);
-- INSERT INTO Depositor VALUES ("Robin",112);

-- Question 1
-- SELECT customer_name from Customer where customer_name not in (SELECT customer_name from Borrower);

-- Question 2
-- SELECT customer_name FROM Customer WHERE customer_street = 'Taroor' and customer_city = 'Pune'

-- Question 3
-- SELECT branch_name from Branch WHERE branch_name in (SELECT customer_name from Customer WHERE customer_street = 'Harison');