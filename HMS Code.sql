CREATE DATABASE HMS;
USE HMS;


CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name TEXT NOT NULL,
    Department_Head TEXT NOT NULL,
    Number_of_Staffs INT NOT NULL,
    Number_of_Beds INT NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15)
);

INSERT INTO Department (Department_ID, Department_Name, Department_Head, Number_of_Staffs, Number_of_Beds, Email, Phone) VALUES
(1001, 'Cardiology', 'Prof. Dr. Salima Akter', 50, 100, 'cardiology392@gmail.com', '01923678910'),
(1002, 'Neurology', 'Prof. Dr. Rezaul Karim', 50, 70, 'neurology246@gmail.com', '01739895922'),
(1003, 'Orthopedics', 'Prof. Dr. Ahsan Habib', 10, 1000, 'Orthopedics883@gmail.com', '01344499850'),
(1004, 'Gynecology', 'Prof. Dr. Mithu Rahman', 35, 70, 'gynecology302@gmail.com', '01737568910'),
(1005, 'General Surgery', 'Prof. Dr. Kamrul Islam', 20, 60, 'surgery406@gmail.com', '01523458910'),
(1006, 'Hematology', 'Prof. Dr. Mahbuba Sultana', 35, 70, 'hematology888@gmail.com', '01924044910'),
(1007, 'Plastic Surgery', 'Prof. Dr. Tanvir Ahmed', 15, 50, 'plasticsurgery122@gmail.com', '01347896891'),
(1008, 'Dental Surgery', 'Prof. Dr. Shirin Jahan', 45, 50, 'dentalunit763@gmail.com', '01553678910'),
(1009, 'Oncology', 'Prof. Dr. Nazmul Huda', 25, 70, 'oncology999@gmail.com', '01553367891'),
(1010, 'Rehabilitation Medicine', 'Prof. Dr. Nusrat Amin', 25, 60, 'rehabcenter222@gmail.com', '01323678910'),
(1011, 'Biomedical Engineering', 'Prof. Dr. Imran Kabir', 30, 20, 'biomedical193@gmail.com', '01623678910'),
(1012, 'Psychiatric', 'Prof. Dr. Sujan Chowdhury', 66, 70, 'psychiatric555@gmail.com', '01923878910'),
(1013, 'Radiology', 'Prof. Dr. Munira Khatun', 16, 90, 'radiology639@gmail.com', '01923688910'),
(1014, 'ENT (Ear, Nose, Throat)', 'Prof. Dr. Abdul Hamid', 56, 70, 'ent54@gmail.com', '01623677910'),
(1015, 'Medical Education', 'Prof. Dr. Lubna Rahman', 36, 50, 'medicaledu44@gmail.com', '01623678710');

SELECT * FROM Department;

SELECT * FROM Department ORDER BY Department_Name ASC;

SELECT Department_Name FROM Department 
WHERE Department_ID IN (
    SELECT Department_ID FROM Department
);


CREATE TABLE Doctor (
    Doctor_ID INT PRIMARY KEY,
    Doctor_Name VARCHAR(100) UNIQUE,
    Gender VARCHAR(10),
    Specialist VARCHAR(100),
    Email VARCHAR(100),
    Salary DECIMAL(10,2)
);

