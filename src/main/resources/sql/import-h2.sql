INSERT INTO CLIENT (first_name,second_name, last_name, serial, Pnumber)
VALUES
  	('КГУ', 'Ул. Радищева 29', 'Курск','1','1');

INSERT INTO BILL (Balance, Bank_owner)
VALUES
  	(10000, 'vtb'),
  	(500, 'sber'),
  	(12131, 'cokoke');

INSERT INTO CARD (CNumber, Date_of, Pin, CSV , client_id, bill_id)
VALUES
  	('Добавление помещений', '20.03.2020', '2222', '1', 1, 3),
  	('Добавление помещений', '20.03.2020', '2222', '2', 1, 2),
  	('Добавление помещений', '20.03.2020', '2222', '3', 1, 2),
  	('Добавление помещений', '20.03.2020', '8254', '4', 1, 1);

INSERT INTO TERMINAL (Balance, Filial_owner)
VALUES
  	(32623623, 'vtb'),
  	(234, 'sber'),
  	(112632, 'cokoke');

INSERT INTO OPERATION (Type, Amount, terminal_id, Account_from, Account_to)
VALUES
  	('Trans', 500,  1, '1', '2'),
  	('Trans', 1500, 1, '2', '3'),
  	('ADDIn', 1500, 2, '3', '2'),
  	('Trans', 500,  3, '3', '1');

-- Users
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'boss@mail.ru', 'boss', 'Boss', 'Boss', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'steevejobs@mail.ru', 'steevejobs', 'Steeve', 'Jobs', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'mymail@mail.ru', 'pasha', 'Pavel', 'Pavlov', 1);

-- Roles
INSERT INTO ROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO ROLE (role_id, role)
VALUES (2, 'ROLE_USER');

-- User Roles
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (3, 2);
