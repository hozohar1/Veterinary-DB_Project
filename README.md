# וטרינריה
הוטרנריה מקבלת חיות מחמד לביקורים אצל הוטרינר, לבדיקות ולטיפולים שונים. אפשר לקנות מוצרים נוספים אצל המזכירות.
  הארגון דואג לאגד את כל הנתונים הנצרכים על מנת שהטיפול יתבצע בצורה היעילה ביותר.

ERD:
![ERD](screenshots/ERD.png)

DSD:
![dsd](https://github.com/Efrat-W/Vet-Clinic/assets/116486421/98658db6-e2e1-4a80-999e-1cfe75e0ad19)

# תיאור תרשים

## Staff
**ישות: איש צוות**
- **sName**: שם של איש צוות
- **sID**: מספר מזהה ת"ז של איש צוות

תיאור: הישויות וטרינר ומזכירה יורשות מהישות של איש צוות.

## Vet
**ישות: וטרינר**
- **sName**: שם של איש צוות
- **sID**: מספר מזהה ת"ז של איש צוות
- **vSpeciality**: התמחות
- **vStartYear**: שנת התחלה
- **vRank**: דרגה

## Secretary
**ישות: מזכירה**
- **sName**: שם של איש צוות
- **sID**: מספר מזהה ת"ז של איש צוות
- **secRank**: דרגה
- **secPhoneNum**: מספר טלפון
- **secIsSeller**: שדה בוליאני ליכולתה למכור

תיאור: היא נמצאת ביחס עם הישות אקססוריז שבה מצויינים פריטים שהמרפאה מוכרת.
## Sell
**ישות: מכירה**
- **AccID**: מספר מזהה של מוצר
- **sID**: מספר מזהה ת"ז של מזכירה

## Accessories
**ישות: אקססוריז**
- **AccPrice**: מחיר פריט
- **AccId**: מספר מזהה של פריט

## Appointment
**ישות: ביקור**
- **AppDate**: תאריך
- **AppID**: מספר מזהה
- **AppCost**: עלות

## Treatment
**ישות: טיפול**
- **tID**: מספר מזהה
- **TName**: שם טיפול
- **Tprice**: עלות
- **Tduration**: זמן
  
## TreatmentType
**ישות: סוג טיפול**
- **tID**: מספר מזהה של טיפול
- **appID**: מספר מזהה של ביקור

## Pet
**ישות: חייה מטופלת**
- **petName**: שם
- **petId**: מספר מזהה
- **petSpecies**: זן
- **petGender**: מין
- **petAge**: שנת לידה

## PetOwner
**ישות: בעלים של החייה המטופלת**
- **ownerID**: ת"ז
- **ownerName**: שם
- **ownerAddress**: כתובת
- **ownerContactInfo**: פרטי קשר


desc:

![desc1](screenshots/desc%20(1).png)
![desc2](screenshots/desc%20(2).png)

טבלאות לפי שיטות הכנסה שונות:
  
PetOwner (text import):
  
![textimp1](screenshots/textimport.png)
![textimp2](screenshots/textimportresult.png)

Accessories (data generator):

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

Pet (python generated sql):
![pet1](screenshots/pet%20(1).png)
![pet2](screenshots/pet%20(2).png)

Staff:
![s1](screenshots/staff%20(1).png)
![s2](screenshots/staff%20(2).png)
