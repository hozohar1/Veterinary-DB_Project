-- SELECT QUERIES --
-- Retrieve owner id, name and pet, and the total cost of treatments for that pet.
SELECT
    Pet.ownerID,
    PetOwner.ownerName,
    Pet.petName,
    SUM(Appointment.AppCost) AS TotalCost
FROM
    Pet
    JOIN Appointment ON Pet.petId = Appointment.petId
    JOIN PetOwner ON Pet.ownerID = PetOwner.ownerID
GROUP BY
    Pet.ownerID,
    PetOwner.ownerName,
    Pet.petName;


-- Retrieve data about each pet's appointment and treatment type,
-- and which doctor is in charge of that appointment
SELECT
    Pet.petName,
    Treatment.TName,
    Staff.sName AS VetName,
    Appointment.AppDate
FROM
    treatmentType
    JOIN Treatment ON treatmentType.tID = Treatment.tID
    JOIN Appointment ON treatmentType.AppID = Appointment.AppID
    JOIN Pet ON Appointment.petId = Pet.petId
    JOIN Vet ON Appointment.sID = Vet.sID
    JOIN Staff ON Vet.sID = Staff.sID;
    
    
-- Get number of visits assigned to each Staff member (vet)
SELECT
    Staff.sName,
    COUNT(Appointment.AppID) AS NumberOfAppointments
FROM
    Vet
    JOIN Appointment ON Vet.sID = Appointment.sID
    JOIN Staff ON Vet.sID = Staff.sID
GROUP BY
    Staff.sName;


-- Retrieve data of secretaries that sell accessories and the relative accessory
SELECT
    Secretary.sID,
    Staff.sName,
    Secretary.SecPhoneNum,
    Accessories.AccName,
    Accessories.AccPrice
FROM
    sell
    JOIN Accessories ON sell.AccId = Accessories.AccId
    JOIN Secretary ON sell.sID = Secretary.sID
    JOIN Staff ON Secretary.sID = Staff.sID
WHERE
    Secretary.isSeller = 'Y';
    
    
 -- DELETE QUERIES --
 -- Removing treatment options for Bettas, and their appointments
DELETE FROM treatmentType
WHERE AppID IN (
    SELECT AppID FROM Appointment
    WHERE petId IN (SELECT petId FROM Pet WHERE petSpecies = 'Betta')
);

DELETE FROM Appointment
WHERE petId IN (SELECT petId FROM Pet WHERE petSpecies = 'Betta');

DELETE FROM Pet
WHERE petSpecies = 'Betta';

-- delete wet food
DELETE FROM sell
WHERE AccId IN (
  SELECT AccId
  FROM Accessories
  WHERE AccName = 'wet food'
);
DELETE FROM Accessories
WHERE AccName = 'wet food';

-- UPDATE QUERIES --
--
UPDATE Appointment
SET AppDate = '2024-01-01'
WHERE TODATE(AppDate, '%Y') = '2023';



-- selects to see changes --
SELECT * FROM treatmentType;
SELECT * FROM Appointment;
SELECT * FROM sell;
SELECT * FROM Accessories;
SELECT * FROM Treatment;
SELECT * FROM Vet;
SELECT * FROM Secretary;
SELECT * FROM Staff;
SELECT * FROM Pet;
SELECT * FROM PetOwner;
