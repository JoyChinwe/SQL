
CREATE TABLE IF NOT EXISTS PATIENTS (
PatientID Varchar (8) NOT NULL DEFAULT '',
PatientFirstName Varchar (25) DEFAULT NULL,
PatientLastName Varchar (25) DEFAULT NULL,
PatientAddress Varchar (25)  DEFAULT NULL,
PatientPostCode Varchar (7) DEFAULT NULL,
DateOfBirth Date,
PhoneNumuber Numeric,
Primary Key(PatientID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

=======================================

CREATE  TABLE IF NOT EXISTS REGISTERED_DOCTORS(
DoctorID Varchar (8)  NOT NULL DEFAULT '',
PatientID Varchar (8)  NOT NULL DEFAULT '',
DoctorName Varchar (50) DEFAULT NULL,
Primary Key(DoctorID,PatientID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

================================================

CREATE TABLE IF NOT EXISTS APPOINTMENT(
AppointmentID Varchar (8) NOT NULL DEFAULT '',
PatientID Varchar (8) NOT NULL DEFAULT'',
DoctorNum Varchar (8) NOT NULL DEFAULT'',
AppointmentDate Date,
AppointmentTime Time,
Primary Key (AppointmentID),
CONSTRAINT PatientID FOREIGN KEY(PatientID) REFERENCES PATIENTS (PatientID),
CONSTRAINT DoctorNum FOREIGN KEY(DoctorNum) REFERENCES REGISTERED_DOCTORS (DoctorID) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

====================================================

CREATE TABLE IF NOT EXISTS ALLERGIES(
AllergyNum Varchar (8) NOT NULL DEFAULT '',
AllergyName Varchar (25) DEFAULT NULL,
PatientNum Varchar (10) NOT NULL DEFAULT '',
DoctorNum Varchar (10) NOT NULL DEFAULT  '',
Primary Key(AllergyNum),
CONSTRAINT FK1_ALLERGIES FOREIGN KEY(PatientNum) REFERENCES PATIENTS (PatientID),
CONSTRAINT FK2_ALLERGIES FOREIGN KEY(DoctorNum) REFERENCES REGISTERED_DOCTORS (DoctorID)            
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

=====================================================================

CREATE TABLE IF NOT EXISTS Medication_History(
Medication_ID Varchar (9) NOT NULL DEFAULT '',
Patient_ID Varchar (10) NOT NULL DEFAULT'',
Doctor_ID Varchar (10) NOT NULL DEFAULT '',
Recent_Condition Text,
Current_Medication Text,
Primary Key(Medication_ID),
CONSTRAINT FK1_Medication_History FOREIGN KEY(Patient_ID) REFERENCES PATIENTS (PatientID),
CONSTRAINT FK2_Medication_History FOREIGN KEY(Doctor_ID) REFERENCES REGISTERED_DOCTORS (DoctorID)            
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
================================================================


SELECT PatientLastName FROM `patients` WHERE PatientLastName = 'Jones'