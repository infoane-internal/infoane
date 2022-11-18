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

CREATE TABLE Exercises (
	exercise_id INT AUTO_INCREMENT,
	stack VARCHAR(255),
	exercise_name VARCHAR(255),
	exercise_file VARCHAR(255),
	max_hours VARCHAR(255),
	PRIMARY KEY(exercise_id)
);

CREATE TABLE user_exercises (
	mapping_id INT,
	user_id INT,
	exer_id INT,
	user_name VARCHAR(255),
	hours VARCHAR(255),
	reviewed_by INT,
	FOREIGN KEY (user_id) REFERENCES Users( UserID ),
	FOREIGN KEY (exer_id) REFERENCES Exercises( exercise_id )
);


INSERT INTO Users VALUES (
 1, 'test', 'y', 'test@infoane.com', '1234', 'admin', 'fullstack', 'TRV'
);

INSERT INTO Users VALUES (
 2, 'User', 'Test', 'fresher@infoane.com', '1234', 'fresher', 'fullstack', 'TRV'
);

INSERT INTO Exercises VALUES (
	1,'CF','test.txt',10
);

INSERT INTO user_exercises VALUES (
	1,1,1,'test',6,2
);

SELECT * FROM Users
SELECT * FROM Exercises
SELECT * FROM user_exercises