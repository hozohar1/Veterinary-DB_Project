
[General]
Version=1

[Preferences]
Username=
Password=2292
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOZOHAR
Name=SELL
Count=400

[Record]
Name=ACCID
Type=NUMBER
Size=
Data=List(select AccId from Accessories)
Master=

[Record]
Name=SID
Type=NUMBER
Size=
Data=List(select sID from Secretary)
Master=

