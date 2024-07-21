---- VIEWS ----
---------------
-- appointment details and cost, relevant to calc total per owner and keeping the treatments count in check
CREATE OR REPLACE VIEW AppointmentDetails AS
SELECT 
    p.ownerid as owner_id, a.AppDate, a.AppCost, p.petName, s.sName AS VetName,
    t.TName AS TreatmentName, t.TPrice AS TreatmentPrice
FROM Appointment a
JOIN Pet p ON a.petId = p.petId
JOIN treatmentType tt ON a.AppID = tt.AppID
JOIN Treatment t ON tt.tID = t.tID;

-- all trip details relevant to the trip agency
CREATE OR REPLACE VIEW TripDetails AS
SELECT 
    t.name AS TripName, t.price AS TripPrice, t.trip_date,
    tr.number_of_passengers, tr.driver,
    d.name AS DestinationName
FROM TRIP t
JOIN TRANSPORTATION tr ON t.id_transportation = tr.id_transportation
JOIN DESTINATIONS d ON t.id_trip = d.id_trip;


---- QUERIES ----
-----------------
--- get total cost for owner per pet
SELECT owner_id, petName, SUM(AppCost) AS TotalCost
FROM AppointmentDetails
GROUP BY petName, owner_id;

--number of appointments of every treatment type
SELECT TreatmentName, COUNT(*) AS NumberOfAppointments FROM AppointmentDetails GROUP BY TreatmentName;

-- trips that have over 50 travelers signed in
SELECT * FROM TripDetails WHERE number_of_passengers > 45;

-- the driver per trip and the designated date
SELECT driver, trip_date
FROM TripDetails
ORDER BY driver, trip_date;

--update trip cost
UPDATE TRIP
SET price = 300
WHERE id_trip = 2;
select * from trip;
