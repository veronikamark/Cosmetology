CREATE TABLE `Doctor` (
	`DoctorID` INT NOT NULL,
	`FirstName` varchar(30) NOT NULL,
	`LastName` varchar(30) NOT NULL,
	`Email` varchar(50) NOT NULL,
	`PhoneNumber` INT(12) NOT NULL,
	`Specialization` varchar(30) NOT NULL,
	`DepartmentId` INT,
	PRIMARY KEY (`DoctorID`)
);

CREATE TABLE `Department` (
	`DepartmentId` INT NOT NULL,
	`Name` varchar(30) NOT NULL,
	`City` varchar(30) NOT NULL DEFAULT 'Lviv',
	`Address` varchar(40) NOT NULL,
	`PhoneNumber` INT(12) NOT NULL,
	PRIMARY KEY (`DepartmentId`)
);

CREATE TABLE `Patient` (
	`PatientID` INT NOT NULL AUTO_INCREMENT,
	`FirstName` varchar(30) NOT NULL,
	`LastName` varchar(30) NOT NULL,
	`Gender` varchar(1) NOT NULL,
	`BirthDate` DATE NOT NULL,
	`PhoneNumber` INT(12) NOT NULL,
	`Email` varchar(50) NOT NULL,
	PRIMARY KEY (`PatientID`)
);

CREATE TABLE `Visit` (
	`VisitID` INT NOT NULL AUTO_INCREMENT,
	`VisitDate` DATE NOT NULL,
	`VisitTime` INT(12) NOT NULL,
	`VisitStatus` varchar(15) NOT NULL,
	`DoctorID` INT NOT NULL,
	`TreatmentID` INT NOT NULL,
	`PatientID` INT NOT NULL,
	PRIMARY KEY (`VisitID`)
);

CREATE TABLE `Treatment` (
	`TreatmentID` INT NOT NULL,
	`Name` varchar(40) NOT NULL,
	`Description` varchar(150) NOT NULL,
	`Duration` INT(12) NOT NULL,
	`Price` FLOAT NOT NULL,
	PRIMARY KEY (`TreatmentID`)
);

ALTER TABLE `Doctor` ADD CONSTRAINT `Doctor_fk0` FOREIGN KEY (`DepartmentId`) REFERENCES `Department`(`DepartmentId`);

ALTER TABLE `Visit` ADD CONSTRAINT `Visit_fk0` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor`(`DoctorID`);

ALTER TABLE `Visit` ADD CONSTRAINT `Visit_fk1` FOREIGN KEY (`TreatmentID`) REFERENCES `Treatment`(`TreatmentID`);

ALTER TABLE `Visit` ADD CONSTRAINT `Visit_fk2` FOREIGN KEY (`PatientID`) REFERENCES `Patient`(`PatientID`);






