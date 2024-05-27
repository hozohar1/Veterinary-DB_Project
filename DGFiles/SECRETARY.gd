
[General]
Version=1

[Preferences]
Username=
Password=2489
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOZOHAR
Name=SECRETARY
Count=400

[Record]
Name=ISSELLER
Type=CHAR
Size=1
Data=List('Yes', 'No')
Master=

[Record]
Name=SECPHONENUM
Type=NUMBER
Size=
Data=Random(5000000, 5999999)
Master=

[Record]
Name=SECRANK
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

