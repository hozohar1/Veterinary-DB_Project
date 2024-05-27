
[General]
Version=1

[Preferences]
Username=
Password=2918
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOZOHAR
Name=TREATMENTTYPE
Count=400

[Record]
Name=APPID
Type=NUMBER
Size=
Data=List(select AppID from Appointment)
Master=

[Record]
Name=TID
Type=NUMBER
Size=
Data=List(select tID from Treatment)
Master=

