CREATE OR REPLACE PROCEDURE display_owner_appointments(p_owner_id INTEGER)
IS
    v_app_id Appointment.AppID%TYPE;
    v_app_date Appointment.AppDate%TYPE;
    v_app_cost Appointment.AppCost%TYPE;
    v_ref_cursor SYS_REFCURSOR;
BEGIN
    v_ref_cursor := get_owner_appointments(p_owner_id);

    IF v_ref_cursor IS NOT NULL THEN
        LOOP
            FETCH v_ref_cursor INTO v_app_id, v_app_date, v_app_cost;
            EXIT WHEN v_ref_cursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('Appointment ID: ' || v_app_id || ', Date: ' || TO_CHAR(v_app_date, 'YYYY-MM-DD') || ', Cost: ' || v_app_cost);
        END LOOP;
        
        CLOSE v_ref_cursor;
    ELSE
        DBMS_OUTPUT.PUT_LINE('No appointments found for owner of id ' || p_owner_id);
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/
