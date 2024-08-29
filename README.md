# וטרינריה🐾🩺
## תוכן עניינים

1. [שלב 1](#שלב-1)
   - [ERD](#ERD)
   - [DSD](#DSD)
   - [תיאור תרשים](#תיאור-תרשים)
   - [טבלאות לפי שיטות הכנסה שונות](#טבלאות-לפי-שיטות-הכנסה-שונות)

2. [שלב 2](#שלב-2)
   - [Select Queries](#select-queries)
   - [Delete Queries](#delete-queries)
   - [Update Queries](#update-queries)
   - [Constraints queries](#constraints-queries)

3. [שלב 3](#שלב-3)
   - [Functions](#functions)
   - [Procedures](#procedures)
   - [Main programs](#main-programs)

4. [שלב 4](#שלב-4)
    - [ERD & DSD](#ERD)
    - [Integration decisions](#החלטות-בשלב-האינטגרציה)
    - [קוד האינטגרציה](#קוד-האינטגרציה)
    - [מבטים](#מבטים)
    - [שאילתות](#שאילתות)

# שלב 1

הוטרנריה מקבלת חיות מחמד לביקורים אצל הוטרינר, לבדיקות ולטיפולים שונים. אפשר לקנות מוצרים נוספים אצל המזכירות.
  הארגון דואג לאגד את כל הנתונים הנצרכים על מנת שהטיפול יתבצע בצורה היעילה ביותר.

ERD:
![ERD](screenshots/ERD.png)

DSD:
![dsd](https://github.com/Efrat-W/Vet-Clinic/assets/116486421/98658db6-e2e1-4a80-999e-1cfe75e0ad19)

## תיאור תרשים

### Staff
**ישות: איש צוות**
- **sName**: שם של איש צוות
- **sID**: מספר מזהה ת"ז של איש צוות

תיאור: הישויות וטרינר ומזכירה יורשות מהישות של איש צוות.

### Vet
**ישות: וטרינר**
- **sName**: שם של איש צוות
- **sID**: מספר מזהה ת"ז של איש צוות
- **vSpeciality**: התמחות
- **vStartYear**: שנת התחלה
- **vRank**: דרגה

### Secretary
**ישות: מזכירה**
- **sName**: שם של איש צוות
- **sID**: מספר מזהה ת"ז של איש צוות
- **secRank**: דרגה
- **secPhoneNum**: מספר טלפון
- **secIsSeller**: שדה בוליאני ליכולתה למכור

תיאור: היא נמצאת ביחס עם הישות אקססוריז שבה מצויינים פריטים שהמרפאה מוכרת.
### Sell
**ישות: מכירה**
- **AccID**: מספר מזהה של מוצר
- **sID**: מספר מזהה ת"ז של מזכירה

### Accessories
**ישות: אקססוריז**
- **AccPrice**: מחיר פריט
- **AccId**: מספר מזהה של פריט

### Appointment
**ישות: ביקור**
- **AppDate**: תאריך
- **AppID**: מספר מזהה
- **AppCost**: עלות

### Treatment
**ישות: טיפול**
- **tID**: מספר מזהה
- **TName**: שם טיפול
- **Tprice**: עלות
- **Tduration**: זמן
  
### TreatmentType
**ישות: סוג טיפול**
- **tID**: מספר מזהה של טיפול
- **appID**: מספר מזהה של ביקור

### Pet
**ישות: חייה מטופלת**
- **petName**: שם
- **petId**: מספר מזהה
- **petSpecies**: זן
- **petGender**: מין
- **petAge**: שנת לידה

### PetOwner
**ישות: בעלים של החייה המטופלת**
- **ownerID**: ת"ז
- **ownerName**: שם
- **ownerAddress**: כתובת
- **ownerContactInfo**: פרטי קשר

desc:

![desc1](screenshots/desc%20(1).png)
![desc2](screenshots/desc%20(2).png)

## טבלאות לפי שיטות הכנסה שונות:
  
### text import
PetOwner:
  
![textimp1](screenshots/textimport.png)
![textimp2](screenshots/textimportresult.png)

### data generator
Accessories:

![dg1](screenshots/dg%20(1).jpeg)
![dg2](screenshots/dg%20(2).jpeg)
![dg3](screenshots/dg%20(3).jpeg)

Appointment:
![app1](screenshots/app%20(1).jpeg)
![app2](screenshots/app%20(2).jpeg)
![app3](screenshots/app%20(3).jpeg)

Secretary:
![sec1](screenshots/sec%20(1).jpeg)
![sec2](screenshots/sec%20(2).jpeg)
![sec3](screenshots/sec%20(3).jpeg)

Sell:
![sell1](screenshots/sell%20(1).jpeg)
![sell2](screenshots/sell%20(2).jpeg)
![sell3](screenshots/sell%20(3).jpeg)

Treatment Type:
![type1](screenshots/type%20(1).jpeg)
![type2](screenshots/type%20(2).jpeg)
![type3](screenshots/type%20(3).jpeg)

Treatment:
![treat1](screenshots/treat%20(1).jpeg)

### python generated sql
Pet:
![pet1](screenshots/pet%20(1).png)
![pet2](screenshots/pet%20(2).png)

Staff:
![s1](screenshots/staff%20(1).png)
![s2](screenshots/staff%20(2).png)

### Backup
![q1](screenshots/2/גיבוי.jpeg)


# שלב 2
## Select Queries
### Without parameters
החזרת מידע על כל המזכירות המוכרות, המוצר שהן מוכרות ופרטי תקשורת איתן
![q1](screenshots/2/query%20(1).jpeg)

סכום עלות כל הטיפולים של בעלי החיה עבור על חיית מחמד שלו
![q2](screenshots/2/query%20(2).jpeg)

סוג הטיפול עבור כל חיית מחמד, התאריך והוטרינר המטפל
![q1](screenshots/2/query%20(3).jpeg)

מספר הביקורים שנקבעו אצל כל וטרינר
![q2](screenshots/2/query%20(4).jpeg)

### With parameters
החזרת פרטי בעלים מסויים, חיות המחמד שלו שצריכות לעבור טיפול מסויים ומתי התור שלהן.
![p1](screenshots/2/paramQ%20(3).jpeg)

"קבלה" על קניית המוצרים, והסכום הכולל של הקניה
![p2](screenshots/2/params%20(2).jpeg)

החזרת פרטי כל חיות המחמד שיש להן ביקור עם הוטרינר המסויים
![p1](screenshots/2/paramQ%20(2).jpeg)

החזרת כל הוטרינרים שיש חיות מחמד אצלם בביקור בין התאריכים המסויימים
![p2](screenshots/2/params%20(4).jpeg)

החזר את כל פרטי הקשר עם בעלים לפי בחירת שמות בשיטת checklist
![p1](screenshots/2/paramQ%20(1).jpeg)

## Delete Queries
הסרת תמיכת הוטרינריה בטיפולים בדגי קרב (בטא).
זה כולל הסרת הטיפולים המיוחדים להם, ביטול התורים לדגים אלו, והסרת הדגים מרשימת המטופלים.
- לפני:
![d1](screenshots/2/del1%20(1).jpeg)
- אחרי:
![d2](screenshots/2/del1%20(2).jpeg)

הסרת כל המזון הרטוב (wet food).
- לפני:
![del1](screenshots/2/del2%20(2).jpeg)
- אחרי:
![del2](screenshots/2/del2%20(1).jpeg)

## Update Queries
דחיית כל התורים שבשנת 2023 לשנת 2024.
- לפני:
![up1](screenshots/2/update1%20(2).jpeg)
- אחרי:
![up2](screenshots/2/update1%20(1).jpeg)

הנחה על כל מוצרי האוכל, אותו מאפשרות רק מזכירות לא-מתחילות.
- לפני:
![update1](screenshots/2/update2%20(2).jpeg)
- אחרי:
![update2](screenshots/2/update2%20(1).jpeg)


## Constraints queries
- אילוץ: ברירת מחדל עבור מזכירה היא "לא" מוכרת.
- אילוץ: מחיר מוצר יהיה מ0 ומעלה, לא שלילי.
![const1](screenshots/2/constraint1.png)
- אילוץ: שם בעלים חייב להיות קיים ולא נאל.
![const2](screenshots/2/constraint2.png)


# שלב 3
## Functions
חישוב סכום עלויות הטיפולים לפי תז של בעלים
```sql
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
```

החזר את הביקורים של חיות המחמד של בעלים מסויים
```sql
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
```

מספר החיות בוטרינריה מזן מסויים
```sql

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
```

## Procedures
עדכן מחיר לביקור מסויים
```sql

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
```

הצג פרטי כל התורות של חיות בעלים מסויים
```sql
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
```

## Main Programs
### Display Appointments and Total
הצג את פרטי כל התורות עבור חיות המחמד של בעלים מסויים, ואת הסכום הכולל
```sql
DECLARE
id1 petowner.ownerid%TYPE;
total INTEGER;
BEGIN
  id1 := 1200;
  total := 0;
    DBMS_OUTPUT.PUT_LINE('Appointments for Owner ID ' || id1 || ':');
    DBMS_OUTPUT.PUT_LINE('');
    display_owner_appointments(id1); -- procedure call
    DBMS_OUTPUT.PUT_LINE('');

    total := calculate_total_cost(id1); -- function call
    DBMS_OUTPUT.PUT_LINE('Total cost: ' || total);
        DBMS_OUTPUT.PUT_LINE('');    
END;
```
הרצה:

![run1](screenshots/3/run22.png)
תוצאה:

![run1.0](screenshots/3/run1.png)
![run1.1](screenshots/3/run11.png)
חריגה:

![run1](screenshots/3/exceptionhandled.png)

### Update Cost and Display Total
החזר מספר החיות בוטרינריה מזן מסויים, עדכן מחיר של תור מסויים, וחשב את הסכום הכללי שיעלה לבעלים בעקבות השינוי.
```sql
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
```
הרצה:

![run2](screenshots/3/run2.png)
- לפני

![before](screenshots/3/before.png)
- אחרי

![after](screenshots/3/after.png)

- השינוי בבסיס הנתונים:
![updatedDB](screenshots/3/updatedDB.png)

חריגת התוכנית בהרצה עם משתנה מסוג לא נכון:
![exception1](screenshots/3/exception.jpeg)

# שלב 4
## new ERD and DSD diagrams
### ERD
![erd1](stage%204/newERD.png)
![erd2](stage%204/combinedERD.png)
### DSD
![dsd1](stage%204/oldDSD.png)
![dsd2](stage%204/combinedDSD.png)

## החלטות בשלב האינטגרציה
1. **מיזוג טבלאות PETOWNER ו-TRAVELERS**:
    - החלטנו למזג את טבלת PETOWNER עם טבלת TRAVELERS.
    - הוספנו את התכונה `YEAR_OF_BIRTH` שהייתה בטבלת TRAVELERS לטבלת PETOWNER.
    - התכונות `ID` ו-`NAME` של TRAVELERS הועברו לטבלת PETOWNER בהתאם.
    - בהתנגשויות של ID, השם (NAME) עודכן בהתאם לשם מהנתונים של האגף החדש.

2. **ירושת GUARD מ-STAFF**:
    - החלטנו שטבלת GUARD תירש מטבלת STAFF.
    - התכונות `ID` ו-`NAME` של GUARD הועברו לטבלת STAFF.
    - קישור הירושה נעשה באמצעות מפתח זר (FOREIGN KEY) לפי הת.ז.
    - בהתנגשויות של ID, השם (NAME) עודכן בהתאם לשם מהנתונים של האגף החדש.


## קוד האינטגרציה
```sql

--GUARD modifications--
allow null in staff sbirthdate
alter table staff modify (sbirthdate date null);

--merge guard details into staff
merge into staff s using guard g
on (s.sID = g.id_guard)
when matched then
     update set s.sname = g.name
when not matched then
  insert (sid, sname, sbirthdate)
  values (g.id_guard, g.name, null);

--add id constraint to be from staff table
alter table guard 
      add constraint fk_id foreign key (id_guard)
      references staff (sid);
      
--remove redundant attribute
alter table guard drop column name;

--END--
-------------------------------------

--TRAVELER PETOWNER modifications--
add traveler yearofbirth column to petowner
alter table petowner add (year_of_birth number);

--merge traveler details into petowner
--new ones:
insert into petowner (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
select name, id_travels, 'Unknown Address', 0, year_of_birth
from travelers
where id_travels not in (select ownerid
                        from petowner);
                        
--existing ones:
merge into petowner p using travelers t
on (p.ownerid = t.id_travels)
when matched then
  update set p.year_of_birth = t.year_of_birth;
                        
--travelers_list update: connect trip to petowner
--rename column
alter table travelers_list
rename column id_travels to ownerid;

--drop both foreign keys bc we can't know which one it is
alter table travelers_list
drop constraint SYS_C009053; --changes every import

--update foreign key constraints
alter table TRAVELERS_LIST
  add foreign key (ID_TRAVELS)
  references PETOWNER (OWNERID) on delete cascade;

--drop the irrelevant traveler table
drop table travelers;
--END--



--check if worked:
select * from staff;
select * from guard;

select count(*) from petowner;
select count(*) from travelers;
select * from travelers_list;
```

לפני ואחרי מיזוג המטיילים:
![premerged](stage%204/screenshots/premerged.png)
![merged](stage%204/screenshots/merged.png)

## מבטים
מבט עבור ניהול פרטי טיפולים וסוגיהם.
נועד עבור מנהלי המרפאה או צוות המרפאה שצריכים לנהל ולעיין במידע מפורט על פגישות וטיפולים שניתנו לחיות מחמד.
ניתן להשתמש במבט זה ליצירת דוחות, ניהול חיובים, חישוב מחירים ועוד.
```sql
CREATE OR REPLACE VIEW AppointmentDetails AS
SELECT 
    p.ownerid as owner_id, a.AppDate, a.AppCost, p.petName, s.sName AS VetName,
    t.TName AS TreatmentName, t.TPrice AS TreatmentPrice
FROM Appointment a
JOIN Pet p ON a.petId = p.petId
JOIN treatmentType tt ON a.AppID = tt.AppID
JOIN Treatment t ON tt.tID = t.tID;
```
![selectviewapp](stage%204/screenshots/selectviewapp.png)


מבט עבור ניהול פרטי טיולים.
נועד עבור צוות סוכנות הטיולים, לחשב מחירים ונסיעות, לתאם דרייברים בלי התנגשויות ועוד.
```sql
-- all trip details relevant to the trip agency
CREATE OR REPLACE VIEW TripDetails AS
SELECT 
    t.name AS TripName, t.price AS TripPrice, t.trip_date,
    tr.number_of_passengers, tr.driver,
    d.name AS DestinationName
FROM TRIP t
JOIN TRANSPORTATION tr ON t.id_transportation = tr.id_transportation
JOIN DESTINATIONS d ON t.id_trip = d.id_trip;
```
![selectviewtrip](stage%204/screenshots/selectviewtrip.png)


## שאילתות

### על מבט באגף הוטרינריה
```sql
--- get total cost for owner per pet
SELECT owner_id, petName, SUM(AppCost) AS TotalCost
FROM AppointmentDetails
GROUP BY petName, owner_id;
```

```sql
--number of appointments of every treatment type
SELECT TreatmentName, COUNT(*) AS NumberOfAppointments FROM AppointmentDetails GROUP BY TreatmentName;
```

### על מבט באגף הטיולים
```sql
-- trips that have over 50 travelers signed in
SELECT * FROM TripDetails WHERE number_of_passengers > 45;
```

```sql
-- the driver per trip and the designated date
SELECT driver, trip_date
FROM TripDetails
ORDER BY driver, trip_date;
```

```sql
--update trip cost
UPDATE TRIP
SET price = 300
WHERE id_trip = 2;
select * from trip;
```
