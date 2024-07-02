CREATE OR REPLACE FUNCTION calculate_total_cost(p_owner_id INTEGER)
RETURN NUMBER
IS
    v_owner_id PetOwner.ownerID%TYPE;
    v_total_cost NUMBER := 0;
BEGIN
    -- Check if owner exists
    SELECT ownerID
    INTO v_owner_id
    FROM PetOwner
    WHERE ownerid = p_owner_id;

    -- Cursor to fetch appointments for the owner
    FOR appointment_rec IN (
        SELECT AppCost
        FROM Appointment a
        WHERE EXISTS (
            SELECT 1
            FROM Pet p
            WHERE p.petId = a.petId
            AND p.ownerID = v_owner_id
        )
    ) LOOP
        v_total_cost := v_total_cost + appointment_rec.AppCost;
    END LOOP;

    RETURN v_total_cost;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Owner of id ' || p_owner_id || ' not found.');
        RETURN 0;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN NULL;
END;