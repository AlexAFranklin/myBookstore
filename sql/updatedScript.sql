-- USE `my_bookstore`;

-- DROP TABLE IF EXISTS `authorities`;
-- DROP TABLE IF EXISTS `users`;

-- --
-- -- Table structure for table `users`
-- --

-- CREATE TABLE `users` (
--   `username` varchar(50) NOT NULL,
--   `password` char(68) NOT NULL,
--   `full_name` varchar(50) NOT NULL,
--   `email` varchar(100) NOT NULL,
--   `enabled` tinyint NOT NULL,
--   PRIMARY KEY (`username`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Inserting data for table `users`
-- --
-- -- NOTE: The passwords are encrypted using BCrypt
-- --
-- -- A generation tool is avail at: https://www.luv2code.com/generate-bcrypt-password
-- --
-- -- Default passwords here are: fun123
-- --

-- INSERT INTO `users` 
-- VALUES 
-- ('john','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q', 'john smith', 'john.smith@gmail.com',1),
-- ('mary','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q', 'mary sure', 'mary.sue@gmail.com',1),
-- ('susan','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q', 'susan jones', 'susan.jones@gmail.com',1);


-- --
-- -- Table structure for table `authorities`
-- --

-- CREATE TABLE `authorities` (
--   `username` varchar(50) NOT NULL,
--   `authority` varchar(50) NOT NULL,
--   UNIQUE KEY `authorities4_idx_1` (`username`,`authority`),
--   CONSTRAINT `authorities4_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Inserting data for table `authorities`
-- --

-- INSERT INTO `authorities` 
-- VALUES 
-- ('john','ROLE_EMPLOYEE'),
-- ('mary','ROLE_EMPLOYEE'),
-- ('mary','ROLE_MANAGER'),
-- ('susan','ROLE_EMPLOYEE'),
-- ('susan','ROLE_MANAGER'),
-- ('susan','ROLE_ADMIN');

-- SELECT * FROM books;
-- SELECT * FROM users;

-- CREATE TABLE requests (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     book_id INT NOT NULL,
--     customer_id VARCHAR(50)  NOT NULL,
--     employee_id VARCHAR(50) ,
--     request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     status_update_date TIMESTAMP,
--     status ENUM('REQUEST', 'CANCELLED', 'FULFILLED') NOT NULL,
--     FOREIGN KEY (book_id) REFERENCES books(id),
--     FOREIGN KEY (customer_id) REFERENCES users(username) ON UPDATE CASCADE ON DELETE RESTRICT,
--     FOREIGN KEY (employee_id) REFERENCES users(username) ON UPDATE CASCADE ON DELETE SET NULL
-- )ENGINE=InnoDB DEFAULT CHARSET=latin1;


