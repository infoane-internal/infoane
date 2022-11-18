CREATE DATABASE infoaneinternal;

CREATE TABLE Users (
	UserID INT AUTO_INCREMENT,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	Email VARCHAR(255),
	Password VARCHAR(255),
	Role VARCHAR(255),
	Stack VARCHAR(55),
	Branch VARCHAR(100),
	PRIMARY KEY (UserID)
);

SELECT * FROM Users

INSERT INTO Users VALUES(
 1, 'test', 'y', 'test@infoane.com', '1234', 'admin', 'fullstack', 'TRV'
);