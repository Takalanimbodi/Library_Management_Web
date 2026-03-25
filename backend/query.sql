INSERT INTO category (category_name) VALUES
('Science'),        -- ID will be 1
('Fiction'),        -- ID will be 2
('History'),        -- ID will be 3
('Technology');     -- ID will be 4

INSERT INTO loan_status (id, status_name)
VALUES
  (1, 'On Loan'),
  (2, 'Returned'),
  (3, 'Overdue');

INSERT INTO reservation_status (status_id, status_name) VALUES
(1, 'Active'),
(2, 'Cancelled'),
(3, 'Completed');
