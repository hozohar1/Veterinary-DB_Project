
[General]
Version=1

[Preferences]
Username=
Password=2275
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOZOHAR
Name=ACCESSORIES
Count=400

[Record]
Name=ACCPRICE
Type=NUMBER
Size=
Data=Random(50, 120)
Master=

[Record]
Name=ACCID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=ACCNAME
Type=VARCHAR2
Size=15
Data=List('wet food', 'dry food','bone toy','cat collar','dog collar')
Master=

