prompt Creating ACCESSORIES...
create table ACCESSORIES
(
  accprice INTEGER not null,
  accid    INTEGER not null,
  accname  VARCHAR2(15) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table ACCESSORIES
  add primary key (ACCID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating PETOWNER...
create table PETOWNER
(
  ownername        VARCHAR2(15) not null,
  ownerid          INTEGER not null,
  owneraddress     VARCHAR2(15) not null,
  ownerphonenumber INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table PETOWNER
  add primary key (OWNERID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating PET...
create table PET
(
  petname      VARCHAR2(15) not null,
  petspecies   VARCHAR2(15) not null,
  petbirthyear INTEGER not null,
  petgender    CHAR(1) not null,
  petid        INTEGER not null,
  ownerid      INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table PET
  add primary key (PETID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PET
  add foreign key (OWNERID)
  references PETOWNER (OWNERID);
alter table PET
  add check (petGender IN ('M', 'F'));

prompt Creating STAFF...
create table STAFF
(
  sname      VARCHAR2(15) not null,
  sid        INTEGER not null,
  sbirthdate DATE not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table STAFF
  add primary key (SID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating VET...
create table VET
(
  vspeciality VARCHAR2(15) not null,
  vstartyear  INTEGER not null,
  vrank       INTEGER not null,
  sid         INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table VET
  add primary key (SID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table VET
  add foreign key (SID)
  references STAFF (SID);

prompt Creating APPOINTMENT...
create table APPOINTMENT
(
  appdate DATE not null,
  appcost INTEGER not null,
  appid   INTEGER not null,
  petid   INTEGER not null,
  sid     INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table APPOINTMENT
  add primary key (APPID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table APPOINTMENT
  add foreign key (PETID)
  references PET (PETID);
alter table APPOINTMENT
  add foreign key (SID)
  references VET (SID);

prompt Creating EMPLOYEES...
create table EMPLOYEES
(
  id INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table EMPLOYEES
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SECRETARY...
create table SECRETARY
(
  isseller    CHAR(1) not null,
  secphonenum INTEGER not null,
  secrank     INTEGER not null,
  sid         INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table SECRETARY
  add primary key (SID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table SECRETARY
  add foreign key (SID)
  references STAFF (SID);
alter table SECRETARY
  add check (isSeller IN ('Y', 'N'));

prompt Creating SELL...
create table SELL
(
  accid INTEGER not null,
  sid   INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table SELL
  add primary key (ACCID, SID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table SELL
  add foreign key (ACCID)
  references ACCESSORIES (ACCID);
alter table SELL
  add foreign key (SID)
  references SECRETARY (SID);

prompt Creating TREATMENT...
create table TREATMENT
(
  tid       INTEGER not null,
  tname     VARCHAR2(15) not null,
  tprice    INTEGER not null,
  tduration INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table TREATMENT
  add primary key (TID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Creating TREATMENTTYPE...
create table TREATMENTTYPE
(
  appid INTEGER not null,
  tid   INTEGER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table TREATMENTTYPE
  add primary key (APPID, TID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table TREATMENTTYPE
  add foreign key (APPID)
  references APPOINTMENT (APPID);
alter table TREATMENTTYPE
  add foreign key (TID)
  references TREATMENT (TID);

prompt Disabling triggers for ACCESSORIES...
alter table ACCESSORIES disable all triggers;
prompt Disabling triggers for PETOWNER...
alter table PETOWNER disable all triggers;
prompt Disabling triggers for PET...
alter table PET disable all triggers;
prompt Disabling triggers for STAFF...
alter table STAFF disable all triggers;
prompt Disabling triggers for VET...
alter table VET disable all triggers;
prompt Disabling triggers for APPOINTMENT...
alter table APPOINTMENT disable all triggers;
prompt Disabling triggers for EMPLOYEES...
alter table EMPLOYEES disable all triggers;
prompt Disabling triggers for SECRETARY...
alter table SECRETARY disable all triggers;
prompt Disabling triggers for SELL...
alter table SELL disable all triggers;
prompt Disabling triggers for TREATMENT...
alter table TREATMENT disable all triggers;
prompt Disabling triggers for TREATMENTTYPE...
alter table TREATMENTTYPE disable all triggers;
prompt Disabling foreign key constraints for PET...
alter table PET disable constraint SYS_C00709142;
prompt Disabling foreign key constraints for VET...
alter table VET disable constraint SYS_C00709159;
prompt Disabling foreign key constraints for APPOINTMENT...
alter table APPOINTMENT disable constraint SYS_C00709180;
alter table APPOINTMENT disable constraint SYS_C00709181;
prompt Disabling foreign key constraints for SECRETARY...
alter table SECRETARY disable constraint SYS_C00709153;
prompt Disabling foreign key constraints for SELL...
alter table SELL disable constraint SYS_C00709172;
alter table SELL disable constraint SYS_C00709173;
prompt Disabling foreign key constraints for TREATMENTTYPE...
alter table TREATMENTTYPE disable constraint SYS_C00709185;
alter table TREATMENTTYPE disable constraint SYS_C00709186;
prompt Deleting TREATMENTTYPE...
delete from TREATMENTTYPE;
commit;
prompt Deleting TREATMENT...
delete from TREATMENT;
commit;
prompt Deleting SELL...
delete from SELL;
commit;
prompt Deleting SECRETARY...
delete from SECRETARY;
commit;
prompt Deleting EMPLOYEES...
delete from EMPLOYEES;
commit;
prompt Deleting APPOINTMENT...
delete from APPOINTMENT;
commit;
prompt Deleting VET...
delete from VET;
commit;
prompt Deleting STAFF...
delete from STAFF;
commit;
prompt Deleting PET...
delete from PET;
commit;
prompt Deleting PETOWNER...
delete from PETOWNER;
commit;
prompt Deleting ACCESSORIES...
delete from ACCESSORIES;
commit;
prompt Loading ACCESSORIES...
prompt Table is empty
prompt Loading PETOWNER...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzipora''', 1000, ' ''Raanana''', 536299117);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dalia''', 1002, ' ''Ra''anana''', 777767649);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Lior''', 1003, ' ''Bat Yam''', 542738402);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avital''', 1004, ' ''Dimona''', 771050207);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ziv''', 1005, ' ''Nahariya''', 532417005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shani''', 1006, ' ''Gan Yavne''', 771293461);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yehuda''', 1009, ' ''Bnei Ayish''', 536528421);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yosef''', 1010, ' ''Netanya''', 774461842);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gali''', 1011, ' ''Raanana''', 537343730);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Elisha''', 1012, ' ''Sakhnin''', 33887388);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yosef''', 1014, ' ''Jerusalem''', 531618080);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Kfir''', 1015, ' ''Holon''', 779156239);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Efrat''', 1016, ' ''Kfar Saba''', 38002708);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avital''', 1017, ' ''Tirat Carmel''', 39518641);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eliav''', 1019, ' ''Ramat Gan''', 535580835);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avraham''', 1021, ' ''Gedera''', 776657509);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mika''', 1022, ' ''Beer Sheva''', 544877221);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eitan''', 1023, ' ''Kfar Saba''', 536680917);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orly''', 1024, ' ''Bnei Brak''', 545581982);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Raz''', 1026, ' ''Giv''atayim''', 521518150);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hadar''', 1027, ' ''Kiryat Ono''', 38059160);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gideon''', 1028, ' ''Givat Ze''ev''', 776782661);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Pnina''', 1029, ' ''Giv''atayim''', 545336548);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zvika''', 1030, ' ''Tamra''', 537574655);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Levi''', 1031, ' ''Beit Dagan''', 535790279);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zvika''', 1032, ' ''Modiin''', 779806668);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nechama''', 1033, ' ''Netivot''', 37680652);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Batya''', 1034, ' ''Azor''', 547035115);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rachel''', 1035, ' ''Dimona''', 775659991);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzila''', 1036, ' ''Tiberias''', 528875668);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mika''', 1037, ' ''Yehud''', 775734809);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yehudit''', 1038, ' ''Holon''', 522148306);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uri''', 1039, ' ''Ramla''', 533151253);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nir''', 1040, ' ''Kiryat Yam''', 527083520);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Udi''', 1041, ' ''Petah Tikva''', 779784963);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shoshana''', 1042, ' ''Modiin''', 779305329);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rachel''', 1043, ' ''Kiryat Ono''', 528225998);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mordechai''', 1044, ' ''Azor''', 535453671);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shoshana''', 1045, ' ''Kfar Saba''', 531804212);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shira''', 1046, ' ''Kfar Saba''', 778716779);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mor''', 1047, ' ''Hod HaSharon''', 548579136);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Israel''', 1048, ' ''Beit Shemesh''', 526082960);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dalia''', 1049, ' ''Netivot''', 534475200);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eliana''', 1050, ' ''Lod''', 522733120);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yardena''', 1052, ' ''Netivot''', 771230101);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avner''', 1053, ' ''Elyakhin''', 521070335);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Keren''', 1055, ' ''Akko''', 775700896);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Moshe''', 1056, ' ''Kfar Saba''', 773733499);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ziva''', 1058, ' ''Elyakhin''', 527432673);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zeev''', 1059, ' ''Bnei Brak''', 779555694);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Keren''', 1061, ' ''Yavne''', 529796869);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nir''', 1062, ' ''Raanana''', 779169208);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noy''', 1063, ' ''Kfar Saba''', 32388753);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shoshana''', 1064, ' ''Kfar Saba''', 538651777);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zohar''', 1065, ' ''Shoham''', 538058784);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uziel''', 1066, ' ''Rehovot''', 522289986);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nechama''', 1067, ' ''Kfar Saba''', 39550761);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hila''', 1068, ' ''Karmiel''', 529017202);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avigail''', 1069, ' ''Gedera''', 531030304);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ari''', 1070, ' ''Bnei Brak''', 771439114);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rafi''', 1072, ' ''Tiberias''', 39301565);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rafi''', 1073, ' ''Rehovot''', 529829575);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Idan''', 1075, ' ''Netanya''', 542151413);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Adina''', 1076, ' ''Umm al-Fahm''', 536423793);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Barak''', 1077, ' ''Ashkelon''', 526729508);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chaim''', 1078, ' ''Tamra''', 776719048);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Koren''', 1079, ' ''Kfar Yona''', 544638764);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Koren''', 1080, ' ''Haifa''', 533537440);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uriah''', 1081, ' ''Tamra''', 545798300);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yael''', 1083, ' ''Kiryat Yam''', 538902985);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Binyamin''', 1084, ' ''Kiryat Ono''', 777165573);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zvika''', 1085, ' ''Yokneam''', 521597786);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Pnina''', 1086, ' ''Nof HaGalil''', 528877985);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Sara''', 1087, ' ''Tamra''', 779190838);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Lily''', 1088, ' ''Yokneam''', 524986664);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Matan''', 1089, ' ''Elyakhin''', 778260283);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nechama''', 1091, ' ''Givat Ze''ev''', 777344673);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Liel''', 1092, ' ''Nof HaGalil''', 771190815);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zohar''', 1093, ' ''Raanana''', 535147987);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zalman''', 1095, ' ''Arad''', 522283594);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''David''', 1096, ' ''Kiryat Ono''', 39879667);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gideon''', 1098, ' ''Beit Shemesh''', 533330654);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zohara''', 1100, ' ''Ramat Gan''', 549868629);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Geula''', 1102, ' ''Afula''', 543965435);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avraham''', 1103, ' ''Raanana''', 548632409);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Kochav''', 1104, ' ''Givat Ze''ev''', 38638342);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaffa''', 1105, ' ''Gan Yavne''', 38385677);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Menucha''', 1106, ' ''Yavne''', 541940043);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Carmel''', 1108, ' ''Kiryat Ono''', 527664850);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mordechai''', 1109, ' ''Harish''', 538560754);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noa''', 1110, ' ''Ramla''', 776184478);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Doron''', 1111, ' ''Beer Sheva''', 521759303);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yael''', 1112, ' ''Beit Shean''', 776877947);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avigail''', 1114, ' ''Rehovot''', 528248823);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaron''', 1115, ' ''Or Yehuda''', 528431839);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zohara''', 1116, ' ''Rosh HaAyin''', 544326680);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Asher''', 1117, ' ''Tirat Carmel''', 531254447);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hodaya''', 1118, ' ''Kfar Saba''', 541890200);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Geula''', 1119, ' ''Kiryat Ata''', 529310737);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Adina''', 1121, ' ''Hadera''', 524799032);
commit;
prompt 100 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nadav''', 1123, ' ''Lod''', 537325144);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uri''', 1124, ' ''Or Akiva''', 538480022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1125, ' ''Kiryat Gat''', 771436968);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yehudit''', 1126, ' ''Ness Ziona''', 548412338);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noam''', 1129, ' ''Bnei Brak''', 534110966);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tamar''', 1131, ' ''Ashkelon''', 542939353);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uzi''', 1132, ' ''Nof HaGalil''', 775535721);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Efrat''', 1133, ' ''Ra''anana''', 548939718);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Vered''', 1134, ' ''Netivot''', 39392706);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mor''', 1135, ' ''Ra''anana''', 544206340);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzipora''', 1136, ' ''Ashdod''', 777764182);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yael''', 1137, ' ''Tamra''', 542168427);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dalia''', 1138, ' ''Ness Ziona''', 522246888);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzofia''', 1139, ' ''Azor''', 548927377);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Haim''', 1140, ' ''Ramla''', 522969958);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzipora''', 1141, ' ''Tiberias''', 543970657);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ari''', 1142, ' ''Tel Aviv''', 529211317);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Micha''', 1143, ' ''Eilat''', 535082962);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dalia''', 1144, ' ''Harish''', 539746558);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orna''', 1146, ' ''Ness Ziona''', 779474133);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ilan''', 1149, ' ''Ness Ziona''', 529838305);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Elisha''', 1150, ' ''Giv''atayim''', 37945250);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avraham''', 1151, ' ''Kiryat Ata''', 545219650);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Kedem''', 1152, ' ''Shoham''', 544903539);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noa''', 1155, ' ''Beit Dagan''', 774108315);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1156, ' ''Eilat''', 529771303);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Omer''', 1157, ' ''Yehud''', 545716184);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rivka''', 1158, ' ''Hadera''', 526935345);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Liel''', 1159, ' ''Ness Ziona''', 521133066);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noa''', 1161, ' ''Karmiel''', 776672177);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Bracha''', 1162, ' ''Dimona''', 531421241);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Idan''', 1163, ' ''Kiryat Ono''', 539518689);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shani''', 1164, ' ''Ramat Gan''', 539099788);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rivka''', 1165, ' ''Petah Tikva''', 525639661);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Geula''', 1166, ' ''Netanya''', 543574417);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Herzl''', 1168, ' ''Beit Shemesh''', 35098869);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ilay''', 1169, ' ''Nof HaGalil''', 549284603);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eli''', 1170, ' ''Holon''', 534008111);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yardena''', 1171, ' ''Beit Dagan''', 527542240);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Sara''', 1172, ' ''Kiryat Yam''', 521677569);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Keren''', 1173, ' ''Rehovot''', 32718818);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Matan''', 1174, ' ''Shoham''', 31434227);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uzi''', 1175, ' ''Beersheba''', 32552911);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noam''', 1176, ' ''Ashkelon''', 32354956);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Kochav''', 1177, ' ''Herzliya''', 547754868);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Micha''', 1178, ' ''Nahariya''', 528887315);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Bracha''', 1179, ' ''Gedera''', 522344218);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ziv''', 1181, ' ''Beer Sheva''', 529733884);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Benny''', 1182, ' ''Beit Shemesh''', 771084643);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Binyamin''', 1183, ' ''Yehud''', 776725008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eliyahu''', 1184, ' ''Azor''', 776898287);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Elad''', 1185, ' ''Arad''', 542985005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Reut''', 1186, ' ''Netanya''', 779611757);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tamar''', 1187, ' ''Yavne''', 771574307);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Maayan''', 1188, ' ''Akko''', 531837953);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shmuel''', 1189, ' ''Yavne''', 546128029);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Karin''', 1190, ' ''Holon''', 543356606);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yoni''', 1191, ' ''Jerusalem''', 524174246);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Menahem''', 1192, ' ''Tirat Carmel''', 771985642);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orit''', 1193, ' ''Yokneam''', 33647526);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Sara''', 1194, ' ''Bnei Ayish''', 535756851);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Benny''', 1195, ' ''Ramla''', 538660220);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Frieda''', 1196, ' ''Or Yehuda''', 538577495);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Maya''', 1197, ' ''Bat Yam''', 537654004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uzi''', 1198, ' ''Beer Sheva''', 531262122);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avital''', 1199, ' ''Beersheba''', 543311429);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Idan''', 1200, ' ''Herzliya''', 38033367);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chava''', 1201, ' ''Jerusalem''', 31933329);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ophir''', 1202, ' ''Rosh HaAyin''', 548921591);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uriah''', 1203, ' ''Elyakhin''', 537119197);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Batsheva''', 1206, ' ''Haifa''', 541968583);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Adina''', 1208, ' ''Shoham''', 521427472);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rafi''', 1209, ' ''Karmiel''', 536107046);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Frieda''', 1210, ' ''Givat Ze''ev''', 522172218);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eliana''', 1211, ' ''Kfar Saba''', 537528624);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Doron''', 1212, ' ''Umm al-Fahm''', 33245819);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eliyahu''', 1215, ' ''Ness Ziona''', 39749265);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Erez''', 1216, ' ''Or Akiva''', 531139703);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dalia''', 1217, ' ''Kiryat Gat''', 535434033);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Irit''', 1218, ' ''Ramla''', 536460274);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Sara''', 1219, ' ''Umm al-Fahm''', 537487474);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Koren''', 1220, ' ''Beer Sheva''', 547503803);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rafi''', 1221, ' ''Bnei Ayish''', 537170613);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Adina''', 1222, ' ''Givat Ze''ev''', 525737493);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mirit''', 1223, ' ''Ness Ziona''', 34762948);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nadav''', 1224, ' ''Ashkelon''', 545322667);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ofra''', 1225, ' ''Givat Ze''ev''', 548416051);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Adina''', 1226, ' ''Beit Shean''', 779337583);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mika''', 1227, ' ''Jerusalem''', 532588155);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orna''', 1228, ' ''Yehud''', 35275485);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Bracha''', 1229, ' ''Kfar Saba''', 524455748);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shani''', 1230, ' ''Harish''', 33368845);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uriah''', 1233, ' ''Bat Yam''', 528235791);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rivka''', 1234, ' ''Ra''anana''', 538194868);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dor''', 1235, ' ''Raanana''', 37831965);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mordechai''', 1236, ' ''Petah Tikva''', 35332221);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noam''', 1237, ' ''Lod''', 771412023);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Lavi''', 1238, ' ''Tiberias''', 526136428);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Reut''', 1239, ' ''Bnei Ayish''', 31636268);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noam''', 1240, ' ''Bnei Brak''', 543375619);
commit;
prompt 200 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gavriella''', 1241, ' ''Afula''', 522202309);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Binyamin''', 1243, ' ''Beersheba''', 541043858);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''David''', 1244, ' ''Tel Aviv''', 774369537);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yosefa''', 1245, ' ''Karmiel''', 522709288);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hadar''', 1246, ' ''Kiryat Ata''', 33566676);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Maya''', 1247, ' ''Dimona''', 525968655);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Itamar''', 1248, ' ''Tiberias''', 778877027);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Oz''', 1249, ' ''Rehovot''', 775586813);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Boaz''', 1250, ' ''Ra''anana''', 545432504);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Lihi''', 1251, ' ''Jerusalem''', 532112414);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Boaz''', 1252, ' ''Beit Shean''', 531935720);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dalia''', 1253, ' ''Bnei Ayish''', 543678877);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Reut''', 1254, ' ''Tiberias''', 537850205);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Batsheva''', 1255, ' ''Rehovot''', 773778023);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Micha''', 1256, ' ''Givatayim''', 545715879);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dina''', 1257, ' ''Elyakhin''', 535169164);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Asher''', 1258, ' ''Ashkelon''', 525429755);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Erez''', 1259, ' ''Giv''atayim''', 771802174);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zalman''', 1260, ' ''Ness Ziona''', 37066970);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rachel''', 1261, ' ''Gedera''', 537889063);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzofia''', 1262, ' ''Eilat''', 535674722);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gideon''', 1264, ' ''Elyakhin''', 774336519);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gavriella''', 1266, ' ''Bnei Brak''', 536922473);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uzi''', 1268, ' ''Bnei Brak''', 535913284);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaron''', 1270, ' ''Herzliya''', 523797154);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hodaya''', 1272, ' ''Kfar Yona''', 523176496);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Levi''', 1274, ' ''Nahariya''', 533528649);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hodaya''', 1275, ' ''Kfar Saba''', 539638761);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avigail''', 1276, ' ''Kiryat Ono''', 534371108);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Geula''', 1277, ' ''Beer Sheva''', 527598286);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Kfir''', 1278, ' ''Yehud''', 38257480);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''David''', 1279, ' ''Rosh HaAyin''', 32346336);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eliana''', 1280, ' ''Jerusalem''', 522960404);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uzi''', 1282, ' ''Beit Shean''', 521161581);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uri''', 1284, ' ''Sderot''', 777185770);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yotam''', 1285, ' ''Lod''', 774776314);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaara''', 1286, ' ''Kfar Saba''', 772614356);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''David''', 1288, ' ''Yokneam''', 772618447);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yigal''', 1290, ' ''Rehovot''', 543320003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Bracha''', 1291, ' ''Raanana''', 527907978);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1292, ' ''Dimona''', 773452708);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ayala''', 1293, ' ''Kfar Saba''', 539514632);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ophir''', 1295, ' ''Beer Sheva''', 777661094);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ronen''', 1296, ' ''Sderot''', 529770986);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tamar''', 1297, ' ''Modiin''', 537225407);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Boaz''', 1298, ' ''Dimona''', 546872759);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dalia''', 1299, ' ''Arad''', 772354536);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Irit''', 1300, ' ''Givat Ze''ev''', 546901987);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yigal''', 1301, ' ''Kfar Saba''', 527668496);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dov''', 1302, ' ''Harish''', 541613844);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Odelia''', 1303, ' ''Rehovot''', 548705684);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Geula''', 1304, ' ''Arad''', 529106122);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hagar''', 1305, ' ''Ashdod''', 38978751);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chaim''', 1306, ' ''Netivot''', 531468747);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chana''', 1307, ' ''Umm al-Fahm''', 531324673);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Oz''', 1308, ' ''Kiryat Gat''', 776099349);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yoni''', 1309, ' ''Eilat''', 37025644);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zalman''', 1310, ' ''Nahariya''', 542712213);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Haim''', 1313, ' ''Nof HaGalil''', 537466515);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Menahem''', 1316, ' ''Giv''atayim''', 542277864);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dina''', 1317, ' ''Harish''', 522335987);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzvi''', 1319, ' ''Bnei Ayish''', 521279104);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hodaya''', 1321, ' ''Akko''', 522692822);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hillel''', 1322, ' ''Sakhnin''', 533817050);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hadar''', 1324, ' ''Bnei Ayish''', 543610142);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ilay''', 1325, ' ''Netanya''', 543235157);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Kedem''', 1326, ' ''Ramat Gan''', 35230124);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Benny''', 1327, ' ''Shoham''', 775191027);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chana''', 1328, ' ''Petah Tikva''', 546683518);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yael''', 1329, ' ''Kfar Yona''', 545273746);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Itai''', 1330, ' ''Afula''', 779734314);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Koren''', 1331, ' ''Yokneam''', 532121542);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eitan''', 1332, ' ''Azor''', 548074941);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rinat''', 1333, ' ''Raanana''', 536467124);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chaya''', 1334, ' ''Tirat Carmel''', 523785455);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Oren''', 1335, ' ''Yehud''', 526201373);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaara''', 1336, ' ''Givatayim''', 779461028);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gavriel''', 1340, ' ''Sakhnin''', 31754865);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ronen''', 1341, ' ''Or Akiva''', 547312859);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avner''', 1343, ' ''Tirat Carmel''', 39449007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yael''', 1344, ' ''Tiberias''', 522843840);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chana''', 1347, ' ''Jerusalem''', 34369154);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yishai''', 1348, ' ''Gan Yavne''', 521863781);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Amir''', 1349, ' ''Ramat Gan''', 543438550);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''David''', 1350, ' ''Beer Sheva''', 536732273);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zelda''', 1351, ' ''Afula''', 546092232);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Reut''', 1352, ' ''Ashkelon''', 521842220);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orna''', 1353, ' ''Dimona''', 532970058);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ofra''', 1354, ' ''Sakhnin''', 541842952);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shira''', 1355, ' ''Karmiel''', 779182392);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ilana''', 1356, ' ''Kfar Saba''', 536031659);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chana''', 1357, ' ''Netanya''', 33415489);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Haim''', 1358, ' ''Beersheba''', 549043546);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nadav''', 1359, ' ''Or Akiva''', 31788002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Boaz''', 1360, ' ''Ness Ziona''', 38605044);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaffa''', 1361, ' ''Beit Shean''', 771526924);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yehudit''', 1362, ' ''Beit Shean''', 539214061);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tal''', 1363, ' ''Kfar Yona''', 521502959);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1364, ' ''Azor''', 542008630);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zehava''', 1366, ' ''Kiryat Yam''', 31977196);
commit;
prompt 300 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ophir''', 1367, ' ''Netivot''', 771958855);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaffa''', 1368, ' ''Bnei Brak''', 531738809);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ofra''', 1369, ' ''Karmiel''', 528013756);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1370, ' ''Or Akiva''', 526081715);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Maayan''', 1371, ' ''Netivot''', 773165623);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Karin''', 1372, ' ''Arad''', 544607795);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mika''', 1373, ' ''Umm al-Fahm''', 38349880);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eitan''', 1374, ' ''Kiryat Gat''', 526325241);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orna''', 1375, ' ''Rehovot''', 779413712);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noa''', 1378, ' ''Bat Yam''', 522293591);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Koby''', 1379, ' ''Karmiel''', 35080404);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Israel''', 1380, ' ''Sderot''', 544997524);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dor''', 1381, ' ''Gedera''', 536925349);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shira''', 1382, ' ''Nof HaGalil''', 539336151);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Carmel''', 1383, ' ''Jerusalem''', 523274277);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Vered''', 1384, ' ''Shoham''', 32812594);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zelda''', 1385, ' ''Ra''anana''', 38507398);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nir''', 1387, ' ''Gan Yavne''', 539363839);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Menahem''', 1388, ' ''Kfar Saba''', 534382759);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Elad''', 1389, ' ''Rosh HaAyin''', 527557527);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Keren''', 1391, ' ''Eilat''', 536856680);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yamit''', 1392, ' ''Nof HaGalil''', 35531779);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gavriella''', 1393, ' ''Netivot''', 549204075);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noy''', 1394, ' ''Arad''', 537846930);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orly''', 1395, ' ''Beit Shean''', 34290345);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Adina''', 1396, ' ''Yehud''', 32050215);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Adina''', 1397, ' ''Ness Ziona''', 534772134);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Vered''', 1398, ' ''Hadera''', 533468963);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shmuel''', 1399, ' ''Tirat Carmel''', 541638247);
commit;
prompt 329 records loaded
prompt Loading PET...
prompt Table is empty
prompt Loading STAFF...
prompt Table is empty
prompt Loading VET...
prompt Table is empty
prompt Loading APPOINTMENT...
prompt Table is empty
prompt Loading EMPLOYEES...
prompt Table is empty
prompt Loading SECRETARY...
prompt Table is empty
prompt Loading SELL...
prompt Table is empty
prompt Loading TREATMENT...
prompt Table is empty
prompt Loading TREATMENTTYPE...
prompt Table is empty
prompt Enabling foreign key constraints for PET...
alter table PET enable constraint SYS_C00709142;
prompt Enabling foreign key constraints for VET...
alter table VET enable constraint SYS_C00709159;
prompt Enabling foreign key constraints for APPOINTMENT...
alter table APPOINTMENT enable constraint SYS_C00709180;
alter table APPOINTMENT enable constraint SYS_C00709181;
prompt Enabling foreign key constraints for SECRETARY...
alter table SECRETARY enable constraint SYS_C00709153;
prompt Enabling foreign key constraints for SELL...
alter table SELL enable constraint SYS_C00709172;
alter table SELL enable constraint SYS_C00709173;
prompt Enabling foreign key constraints for TREATMENTTYPE...
alter table TREATMENTTYPE enable constraint SYS_C00709185;
alter table TREATMENTTYPE enable constraint SYS_C00709186;
prompt Enabling triggers for ACCESSORIES...
alter table ACCESSORIES enable all triggers;
prompt Enabling triggers for PETOWNER...
alter table PETOWNER enable all triggers;
prompt Enabling triggers for PET...
alter table PET enable all triggers;
prompt Enabling triggers for STAFF...
alter table STAFF enable all triggers;
prompt Enabling triggers for VET...
alter table VET enable all triggers;
prompt Enabling triggers for APPOINTMENT...
alter table APPOINTMENT enable all triggers;
prompt Enabling triggers for EMPLOYEES...
alter table EMPLOYEES enable all triggers;
prompt Enabling triggers for SECRETARY...
alter table SECRETARY enable all triggers;
prompt Enabling triggers for SELL...
alter table SELL enable all triggers;
prompt Enabling triggers for TREATMENT...
alter table TREATMENT enable all triggers;
prompt Enabling triggers for TREATMENTTYPE...
alter table TREATMENTTYPE enable all triggers;
