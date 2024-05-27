
[General]
Version=1

[Preferences]
Username=
Password=2037
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOZOHAR
Name=VET
Count=400

[Record]
Name=VSPECIALITY
Type=VARCHAR2
Size=15
Data=List('Dentist', 'General','surgeon')
Master=

[Record]
Name=VSTARTYEAR
Type=NUMBER
Size=
Data=Random(1989, 2010)
Master=

[Record]
Name=VRANK
Type=NUMBER
Size=
Data=Random(1, 3)
Master=

[Record]
Name=SID
Type=NUMBER
Size=
Data=Sequence(1,1,400)
Master=

