USE Cosmetology;

-- Insert data into Department table
INSERT INTO Department (DepartmentId, Name, City, Address, PhoneNumber)
VALUES
  (1, 'Skin Care Department', 'Lviv', '123 Main St', 1234567890),
  (2, 'Hair Styling Department', 'Lviv', '456 Oak St', 9876543210),
  (3, 'Nail Care Department', 'Lviv', '789 Pine St', 5551234567),
  (4, 'Cosmetic Procedures Department', 'Lviv', '321 Elm St', 7777777777);

-- Insert data into Doctor table
INSERT INTO Doctor (DoctorID, FirstName, LastName, Email, PhoneNumber, Specialization, DepartmentId)
VALUES
  (1, 'Emma', 'Johnson', 'emma.johnson@example.com', 1123333, 'Esthetician', 1),
  (2, 'Oliver', 'Brown', 'oliver.brown@example.com', 44455666, 'Hair Stylist', 2),
  (3, 'Sophia', 'Smith', 'sophia.smith@example.com', 77789999, 'Nail Technician', 3),
  (4, 'Mia', 'Davis', 'mia.davis@example.com', 8887766, 'Cosmetic Surgeon', 4),
  (5, 'Aiden', 'Miller', 'aiden.miller@example.com', 5554443, 'Makeup Artist', 1),
  (6, 'Isabella', 'Jones', 'isabella.jones@example.com', 2223344, 'Hair Colorist', 2),
  (7, 'Liam', 'Wilson', 'liam.wilson@example.com', 9998777, 'Nail Artist', 3),
  (8, 'Ava', 'Taylor', 'ava.taylor@example.com', 6667888, 'Skin Care Specialist', 4),
  (9, 'Noah', 'Anderson', 'noah.anderson@example.com', 3334445, 'Eyelash Technician', 1),
  (10, 'Ella', 'Moore', 'ella.moore@example.com', 7776665, 'Cosmetic Dermatologist', 2);

-- Insert data into Patient table
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, BirthDate, PhoneNumber, Email)
VALUES
  (1, 'Sophie', 'Williams', 'F', '1992-04-15', 9991222, 'sophie@email.com'),
  (2, 'Liam', 'Johnson', 'M', '1988-08-20', 888444555, 'liam@email.com'),
  (3, 'Chloe', 'Brown', 'F', '1995-12-10', 777333111, 'chloe@email.com'),
  (4, 'Oliver', 'Smith', 'M', '1990-02-28', 55566677, 'oliver@email.com'),
  (5, 'Ava', 'Miller', 'F', '1987-09-05', 44477888, 'ava@email.com'),
  (6, 'Ethan', 'Davis', 'M', '1993-06-18', 33398888, 'ethan@email.com'),
  (7, 'Mia', 'Wilson', 'F', '1989-11-25', 7775544, 'mia@email.com'),
  (8, 'Liam', 'Jones', 'M', '1998-03-12', 8882233, 'liam.jones@email.com'),
  (9, 'Emma', 'Anderson', 'F', '1991-07-29', 6645555, 'emma.anderson@email.com'),
  (10, 'Noah', 'Taylor', 'M', '1985-10-08', 5551222, 'noah@email.com'),
  (11, 'Aria', 'Moore', 'F', '1997-02-14', 9998777, 'aria@email.com'),
  (12, 'Carter', 'Miller', 'M', '1994-09-01', 444788, 'carter@email.com'),
  (13, 'Grace', 'Brown', 'F', '1986-12-05', 7775555, 'grace@email.com'),
  (14, 'Logan', 'Clark', 'M', '1983-04-22', 8882222, 'logan@email.com'),
  (15, 'Avery', 'Johnson', 'F', '1999-08-30', 5552333, 'avery@email.com');

-- Insert data into Treatment table
INSERT INTO Treatment (TreatmentID, Name, Description, Duration, Price)
VALUES
  (1, 'Facial Treatment', 'Customized facial treatment', 60, 200.00),
  (2, 'Hair Styling and Cut', 'Professional hair styling and cut', 90, 250.00),
  (3, 'Manicure and Pedicure', 'Complete nail care for hands and feet', 60, 100.00),
  (4, 'Botox Injection', 'Cosmetic procedure for reducing wrinkles', 30, 300.00),
  (5, 'Eyebrow Microblading', 'Semi-permanent makeup for eyebrows', 120, 180.00),
  (6, 'Laser Hair Removal', 'Permanent hair removal using laser technology', 60, 350.00),
  (7, 'Chemical Peel', 'Skin exfoliation for a refreshed appearance', 45, 150.00),
  (8, 'Massage Therapy', 'Relaxing massage for stress relief', 60, 120.00),
  (9, 'Lip Filler Injection', 'Enhancement of lip volume for a fuller look', 30, 250.00),
  (10, 'Microdermabrasion', 'Skin rejuvenation through gentle exfoliation', 45, 180.00),
  (11, 'Hair Coloring', 'Professional hair coloring and highlighting', 120, 200.00),
  (12, 'Pedicure with Nail Art', 'Nail care and artistic designs for feet', 75, 120.00),
  (13, 'Eyelash Extensions', 'Application of individual eyelash extensions', 90, 160.00),
  (14, 'Acne Treatment', 'Specialized treatment for acne-prone skin', 60, 220.00),
  (15, 'Body Scrub and Wrap', 'Exfoliation and hydration for smooth skin', 90, 180.00);
  -- Add more treatment samples...

-- Insert data into Visit table
INSERT INTO Visit (VisitID, VisitDate, VisitTime, VisitStatus, DoctorID, TreatmentID, PatientID)
VALUES
  (1, '2023-01-10', 10, 'Scheduled', 1, 1, 1),
  (2, '2023-02-15', 14, 'Completed', 2, 2, 2),
  (3, '2023-03-20', 16, 'Pending', 3, 3, 3),
  (4, '2023-04-25', 11, 'Completed', 4, 4, 4),
  (5, '2023-05-30', 15, 'Scheduled', 5, 5, 5),
    (6, '2023-06-10', 12, 'Completed', 6, 6, 1),
  (7, '2023-07-15', 14, 'Scheduled', 7, 7, 2),
  (8, '2023-08-20', 16, 'Pending', 8, 8, 3),
  (9, '2023-09-25', 11, 'Completed', 9, 9, 4),
  (10, '2023-10-30', 15, 'Scheduled', 10, 10, 5),
  (11, '2023-11-10', 10, 'Completed', 1, 11, 1),
  (12, '2023-12-15', 14, 'Scheduled', 2, 12, 2),
  (13, '2024-01-20', 16, 'Pending', 3, 13, 3),
  (14, '2024-02-25', 11, 'Scheduled', 4, 14, 4),
  (15, '2024-03-30', 15, 'Pending', 5, 15, 5);
  -- Add more visit samples...