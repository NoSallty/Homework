CREATE TABLE Address (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255),
    Number INT
);

CREATE TABLE Person (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255),
    PhoneNumber NVARCHAR(20),
    EmailAddress NVARCHAR(255),
    AddressId INT NULL UNIQUE,
    FOREIGN KEY (AddressId) REFERENCES Address(Id)
);



CREATE TABLE Professor (
    Id INT PRIMARY KEY,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (Id) REFERENCES Person(Id)
);


CREATE TABLE Student (
    Id INT PRIMARY KEY,
    StudentNumber NVARCHAR(255),
    AverageMark DECIMAL(5, 2),
    FOREIGN KEY (Id) REFERENCES Person(Id)
);


CREATE TABLE Professor (
    Id INT PRIMARY KEY,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (Id) REFERENCES Person(Id)
);
INSERT INTO Address (Name, Number) VALUES ('Hà Nội', 30);
INSERT INTO Address (Name, Number) VALUES ('Hồ Chí Minh', 101);
INSERT INTO Address (Name, Number) VALUES ('Đà Nẵng', 45);
INSERT INTO Address (Name, Number) VALUES ('Hải Phòng', 78);
INSERT INTO Address (Name, Number) VALUES ('Cần Thơ', 20);

INSERT INTO Person (Name, PhoneNumber, EmailAddress, AddressId) VALUES ('Nguyễn Văn A', '0123456789', 'a.nguyen@example.com', 1);
INSERT INTO Person (Name, PhoneNumber, EmailAddress, AddressId) VALUES ('Trần Thị B', '0987654321', 'b.tran@example.com', 2);
INSERT INTO Person (Name, PhoneNumber, EmailAddress, AddressId) VALUES ('Lê Văn C', '0122333444', 'c.le@example.com', 3);
INSERT INTO Person (Name, PhoneNumber, EmailAddress, AddressId) VALUES ('Phạm Thị D', '0933445566', 'd.pham@example.com', NULL);
INSERT INTO Person (Name, PhoneNumber, EmailAddress, AddressId) VALUES ('Hoàng Văn E', '0909988776', 'e.hoang@example.com', 5);



INSERT INTO Student (Id, StudentNumber, AverageMark) VALUES (1, '000001', 8.5);
INSERT INTO Student (Id, StudentNumber, AverageMark) VALUES (2, '000002', 7.0);


INSERT INTO Professor (Id, Salary) VALUES (3, 1800.00);
INSERT INTO Professor (Id, Salary) VALUES (4, 2200.00);
INSERT INTO Professor (Id, Salary) VALUES (5, 1600.00);


SELECT * FROM Address
SELECT * FROM Person
SELECT * FROM Student
SELECT * FROM Professor


DROP TABLE Student,Professor,Person,Address