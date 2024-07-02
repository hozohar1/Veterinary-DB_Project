
CREATE OR REPLACE FUNCTION get_pet_count_by_species(p_species VARCHAR2)
RETURN NUMBER
IS
    v_count NUMBER;
    CURSOR pet_cursor IS
        SELECT COUNT(*) as pet_count
        FROM Pet
        WHERE petSpecies = p_species;
BEGIN
    OPEN pet_cursor;
    FETCH pet_cursor INTO v_count;
    CLOSE pet_cursor;
    
    RETURN v_count;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN NULL;
END;
