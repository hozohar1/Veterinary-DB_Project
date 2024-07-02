CREATE OR REPLACE FUNCTION get_owner_appointments(p_owner_id INTEGER)
RETURN SYS_REFCURSOR
IS
    v_owner_id PetOwner.ownerID%TYPE;
    v_ref_cursor SYS_REFCURSOR;
BEGIN
    SELECT ownerID
    INTO v_owner_id
    FROM PetOwner
    WHERE ownerid = p_owner_id;

    OPEN v_ref_cursor FOR
        SELECT AppID, AppDate, AppCost
        FROM Appointment a
        WHERE EXISTS (
            SELECT 1
            FROM Pet p
            WHERE p.petId = a.petId
            AND p.ownerID = v_owner_id
        );

    RETURN v_ref_cursor;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Owner of id ' || p_owner_id || ' not found.');
        RETURN NULL;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN NULL;
END;
/
