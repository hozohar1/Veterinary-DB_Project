CREATE TABLE PetOwner
(
  ownerName VARCHAR(30) NOT NULL,
  ownerID INT NOT NULL,
  ownerAddress VARCHAR(30) NOT NULL,
  ownerPhoneNumber INT NOT NULL,
  PRIMARY KEY (ownerID)
);

CREATE TABLE Pet
(
  petName VARCHAR(30) NOT NULL,
  petSpecies VARCHAR(30) NOT NULL,
  petBirthYear INT NOT NULL,
  petGender CHAR(1) CHECK (petGender IN ('M', 'F')) NOT NULL,
  petId INT NOT NULL,
  ownerID INT NOT NULL,
  PRIMARY KEY (petId),
  FOREIGN KEY (ownerID) REFERENCES PetOwner(ownerID)
);

CREATE TABLE Staff
(
  sName VARCHAR(15) NOT NULL,
  sID INT NOT NULL,
  sBirthDate DATE NOT NULL,
  PRIMARY KEY (sID)
);

CREATE TABLE Secretary
(
  isSeller CHAR(1) CHECK (isSeller IN ('Y', 'N')) NOT NULL,
  SecPhoneNum INT NOT NULL,
  SecRank INT NOT NULL,
  sID INT NOT NULL,
  PRIMARY KEY (sID),
  FOREIGN KEY (sID) REFERENCES Staff(sID)
);

CREATE TABLE Vet
(
  vSpeciality VARCHAR(15) NOT NULL,
  vStartYear INT NOT NULL,
  vRank INT NOT NULL,
  sID INT NOT NULL,
  PRIMARY KEY (sID),
  FOREIGN KEY (sID) REFERENCES Staff(sID)
);

CREATE TABLE Treatment
(
  tID INT NOT NULL,
  TName VARCHAR(15) NOT NULL,
  TPrice INT NOT NULL,
  Tduration INT NOT NULL,
  PRIMARY KEY (tID)
);

CREATE TABLE Accessories
(
  AccPrice INT NOT NULL,
  AccId INT NOT NULL,
  AccName VARCHAR(15) NOT NULL,
  PRIMARY KEY (AccId)
);

CREATE TABLE sell
(
  AccId INT NOT NULL,
  sID INT NOT NULL,
  PRIMARY KEY (AccId, sID),
  FOREIGN KEY (AccId) REFERENCES Accessories(AccId),
  FOREIGN KEY (sID) REFERENCES Secretary(sID)
);

CREATE TABLE Appointment
(
  AppDate DATE NOT NULL,
  AppCost INT NOT NULL,
  AppID INT NOT NULL,
  petId INT NOT NULL,
  sID INT NOT NULL,
  PRIMARY KEY (AppID),
  FOREIGN KEY (petId) REFERENCES Pet(petId),
  FOREIGN KEY (sID) REFERENCES Vet(sID)
);

CREATE TABLE treatmentType
(
  AppID INT NOT NULL,
  tID INT NOT NULL,
  PRIMARY KEY (AppID, tID),
  FOREIGN KEY (AppID) REFERENCES Appointment(AppID),
  FOREIGN KEY (tID) REFERENCES Treatment(tID)
);