INSERT INTO Doctor (Doctor_ID, Doctor_Name, Gender, Specialist, Email, Salary) VALUES
(100131, 'Dr. Sadikul Islam', 'Male', 'Cardiothoracic Surgeon', 'sadikul@hospital.com', 210000.00),
(100132, 'Dr. Ayesha Rahman', 'Female', 'Neurosurgeon', 'ayesha@hospital.com', 190000.00),
(100133, 'Dr. Proma Das Krity', 'Female', 'Orthopedic Surgeon', 'proma@hospital.com', 190000.00),
(100134, 'Dr. Athina Nahar Tulona', 'Female', 'Dermatologist', 'athina@hospital.com', 110000.00),
(100135, 'Dr. Labiba Chowdhury', 'Female', 'ENT Specialist', 'labiba@hospital.com', 105000.00),
(100136, 'Dr. Nehal Ahmed', 'Male', 'General Surgeon', 'nehal@hospital.com', 125000.00),
(100137, 'Dr. Farzana Akhter', 'Female', 'Pediatrician', 'farzana@hospital.com', 115000.00),
(100138, 'Dr. Puja Bairagi', 'Female', 'Urologist', 'puja@hospital.com', 140000.00),
(100139, 'Dr. Shah Iqra', 'Female', 'Oncologist', 'shah@hospital.com', 190000.00),
(100140, 'Dr. Swsti Biswas', 'Female', 'Gynecologist', 'swsti@hospital.com', 158000.00),
(100141, 'Dr. Mariam Akhter Jahan', 'Female', 'Pathologist', 'mariam@hospital.com', 190000.00),
(100142, 'Dr. Jafrin Khan', 'Female', 'Endocrinologist', 'jafrin@hospital.com', 120000.00),
(100143, 'Dr. Shuvom Biswas', 'Male', 'Gastroenterologist', 'shuvom@hospital.com', 145000.00),
(100144, 'Dr. Grace Barikder', 'Female', 'Hematologist', 'grace@hospital.com', 125000.00),
(100145, 'Dr. Shihab Shariar', 'Male', 'Psychiatrist', 'shihab@hospital.com', 117000.00),
(100146, 'Dr. Najifa Anjum', 'Female', 'Pulmonologist', 'nafisa@hospital.com', 155000.00),
(100147, 'Dr. Sarjil Mridha', 'Male', 'General Surgeon', 'sarjil@hospital.com', 146000.00),
(100148, 'Dr. Sakib Mahmud', 'Male', 'General Surgeon', 'sakib@hospital.com', 132000.00),
(100149, 'Dr. Marufa Akher', 'Female', 'Radiology', 'marufa@hospital.com', 178000.00),
(100150, 'Dr. Taposhee Mostafa', 'Female', 'Psychiatrist', 'taposhee@hospital.com', 125000.00),
(100151, 'Dr. Ononna Aminul', 'Female', 'Plastic Surgeon', 'ononna@hospital.com', 130000.00);

SELECT * FROM Doctor WHERE Doctor_ID = 100136;

SET SQL_SAFE_UPDATES=0;
UPDATE Doctor
SET Salary = Salary - 4500
WHERE Doctor_ID = 100140;

SELECT * FROM Doctor WHERE Doctor_ID = 100140;

SELECT * FROM Doctor;


CREATE TABLE Staff (
    Staff_Id INT PRIMARY KEY,
    Staff_Name TEXT NOT NULL,
    Gender TEXT NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Role TEXT NOT NULL
);

INSERT INTO Staff (Staff_ID, Staff_Name, Gender, Phone, Email, Role) VALUES
(2001, 'Rafiqul Islam', 'Male', '01710012345', 'rafiqul.staff@hospital.com', 'Receptionist'),
(2002, 'Shahriar Hossain Saad', 'Male', '01820045678', 'saad.staff@hospital.com', 'Nurse'),
(2003, 'Sabuj Das', 'Male', '01530098765', 'sabuj.staff@hospital.com', 'Pharmacist'),
(2004, 'Joynove Mim', 'Female', '01340076543', 'mim.staff@hospital.com', 'Nurse'),
(2005, 'Shakib Ahmed', 'Male', '01712345678', 'shakib.staff@hospital.com', 'Nurse'),
(2006, 'Hemel Rahman', 'Male', '01711011122', 'hemel.staff@hospital.com', 'Nurse'),
(2007, 'Jannatul Ferdous', 'Female', '01650011223', 'jannatul.staff@hospital.com', 'Lab Assistant'),
(2008, 'Maliha Rahman', 'Female', '01460066789', 'maliha.staff@hospital.com', 'Security Guard'),
(2009, 'Athia Enam', 'Female', '01970055678', 'athia.staff@hospital.com', 'Nurse'),
(2010, 'Sabbir Hossain', 'Male', '01780088990', 'sabbir.staff@hospital.com', 'Electrician'),
(2011, 'Tania Jahan', 'Female', '01890044332', 'tania.staff@hospital.com', 'Receptionist'),
(2012, 'Fatema Akter', 'Female', '01310044321', 'fatema.staff@hospital.com', 'Nurse'),
(2013, 'Rakib Hossain', 'Male', '01510011234', 'rakib.staff@hospital.com', 'Accountant'),
(2014, 'Nushra Noor', 'Female', '01920022145', 'nushra.staff@hospital.com', 'Nurse'),
(2015, 'Evan Haque', 'Male', '01330099887', 'evan.staff@hospital.com', 'Lab Assistant'),
(2016, 'Rumana Akhter', 'Female', '01722033145', 'rumana.staff@hospital.com', 'Nurse'),
(2017, 'Faisal Hossain', 'Male', '01823456789', 'faisal.staff@hospital.com', 'Security Guard'),
(2018, 'Rimpi Sultana', 'Female', '01760077654', 'rimpi.staff@hospital.com', 'Pharmacist'),
(2019, 'Shahana Sathi', 'Female', '01810033456', 'shahana.staff@hospital.com', 'Nurse'),
(2020, 'Sadia Anjum', 'Female', '01822011234', 'sadia.staff@hospital.com', 'Maintenance Worker'),
(2021, 'Nayem Khan', 'Male', '01934567890', 'nayem.staff@hospital.com', 'Nurse'),
(2022, 'Kaniz Fatema', 'Female', '01990022134', 'kaniz.staff@hospital.com', 'Cleaner'),
(2023, 'Tanvir Hasan', 'Male', '01430077678', 'tanvir.staff@hospital.com', 'Maintenance Worker'),
(2024, 'Jannatul Islam Easha', 'Female', '01680022145', 'easha.staff@hospital.com', 'Cafeteria Manager'),
(2025, 'Sumaiya Sultana', 'Female', '01670022998', 'sumaiya.staff@hospital.com', 'Nurse'),
(2026, 'Ifrat Jahan Lily', 'Female', '01768247543', 'lily.staff@hospital.com', 'Cleaner'),
(2027, 'Meherun Nisa', 'Female', '01460066789', 'meherun.staff@hospital.com', 'Security Guard');


