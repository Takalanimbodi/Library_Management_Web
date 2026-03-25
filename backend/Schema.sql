CREATE TABLE table_name(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    name VARCHAR(255)
) COMMENT '';

SELECT * FROM users LIMIT 100

-- Export all users 
SELECT * FROM users;
SELECT id, name, password
FROM users
WHERE LENGTH(password) < 60;

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);


CREATE TABLE book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category_id INT,
    publication_date DATE,
    copies_owned INT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE author (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (author_id) REFERENCES author(id)
);

CREATE TABLE reservation_status (
    status_id TINYINT PRIMARY KEY,
    status_name VARCHAR(20) NOT NULL
);


CREATE TABLE reservations (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    user_id INT NOT NULL,
    reservation_date DATE NOT NULL,
    status_id TINYINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (status_id) REFERENCES reservation_status(status_id)
);

CREATE TABLE loans (
  id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  username VARCHAR(100) NOT NULL,
  loan_date DATE NOT NULL,
  due_date DATE NOT NULL,
  status ENUM('On Loan','Returned') DEFAULT 'On Loan',
  FOREIGN KEY (book_id) REFERENCES book(id)
);

CREATE TABLE fines (
    fine_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    fine_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL CHECK (amount >= 0),
    reason VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_fines_users
      FOREIGN KEY (user_id) REFERENCES users(id) 
      ON DELETE CASCADE
);

ALTER TABLE fines
ADD COLUMN status ENUM('pending', 'paid') DEFAULT 'pending';


ALTER TABLE fines
DROP COLUMN payment_date;
