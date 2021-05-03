

CREATE TABLE IF NOT EXISTS PATIENTS (
Patient_ID Varchar (8) NOT NULL DEFAULT '',
Patient_FirstName Varchar (25) DEFAULT NULL,
Patient_LastName Varchar (25) DEFAULT NULL,
Patient_Address Varchar (25)  DEFAULT NULL,
Patient_PostCode Varchar (7) DEFAULT NULL,
DateOfBirth Date  DEFAULT NULL,
PhoneNumuber Numeric
Primary Key(Patient_ID) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE  TABLE IF NOT EXISTS REGISTERED_DOCTORS(
DoctorID Varchar (8)  NOT NULL DEFAULT '',
PatientNum Varchar (8)  NOT NULL DEFAULT '',
DoctorName Varchar (25) DEFAULT NULL,
Primary Key(DoctorID,PatientNum)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `RegisteredDoctor` (
  `DOCID` varchar(6) NOT NULL DEFAULT '',
`PATNUM` varchar(6) NOT NULL DEFAULT '',
   `FirstName` Varchar(10)DEFAULT NULL,
  `Surname` Varchar(22)DEFAULT NULL,
 Primary Key(DocID,PATNUM)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE IF NOT EXISTS APPOINTMENT(
AppointmentID Varchar (8) NOT NULL DEFAULT '',
PatientID Varchar (8) NOT NULL DEFAULT,
DoctorNum Varchar (8) NOT NULL DEFAULT,
Appointment_Date Date,
Appointment_Time Time,
Primary Key (AppointmentID),
CONSTRAINT PatientID FOREIGN KEY(PatientID) REFERENCES PATIENTS (Patient_ID),
CONSTRAINT DoctorNum FOREIGN KEY(DoctorNum) REFERENCES REGISTERED_DOCTORS (DoctorID) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE IF NOT EXISTS `Appointment` (
  `AppointID` varchar(6) NOT NULL DEFAULT '',
   `PatID` Varchar(10)NOT NULL DEFAULT '',
  `DocID` Varchar(22)NOT NULL DEFAULT '',
  `AppointDate` Date,
  `AppointTime` Time,
 Primary Key(`AppointID`),           
CONSTRAINT `PatID`FOREIGN KEY(`PatID`) REFERENCES `Patient` (`PATID`),
CONSTRAINT `DocID`FOREIGN KEY(`DocID`) REFERENCES `RegisteredDoctor` (`DOCID`)            
)ENGINE=InnoDB DEFAULT CHARSET=utf8;









CONSTRAINT FK1_Appointment FOREIGN KEY(PatientNum) REFERENCES PATIENTS (Patient_ID),
CONSTRAINT FK2_Appointment FOREIGN KEY(DoctorNum) REFERENCES REGISTERED_DOCTORS (Doctor_ID)

CREATE TABLE IF NOT EXISTS Medication_History(
Medication_ID Varchar (9) PRIMARY KEY NOT NULL DEFAULT '',
Patient_ID Varchar (10) DEFAULT NULL,
Doctor_ID Varchar (10) DEFAULT NULL,
Recent_Condition Text,
Current_Medication Text,
CONSTRAINT FK1_Medication_History FOREIGN KEY(Patient_ID) REFERENCES PATIENTS (Patient_ID),
CONSTRAINT FK2_Medication_History FOREIGN KEY(Doctor_ID) REFERENCES REGISTERED_DOCTORS (Doctor_ID)            
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS ALLERGIES(
Allergy_ID Varchar (8) PRIMARY KEY NOT NULL DEFAULT '',
Allergy_Name Varchar (25) DEFAULT NULL,
Patient_ID Varchar (10) DEFAULT NULL,
Doctor_ID Varchar (10) DEFAULT NULL,
CONSTRAINT FK1_ALLERGIES FOREIGN KEY(Patient_ID) REFERENCES PATIENTS (Patient_ID),
CONSTRAINT FK2_ALLERGIES FOREIGN KEY(Doctor_ID) REFERENCES REGISTERED_DOCTORS (Doctor_ID)            
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
 


CREATE TABLE IF NOT EXISTS `RegisteredDoctor` (
  `DOCID` varchar(6) NOT NULL DEFAULT '',
`PATNUM` varchar(6) NOT NULL DEFAULT '',
   `FirstName` Varchar(10)DEFAULT NULL,
  `Surname` Varchar(22)DEFAULT NULL,
 Primary Key(DocID,PATNUM)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `Appointment` (
  `AppointID` varchar(6) NOT NULL DEFAULT '',
   `PatID` Varchar(10)NOT NULL DEFAULT '',
  `DocID` Varchar(22)NOT NULL DEFAULT '',
  `AppointDate` Date,
  `AppointTime` Time,
 Primary Key(`AppointID`),           
CONSTRAINT `PatID`FOREIGN KEY(`PatID`) REFERENCES `Patient` (`PATID`),
CONSTRAINT `DocID`FOREIGN KEY(`DocID`) REFERENCES `RegisteredDoctor` (`DOCID`)            
)ENGINE=InnoDB DEFAULT CHARSET=utf8;