DELETE FROM Staff
WHERE Email = 'lily.staff@hospital.com';

SELECT * FROM Staff;

SELECT * FROM Staff WHERE Staff_Name like '_a%';


CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(100) NOT NULL,
    Date_of_Birth DATE,
    Gender VARCHAR(8),
    Blood_Group VARCHAR(5),
    Phone VARCHAR(15),
    Medical_History TEXT NOT NULL
);

INSERT INTO Patient (Patient_ID, Patient_Name, Date_of_Birth, Gender, Blood_Group, Phone, Medical_History) VALUES
(3001, 'Turzo Saha', '1980-05-12', 'Male', 'A+', '01711001234', 'Hypertension & Diabetes'),
(3002, 'Sharmin Akter', '1992-07-20', 'Female', 'O-', '01822003456', 'Asthma since childhood'),
(3003, 'Shahriar Shanto', '1975-03-18', 'Male', 'B+', '01533005678', 'Heart Disease'),
(3004, 'Tanjila Jannat', '1988-11-09', 'Female', 'AB+', '01344007890', 'Migraine'),
(3005, 'Sunandan Das', '2000-01-01', 'Male', 'A-', '01655001230', 'Fractured leg (2022)'),
(3006, 'Sumaiya Sultana', '1995-06-15', 'Female', 'O+', '01966003456', 'Anemia'),
(3007, 'Nabil Hossain', '1982-08-22', 'Male', 'B-', '01777009876', 'Lung Cancer'),
(3008, 'Ritu Islam', '1999-04-11', 'Female', 'A+', '01899001234', 'Polycystic Ovary Syndrome'),
(3009, 'Abdullah Hossain', '1978-02-19', 'Male', 'O+', '01366007845', 'Kidney Stone History'),
(3010, 'Farzana Haque', '1996-10-05', 'Female', 'AB-', '01755448796', 'Brain Tumor'),
(3011, 'Saila Wasif', '1984-07-23', 'Male', 'B+', '01566778899', 'High Cholesterol'),
(3012, 'Sanjida Monika', '1990-12-02', 'Female', 'A+', '01911223344', 'Sinusitis'),
(3013, 'Arpon Chowdhury', '1983-09-09', 'Male', 'AB+', '01877665544', 'Cancer & Migraine'),
(3014, 'Lubaba Sadia', '1997-03-30', 'Female', 'O-', '01644332211', 'Gallbladder Surgery (2021)'),
(3015, 'Sajjad Arnob', '2001-08-08', 'Male', 'A+', '01733445566', 'Food Allergy'),
(3016, 'Tania Khatun', '1986-04-14', 'Female', 'B-', '01999887766', 'Diabetes'),
(3017, 'Rafiq Ahmed', '1973-01-25', 'Male', 'A-', '01722334455', 'High Blood Pressure'),
(3018, 'Fariha Ahmed', '1993-11-17', 'Female', 'AB+', '01881234567', 'Anxiety Disorder'),
(3019, 'Anamika Rani Dhar', '1989-06-10', 'Female', 'O+', '01333322110', 'Osteoarthritis (2019)'),
(3020, 'Samira Chowdhury', '1994-05-27', 'Female', 'B+', '01944556677', 'Asthma & Hypertension');

SELECT * FROM Patient;

SELECT Blood_Group, COUNT(*) AS Female_AB_Pos_Count FROM Patient
WHERE Blood_Group = 'AB+'
  AND Gender = 'Female'
  AND Date_of_Birth > '1980-01-01'
