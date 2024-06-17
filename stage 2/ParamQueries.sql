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
    Staff.sName = &<name="vet name" list="SELECT staff.sName FROM Vet JOIN Staff ON vet.sId = staff.sId" hint="add single quotation marks around the vet name. Example: 'Elad'">;
   
-- Receipt of purchase
SELECT AccName, AccPrice
FROM Accessories
WHERE AccId IN (&barcode)
UNION ALL
SELECT 'Total', SUM(AccPrice) AS TotalPrice
FROM Accessories
WHERE AccId IN (&barcode);

-- List vets and their appointments between 2 param dates
SELECT Staff.sName, Appointment.AppDate, Pet.petName, PetOwner.ownerName AS petOwnerName
FROM Pet
  JOIN PetOwner ON Pet.ownerID = PetOwner.ownerID
  JOIN Appointment ON Pet.petId = Appointment.petId
  JOIN Vet ON Appointment.sID = Vet.sID
  JOIN Staff ON Vet.sID = Staff.sID
WHERE Appointment.AppDate BETWEEN TO_DATE('&from', 'DD-MM-YYYY') AND TO_DATE('&to', 'DD-MM-YYYY');

-- List all appointments of an owner's pets
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
    PetOwner.ownerID = &<name="id" type="integer">;

-- Show all details about chosen owners from the multiselect list
SELECT * FROM PetOwner WHERE ownerID IN
(&<name="owner_id"
list="SELECT ownerID, ownerName FROM PetOwner ORDER BY ownerName"
description="yes"
multiselect="yes">);
