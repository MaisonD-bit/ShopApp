CREATE DATABASE ShopApp;
USE ShopApp;

CREATE TABLE S_REGISTRATION (
  UserID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(50),
  ContactNumber VARCHAR(20)
);

CREATE TABLE S_USER_LOGIN (
  LoginID INT PRIMARY KEY,
  Username VARCHAR(50) NOT NULL,
  UserPassword VARCHAR(50) NOT NULL,
  UserID INT FOREIGN KEY REFERENCES S_REGISTRATION(UserID),
  Roles VARCHAR(50)  
);

INSERT INTO S_REGISTRATION (UserID, FirstName, LastName, Email, ContactNumber)
VALUES
  (1, 'John', 'Cena', 'johncena@gmail.com', '1234567890'),
  (2, 'Randy', 'Orton', 'randyorton@example.com', '9876543210'),
  (3, 'AJ', 'Styles', 'ajstyles@example.com', '5551234567');

INSERT INTO S_USER_LOGIN (LoginID, Username, UserPassword, UserID, Roles)
VALUES
  (1, 'johncena', 'password123', 1, 'buyer'),
  (2, 'randyorton', 'password456', 2, 'seller'),
  (3, 'ajstyles', 'password789', 3, 'seller');

SELECT * FROM S_REGISTRATION;
SELECT * FROM S_USER_LOGIN;