GROUP BY Blood_Group;


CREATE TABLE Appointment (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_time TIME,
    Appointment_Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_time, Appointment_Date, Status) VALUES
(101, 3001, 100131, '09:00:00', '2025-05-02', 'Scheduled'),
(102, 3002, 100132, '09:30:00', '2025-05-02', 'Cancelled'),
(103, 3003, 100133, '10:00:00', '2025-05-02', 'Rescheduled'),
(104, 3004, 100134, '10:30:00', '2025-05-02', 'Completed'),
(105, 3005, 100135, '11:00:00', '2025-05-02', 'Scheduled'),
(106, 3006, 100136, '11:30:00', '2025-05-02', 'No Show'),
(107, 3007, 100137, '12:00:00', '2025-05-02', 'Completed'),
(108, 3008, 100138, '12:30:00', '2025-05-02', 'Cancelled'),
(109, 3009, 100139, '13:00:00', '2025-05-02', 'Scheduled'),
(110, 3010, 100140, '13:30:00', '2025-05-02', 'Rescheduled'),
(111, 3011, 100141, '14:00:00', '2025-05-02', 'Completed'),
(112, 3012, 100142, '14:30:00', '2025-05-02', 'Scheduled'),
(113, 3013, 100143, '15:00:00', '2025-05-02', 'Cancelled'),
(114, 3014, 100144, '15:30:00', '2025-05-02', 'No Show'),
(115, 3015, 100145, '16:00:00', '2025-05-02', 'Scheduled'),
(116, 3016, 100146, '16:30:00', '2025-05-02', 'Completed'),
(117, 3017, 100147, '17:00:00', '2025-05-02', 'Scheduled'),
(118, 3018, 100148, '17:30:00', '2025-05-02', 'Rescheduled'),
(119, 3019, 100149, '18:00:00', '2025-05-02', 'Completed'),
(120, 3020, 100150, '18:30:00', '2025-05-02', 'No Show'),
(121, 3001, 100151, '09:00:00', '2025-05-03', 'Cancelled');

SELECT * FROM Appointment
WHERE Appointment_Date = (
    SELECT MIN(Appointment_Date)
    FROM Appointment );
    
SELECT * FROM Appointment;


