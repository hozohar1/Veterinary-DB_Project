CREATE OR REPLACE PROCEDURE main_program
IS
    v_dog_count NUMBER;
    v_appointment_id NUMBER := 1; -- Assuming this appointment exists
    v_new_cost NUMBER := 500;
    v_owner_id NUMBER := 1; -- Replace with an existing owner ID for testing
    v_total_cost NUMBER;
BEGIN
    -- Call function to get count of dogs
    v_dog_count := get_pet_count_by_species('Dog');
    DBMS_OUTPUT.PUT_LINE('Number of dogs: ' || v_dog_count);

    -- Call procedure to update appointment cost
    update_appointment_cost(v_appointment_id, v_new_cost);

    -- Call function to calculate total cost using calculate_total_cost function
    v_total_cost := calculate_total_cost(v_owner_id);
    DBMS_OUTPUT.PUT_LINE('Total cost for Owner ID ' || v_owner_id || ': ' || v_total_cost);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred in the main program: ' || SQLERRM);
END;
/
