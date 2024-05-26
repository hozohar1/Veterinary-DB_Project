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
  ownername        VARCHAR2(30) not null,
  ownerid          INTEGER not null,
  owneraddress     VARCHAR2(30) not null,
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
  petname      VARCHAR2(30) not null,
  petspecies   VARCHAR2(30) not null,
  petbirthyear INTEGER not null,
  petgender    CHAR(1) not null,
  petid        INTEGER not null,
  ownerid      INTEGER not null
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
alter table PET
  add primary key (PETID)
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
alter table PET disable constraint SYS_C00709374;
prompt Disabling foreign key constraints for VET...
alter table VET disable constraint SYS_C00709391;
prompt Disabling foreign key constraints for APPOINTMENT...
alter table APPOINTMENT disable constraint SYS_C00709412;
alter table APPOINTMENT disable constraint SYS_C00709413;
prompt Disabling foreign key constraints for SECRETARY...
alter table SECRETARY disable constraint SYS_C00709385;
prompt Disabling foreign key constraints for SELL...
alter table SELL disable constraint SYS_C00709404;
alter table SELL disable constraint SYS_C00709405;
prompt Disabling foreign key constraints for TREATMENTTYPE...
alter table TREATMENTTYPE disable constraint SYS_C00709417;
alter table TREATMENTTYPE disable constraint SYS_C00709418;
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
values ('''Itai''', 1001, ' ''Mazkeret Batya''', 544282960);
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
values ('''Haim''', 1007, ' ''Migdal HaEmek''', 543891104);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Keren''', 1008, ' ''Giv''at Shmuel''', 779650386);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yehuda''', 1009, ' ''Bnei Ayish''', 536528421);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yosef''', 1010, ' ''Netanya''', 774461842);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gali''', 1011, ' ''Raanana''', 537343730);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Elisha''', 1012, ' ''Sakhnin''', 33887388);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rina''', 1013, ' ''Rishon LeZion''', 521797012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yosef''', 1014, ' ''Jerusalem''', 531618080);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Kfir''', 1015, ' ''Holon''', 779156239);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Efrat''', 1016, ' ''Kfar Saba''', 38002708);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avital''', 1017, ' ''Tirat Carmel''', 39518641);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yishai''', 1018, ' ''Yehud-Monosson''', 538676990);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eliav''', 1019, ' ''Ramat Gan''', 535580835);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Barak''', 1020, ' ''Mazkeret Batya''', 774090297);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avraham''', 1021, ' ''Gedera''', 776657509);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mika''', 1022, ' ''Beer Sheva''', 544877221);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eitan''', 1023, ' ''Kfar Saba''', 536680917);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orly''', 1024, ' ''Bnei Brak''', 545581982);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Leah''', 1025, ' ''Hatzor HaGlilit''', 522825267);
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
values ('''Gila''', 1051, ' ''Yehud-Monosson''', 773014662);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yardena''', 1052, ' ''Netivot''', 771230101);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avner''', 1053, ' ''Elyakhin''', 521070335);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ayala''', 1054, ' ''Migdal HaEmek''', 38503063);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Keren''', 1055, ' ''Akko''', 775700896);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Moshe''', 1056, ' ''Kfar Saba''', 773733499);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chana''', 1057, ' ''Petach Tikvah''', 529800536);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ziva''', 1058, ' ''Elyakhin''', 527432673);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zeev''', 1059, ' ''Bnei Brak''', 779555694);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Eli''', 1060, ' ''Migdal HaEmek''', 777884589);
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
values ('''Mordechai''', 1071, ' ''Tzur Hadassah''', 522989630);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rafi''', 1072, ' ''Tiberias''', 39301565);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rafi''', 1073, ' ''Rehovot''', 529829575);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Batsheva''', 1074, ' ''Migdal HaEmek''', 539304828);
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
values ('''Kfir''', 1082, ' ''Rishon LeZion''', 34925991);
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
values ('''Hod''', 1090, ' ''Kiryat Bialik''', 37835162);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nechama''', 1091, ' ''Givat Ze''ev''', 777344673);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Liel''', 1092, ' ''Nof HaGalil''', 771190815);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zohar''', 1093, ' ''Raanana''', 535147987);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Barak''', 1094, ' ''Tzur Hadassah''', 774239781);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zalman''', 1095, ' ''Arad''', 522283594);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''David''', 1096, ' ''Kiryat Ono''', 39879667);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Menucha''', 1097, ' ''Mevasseret Zion''', 542198662);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gideon''', 1098, ' ''Beit Shemesh''', 533330654);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hillel''', 1099, ' ''Mevasseret Zion''', 536022634);
commit;
prompt 100 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zohara''', 1100, ' ''Ramat Gan''', 549868629);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Irit''', 1101, ' ''Giv''at Shmuel''', 36206369);
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
values ('''Gali''', 1107, ' ''Ramat HaSharon''', 779489699);
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
values ('''Tzvi''', 1113, ' ''Hatzor HaGlilit''', 537544207);
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
values ('''Tzvia''', 1120, ' ''Migdal HaEmek''', 37290182);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Adina''', 1121, ' ''Hadera''', 524799032);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nir''', 1122, ' ''Tzur Hadassah''', 549794639);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nadav''', 1123, ' ''Lod''', 537325144);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uri''', 1124, ' ''Or Akiva''', 538480022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1125, ' ''Kiryat Gat''', 771436968);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yehudit''', 1126, ' ''Ness Ziona''', 548412338);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Maayan''', 1127, ' ''Mazkeret Batya''', 34997121);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Leah''', 1128, ' ''Rishon LeZion''', 776780666);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noam''', 1129, ' ''Bnei Brak''', 534110966);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mirit''', 1130, ' ''Ramat HaSharon''', 529204935);
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
values ('''Nir''', 1145, ' ''Mevasseret Zion''', 36081588);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Orna''', 1146, ' ''Ness Ziona''', 779474133);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Matan''', 1147, ' ''Mevasseret Zion''', 778406971);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noy''', 1148, ' ''Mazkeret Batya''', 525713026);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ilan''', 1149, ' ''Ness Ziona''', 529838305);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Elisha''', 1150, ' ''Giv''atayim''', 37945250);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avraham''', 1151, ' ''Kiryat Ata''', 545219650);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Kedem''', 1152, ' ''Shoham''', 544903539);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Shmuel''', 1153, ' ''Zichron Yaakov''', 548849210);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Oz''', 1154, ' ''Mazkeret Batya''', 537676768);
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
values ('''Menucha''', 1160, ' ''Mazkeret Batya''', 523435424);
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
values ('''Shira''', 1167, ' ''Mazkeret Batya''', 34477460);
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
values ('''Tamar''', 1180, ' ''Giv''at Shmuel''', 38517568);
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
commit;
prompt 200 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Idan''', 1200, ' ''Herzliya''', 38033367);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chava''', 1201, ' ''Jerusalem''', 31933329);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ophir''', 1202, ' ''Rosh HaAyin''', 548921591);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uriah''', 1203, ' ''Elyakhin''', 537119197);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Menahem''', 1204, ' ''Petach Tikvah''', 523047398);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noam''', 1205, ' ''Hatzor HaGlilit''', 774580216);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Batsheva''', 1206, ' ''Haifa''', 541968583);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Noy''', 1207, ' ''Petach Tikvah''', 33037844);
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
values ('''Pnina''', 1213, ' ''Ramat HaSharon''', 527942131);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaron''', 1214, ' ''Kiryat Malakhi''', 525748001);
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
values ('''Zeev''', 1231, ' ''Qiryat Shemona''', 525118123);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzila''', 1232, ' ''Yehud-Monosson''', 536995297);
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
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gavriella''', 1241, ' ''Afula''', 522202309);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ilan''', 1242, ' ''Kiryat Shmona''', 529935757);
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
values ('''Boaz''', 1263, ' ''Mevasseret Zion''', 32080487);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gideon''', 1264, ' ''Elyakhin''', 774336519);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yehudit''', 1265, ' ''Hatzor HaGlilit''', 38777603);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gavriella''', 1266, ' ''Bnei Brak''', 536922473);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1267, ' ''Ma''ale Adumim''', 529904050);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uzi''', 1268, ' ''Bnei Brak''', 535913284);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Koren''', 1269, ' ''Migdal HaEmek''', 34545661);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaron''', 1270, ' ''Herzliya''', 523797154);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Michal''', 1271, ' ''Mevasseret Zion''', 522526855);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hodaya''', 1272, ' ''Kfar Yona''', 523176496);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dalia''', 1273, ' ''Yehud-Monosson''', 776401769);
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
values ('''Boaz''', 1281, ' ''Yehud-Monosson''', 33184645);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uzi''', 1282, ' ''Beit Shean''', 521161581);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rivka''', 1283, ' ''Petach Tikvah''', 531085131);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uri''', 1284, ' ''Sderot''', 777185770);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yotam''', 1285, ' ''Lod''', 774776314);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yaara''', 1286, ' ''Kfar Saba''', 772614356);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hadar''', 1287, ' ''Ramat HaSharon''', 538741116);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''David''', 1288, ' ''Yokneam''', 772618447);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dor''', 1289, ' ''Yehud-Monosson''', 771882124);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yigal''', 1290, ' ''Rehovot''', 543320003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Bracha''', 1291, ' ''Raanana''', 527907978);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1292, ' ''Dimona''', 773452708);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ayala''', 1293, ' ''Kfar Saba''', 539514632);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Geula''', 1294, ' ''Petach Tikvah''', 546407175);
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
commit;
prompt 300 records committed...
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
values ('''Orna''', 1311, ' ''Giv''at Shmuel''', 522008494);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Uzi''', 1312, ' ''Ramat HaSharon''', 34752992);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Haim''', 1313, ' ''Nof HaGalil''', 537466515);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Lihi''', 1314, ' ''Zichron Yaakov''', 31591266);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Mordechai''', 1315, ' ''Kiryat Malakhi''', 38592180);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Menahem''', 1316, ' ''Giv''atayim''', 542277864);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Dina''', 1317, ' ''Harish''', 522335987);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1318, ' ''Rishon LeZion''', 524669935);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Tzvi''', 1319, ' ''Bnei Ayish''', 521279104);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1320, ' ''Ma''ale Adumim''', 535438387);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hodaya''', 1321, ' ''Akko''', 522692822);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Hillel''', 1322, ' ''Sakhnin''', 533817050);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nava''', 1323, ' ''Hatzor HaGlilit''', 37382537);
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
values ('''Tzvi''', 1337, ' ''Yehud-Monosson''', 34356301);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Rachel''', 1338, ' ''Kiryat Malakhi''', 777528424);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chana''', 1339, ' ''Migdal HaEmek''', 772137513);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Gavriel''', 1340, ' ''Sakhnin''', 31754865);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Ronen''', 1341, ' ''Or Akiva''', 547312859);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Levi''', 1342, ' ''Giv''at Shmuel''', 523943303);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Avner''', 1343, ' ''Tirat Carmel''', 39449007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Yael''', 1344, ' ''Tiberias''', 522843840);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nechama''', 1345, ' ''Rishon LeZion''', 537255874);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Maayan''', 1346, ' ''Mevasseret Zion''', 529042168);
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
values ('''Yossi''', 1365, ' ''Kiryat Shmona''', 35659107);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Zehava''', 1366, ' ''Kiryat Yam''', 31977196);
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
values ('''Gavriella''', 1376, ' ''Mevasseret Zion''', 37047648);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Raz''', 1377, ' ''Zichron Yaakov''', 779215733);
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
values ('''Uzi''', 1386, ' ''Kiryat Malakhi''', 531634027);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Nir''', 1387, ' ''Gan Yavne''', 539363839);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Menahem''', 1388, ' ''Kfar Saba''', 534382759);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Elad''', 1389, ' ''Rosh HaAyin''', 527557527);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Koby''', 1390, ' ''Kiryat Shmona''', 528219250);
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
prompt 400 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber)
values ('''Chaim''', 1400, 'Mazkeret Batya', 36438782);
commit;
prompt 401 records loaded
prompt Loading PET...
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Gecko', 2011, 'F', 1, 1001);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bailey', 'Skink', 2020, 'F', 2, 1000);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sammy', 'Frog', 2006, 'F', 3, 1003);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Louie', 'Hermit Crab', 2018, 'M', 4, 1000);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kona', 'Rat', 2017, 'M', 5, 1001);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Diesel', 'Budgie', 2016, 'F', 6, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Benny', 'Snake', 2008, 'F', 7, 1001);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ace', 'Degu', 2015, 'F', 8, 1006);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rosie', 'Cat', 2002, 'M', 9, 1009);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oliver', 'Turtle', 2013, 'F', 10, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Hazel', 'Cockatiel', 2009, 'F', 11, 1010);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Duke', 'Tortoise', 2015, 'M', 12, 1004);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ruby', 'Quail', 2018, 'F', 13, 1012);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lucky', 'Hamster', 2005, 'M', 14, 1013);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Harley', 'Skink', 2011, 'F', 15, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Chloe', 'Snake', 2020, 'M', 16, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Belle', 'Snake', 2024, 'F', 17, 1013);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oliver', 'Turtle', 2019, 'M', 18, 1014);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Tank', 'Skink', 2004, 'M', 19, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Buster', 'Gerbil', 2016, 'M', 20, 1005);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Axolotl', 2001, 'F', 21, 1012);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bruno', 'Budgie', 2020, 'F', 22, 1021);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Milo', 'Frog', 2010, 'M', 23, 1004);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Benny', 'Axolotl', 2007, 'F', 24, 1021);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maddie', 'Rabbit', 2021, 'F', 25, 1003);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rocky', 'Mouse', 2013, 'F', 26, 1020);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Winnie', 'Ferret', 2016, 'M', 27, 1004);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bentley', 'Frog', 2005, 'M', 28, 1011);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Gus', 'Skink', 2024, 'F', 29, 1024);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Penny', 'Gecko', 2004, 'M', 30, 1020);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Athena', 'Finch', 2008, 'M', 31, 1001);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Diesel', 'Rabbit', 2005, 'F', 32, 1013);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Abby', 'Scorpion', 2020, 'F', 33, 1005);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bentley', 'Lizard', 2005, 'M', 34, 1009);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sadie', 'Lovebird', 2011, 'F', 35, 1013);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Buddy', 'Cichlid', 2012, 'F', 36, 1032);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Luna', 'Chinchilla', 2006, 'M', 37, 1019);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oscar', 'Parrot', 2008, 'M', 38, 1013);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Remy', 'Parrot', 2009, 'F', 39, 1025);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Belle', 'Salamander', 2020, 'M', 40, 1029);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Frankie', 'Tarantula', 2022, 'F', 41, 1016);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ruby', 'Guinea Pig', 2013, 'M', 42, 1028);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Harley', 'Tortoise', 2022, 'M', 43, 1036);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Moose', 'Canary', 2015, 'M', 44, 1000);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Degu', 2014, 'F', 45, 1021);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Milo', 'Frog', 2002, 'M', 46, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Luna', 'Rat', 2022, 'F', 47, 1016);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sasha', 'Rat', 2015, 'F', 48, 1024);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Max', 'Canary', 2001, 'F', 49, 1020);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rosie', 'Scorpion', 2009, 'M', 50, 1004);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ruby', 'Bird', 2020, 'M', 51, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sasha', 'Mynah', 2010, 'F', 52, 1018);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sadie', 'Axolotl', 2023, 'F', 53, 1049);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Finn', 'Hermit Crab', 2001, 'M', 54, 1041);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Gizmo', 'Lovebird', 2023, 'M', 55, 1020);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rosie', 'Quail', 2007, 'F', 56, 1056);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rex', 'Betta', 2022, 'F', 57, 1051);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Tucker', 'Rabbit', 2018, 'F', 58, 1016);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Hazel', 'Cockatiel', 2005, 'F', 59, 1019);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maddie', 'Canary', 2023, 'M', 60, 1038);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Shadow', 'Salamander', 2017, 'M', 61, 1053);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Layla', 'Tarantula', 2023, 'F', 62, 1011);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Hedgehog', 2011, 'F', 63, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Frankie', 'Mynah', 2004, 'M', 64, 1017);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Buddy', 'Mouse', 2011, 'F', 65, 1010);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Boomer', 'Finch', 2006, 'F', 66, 1009);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Athena', 'Salamander', 2003, 'M', 67, 1040);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Guinea Pig', 2024, 'M', 68, 1000);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Dexter', 'Pigeon', 2022, 'M', 69, 1035);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Roxy', 'Bird', 2015, 'F', 70, 1020);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oreo', 'Degu', 2023, 'F', 71, 1063);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kona', 'Rat', 2006, 'M', 72, 1026);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lucky', 'Fish', 2004, 'M', 73, 1064);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Henry', 'Tarantula', 2019, 'M', 74, 1014);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Frankie', 'Salamander', 2015, 'F', 75, 1053);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Shadow', 'Budgie', 2022, 'F', 76, 1017);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Molly', 'Lizard', 2016, 'M', 77, 1021);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Coco', 'Chinchilla', 2021, 'M', 78, 1053);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maddie', 'Iguana', 2008, 'M', 79, 1059);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Scout', 'Guinea Pig', 2010, 'M', 80, 1039);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Izzy', 'Salamander', 2015, 'F', 81, 1011);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Boomer', 'Budgie', 2010, 'M', 82, 1014);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Abby', 'Ferret', 2007, 'F', 83, 1018);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Cichlid', 2007, 'M', 84, 1012);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rocky', 'Rat', 2019, 'F', 85, 1048);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maddie', 'Ferret', 2024, 'F', 86, 1006);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Turtle', 2016, 'F', 87, 1078);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Riley', 'Budgie', 2010, 'M', 88, 1082);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kona', 'Turtle', 2000, 'M', 89, 1052);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Otis', 'Bird', 2020, 'F', 90, 1036);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lola', 'Turtle', 2005, 'M', 91, 1077);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bella', 'Finch', 2007, 'M', 92, 1054);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Chance', 'Hermit Crab', 2011, 'M', 93, 1052);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sadie', 'Lizard', 2008, 'F', 94, 1054);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Milo', 'Salamander', 2005, 'M', 95, 1050);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bella', 'Newt', 2017, 'M', 96, 1081);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ruby', 'Salamander', 2014, 'F', 97, 1032);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Riley', 'Gecko', 2020, 'M', 98, 1056);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Cat', 2002, 'M', 99, 1020);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rex', 'Turtle', 2000, 'M', 100, 1046);
commit;
prompt 100 records committed...
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Buddy', 'Ferret', 2006, 'F', 101, 1009);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Harley', 'Salamander', 2020, 'M', 102, 1067);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Diesel', 'Cockatiel', 2011, 'M', 103, 1036);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Diesel', 'Finch', 2012, 'M', 104, 1029);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Athena', 'Rat', 2006, 'F', 105, 1103);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oliver', 'Ferret', 2010, 'F', 106, 1013);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rosie', 'Salamander', 2011, 'M', 107, 1040);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Coco', 'Chinchilla', 2009, 'M', 108, 1103);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Hank', 'Salamander', 2009, 'M', 109, 1106);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Scout', 'Snake', 2003, 'M', 110, 1075);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Tortoise', 2015, 'F', 111, 1069);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Louie', 'Budgie', 2010, 'M', 112, 1043);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Shadow', 'Lizard', 2022, 'M', 113, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Henry', 'Hermit Crab', 2016, 'F', 114, 1073);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sadie', 'Budgie', 2004, 'M', 115, 1040);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Otis', 'Parrot', 2014, 'M', 116, 1041);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sadie', 'Pigeon', 2000, 'M', 117, 1061);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('George', 'Frog', 2018, 'F', 118, 1111);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Daisy', 'Fish', 2022, 'M', 119, 1092);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Benny', 'Rabbit', 2009, 'F', 120, 1048);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Hazel', 'Rat', 2005, 'M', 121, 1026);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Dexter', 'Degu', 2014, 'F', 122, 1042);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rex', 'Frog', 2004, 'F', 123, 1010);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Charlie', 'Turtle', 2013, 'F', 124, 1074);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Louie', 'Frog', 2010, 'F', 125, 1078);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Chloe', 'Newt', 2020, 'M', 126, 1040);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ginger', 'Sugar Glider', 2000, 'F', 127, 1012);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Coco', 'Sugar Glider', 2008, 'F', 128, 1030);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Duke', 'Bird', 2000, 'M', 129, 1017);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Willow', 'Lovebird', 2011, 'F', 130, 1021);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Mia', 'Salamander', 2003, 'F', 131, 1123);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Marley', 'Gecko', 2020, 'M', 132, 1016);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Athena', 'Hamster', 2017, 'M', 133, 1128);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Remy', 'Degu', 2018, 'M', 134, 1094);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sophie', 'Quail', 2009, 'M', 135, 1123);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Willow', 'Ferret', 2000, 'M', 136, 1008);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Tarantula', 2007, 'M', 137, 1111);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oreo', 'Dog', 2018, 'F', 138, 1050);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bentley', 'Newt', 2024, 'M', 139, 1009);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bruno', 'Budgie', 2006, 'M', 140, 1043);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Luna', 'Sugar Glider', 2023, 'M', 141, 1131);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Milo', 'Tarantula', 2016, 'M', 142, 1060);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lola', 'Tortoise', 2005, 'M', 143, 1068);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bentley', 'Mouse', 2022, 'M', 144, 1144);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Penny', 'Tortoise', 2011, 'F', 145, 1074);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Penny', 'Iguana', 2017, 'F', 146, 1112);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Newt', 2010, 'M', 147, 1097);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sadie', 'Iguana', 2010, 'M', 148, 1102);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ruby', 'Gecko', 2007, 'F', 149, 1061);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Piper', 'Lizard', 2011, 'F', 150, 1111);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Hank', 'Guinea Pig', 2001, 'F', 151, 1057);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Guinea Pig', 2014, 'M', 152, 1129);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Nala', 'Mynah', 2000, 'M', 153, 1090);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oscar', 'Pigeon', 2007, 'F', 154, 1052);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Izzy', 'Skink', 2010, 'F', 155, 1041);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Benny', 'Frog', 2023, 'M', 156, 1149);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zeus', 'Ferret', 2002, 'M', 157, 1075);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Gus', 'Frog', 2003, 'M', 158, 1043);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Simba', 'Frog', 2023, 'M', 159, 1044);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Gerbil', 2017, 'F', 160, 1031);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Finn', 'Rabbit', 2013, 'M', 161, 1005);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Cleo', 'Rabbit', 2017, 'M', 162, 1047);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Louie', 'Hamster', 2006, 'M', 163, 1153);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lucky', 'Turtle', 2022, 'M', 164, 1046);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('George', 'Cockatiel', 2015, 'F', 165, 1112);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lily', 'Ferret', 2014, 'M', 166, 1083);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Gus', 'Ferret', 2014, 'M', 167, 1085);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Coco', 'Scorpion', 2012, 'F', 168, 1044);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bear', 'Gecko', 2011, 'M', 169, 1144);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rex', 'Sugar Glider', 2003, 'F', 170, 1032);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Winnie', 'Rat', 2005, 'M', 171, 1140);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oscar', 'Betta', 2001, 'F', 172, 1047);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Louie', 'Snake', 2011, 'F', 173, 1147);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Harley', 'Cockatiel', 2022, 'M', 174, 1119);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Leo', 'Mouse', 2006, 'F', 175, 1024);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sammy', 'Salamander', 2021, 'F', 176, 1072);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bella', 'Lovebird', 2008, 'F', 177, 1144);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bruno', 'Skink', 2013, 'M', 178, 1050);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ginger', 'Dog', 2007, 'M', 179, 1118);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Cleo', 'Tarantula', 2000, 'F', 180, 1087);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maggie', 'Skink', 2021, 'F', 181, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Finn', 'Gecko', 2023, 'F', 182, 1040);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Nala', 'Axolotl', 2019, 'M', 183, 1046);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Buddy', 'Mynah', 2019, 'M', 184, 1172);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Belle', 'Gerbil', 2012, 'F', 185, 1122);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sammy', 'Cockatiel', 2010, 'F', 186, 1097);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sasha', 'Fish', 2003, 'F', 187, 1093);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Moose', 'Hermit Crab', 2016, 'F', 188, 1002);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bella', 'Hamster', 2008, 'M', 189, 1058);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bella', 'Hedgehog', 2001, 'M', 190, 1087);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sophie', 'Sugar Glider', 2015, 'F', 191, 1098);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Turtle', 2009, 'F', 192, 1166);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Remy', 'Guinea Pig', 2006, 'M', 193, 1095);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Jack', 'Ferret', 2004, 'M', 194, 1118);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rosie', 'Lovebird', 2021, 'M', 195, 1177);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bella', 'Skink', 2023, 'M', 196, 1007);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oliver', 'Cat', 2013, 'F', 197, 1022);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sadie', 'Frog', 2008, 'F', 198, 1078);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Tank', 'Lovebird', 2012, 'F', 199, 1190);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Cooper', 'Iguana', 2018, 'M', 200, 1087);
commit;
prompt 200 records committed...
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Sugar Glider', 2006, 'F', 201, 1051);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Daisy', 'Mynah', 2011, 'M', 202, 1037);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Chance', 'Tortoise', 2017, 'F', 203, 1013);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Piper', 'Iguana', 2011, 'F', 204, 1108);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sophie', 'Mynah', 2023, 'M', 205, 1144);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Benny', 'Sugar Glider', 2004, 'M', 206, 1170);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Lizard', 2010, 'M', 207, 1069);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Layla', 'Salamander', 2009, 'F', 208, 1152);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Mia', 'Gerbil', 2021, 'M', 209, 1169);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Layla', 'Hedgehog', 2005, 'M', 210, 1011);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maddie', 'Cockatiel', 2013, 'F', 211, 1158);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Charlie', 'Mouse', 2002, 'F', 212, 1113);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bailey', 'Bird', 2018, 'F', 213, 1211);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ruby', 'Gecko', 2009, 'M', 214, 1075);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bentley', 'Ferret', 2002, 'F', 215, 1083);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Leo', 'Turtle', 2008, 'F', 216, 1208);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zeus', 'Skink', 2009, 'M', 217, 1090);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Mouse', 2022, 'F', 218, 1068);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sadie', 'Tarantula', 2003, 'M', 219, 1130);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Coco', 'Degu', 2007, 'M', 220, 1117);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Rat', 2010, 'M', 221, 1012);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Loki', 'Mouse', 2011, 'M', 222, 1192);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Marley', 'Axolotl', 2011, 'F', 223, 1164);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maddie', 'Snake', 2001, 'M', 224, 1009);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Harley', 'Cat', 2011, 'M', 225, 1128);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ruby', 'Cichlid', 2013, 'M', 226, 1215);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oreo', 'Salamander', 2017, 'M', 227, 1213);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Paisley', 'Hamster', 2019, 'F', 228, 1077);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Leo', 'Budgie', 2010, 'M', 229, 1135);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Emma', 'Finch', 2012, 'M', 230, 1071);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oliver', 'Quail', 2003, 'M', 231, 1097);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Paisley', 'Iguana', 2010, 'F', 232, 1214);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Penny', 'Salamander', 2015, 'F', 233, 1128);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lucy', 'Turtle', 2008, 'F', 234, 1039);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oreo', 'Chinchilla', 2024, 'F', 235, 1119);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Tucker', 'Hamster', 2023, 'M', 236, 1010);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Hermit Crab', 2000, 'F', 237, 1187);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ginger', 'Mynah', 2021, 'F', 238, 1183);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Athena', 'Rabbit', 2023, 'M', 239, 1134);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Abby', 'Newt', 2010, 'F', 240, 1192);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oliver', 'Mynah', 2008, 'F', 241, 1208);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sophie', 'Guinea Pig', 2015, 'M', 242, 1085);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Charlie', 'Salamander', 2017, 'M', 243, 1224);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Scout', 'Salamander', 2003, 'M', 244, 1242);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lucy', 'Turtle', 2022, 'M', 245, 1187);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Leo', 'Sugar Glider', 2011, 'F', 246, 1226);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Buster', 'Frog', 2014, 'M', 247, 1111);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Moose', 'Rabbit', 2017, 'F', 248, 1043);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Hank', 'Ferret', 2020, 'F', 249, 1065);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Roxy', 'Hedgehog', 2001, 'M', 250, 1244);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Leo', 'Cichlid', 2006, 'F', 251, 1180);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Molly', 'Mynah', 2022, 'M', 252, 1175);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Daisy', 'Gecko', 2012, 'F', 253, 1012);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Roxy', 'Bird', 2002, 'F', 254, 1008);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Abby', 'Scorpion', 2018, 'F', 255, 1024);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Toby', 'Rat', 2000, 'F', 256, 1195);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Betta', 2001, 'M', 257, 1043);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Daisy', 'Lovebird', 2002, 'M', 258, 1017);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ruby', 'Scorpion', 2001, 'M', 259, 1161);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Loki', 'Budgie', 2001, 'F', 260, 1221);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sammy', 'Rabbit', 2011, 'F', 261, 1200);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oreo', 'Cichlid', 2014, 'F', 262, 1183);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rex', 'Pigeon', 2000, 'M', 263, 1146);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Tank', 'Axolotl', 2016, 'M', 264, 1168);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Jack', 'Cockatiel', 2021, 'M', 265, 1262);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bentley', 'Guinea Pig', 2013, 'F', 266, 1109);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Izzy', 'Frog', 2004, 'F', 267, 1080);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ace', 'Lovebird', 2010, 'M', 268, 1145);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Hazel', 'Axolotl', 2022, 'F', 269, 1201);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Piper', 'Guinea Pig', 2017, 'F', 270, 1270);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Toby', 'Mynah', 2003, 'M', 271, 1132);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Cooper', 'Bird', 2004, 'M', 272, 1028);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sasha', 'Iguana', 2007, 'F', 273, 1209);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bentley', 'Cat', 2020, 'F', 274, 1133);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Remy', 'Betta', 2022, 'F', 275, 1261);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sophie', 'Degu', 2000, 'F', 276, 1264);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Holly', 'Sugar Glider', 2019, 'M', 277, 1263);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ellie', 'Tortoise', 2019, 'F', 278, 1081);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bella', 'Budgie', 2022, 'M', 279, 1130);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Athena', 'Finch', 2004, 'F', 280, 1100);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Mia', 'Hedgehog', 2024, 'F', 281, 1029);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Poppy', 'Hermit Crab', 2008, 'M', 282, 1085);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Abby', 'Guinea Pig', 2020, 'F', 283, 1280);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Charlie', 'Gerbil', 2008, 'F', 284, 1207);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rocky', 'Cockatiel', 2001, 'F', 285, 1270);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Otis', 'Degu', 2012, 'F', 286, 1210);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Loki', 'Finch', 2000, 'F', 287, 1245);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Zoe', 'Snake', 2012, 'F', 288, 1151);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Roxy', 'Parrot', 2012, 'M', 289, 1185);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Willow', 'Cockatiel', 2018, 'F', 290, 1108);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Louie', 'Pigeon', 2015, 'M', 291, 1221);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Izzy', 'Ferret', 2012, 'F', 292, 1016);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Penny', 'Lovebird', 2020, 'F', 293, 1248);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ranger', 'Axolotl', 2019, 'M', 294, 1177);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Otis', 'Finch', 2013, 'M', 295, 1183);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rosie', 'Guinea Pig', 2020, 'M', 296, 1291);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Quail', 2010, 'F', 297, 1023);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Piper', 'Dog', 2016, 'M', 298, 1187);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Riley', 'Dog', 2011, 'M', 299, 1079);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Marley', 'Rat', 2005, 'F', 300, 1013);
commit;
prompt 300 records committed...
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Lizard', 2009, 'F', 301, 1030);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Molly', 'Fish', 2023, 'F', 302, 1207);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Henry', 'Hedgehog', 2005, 'F', 303, 1257);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Louie', 'Lovebird', 2013, 'M', 304, 1042);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Toby', 'Snake', 2014, 'F', 305, 1263);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Blue', 'Cockatiel', 2019, 'M', 306, 1079);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Roxy', 'Pigeon', 2000, 'M', 307, 1187);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oreo', 'Ferret', 2000, 'F', 308, 1073);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Poppy', 'Hedgehog', 2011, 'M', 309, 1063);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Gus', 'Bird', 2013, 'F', 310, 1041);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Belle', 'Gecko', 2001, 'M', 311, 1289);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Dexter', 'Pigeon', 2008, 'M', 312, 1253);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Shadow', 'Parrot', 2003, 'M', 313, 1077);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Shadow', 'Budgie', 2001, 'M', 314, 1295);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Leo', 'Guinea Pig', 2004, 'M', 315, 1067);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Remy', 'Tarantula', 2006, 'F', 316, 1265);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Moose', 'Chinchilla', 2010, 'M', 317, 1085);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Layla', 'Scorpion', 2023, 'M', 318, 1132);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Riley', 'Ferret', 2011, 'F', 319, 1228);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Toby', 'Scorpion', 2017, 'F', 320, 1289);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Charlie', 'Scorpion', 2022, 'F', 321, 1114);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rosie', 'Tortoise', 2021, 'M', 322, 1072);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sammy', 'Quail', 2019, 'F', 323, 1224);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Frankie', 'Tarantula', 2010, 'F', 324, 1045);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Guinea Pig', 2006, 'M', 325, 1025);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sasha', 'Betta', 2005, 'F', 326, 1216);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ellie', 'Rabbit', 2024, 'F', 327, 1316);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Mia', 'Degu', 2019, 'F', 328, 1066);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Chloe', 'Gecko', 2021, 'F', 329, 1314);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Luna', 'Quail', 2019, 'F', 330, 1159);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Max', 'Gerbil', 2001, 'M', 331, 1051);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Boomer', 'Newt', 2022, 'M', 332, 1226);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('George', 'Axolotl', 2015, 'M', 333, 1333);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lily', 'Cichlid', 2003, 'F', 334, 1046);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Daisy', 'Budgie', 2017, 'F', 335, 1211);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maddie', 'Budgie', 2016, 'M', 336, 1004);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Maggie', 'Betta', 2011, 'F', 337, 1084);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Molly', 'Frog', 2013, 'M', 338, 1026);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Moose', 'Skink', 2021, 'F', 339, 1089);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Toby', 'Cichlid', 2022, 'M', 340, 1198);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Holly', 'Snake', 2001, 'F', 341, 1183);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Gus', 'Hamster', 2000, 'M', 342, 1241);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Harley', 'Snake', 2007, 'F', 343, 1319);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Nala', 'Mouse', 2021, 'M', 344, 1318);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Benny', 'Rat', 2011, 'F', 345, 1103);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Loki', 'Hamster', 2003, 'M', 346, 1042);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ranger', 'Frog', 2024, 'F', 347, 1162);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ace', 'Guinea Pig', 2016, 'F', 348, 1284);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Lola', 'Betta', 2002, 'F', 349, 1174);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Chance', 'Sugar Glider', 2014, 'M', 350, 1055);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Molly', 'Cichlid', 2018, 'F', 351, 1344);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oscar', 'Quail', 2007, 'F', 352, 1168);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kona', 'Hermit Crab', 2016, 'M', 353, 1306);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Boomer', 'Betta', 2024, 'M', 354, 1269);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kona', 'Finch', 2003, 'M', 355, 1323);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Scout', 'Lizard', 2017, 'F', 356, 1015);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Cleo', 'Bird', 2000, 'F', 357, 1037);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Otis', 'Salamander', 2017, 'M', 358, 1266);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Dexter', 'Quail', 2002, 'M', 359, 1096);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Cleo', 'Hermit Crab', 2020, 'M', 360, 1066);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Nala', 'Pigeon', 2015, 'F', 361, 1208);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Duke', 'Cockatiel', 2007, 'M', 362, 1137);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Paisley', 'Turtle', 2017, 'F', 363, 1107);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Willow', 'Betta', 2017, 'F', 364, 1262);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Nala', 'Budgie', 2023, 'F', 365, 1097);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Ellie', 'Budgie', 2019, 'F', 366, 1279);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Boomer', 'Pigeon', 2003, 'F', 367, 1200);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rex', 'Budgie', 2022, 'F', 368, 1061);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Koda', 'Rat', 2000, 'F', 369, 1095);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Duke', 'Fish', 2007, 'F', 370, 1045);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Dog', 2008, 'M', 371, 1079);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Frankie', 'Mynah', 2023, 'M', 372, 1288);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Holly', 'Chinchilla', 2023, 'F', 373, 1296);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Marley', 'Finch', 2003, 'F', 374, 1210);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Luna', 'Gecko', 2004, 'M', 375, 1356);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Paisley', 'Salamander', 2005, 'M', 376, 1093);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Buster', 'Hedgehog', 2003, 'M', 377, 1149);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Scout', 'Axolotl', 2002, 'F', 378, 1311);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Jack', 'Lovebird', 2017, 'M', 379, 1316);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Moose', 'Betta', 2017, 'F', 380, 1165);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Milo', 'Gecko', 2015, 'F', 381, 1033);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Cleo', 'Frog', 2006, 'F', 382, 1206);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Scout', 'Mynah', 2024, 'M', 383, 1132);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Luna', 'Canary', 2005, 'M', 384, 1037);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Bruno', 'Rat', 2004, 'F', 385, 1338);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Hank', 'Parrot', 2021, 'M', 386, 1054);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Finn', 'Rabbit', 2001, 'F', 387, 1184);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Tucker', 'Rabbit', 2007, 'M', 388, 1078);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Budgie', 2017, 'F', 389, 1217);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oliver', 'Scorpion', 2015, 'M', 390, 1359);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Chloe', 'Rat', 2001, 'F', 391, 1334);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Toby', 'Hamster', 2007, 'F', 392, 1262);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Duke', 'Tarantula', 2007, 'F', 393, 1038);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kiki', 'Mouse', 2024, 'F', 394, 1098);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Henry', 'Tortoise', 2004, 'F', 395, 1307);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Coco', 'Chinchilla', 2002, 'M', 396, 1365);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Chloe', 'Frog', 2002, 'M', 397, 1012);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kona', 'Cat', 2008, 'F', 398, 1161);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Tank', 'Scorpion', 2000, 'M', 399, 1157);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oreo', 'Salamander', 2007, 'F', 400, 1250);
commit;
prompt 400 records loaded
prompt Loading STAFF...
insert into STAFF (sname, sid, sbirthdate)
values ('Elad', 1, to_date('17-08-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Binyamin', 2, to_date('24-01-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eliav', 3, to_date('26-06-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Israel', 4, to_date('02-10-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orit', 5, to_date('18-02-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zehava', 6, to_date('01-11-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shimon', 7, to_date('20-02-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shlomo', 8, to_date('22-09-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Uziel', 9, to_date('28-12-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 10, to_date('10-05-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Galit', 11, to_date('18-12-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Talia', 12, to_date('24-03-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Karin', 13, to_date('01-08-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yehuda', 14, to_date('03-01-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 15, to_date('31-12-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gideon', 16, to_date('18-09-1956', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hila', 17, to_date('26-03-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yehuda', 18, to_date('02-07-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Reut', 19, to_date('10-03-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hadar', 20, to_date('28-01-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Vered', 21, to_date('16-01-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 22, to_date('28-03-1972', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ofra', 23, to_date('26-11-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Asher', 24, to_date('27-12-1970', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Binyamin', 25, to_date('21-04-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Idan', 26, to_date('17-01-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Irit', 27, to_date('29-02-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liora', 28, to_date('16-12-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 29, to_date('28-04-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Raz', 30, to_date('11-10-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noy', 31, to_date('07-01-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ophir', 32, to_date('21-06-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Udi', 33, to_date('23-08-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avigail', 34, to_date('01-01-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('David', 35, to_date('22-04-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chaim', 36, to_date('06-02-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dalia', 37, to_date('03-07-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bracha', 38, to_date('25-04-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maya', 39, to_date('01-09-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronen', 40, to_date('19-01-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Geula', 41, to_date('15-07-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronen', 42, to_date('16-05-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Karin', 43, to_date('12-04-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Galia', 44, to_date('20-02-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Galia', 45, to_date('16-02-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Itamar', 46, to_date('01-10-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avraham', 47, to_date('01-07-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Moshe', 48, to_date('14-11-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Asher', 49, to_date('06-06-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Pnina', 50, to_date('03-07-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liel', 51, to_date('07-04-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ziv', 52, to_date('13-03-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chana', 53, to_date('24-11-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Keren', 54, to_date('02-10-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tal', 55, to_date('03-03-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yael', 56, to_date('17-10-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Doron', 57, to_date('14-10-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Oren', 58, to_date('10-12-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Herzl', 59, to_date('10-07-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzipora', 60, to_date('20-06-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nava', 61, to_date('22-08-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Idan', 62, to_date('18-11-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Elad', 63, to_date('07-06-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronen', 64, to_date('01-09-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Odelia', 65, to_date('29-01-1972', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bracha', 66, to_date('31-01-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Asher', 67, to_date('06-02-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nechama', 68, to_date('25-12-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eliyahu', 69, to_date('21-01-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Merav', 70, to_date('04-02-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sara', 71, to_date('22-06-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Irit', 72, to_date('05-01-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Batsheva', 73, to_date('08-08-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shimon', 74, to_date('27-12-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lior', 75, to_date('28-08-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zehava', 76, to_date('14-12-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dalia', 77, to_date('18-10-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Uriah', 78, to_date('05-02-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eitan', 79, to_date('27-02-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noam', 80, to_date('10-02-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rinat', 81, to_date('26-03-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 82, to_date('27-04-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gali', 83, to_date('31-05-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ari', 84, to_date('22-01-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Talia', 85, to_date('23-10-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eden', 86, to_date('10-06-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shira', 87, to_date('29-05-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zalman', 88, to_date('04-04-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shoshana', 89, to_date('13-06-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nir', 90, to_date('04-01-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ophir', 91, to_date('04-09-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chagit', 92, to_date('11-09-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liora', 93, to_date('02-11-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yaron', 94, to_date('26-10-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avner', 95, to_date('18-06-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eliezer', 96, to_date('07-01-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Frieda', 97, to_date('26-08-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shira', 98, to_date('04-07-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chaya', 99, to_date('24-05-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Itai', 100, to_date('30-01-1958', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into STAFF (sname, sid, sbirthdate)
values ('Kfir', 101, to_date('13-02-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Asher', 102, to_date('21-05-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zehava', 103, to_date('10-11-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shmuel', 104, to_date('01-03-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Doron', 105, to_date('21-07-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Idan', 106, to_date('23-11-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Geula', 107, to_date('20-12-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liora', 108, to_date('13-05-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shmuel', 109, to_date('03-12-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronen', 110, to_date('28-04-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Micha', 111, to_date('11-04-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Haim', 112, to_date('03-09-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chaya', 113, to_date('05-04-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gavriel', 114, to_date('12-05-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chaim', 115, to_date('24-03-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kfir', 116, to_date('02-04-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Omer', 117, to_date('26-04-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gideon', 118, to_date('31-01-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mor', 119, to_date('01-05-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zalman', 120, to_date('23-03-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avital', 121, to_date('27-08-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Matan', 122, to_date('03-02-1956', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maya', 123, to_date('30-08-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Irit', 124, to_date('04-12-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzofia', 125, to_date('09-09-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rinat', 126, to_date('17-06-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Boaz', 127, to_date('20-08-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hillel', 128, to_date('15-08-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Galia', 129, to_date('24-12-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronen', 130, to_date('06-02-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ophir', 131, to_date('02-09-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rachel', 132, to_date('16-08-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orit', 133, to_date('26-05-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Geula', 134, to_date('25-10-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tal', 135, to_date('24-11-1970', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Daniel', 136, to_date('26-02-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Meir', 137, to_date('07-06-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Idan', 138, to_date('24-06-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liora', 139, to_date('10-03-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Pnina', 140, to_date('28-02-1967', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Frieda', 141, to_date('24-12-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Udi', 142, to_date('16-06-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Odelia', 143, to_date('24-09-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mirit', 144, to_date('15-05-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hila', 145, to_date('15-07-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zohara', 146, to_date('13-01-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tal', 147, to_date('01-12-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dov', 148, to_date('21-10-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Uziel', 149, to_date('22-11-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hagar', 150, to_date('12-01-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shoshana', 151, to_date('26-11-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Oren', 152, to_date('04-05-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dalia', 153, to_date('13-07-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orit', 154, to_date('28-08-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yaakov', 155, to_date('30-01-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yigal', 156, to_date('02-02-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gali', 157, to_date('04-10-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hadar', 158, to_date('09-03-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yardena', 159, to_date('03-06-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kedem', 160, to_date('08-10-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maayan', 161, to_date('08-03-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yehuda', 162, to_date('04-03-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yigal', 163, to_date('17-09-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rivka', 164, to_date('03-06-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orna', 165, to_date('16-06-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dalia', 166, to_date('15-07-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Batya', 167, to_date('14-06-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lavi', 168, to_date('14-12-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Meir', 169, to_date('28-05-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 170, to_date('12-08-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sara', 171, to_date('15-05-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Herzl', 172, to_date('10-09-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kfir', 173, to_date('10-12-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eliana', 174, to_date('16-04-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eden', 175, to_date('05-05-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hadar', 176, to_date('21-07-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 177, to_date('24-03-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bracha', 178, to_date('14-04-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dov', 179, to_date('24-11-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shmuel', 180, to_date('26-06-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Herzl', 181, to_date('23-03-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noy', 182, to_date('15-04-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzofia', 183, to_date('08-07-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Itai', 184, to_date('02-01-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hadar', 185, to_date('28-12-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shira', 186, to_date('23-06-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Batya', 187, to_date('07-05-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Carmel', 188, to_date('03-12-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nir', 189, to_date('27-11-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yaakov', 190, to_date('07-07-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shani', 191, to_date('15-01-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Batya', 192, to_date('14-09-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liora', 193, to_date('08-11-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lior', 194, to_date('09-08-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dor', 195, to_date('01-07-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Matan', 196, to_date('22-11-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hodaya', 197, to_date('27-01-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kedem', 198, to_date('27-12-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chaya', 199, to_date('25-02-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avraham', 200, to_date('27-09-1981', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into STAFF (sname, sid, sbirthdate)
values ('Liel', 201, to_date('20-10-1956', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Leah', 202, to_date('23-01-1956', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Boaz', 203, to_date('05-10-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avraham', 204, to_date('19-07-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shoshana', 205, to_date('27-03-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Galia', 206, to_date('29-06-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rivka', 207, to_date('24-07-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzila', 208, to_date('17-01-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Keren', 209, to_date('15-02-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 210, to_date('14-05-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chana', 211, to_date('02-03-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Udi', 212, to_date('11-09-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noa', 213, to_date('12-09-1967', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dalia', 214, to_date('13-10-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orna', 215, to_date('26-06-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mor', 216, to_date('04-06-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dor', 217, to_date('06-11-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Benny', 218, to_date('24-07-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Oz', 219, to_date('05-09-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dalia', 220, to_date('26-04-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Batsheva', 221, to_date('01-02-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Leah', 222, to_date('13-10-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Oz', 223, to_date('03-06-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eliyahu', 224, to_date('25-09-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Moshe', 225, to_date('26-02-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hagar', 226, to_date('16-10-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Frieda', 227, to_date('14-12-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hila', 228, to_date('07-04-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bracha', 229, to_date('05-01-1967', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Keren', 230, to_date('22-07-1972', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tal', 231, to_date('16-09-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noam', 232, to_date('13-11-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yishai', 233, to_date('21-08-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dalia', 234, to_date('05-05-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hod', 235, to_date('14-02-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mor', 236, to_date('01-05-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Adina', 237, to_date('21-02-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nechama', 238, to_date('07-03-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eli', 239, to_date('18-02-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Keren', 240, to_date('30-04-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maayan', 241, to_date('26-11-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hodaya', 242, to_date('07-11-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gideon', 243, to_date('29-10-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Oz', 244, to_date('02-10-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mirit', 245, to_date('02-09-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Benny', 246, to_date('08-07-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yaara', 247, to_date('08-09-1970', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mirit', 248, to_date('13-03-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hadar', 249, to_date('12-07-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yardena', 250, to_date('12-03-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yaara', 251, to_date('02-07-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yael', 252, to_date('06-01-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yosefa', 253, to_date('03-10-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tamar', 254, to_date('14-06-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Batsheva', 255, to_date('22-10-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Oz', 256, to_date('21-06-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Boaz', 257, to_date('19-11-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hila', 258, to_date('09-08-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yael', 259, to_date('27-03-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Micha', 260, to_date('12-10-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Benny', 261, to_date('02-10-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ofra', 262, to_date('26-10-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yehuda', 263, to_date('15-05-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Udi', 264, to_date('05-10-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chagit', 265, to_date('22-07-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Carmel', 266, to_date('08-04-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nir', 267, to_date('12-07-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yotam', 268, to_date('17-01-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hadar', 269, to_date('22-05-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noy', 270, to_date('02-06-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orna', 271, to_date('26-01-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Geula', 272, to_date('08-01-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Binyamin', 273, to_date('09-03-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Binyamin', 274, to_date('05-12-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tal', 275, to_date('28-06-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Binyamin', 276, to_date('27-10-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Amir', 277, to_date('16-05-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lior', 278, to_date('17-02-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mirit', 279, to_date('24-04-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Michal', 280, to_date('21-06-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzachi', 281, to_date('11-11-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eliezer', 282, to_date('01-09-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chava', 283, to_date('10-01-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dor', 284, to_date('18-11-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chava', 285, to_date('26-02-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rivka', 286, to_date('22-04-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Udi', 287, to_date('24-11-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Boaz', 288, to_date('06-05-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Koren', 289, to_date('21-03-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nava', 290, to_date('08-09-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Keren', 291, to_date('19-07-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maayan', 292, to_date('13-05-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Uzi', 293, to_date('04-02-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Uzi', 294, to_date('22-01-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lavi', 295, to_date('09-10-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kfir', 296, to_date('11-02-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orly', 297, to_date('17-11-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zohar', 298, to_date('07-11-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maayan', 299, to_date('09-02-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Moshe', 300, to_date('20-10-1954', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into STAFF (sname, sid, sbirthdate)
values ('Reut', 301, to_date('17-01-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Haim', 302, to_date('27-08-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Vered', 303, to_date('25-11-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mor', 304, to_date('22-03-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tamar', 305, to_date('26-02-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Itamar', 306, to_date('05-03-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzila', 307, to_date('27-06-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Matan', 308, to_date('31-10-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chava', 309, to_date('25-10-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yossi', 310, to_date('19-01-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shimon', 311, to_date('17-03-1967', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lavi', 312, to_date('10-07-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Benny', 313, to_date('27-12-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yossi', 314, to_date('18-07-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ziva', 315, to_date('21-06-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lily', 316, to_date('29-05-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avital', 317, to_date('07-03-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shani', 318, to_date('13-01-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zohar', 319, to_date('01-05-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orit', 320, to_date('07-04-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shoshana', 321, to_date('10-01-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Micha', 322, to_date('28-08-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Erez', 323, to_date('30-10-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avital', 324, to_date('02-08-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Herzl', 325, to_date('22-07-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yaara', 326, to_date('25-03-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mirit', 327, to_date('14-07-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzvia', 328, to_date('22-08-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yael', 329, to_date('27-06-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rachel', 330, to_date('26-11-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yotam', 331, to_date('20-05-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zelda', 332, to_date('05-05-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Natan', 333, to_date('14-09-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ilan', 334, to_date('04-03-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rivka', 335, to_date('17-07-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liora', 336, to_date('25-04-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Boaz', 337, to_date('12-10-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Reut', 338, to_date('23-12-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gavriella', 339, to_date('18-07-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rachel', 340, to_date('14-04-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yaffa', 341, to_date('15-03-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Levi', 342, to_date('13-02-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dov', 343, to_date('17-03-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Koren', 344, to_date('15-03-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nava', 345, to_date('26-12-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ilana', 346, to_date('08-01-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Binyamin', 347, to_date('23-03-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lily', 348, to_date('25-08-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shira', 349, to_date('10-08-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Meir', 350, to_date('08-02-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shira', 351, to_date('24-04-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tal', 352, to_date('08-06-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzipora', 353, to_date('29-03-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ziva', 354, to_date('21-07-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Haim', 355, to_date('09-10-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rafi', 356, to_date('14-03-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nava', 357, to_date('01-05-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Herzl', 358, to_date('06-10-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ophir', 359, to_date('23-09-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orly', 360, to_date('05-03-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sara', 361, to_date('26-08-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zehava', 362, to_date('28-11-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Batya', 363, to_date('11-12-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Merav', 364, to_date('09-02-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Menahem', 365, to_date('28-07-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Boaz', 366, to_date('30-05-1972', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('David', 367, to_date('17-02-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Israel', 368, to_date('25-09-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orly', 369, to_date('29-01-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gideon', 370, to_date('16-03-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shira', 371, to_date('29-10-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gavriel', 372, to_date('15-06-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Uziel', 373, to_date('21-02-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gali', 374, to_date('07-03-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Binyamin', 375, to_date('24-09-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noam', 376, to_date('13-01-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Menucha', 377, to_date('30-09-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nir', 378, to_date('14-10-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Micha', 379, to_date('21-07-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Uziel', 380, to_date('14-11-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dalia', 381, to_date('13-04-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronen', 382, to_date('13-10-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nir', 383, to_date('14-07-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hila', 384, to_date('25-12-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lihi', 385, to_date('20-09-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chaya', 386, to_date('09-10-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rivka', 387, to_date('22-04-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yael', 388, to_date('09-09-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Avigail', 389, to_date('30-07-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mika', 390, to_date('11-12-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dor', 391, to_date('24-07-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ziva', 392, to_date('16-09-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hillel', 393, to_date('11-09-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Zohara', 394, to_date('04-01-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shlomo', 395, to_date('23-05-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Yossi', 396, to_date('13-07-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Talia', 397, to_date('12-10-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sharon', 398, to_date('29-01-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hillel', 399, to_date('07-05-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Israel', 400, to_date('20-05-1963', 'dd-mm-yyyy'));
commit;
prompt 400 records loaded
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
alter table PET enable constraint SYS_C00709374;
prompt Enabling foreign key constraints for VET...
alter table VET enable constraint SYS_C00709391;
prompt Enabling foreign key constraints for APPOINTMENT...
alter table APPOINTMENT enable constraint SYS_C00709412;
alter table APPOINTMENT enable constraint SYS_C00709413;
prompt Enabling foreign key constraints for SECRETARY...
alter table SECRETARY enable constraint SYS_C00709385;
prompt Enabling foreign key constraints for SELL...
alter table SELL enable constraint SYS_C00709404;
alter table SELL enable constraint SYS_C00709405;
prompt Enabling foreign key constraints for TREATMENTTYPE...
alter table TREATMENTTYPE enable constraint SYS_C00709417;
alter table TREATMENTTYPE enable constraint SYS_C00709418;
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
