drop database Store;
create database Store;
use Store;

create table Product (ProductID int not null auto_increment, Name text not null, primary key (ProductID) );
insert into Product (Name) values ('Product1');
insert into Product (Name) values ('Product2');
insert into Product (Name) values ('Product3');

create table User (UserID int not null auto_increment, Username text not null, EmailAddress text not null, PasswordSalt text not null, PasswordHashed text not null, PasswordResetCode text, IsActive boolean not null, primary key (UserID) );
/* user "admin", password "Password_123" */
insert into User (Username, EmailAddress, PasswordSalt, PasswordHashed, PasswordResetCode, IsActive) values ('admin', 'admin@localhost', '1147748628', '874c1d861559fa124a3948a947bc1f6564ea478b56e37b976a9ad25bbd67092e', null, 1);

create table License (LicenseID int not null auto_increment, UserID int not null, ProductID int not null, primary key (LicenseID), foreign key (UserID) references User(UserID), foreign key (ProductID) references Product(ProductID) );
insert into License (UserID, ProductID) values (1, 1);

create table _Order (OrderID int not null auto_increment, UserID int, primary key (OrderID), foreign key (UserID) references User(UserID) );

create table Order_Product (OrderProductID int not null auto_increment, OrderID int, ProductID int, Quantity int, primary key (OrderProductID), foreign key (OrderID) references _Order(OrderID) );

create table Notification (NotificationID int not null auto_increment, Addressee text not null, Subject text not null, Body text not null, primary key (NotificationID) );

create table Session(SessionID int not null auto_increment, UserID int, SessionToken text not null, TimeStarted datetime not null, TimeUpdated datetime, TimeEnded datetime, primary key (SessionID), foreign key (UserID) references User(UserID) )
