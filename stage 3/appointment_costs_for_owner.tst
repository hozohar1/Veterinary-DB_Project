PL/SQL Developer Test script 3.0
17
DECLARE
id1 petowner.ownerid%TYPE;
id2 petowner.ownerid%TYPE;
total INTEGER;
BEGIN
  id1 := 1200;
  id2 := 1;
  total := 0;
    DBMS_OUTPUT.PUT_LINE('Appointments for Owner ID ' || id1 || ':');
    DBMS_OUTPUT.PUT_LINE('');
    display_owner_appointments(id1); -- procedure call
    DBMS_OUTPUT.PUT_LINE('');

    total := calculate_total_cost(id1); -- function call
    DBMS_OUTPUT.PUT_LINE('Total cost: ' || total);
        DBMS_OUTPUT.PUT_LINE('');    
END;
0
0
