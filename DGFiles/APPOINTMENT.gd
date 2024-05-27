
[General]
Version=1

[Preferences]
Username=
Password=2490
Database=
DateFormat=dd-mm-yyyy
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOZOHAR
Name=APPOINTMENT
Count=400

[Record]
Name=APPDATE
Type=DATE
Size=
Data=Random('01/01/2021', '01/01/2025')
Master=

[Record]
Name=APPCOST
Type=NUMBER
Size=
Data=Random(100, 750)
Master=

[Record]
Name=APPID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=PETID
Type=NUMBER
Size=
Data=List(select petId from Pet)
Master=

[Record]
Name=SID
Type=NUMBER
Size=
Data=List(select sID from Vet)
Master=

