
CREATE OR REPLACE PROCEDURE update_appointment_cost(p_app_id IN NUMBER, p_new_cost IN NUMBER)
IS
    v_pet_id NUMBER;
    v_owner_name VARCHAR2(30);
BEGIN
    -- Get pet ID and owner name for the appointment
    SELECT a.petId, o.ownerName
    INTO v_pet_id, v_owner_name
    FROM Appointment a
    JOIN Pet p ON a.petId = p.petId
    JOIN PetOwner o ON p.ownerID = o.ownerID
    WHERE a.AppID = p_app_id;

    -- Update appointment cost
    UPDATE Appointment
    SET AppCost = p_new_cost
    WHERE AppID = p_app_id;

    -- Output information
    DBMS_OUTPUT.PUT_LINE('Updated appointment cost for Pet ID: ' || v_pet_id);
    DBMS_OUTPUT.PUT_LINE('Owner Name: ' || v_owner_name);
    DBMS_OUTPUT.PUT_LINE('New Cost: ' || p_new_cost);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Appointment not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