CREATE TABLE LabTest (
    Lab_Technician_ID INT,
    Test_ID INT PRIMARY KEY,
    Patient_ID INT,
    Test_Name VARCHAR(100),
    Test_Type VARCHAR(50),
    Test_Date DATE,
    Result TEXT,
    Cost DECIMAL(10,2),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

INSERT INTO LabTest (Lab_Technician_ID, Test_ID, Patient_ID, Test_Name, Test_Type, Test_Date, Result, Cost) VALUES
(201, 5001, 3001, 'Complete Blood Count', 'Blood Test', '2025-05-01', 'Normal', 500.00),
(202, 5002, 3002, 'Blood Glucose', 'Blood Test', '2025-08-31', 'High', 300.00),
(203, 5003, 3003, 'Urinalysis', 'Urine Test', '2025-05-01', 'Normal', 250.00),
(204, 5004, 3004, 'X-Ray Chest', 'Imaging', '2025-05-01', 'Mild infection', 1200.00),
(205, 5005, 3005, 'Lipid Profile', 'Blood Test', '2025-02-01', 'Borderline High', 750.00),
(206, 5006, 3006, 'Thyroid Panel', 'Blood Test', '2025-05-21', 'Normal', 650.00),
(207, 5007, 3007, 'MRI Brain', 'Imaging', '2025-05-01', 'No Abnormalities', 5000.00),
(208, 5008, 3008, 'Liver Function Test', 'Blood Test', '2025-09-01', 'Slightly Elevated ALT', 850.00),
(209, 5009, 3009, 'CT Abdomen', 'Imaging', '2025-06-24', 'Appendicitis Suspected', 4500.00),
(210, 5010, 3010, 'HIV Test', 'Blood Test', '2025-01-01', 'Negative', 1000.00),
(211, 5011, 3011, 'COVID-19 PCR', 'Swab Test', '2025-08-21', 'Negative', 1500.00),
(212, 5012, 3012, 'Hemoglobin A1c', 'Blood Test', '2025-05-15', '6.2%', 400.00),
(213, 5013, 3013, 'Vitamin D', 'Blood Test', '2025-10-01', 'Deficient', 700.00),
(214, 5014, 3014, 'Electrolyte Panel', 'Blood Test', '2025-10-01', 'Sodium Low', 600.00),
(215, 5015, 3015, 'ECG', 'Cardiac Test', '2025-05-01', 'Normal Sinus Rhythm', 350.00);

SELECT DISTINCT Test_Date from LabTest;

SELECT * FROM LabTest
WHERE Test_Name NOT LIKE '%Blood%';

SELECT * FROM LabTest;


CREATE TABLE Surgery (
    Surgery_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Surgery_Type VARCHAR(100),
    Surgery_Date DATE,
    Duration TIME,
    Operating_Room VARCHAR(50),
    Outcome VARCHAR(100),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

INSERT INTO Surgery (Surgery_ID, Patient_ID, Doctor_ID, Surgery_Type, Surgery_Date, Duration, Operating_Room, Outcome) VALUES
(6001, 3001, 100131, 'Appendectomy', '2025-04-10', '01:30:00', 'OR-1', 'Successful'),
(6002, 3002, 100132, 'Cataract Surgery', '2025-04-11', '00:45:00', 'OR-2', 'Successful'),
(6003, 3003, 100133, 'Gallbladder Removal', '2025-04-12', '01:15:00', 'OR-3', 'Complications'),
(6004, 3004, 100134, 'Tonsillectomy', '2025-04-13', '00:40:00', 'OR-4', 'Successful'),
(6005, 3005, 100135, 'Hernia Repair', '2025-04-14', '01:00:00', 'OR-1', 'Successful'),
(6006, 3006, 100136, 'Cesarean Section', '2025-04-15', '01:20:00', 'OR-2', 'Successful'),
(6007, 3007, 100137, 'Knee Replacement', '2025-04-16', '02:30:00', 'OR-3', 'Recovery'),
(6008, 3008, 100138, 'Hip Replacement', '2025-04-17', '02:15:00', 'OR-4', 'Successful'),
(6009, 3009, 100139, 'Coronary Bypass', '2025-04-18', '03:00:00', 'OR-5', 'Stable'),
(6010, 3010, 100140, 'Spinal Fusion', '2025-04-19', '02:45:00', 'OR-6', 'Successful'),
(6011, 3011, 100141, 'Hysterectomy', '2025-04-20', '01:50:00', 'OR-1', 'Successful'),
(6012, 3012, 100142, 'Prostate Surgery', '2025-04-21', '01:40:00', 'OR-2', 'Stable'),
(6013, 3013, 100143, 'Thyroidectomy', '2025-04-22', '01:25:00', 'OR-3', 'Complications'),
(6014, 3014, 100144, 'Skin Grafting', '2025-04-23', '01:10:00', 'OR-4', 'Successful'),
(6015, 3015, 100145, 'Lung Resection', '2025-04-24', '02:00:00', 'OR-5', 'Successful'),
(6016, 3016, 100146, 'Kidney Transplant', '2025-04-25', '03:30:00', 'OR-6', 'Stable'),
(6017, 3017, 100147, 'Liver Biopsy', '2025-04-26', '00:50:00', 'OR-1', 'Successful'),
(6018, 3018, 100148, 'Mastectomy', '2025-04-27', '02:10:00', 'OR-2', 'Recovery'),
(6019, 3019, 100149, 'Arthroscopy', '2025-04-28', '01:00:00', 'OR-3', 'Successful'),
(6020, 3020, 100150, 'Colonoscopy', '2025-04-29', '00:40:00', 'OR-4', 'Successful'),
(6021, 3001, 100151, 'Laparoscopy', '2025-04-30', '01:05:00', 'OR-5', 'Successful');

SET SQL_SAFE_UPDATES=0;
UPDATE Surgery
SET Outcome = 'Improving'
WHERE Outcome = 'Recovery';

SELECT * FROM Surgery
WHERE Outcome = 'Successful'
LIMIT 3;

SELECT * FROM Surgery;


CREATE TABLE WARD (
    Ward_ID INT PRIMARY KEY,
    Ward_Name VARCHAR(100) NOT NULL,
    Ward_Type VARCHAR(50) NOT NULL,
    Department_ID INT,
    Number_of_Beds INT NOT NULL,
    Occupied_Beds INT NOT NULL,
    Floor INT NOT NULL,
    Status VARCHAR(50) NOT NULL,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

INSERT INTO WARD (Ward_ID, Ward_Name, Ward_Type, Department_ID, Number_of_Beds, Occupied_Beds, Floor, Status) VALUES
(6001, 'General Ward A', 'General', 1001, 30, 25, 1, 'Active'),
(6002, 'ICU Ward A', 'ICU', 1001, 10, 8, 2, 'Active'),
(6003, 'Pediatric Ward A', 'Pediatric', 1002, 20, 15, 1, 'Active'),
(6004, 'Maternity Ward A', 'Maternity', 1004, 25, 18, 3, 'Active'),
(6005, 'Surgical Ward A', 'Surgical', 1005, 15, 12, 2, 'Under Maintenance'),
(6006, 'General Ward B', 'General', 1003, 28, 20, 1, 'Active'),
(6007, 'ICU Ward B', 'ICU', 1001, 12, 9, 2, 'Active'),
(6008, 'Pediatric Ward B', 'Pediatric', 1002, 18, 14, 1, 'Active'),
(6009, 'Maternity Ward B', 'Maternity', 1004, 22, 16, 3, 'Active'),
(6010, 'Gynecology Ward', 'Gynecology', 1004, 17, 15, 2, 'Active'),
(6011, 'Isolation Ward', 'Isolation', 1003, 8, 5, 4, 'Active'),
(6012, 'Pathology Ward', 'Pathology', 1005, 10, 6, 4, 'Active'),
(6013, 'Cardiac Ward', 'Cardiac', 1001, 14, 12, 3, 'Active'),
(6014, 'Neurosurgery', 'Neurosurgery', 1002, 16, 13, 3, 'Active'),
(6015, 'Psychiatric Ward', 'Psychiatric', 1012, 20, 17, 4, 'Inactive'),
(6016, 'Emergency Ward', 'Emergency', 1001, 12, 11, 1, 'Active'),
(6017, 'Orthopedic Ward', 'Orthopedic', 1003, 18, 16, 2, 'Active'),
(6018, 'Oncology Ward', 'Oncology', 1009, 30, 28, 1, 'Active'),
(6019, 'ICU Ward C', 'ICU', 1001, 10, 7, 2, 'Under Maintenance'),
(6020, 'Gastroenterology Ward', 'Gastroenterology', 1002, 12, 10, 1, 'Active');

ALTER TABLE WARD
DROP COLUMN  Status;

SELECT * FROM WARD;

SELECT Ward_Name, 
       Number_of_Beds, 
       Occupied_Beds, 
       (Number_of_Beds - Occupied_Beds) AS Remaining_Available_Beds
FROM Ward;


CREATE TABLE MedicineStore (
    Medicine_ID INT PRIMARY KEY,
    Medicine_Name VARCHAR(100) NOT NULL,
    Manufacturer VARCHAR(100),
    Expiry_Date DATE,
    Price DECIMAL(10,2),
    Category VARCHAR(50),
    Suggested_By VARCHAR(100),
    Stock_Quantity INT,
    FOREIGN KEY (Suggested_By) REFERENCES Doctor(Doctor_Name)
);

INSERT INTO MedicineStore (Medicine_ID, Medicine_Name, Manufacturer, Expiry_Date, Price, Category, Suggested_By, Stock_Quantity) VALUES
(7001, 'Paracetamol', 'NeuroMed', '2026-05-01', 62.00, 'Painkiller', 'Dr. Ayesha Rahman', 200),
(7002, 'Amoxicillin', 'CholCare Inc', '2025-08-10', 75.60, 'Antibiotic', 'Dr. Mariam Akhter Jahan', 150),
(7003, 'Omeprazole', 'StomachCare', '2026-04-01', 90.30, 'Antacid', 'Dr. Sadikul Islam', 100),
(7004, 'Ibuprofen', 'CalmMed Co.', '2025-10-20', 36.70, 'Anti-inflammatory', 'Dr. Proma Das Krity', 180),
(7005, 'Cetirizine', 'DailyCure Ltd', '2025-09-01', 23.80, 'Antihistamine', 'Dr. Ayesha Rahman', 90),
(7006, 'Metformin', 'Pharma House', '2026-01-20', 60.20, 'Diabetes', 'Dr. Mariam Akhter Jahan', 130),
(7007, 'Amlodipine', 'CardioMed', '2026-06-30', 42.10, 'Blood Pressure', 'Dr. Sadikul Islam', 110),
(7008, 'Atorvastatin', 'RapidMed', '2025-07-12', 68.90, 'Cholesterol', 'Dr. Proma Das Krity', 95),
(7009, 'Salbutamol', 'ClearAllergy Inc', '2025-08-31', 31.90, 'Asthma', 'Dr. Shah Iqra', 85),
(7010, 'Ranitidine', 'DiabetRelief', '2026-11-11', 52.00, 'Ulcer', 'Dr. Sadikul Islam', 140),
(7011, 'Azithromycin', 'Healz Ltd', '2025-10-15', 135.75, 'Antibiotic', 'Dr. Shah Iqra', 160),
(7012, 'Losartan', 'NutriCare', '2027-01-01', 75.00, 'Hypertension', 'Dr. Sadikul Islam', 125),
(7013, 'Insulin', 'Apex Pharma', '2026-12-31', 150.00, 'Diabetes', 'Dr. Ayesha Rahman', 70),
(7014, 'Diazepam', 'SugarFree Pharma', '2027-03-22', 40.00, 'Sedative', 'Dr. Shihab Shariar', 60),
(7015, 'Loratadine', 'Medico Trust', '2025-11-30', 322.50, 'Antihistamine', 'Dr. Athina Nahar Tulona', 100),
(7016, 'Multivitamins', 'PressureCare', '2026-02-28', 39.25, 'Supplement', 'Dr. Grace Barikder', 300),
(7017, 'Clopidogrel', 'BreatheEasy Ltd', '2025-12-05', 37.45, 'Blood Thinner', 'Dr. Shah Iqra', 85),
(7018, 'Phenytoin', 'HeartShield Ltd', '2026-09-15', 46.75, 'Anti-epileptic', 'Dr. Ayesha Rahman', 70),
(7019, 'Cefuroxime', 'BioticMed', '2026-10-10', 89.50, 'Antibiotic', 'Dr. Mariam Akhter Jahan', 90),
(7020, 'Levetiracetam', 'NeuroHeal', '2026-08-01', 78.00, 'Anti-seizure', 'Dr. Ayesha Rahman', 60);

SELECT * FROM MedicineStore;

ALTER TABLE MedicineStore
RENAME TO Pharmacy;

ALTER TABLE Pharmacy
RENAME COLUMN Suggested_By TO Prescribed_By;

SELECT Prescribed_By, COUNT(*) AS Total_Prescription
FROM Pharmacy
GROUP BY Prescribed_By
ORDER BY Total_Prescription DESC
LIMIT 1;

SELECT * FROM Pharmacy;


CREATE TABLE Vaccination (
    Vaccine_ID INT PRIMARY KEY,
    Staff_ID INT,
    Patient_ID INT,
    Vaccine_Name VARCHAR(100),
    Dose_Number INT,
    Given_Date DATE,
    Next_Date DATE NOT NULL,
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

INSERT INTO Vaccination (Vaccine_ID, Staff_ID, Patient_ID, Vaccine_Name, Dose_Number, Given_Date, Next_Date) VALUES
(8001, 2002, 3001, 'COVID-19', 1, '2025-01-01', '2025-02-01'),
(8002, 2004, 3002, 'Hepatitis B', 1, '2025-01-15', '2025-02-15'),
(8003, 2006, 3003, 'Influenza', 2, '2025-02-01', '2025-08-01'),
(8004, 2006, 3004, 'HPV', 1, '2025-02-20', '2025-05-20'),
(8005, 2009, 3005, 'MMR', 1, '2025-03-01', '2025-09-01'),
(8006, 2012, 3006, 'COVID-19', 1, '2025-03-10', '2025-04-10'),
(8007, 2014, 3007, 'Tetanus', 2, '2025-03-15', '2035-03-15'),
(8008, 2016, 3008, 'Hepatitis B', 2, '2025-04-01', '2025-07-01'),
(8009, 2019, 3009, 'HPV', 2, '2025-04-05', '2025-07-05'),
(8010, 2021, 3010, 'Influenza', 1, '2025-04-10', '2025-10-10'),
(8011, 2025, 3011, 'COVID-19', 2, '2025-04-15', '2025-05-15'),
(8012, 2004, 3012, 'Chickenpox', 1, '2025-04-20', '2025-10-20'),
(8013, 2002, 3013, 'MMR', 2, '2025-04-25', '2025-10-25'),
(8014, 2012, 3014, 'Tetanus', 1, '2025-05-01', '2035-05-01'),
(8015, 2016, 3015, 'Hepatitis A', 1, '2025-05-05', '2025-11-05'),
(8016, 2025, 3016, 'HPV', 3, '2025-05-10', '2025-08-10');

SELECT * FROM Vaccination 
WHERE Vaccine_Name IN ('Hepatitis B', 'HPV', 'MMR') 
  AND Next_Date >= CURRENT_DATE;
  
SELECT * FROM Vaccination;


CREATE TABLE Billing (
    Receipt_ID VARCHAR(20) UNIQUE,
    Patient_ID INT,
    Total_Amount DECIMAL(10,2),
    Discount DECIMAL(10,2),
    Payment_Method VARCHAR(20),
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);

INSERT INTO Billing (Receipt_ID, Patient_ID, Total_Amount, Discount, Payment_Method, Payment_Status) VALUES
('AS9001F', 3001, 1000.00, 100.00, 'Cash', 'Paid'),
('AS9002F', 3002, 1500.00, 0.00, 'Card', 'Unpaid'),
('AS9003F', 3003, 2000.00, 200.00, 'Insurance', 'Pending'),
('AS9004F', 3004, 5000.00, 500.00, 'Cash', 'Paid'),
('AS9005F', 3005, 800.00, 0.00, 'Card', 'Paid'),
('AS9006F', 3006, 1200.00, 0.00, 'Cash', 'Unpaid'),
('AS9007F', 3007, 900.00, 90.00, 'Insurance', 'Pending'),
('AS9008F', 3008, 1300.00, 130.00, 'Card', 'Paid'),
('AS9009F', 3009, 2000.00, 0.00, 'Cash', 'Paid'),
('AS9010F', 3010, 850.00, 50.00, 'Insurance', 'Paid'),
('AS9011F', 3011, 1100.00, 0.00, 'Card', 'Unpaid'),
('AS9012F', 3012, 1600.00, 160.00, 'Cash', 'Paid'),
('AS9013F', 3013, 800.00, 0.00, 'Insurance', 'Pending'),
('AS9014F', 3014, 1500.00, 150.00, 'Card', 'Paid'),
('AS9015F', 3015, 500.00, 0.00, 'Cash', 'Paid'),
('AS9016F', 3016, 950.00, 0.00, 'Insurance', 'Unpaid');

SELECT 
    Receipt_ID,
    CASE 
        WHEN Receipt_ID BETWEEN 'AS9010F' AND 'AS9014F' THEN 'To Be Deleted'
        ELSE 'Keep'
    END AS Deletion_Status
FROM Billing;

SELECT * FROM Billing;

SELECT COUNT(Patient_ID) FROM Billing WHERE Total_Amount>1000 AND Total_Amount<2100;


CREATE TABLE HospitalAsset (
    Department_ID INT,
    Asset_ID INT PRIMARY KEY,
    Asset_Name VARCHAR(100),
    Category VARCHAR(50),
    Purchased_Date Date,
    Cost DECIMAL(10,2),
    Location VARCHAR(100),
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

INSERT INTO HospitalAsset (Department_ID, Asset_ID, Asset_Name, Category, Purchased_Date, Cost, Location) VALUES
(1001, 121001, 'ECG Machine', 'Equipment', '2023-07-01', 85000.00, 'Room 101'),
(1002, 121002, 'Hospital Bed A1', 'Furniture', '2020-06-15', 15000.00, 'Ward A'),
(1003, 121003, 'Defibrillator', 'Equipment', '2024-08-01', 120000.00, 'ER'),
(1004, 121004, 'Wheelchair B3', 'Equipment', '2019-05-20', 8000.00, 'Reception'),
(1005, 121005, 'MRI Scanner', 'Equipment', '2018-09-01', 2500000.00, 'Radiology'),
(1006, 121006, 'Desk', 'Furniture', '2023-05-25', 5000.00, 'Admin Office'),
(1007, 121007, 'IV Stand', 'Equipment', '2021-05-30', 1500.00, 'Ward B'),
(1008, 121008, 'Oxygen Tank', 'Equipment', '2022-06-10', 7000.00, 'ICU'),
(1009, 121009, 'Surgical Table', 'Furniture', '2017-05-01', 35000.00, 'OR 2'),
(1010, 121010, 'Laptop', 'Equipment', '2024-01-01', 90000.00, 'Nurses Station'),
(1011, 121011, 'Patient Monitor', 'Equipment', '2020-06-20', 45000.00, 'Room 202'),
(1012, 121012, 'Recliner Chair', 'Furniture', '2023-06-02', 10000.00, 'Waiting Room'),
(1013, 121013, 'Ultrasound Machine', 'Equipment', '2019-07-10', 650000.00, 'Imaging Room'),
(1014, 121014, 'Overbed Table', 'Furniture', '2020-07-10', 3000.00, 'Ward C'),
(1015, 121015, 'Ventilator', 'Equipment', '2023-08-15', 750000.00, 'ICU');

SELECT Asset_Name, Cost, Cost + 1000 AS Increased_Cost FROM HospitalAsset;

SELECT * FROM HospitalAsset
WHERE Category = (
    SELECT Category
    FROM HospitalAsset
    WHERE Asset_Name = 'MRI Scanner'
    LIMIT 3
)
AND Location = (
    SELECT Location
    FROM HospitalAsset
    WHERE Asset_Name = 'Ventilator'
    LIMIT 2
);

SELECT * FROM HospitalAsset;