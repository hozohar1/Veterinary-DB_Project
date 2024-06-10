-- List all pets and their owners who have appointments with a specific vet
SELECT
    Pet.petName,
    PetOwner.ownerName,
    Staff.sName AS VetName,
    Appointment.AppDate
FROM
    Pet
    JOIN PetOwner ON Pet.ownerID = PetOwner.ownerID
    JOIN Appointment ON Pet.petId = Appointment.petId
    JOIN Vet ON Appointment.sID = Vet.sID
    JOIN Staff ON Vet.sID = Staff.sID
WHERE
    Staff.sName = &name; -- vet name parameter
    
-- Receipt of purchase
SELECT AccName, AccPrice
FROM Accessories
WHERE AccId IN (&list)
UNION ALL
SELECT 'Total', SUM(AccPrice) AS TotalPrice
FROM Accessories
WHERE AccId IN (&list);

-- List vets and their appointments between 2 param dates
SELECT Staff.sName, Appointment.AppDate, Pet.petName, PetOwner.ownerName AS petOwnerName
FROM Pet
  JOIN PetOwner ON Pet.ownerID = PetOwner.ownerID
  JOIN Appointment ON Pet.petId = Appointment.petId
  JOIN Vet ON Appointment.sID = Vet.sID
  JOIN Staff ON Vet.sID = Staff.sID
WHERE Appointment.AppDate BETWEEN TO_DATE('&start', 'YYYY-MM-DD') AND TO_DATE('&end', 'YYYY-MM-DD');

-- List all appointments of an owner pets
SELECT 
    PetOwner.ownerName,
    PetOwner.ownerPhoneNumber,
    Pet.petName,
    Treatment.TName AS treatmentType,
    Appointment.Appdate
FROM PetOwner
  JOIN Pet ON PetOwner.ownerID = Pet.ownerID
  JOIN Appointment ON Pet.petId = Appointment.petId
  JOIN treatmentType ON Appointment.AppID = treatmentType.AppID
  JOIN Treatment ON treatmentType.tID = Treatment.tID
WHERE 
    PetOwner.ownerID = &id;
