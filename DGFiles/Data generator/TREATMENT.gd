
[General]
Version=1

[Preferences]
Username=
Password=2495
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOZOHAR
Name=TREATMENT
Count=400

[Record]
Name=TID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=TNAME
Type=VARCHAR2
Size=15
Data=List('Vaccination', 'Surgery','General check')
Master=

[Record]
Name=TPRICE
Type=NUMBER
Size=
Data=Random(100,800)
Master=

[Record]
Name=TDURATION
Type=NUMBER
Size=
Data=Random(1, 4)
Master=

