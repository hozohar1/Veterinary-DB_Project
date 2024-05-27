prompt PL/SQL Developer Export Tables for user EWEKSLER@LABDBWIN
prompt Created by eweksler on ιεν ωπι 27 ξΰι 2024
set feedback off
set define off

prompt Creating ACCESSORIES...
create table ACCESSORIES
(
  accprice INTEGER not null,
  accid    INTEGER not null,
  accname  VARCHAR2(15) not null
)
;
alter table ACCESSORIES
  add primary key (ACCID);

prompt Creating PETOWNER...
create table PETOWNER
(
  ownername        VARCHAR2(30) not null,
  ownerid          INTEGER not null,
  owneraddress     VARCHAR2(30) not null,
  ownerphonenumber INTEGER not null
)
;
alter table PETOWNER
  add primary key (OWNERID);

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
;
alter table PET
  add primary key (PETID);
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
;
alter table STAFF
  add primary key (SID);

prompt Creating VET...
create table VET
(
  vspeciality VARCHAR2(15) not null,
  vstartyear  INTEGER not null,
  vrank       INTEGER not null,
  sid         INTEGER not null
)
;
alter table VET
  add primary key (SID);
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
;
alter table APPOINTMENT
  add primary key (APPID);
alter table APPOINTMENT
  add foreign key (PETID)
  references PET (PETID);
alter table APPOINTMENT
  add foreign key (SID)
  references VET (SID);

prompt Creating SECRETARY...
create table SECRETARY
(
  isseller    CHAR(1) not null,
  secphonenum INTEGER not null,
  secrank     INTEGER not null,
  sid         INTEGER not null
)
;
alter table SECRETARY
  add primary key (SID);
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
;
alter table SELL
  add primary key (ACCID, SID);
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
;
alter table TREATMENT
  add primary key (TID);

prompt Creating TREATMENTTYPE...
create table TREATMENTTYPE
(
  appid INTEGER not null,
  tid   INTEGER not null
)
;
alter table TREATMENTTYPE
  add primary key (APPID, TID);
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
prompt Disabling triggers for SECRETARY...
alter table SECRETARY disable all triggers;
prompt Disabling triggers for SELL...
alter table SELL disable all triggers;
prompt Disabling triggers for TREATMENT...
alter table TREATMENT disable all triggers;
prompt Disabling triggers for TREATMENTTYPE...
alter table TREATMENTTYPE disable all triggers;
prompt Disabling foreign key constraints for PET...
alter table PET disable constraint SYS_C00711501;
prompt Disabling foreign key constraints for VET...
alter table VET disable constraint SYS_C00711518;
prompt Disabling foreign key constraints for APPOINTMENT...
alter table APPOINTMENT disable constraint SYS_C00711539;
alter table APPOINTMENT disable constraint SYS_C00711540;
prompt Disabling foreign key constraints for SECRETARY...
alter table SECRETARY disable constraint SYS_C00711512;
prompt Disabling foreign key constraints for SELL...
alter table SELL disable constraint SYS_C00711531;
alter table SELL disable constraint SYS_C00711532;
prompt Disabling foreign key constraints for TREATMENTTYPE...
alter table TREATMENTTYPE disable constraint SYS_C00711544;
alter table TREATMENTTYPE disable constraint SYS_C00711545;
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
insert into ACCESSORIES (accprice, accid, accname)
values (51, 1, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (99, 2, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 3, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 4, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (71, 5, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 6, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 7, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (120, 8, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (89, 9, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (110, 10, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (66, 11, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (105, 12, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (60, 13, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (69, 14, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 15, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (90, 16, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (50, 17, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 18, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 19, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 20, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 21, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 22, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 23, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 24, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (51, 25, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 26, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (73, 27, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (50, 28, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 29, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (62, 30, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 31, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 32, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 33, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 34, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (81, 35, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (93, 36, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 37, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 38, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (118, 39, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 40, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 41, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 42, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 43, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (118, 44, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (69, 45, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (59, 46, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 47, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 48, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (90, 49, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 50, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (52, 51, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (66, 52, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 53, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (120, 54, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (99, 55, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (98, 56, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 57, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 58, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 59, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (120, 60, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 61, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 62, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 63, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 64, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 65, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 66, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (62, 67, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (93, 68, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (88, 69, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 70, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 71, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (99, 72, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 73, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 74, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 75, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 76, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 77, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (105, 78, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 79, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 80, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 81, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (115, 82, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (52, 83, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 84, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 85, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 86, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 87, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 88, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 89, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 90, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (73, 91, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 92, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (105, 93, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (58, 94, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 95, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (108, 96, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (78, 97, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (94, 98, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 99, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 100, 'cat collar');
commit;
prompt 100 records committed...
insert into ACCESSORIES (accprice, accid, accname)
values (92, 101, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (73, 102, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 103, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 104, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 105, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (66, 106, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 107, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (90, 108, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 109, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (107, 110, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (110, 111, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 112, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (60, 113, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (104, 114, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (83, 115, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (108, 116, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (105, 117, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 118, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 119, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (109, 120, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (89, 121, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 122, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 123, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (116, 124, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 125, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 126, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 127, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 128, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (74, 129, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 130, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 131, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 132, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 133, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 134, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 135, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 136, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 137, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 138, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 139, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (111, 140, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (108, 141, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 142, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (56, 143, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 144, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 145, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 146, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 147, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (60, 148, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (75, 149, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (93, 150, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 151, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 152, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 153, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (59, 154, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 155, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (53, 156, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 157, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (77, 158, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 159, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 160, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (56, 161, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (56, 162, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 163, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (60, 164, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (77, 165, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (81, 166, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 167, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (94, 168, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (93, 169, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (104, 170, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (60, 171, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 172, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 173, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (93, 174, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (115, 175, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 176, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (71, 177, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 178, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (88, 179, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 180, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (91, 181, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 182, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (56, 183, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 184, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 185, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (99, 186, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 187, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 188, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (53, 189, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 190, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (53, 191, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (52, 192, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (70, 193, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (57, 194, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (82, 195, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (74, 196, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (65, 197, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 198, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (82, 199, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (107, 200, 'bone toy');
commit;
prompt 200 records committed...
insert into ACCESSORIES (accprice, accid, accname)
values (85, 201, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (81, 202, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (108, 203, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (91, 204, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (70, 205, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 206, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 207, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (57, 208, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (88, 209, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (66, 210, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 211, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 212, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 213, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 214, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (114, 215, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 216, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (115, 217, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 218, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (51, 219, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 220, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (111, 221, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 222, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 223, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (69, 224, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (108, 225, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (88, 226, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 227, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (58, 228, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 229, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (62, 230, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 231, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (105, 232, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (57, 233, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (99, 234, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 235, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (77, 236, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 237, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 238, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (58, 239, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 240, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 241, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 242, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (83, 243, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (88, 244, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 245, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (53, 246, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 247, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 248, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 249, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (82, 250, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 251, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (120, 252, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (74, 253, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 254, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 255, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 256, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (109, 257, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 258, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (89, 259, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (83, 260, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 261, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 262, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 263, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (109, 264, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 265, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (91, 266, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 267, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 268, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (74, 269, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 270, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (118, 271, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (115, 272, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 273, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (94, 274, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 275, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (104, 276, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 277, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (83, 278, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (109, 279, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 280, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (92, 281, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (104, 282, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 283, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 284, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (110, 285, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (91, 286, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 287, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 288, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 289, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (114, 290, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 291, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 292, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (69, 293, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (98, 294, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 295, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 296, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (89, 297, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 298, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (83, 299, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 300, 'bone toy');
commit;
prompt 300 records committed...
insert into ACCESSORIES (accprice, accid, accname)
values (72, 301, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 302, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 303, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (58, 304, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (110, 305, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (98, 306, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 307, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 308, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 309, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (114, 310, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 311, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (116, 312, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (82, 313, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 314, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 315, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (65, 316, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (120, 317, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 318, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (104, 319, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 320, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (59, 321, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (89, 322, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 323, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (62, 324, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 325, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (108, 326, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (65, 327, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (90, 328, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (88, 329, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 330, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 331, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (59, 332, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (109, 333, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 334, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (107, 335, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 336, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 337, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 338, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (77, 339, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 340, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 341, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 342, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 343, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (73, 344, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (73, 345, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (77, 346, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (115, 347, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (109, 348, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (94, 349, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (111, 350, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 351, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (81, 352, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (115, 353, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (57, 354, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 355, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 356, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (58, 357, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 358, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 359, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 360, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (91, 361, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 362, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (105, 363, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 364, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (111, 365, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (81, 366, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (107, 367, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (110, 368, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 369, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (60, 370, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (116, 371, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (52, 372, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 373, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 374, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 375, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 376, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 377, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (71, 378, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (116, 379, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (118, 380, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (110, 381, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 382, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (118, 383, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (88, 384, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 385, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (52, 386, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 387, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 388, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (60, 389, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 390, 'wet food');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 391, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 392, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (110, 393, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (75, 394, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (91, 395, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 396, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 397, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (82, 398, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 399, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (109, 400, 'dog collar');
commit;
prompt 400 records loaded
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
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 2, 1);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2002, 3, 2);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2003, 3, 3);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1993, 1, 4);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1995, 2, 5);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1994, 2, 6);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1999, 3, 7);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1989, 3, 8);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 3, 9);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1999, 1, 10);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1995, 3, 11);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 1, 12);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1998, 2, 13);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 2, 14);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 1, 15);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2005, 1, 16);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1992, 3, 17);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2005, 3, 18);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2007, 3, 19);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2001, 1, 20);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2010, 2, 21);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1989, 2, 22);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2007, 1, 23);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1999, 2, 24);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2010, 1, 25);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1998, 3, 26);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2007, 3, 27);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2001, 1, 28);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1989, 2, 29);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 2, 30);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2003, 2, 31);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2006, 3, 32);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1991, 1, 33);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1995, 2, 34);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 3, 35);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2008, 2, 36);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2003, 1, 37);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1999, 2, 38);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1992, 1, 39);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1992, 3, 40);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2009, 2, 41);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1989, 1, 42);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2002, 2, 43);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 2, 44);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1996, 2, 45);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1997, 1, 46);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2001, 3, 47);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2001, 1, 48);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2001, 3, 49);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2005, 2, 50);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2000, 3, 51);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 2, 52);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2007, 1, 53);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2001, 1, 54);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2008, 1, 55);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 1, 56);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1995, 2, 57);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2000, 3, 58);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2003, 1, 59);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1995, 2, 60);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1991, 2, 61);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1999, 2, 62);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1991, 3, 63);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1992, 1, 64);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1990, 2, 65);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1990, 1, 66);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1995, 3, 67);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2005, 3, 68);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2004, 2, 69);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 2, 70);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 3, 71);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1999, 2, 72);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1989, 1, 73);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1994, 3, 74);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 2, 75);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2010, 2, 76);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2003, 1, 77);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1991, 2, 78);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2001, 1, 79);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2006, 3, 80);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1993, 1, 81);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2008, 2, 82);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1997, 2, 83);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1990, 2, 84);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1992, 1, 85);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1994, 3, 86);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 1, 87);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 1, 88);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 2, 89);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1998, 2, 90);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1995, 2, 91);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1991, 1, 92);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 3, 93);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2002, 1, 94);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1989, 2, 95);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 1, 96);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2001, 1, 97);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1989, 2, 98);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1990, 3, 99);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2002, 2, 100);
commit;
prompt 100 records committed...
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2006, 2, 101);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2006, 3, 102);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2002, 1, 103);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1991, 2, 104);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 1, 105);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2010, 2, 106);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2009, 2, 107);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2000, 2, 108);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1999, 1, 109);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2003, 3, 110);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 1, 111);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2001, 1, 112);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1989, 2, 113);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1996, 2, 114);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1997, 2, 115);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2009, 3, 116);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1989, 1, 117);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2000, 1, 118);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2009, 1, 119);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2001, 2, 120);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2010, 3, 121);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1995, 3, 122);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1993, 3, 123);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2000, 1, 124);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1996, 3, 125);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2009, 2, 126);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1996, 2, 127);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1989, 1, 128);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 1, 129);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 1, 130);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2006, 2, 131);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2010, 3, 132);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1992, 2, 133);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1993, 3, 134);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1997, 1, 135);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1992, 3, 136);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 1, 137);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1990, 3, 138);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1999, 1, 139);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2004, 2, 140);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1997, 3, 141);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 1, 142);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 1, 143);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2000, 2, 144);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1989, 3, 145);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2004, 1, 146);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2004, 2, 147);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1998, 3, 148);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1999, 3, 149);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1999, 3, 150);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1994, 1, 151);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 2, 152);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2006, 2, 153);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1992, 1, 154);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2008, 2, 155);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2010, 3, 156);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1995, 3, 157);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1997, 3, 158);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1995, 2, 159);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1991, 2, 160);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2002, 2, 161);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1997, 2, 162);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1991, 3, 163);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1989, 3, 164);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1994, 1, 165);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2001, 2, 166);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1990, 2, 167);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1999, 1, 168);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1998, 1, 169);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1996, 3, 170);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 1, 171);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2010, 2, 172);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2005, 2, 173);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2004, 3, 174);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2007, 3, 175);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2002, 3, 176);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2006, 3, 177);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1993, 2, 178);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1991, 1, 179);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2006, 3, 180);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2006, 2, 181);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 1, 182);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1996, 1, 183);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2005, 3, 184);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1999, 1, 185);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 2, 186);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 1, 187);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 2, 188);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1997, 2, 189);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1992, 1, 190);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1995, 1, 191);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 3, 192);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 3, 193);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2004, 2, 194);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1996, 3, 195);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2000, 2, 196);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2001, 1, 197);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2010, 3, 198);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2009, 1, 199);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2009, 3, 200);
commit;
prompt 200 records committed...
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1996, 3, 201);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2002, 3, 202);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 2, 203);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2005, 3, 204);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 1, 205);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1989, 2, 206);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2008, 1, 207);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1992, 1, 208);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2008, 3, 209);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1998, 2, 210);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2005, 3, 211);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2008, 2, 212);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 3, 213);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1990, 2, 214);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2003, 3, 215);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 1, 216);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2001, 1, 217);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1995, 2, 218);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 2, 219);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 1, 220);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1998, 3, 221);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2002, 3, 222);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1989, 3, 223);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 2, 224);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2009, 1, 225);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2006, 2, 226);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1990, 1, 227);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 2, 228);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2003, 2, 229);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 2, 230);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2009, 2, 231);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 3, 232);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2006, 1, 233);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2007, 3, 234);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2002, 2, 235);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2004, 2, 236);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1997, 1, 237);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2009, 2, 238);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 1, 239);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 3, 240);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2004, 1, 241);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2003, 3, 242);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1995, 2, 243);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 2, 244);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1990, 2, 245);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 3, 246);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 2, 247);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 1, 248);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2009, 1, 249);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2007, 1, 250);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1994, 3, 251);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1998, 3, 252);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2007, 3, 253);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2001, 3, 254);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 3, 255);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 2, 256);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2000, 1, 257);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1997, 3, 258);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1997, 1, 259);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1992, 2, 260);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1992, 3, 261);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2008, 3, 262);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2006, 2, 263);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2006, 3, 264);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 2, 265);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2007, 2, 266);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 1, 267);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2002, 3, 268);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 1, 269);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2000, 2, 270);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2000, 3, 271);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2010, 1, 272);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1998, 1, 273);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2000, 2, 274);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2006, 3, 275);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2004, 3, 276);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2007, 3, 277);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2002, 3, 278);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2009, 2, 279);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2000, 1, 280);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2006, 3, 281);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2008, 3, 282);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1999, 1, 283);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1999, 2, 284);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2004, 3, 285);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2009, 3, 286);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2008, 2, 287);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1991, 1, 288);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1995, 3, 289);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2004, 2, 290);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2009, 1, 291);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1990, 3, 292);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2005, 1, 293);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1997, 3, 294);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2008, 3, 295);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1996, 1, 296);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 3, 297);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2000, 2, 298);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2002, 2, 299);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1998, 3, 300);
commit;
prompt 300 records committed...
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 2, 301);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1991, 3, 302);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2001, 1, 303);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2009, 1, 304);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1989, 1, 305);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1995, 2, 306);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2007, 2, 307);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1997, 1, 308);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1989, 1, 309);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1998, 3, 310);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 2, 311);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2006, 2, 312);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2003, 1, 313);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2001, 2, 314);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1989, 1, 315);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1998, 1, 316);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2000, 3, 317);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2010, 2, 318);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1996, 3, 319);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1998, 1, 320);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1998, 1, 321);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1998, 1, 322);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2003, 3, 323);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2009, 2, 324);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1996, 2, 325);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2005, 2, 326);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1994, 3, 327);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 1, 328);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 3, 329);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 3, 330);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 2, 331);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 1, 332);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2010, 3, 333);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1996, 2, 334);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1993, 1, 335);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2002, 2, 336);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1997, 1, 337);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2003, 3, 338);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1996, 2, 339);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2001, 3, 340);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1992, 1, 341);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2010, 1, 342);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1991, 1, 343);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1990, 1, 344);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1998, 2, 345);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 3, 346);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1989, 3, 347);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2003, 1, 348);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1999, 3, 349);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1994, 1, 350);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2010, 1, 351);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2009, 2, 352);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2009, 1, 353);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2008, 3, 354);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1990, 3, 355);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2006, 3, 356);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2004, 2, 357);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2010, 3, 358);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 2, 359);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2000, 3, 360);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2009, 1, 361);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 3, 362);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2002, 2, 363);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1991, 3, 364);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1989, 3, 365);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1991, 2, 366);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2003, 3, 367);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1997, 1, 368);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 3, 369);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2009, 2, 370);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 3, 371);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1995, 2, 372);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2010, 3, 373);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 2, 374);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2004, 2, 375);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1996, 2, 376);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1994, 1, 377);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2004, 2, 378);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2002, 2, 379);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2004, 3, 380);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1996, 3, 381);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 1998, 3, 382);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1997, 3, 383);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2010, 3, 384);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2001, 1, 385);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2005, 1, 386);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1990, 1, 387);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1993, 3, 388);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 2, 389);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2002, 2, 390);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 3, 391);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2001, 2, 392);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1990, 2, 393);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1992, 3, 394);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2007, 3, 395);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2001, 3, 396);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 1995, 3, 397);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('Dentist', 2001, 3, 398);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 1999, 1, 399);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('surgeon', 2009, 3, 400);
commit;
prompt 400 records loaded
prompt Loading APPOINTMENT...
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-07-2021', 'dd-mm-yyyy'), 525, 1, 367, 142);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-02-2021', 'dd-mm-yyyy'), 361, 2, 102, 312);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-06-2022', 'dd-mm-yyyy'), 590, 3, 160, 220);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-12-2024', 'dd-mm-yyyy'), 402, 4, 86, 29);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('24-03-2024', 'dd-mm-yyyy'), 395, 5, 84, 125);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-10-2022', 'dd-mm-yyyy'), 272, 6, 248, 305);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-07-2023', 'dd-mm-yyyy'), 676, 7, 272, 292);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-01-2023', 'dd-mm-yyyy'), 414, 8, 177, 186);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-12-2023', 'dd-mm-yyyy'), 476, 9, 369, 267);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-11-2024', 'dd-mm-yyyy'), 427, 10, 187, 172);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-01-2021', 'dd-mm-yyyy'), 182, 11, 272, 273);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('21-08-2024', 'dd-mm-yyyy'), 238, 12, 122, 247);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-09-2023', 'dd-mm-yyyy'), 683, 13, 346, 303);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-05-2022', 'dd-mm-yyyy'), 177, 14, 392, 228);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-11-2023', 'dd-mm-yyyy'), 129, 15, 267, 332);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-06-2024', 'dd-mm-yyyy'), 602, 16, 19, 45);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-03-2022', 'dd-mm-yyyy'), 660, 17, 91, 57);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-08-2022', 'dd-mm-yyyy'), 432, 18, 128, 342);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-07-2022', 'dd-mm-yyyy'), 360, 19, 346, 163);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-04-2021', 'dd-mm-yyyy'), 433, 20, 43, 204);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('21-11-2021', 'dd-mm-yyyy'), 399, 21, 352, 312);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-12-2024', 'dd-mm-yyyy'), 202, 22, 26, 11);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-04-2021', 'dd-mm-yyyy'), 643, 23, 360, 259);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('24-01-2022', 'dd-mm-yyyy'), 564, 24, 225, 215);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-07-2024', 'dd-mm-yyyy'), 691, 25, 324, 89);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-09-2024', 'dd-mm-yyyy'), 304, 26, 258, 40);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-05-2021', 'dd-mm-yyyy'), 460, 27, 92, 387);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-04-2021', 'dd-mm-yyyy'), 277, 28, 221, 113);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-01-2023', 'dd-mm-yyyy'), 315, 29, 226, 321);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-08-2024', 'dd-mm-yyyy'), 548, 30, 313, 213);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-05-2021', 'dd-mm-yyyy'), 113, 31, 239, 63);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-12-2024', 'dd-mm-yyyy'), 350, 32, 295, 150);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-03-2021', 'dd-mm-yyyy'), 393, 33, 271, 325);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-09-2022', 'dd-mm-yyyy'), 188, 34, 369, 169);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-03-2024', 'dd-mm-yyyy'), 518, 35, 178, 226);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-02-2022', 'dd-mm-yyyy'), 252, 36, 286, 71);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('24-05-2021', 'dd-mm-yyyy'), 279, 37, 48, 281);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-04-2024', 'dd-mm-yyyy'), 324, 38, 272, 276);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-08-2021', 'dd-mm-yyyy'), 395, 39, 148, 115);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-01-2021', 'dd-mm-yyyy'), 546, 40, 188, 389);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-07-2024', 'dd-mm-yyyy'), 614, 41, 290, 104);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-03-2021', 'dd-mm-yyyy'), 440, 42, 107, 109);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-07-2021', 'dd-mm-yyyy'), 624, 43, 223, 141);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-05-2024', 'dd-mm-yyyy'), 729, 44, 323, 57);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-05-2021', 'dd-mm-yyyy'), 514, 45, 254, 322);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-12-2023', 'dd-mm-yyyy'), 157, 46, 377, 123);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-10-2023', 'dd-mm-yyyy'), 136, 47, 87, 366);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-06-2021', 'dd-mm-yyyy'), 329, 48, 317, 148);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-12-2024', 'dd-mm-yyyy'), 626, 49, 295, 149);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-08-2021', 'dd-mm-yyyy'), 329, 50, 175, 125);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-01-2024', 'dd-mm-yyyy'), 266, 51, 8, 174);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-09-2023', 'dd-mm-yyyy'), 662, 52, 74, 327);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-06-2021', 'dd-mm-yyyy'), 318, 53, 38, 358);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-12-2024', 'dd-mm-yyyy'), 236, 54, 159, 157);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-06-2021', 'dd-mm-yyyy'), 642, 55, 214, 349);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-05-2024', 'dd-mm-yyyy'), 713, 56, 351, 127);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-11-2022', 'dd-mm-yyyy'), 730, 57, 157, 162);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('21-09-2022', 'dd-mm-yyyy'), 638, 58, 330, 162);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-07-2022', 'dd-mm-yyyy'), 286, 59, 267, 348);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-08-2022', 'dd-mm-yyyy'), 197, 60, 136, 223);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('21-02-2022', 'dd-mm-yyyy'), 666, 61, 147, 83);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-04-2021', 'dd-mm-yyyy'), 314, 62, 205, 64);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-07-2024', 'dd-mm-yyyy'), 663, 63, 40, 379);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-12-2022', 'dd-mm-yyyy'), 650, 64, 18, 107);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-12-2024', 'dd-mm-yyyy'), 298, 65, 102, 29);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-03-2024', 'dd-mm-yyyy'), 413, 66, 189, 244);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-09-2023', 'dd-mm-yyyy'), 273, 67, 291, 270);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('21-01-2023', 'dd-mm-yyyy'), 671, 68, 365, 165);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-12-2021', 'dd-mm-yyyy'), 308, 69, 87, 171);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-04-2024', 'dd-mm-yyyy'), 354, 70, 157, 11);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-09-2022', 'dd-mm-yyyy'), 303, 71, 36, 350);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-07-2021', 'dd-mm-yyyy'), 279, 72, 299, 150);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-10-2023', 'dd-mm-yyyy'), 384, 73, 315, 215);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-12-2022', 'dd-mm-yyyy'), 214, 74, 23, 80);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-06-2022', 'dd-mm-yyyy'), 519, 75, 327, 324);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-09-2021', 'dd-mm-yyyy'), 703, 76, 270, 57);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-06-2021', 'dd-mm-yyyy'), 321, 77, 119, 279);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-04-2022', 'dd-mm-yyyy'), 536, 78, 317, 246);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-12-2021', 'dd-mm-yyyy'), 367, 79, 25, 141);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-05-2023', 'dd-mm-yyyy'), 280, 80, 233, 199);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-11-2021', 'dd-mm-yyyy'), 464, 81, 133, 167);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-09-2024', 'dd-mm-yyyy'), 164, 82, 360, 258);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-10-2021', 'dd-mm-yyyy'), 717, 83, 378, 77);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('24-06-2022', 'dd-mm-yyyy'), 104, 84, 219, 81);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('10-06-2023', 'dd-mm-yyyy'), 206, 85, 61, 244);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-09-2024', 'dd-mm-yyyy'), 601, 86, 39, 297);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-03-2024', 'dd-mm-yyyy'), 411, 87, 391, 8);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-12-2022', 'dd-mm-yyyy'), 571, 88, 115, 78);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-01-2024', 'dd-mm-yyyy'), 388, 89, 54, 313);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-06-2024', 'dd-mm-yyyy'), 598, 90, 383, 247);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-08-2024', 'dd-mm-yyyy'), 610, 91, 205, 280);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-04-2024', 'dd-mm-yyyy'), 525, 92, 234, 304);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-08-2024', 'dd-mm-yyyy'), 492, 93, 86, 86);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-11-2021', 'dd-mm-yyyy'), 505, 94, 136, 174);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-06-2023', 'dd-mm-yyyy'), 690, 95, 70, 190);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-08-2021', 'dd-mm-yyyy'), 306, 96, 295, 292);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-01-2021', 'dd-mm-yyyy'), 387, 97, 128, 64);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-02-2022', 'dd-mm-yyyy'), 116, 98, 333, 399);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-12-2021', 'dd-mm-yyyy'), 641, 99, 122, 60);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-02-2021', 'dd-mm-yyyy'), 250, 100, 395, 270);
commit;
prompt 100 records committed...
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-10-2023', 'dd-mm-yyyy'), 131, 101, 324, 5);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-05-2021', 'dd-mm-yyyy'), 417, 102, 76, 370);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-10-2021', 'dd-mm-yyyy'), 211, 103, 157, 109);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-12-2023', 'dd-mm-yyyy'), 480, 104, 382, 30);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-09-2021', 'dd-mm-yyyy'), 413, 105, 365, 209);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-09-2022', 'dd-mm-yyyy'), 130, 106, 307, 345);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-12-2024', 'dd-mm-yyyy'), 656, 107, 204, 130);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-01-2022', 'dd-mm-yyyy'), 707, 108, 37, 208);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-11-2021', 'dd-mm-yyyy'), 403, 109, 62, 382);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-10-2023', 'dd-mm-yyyy'), 717, 110, 384, 257);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-05-2021', 'dd-mm-yyyy'), 633, 111, 302, 366);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-08-2021', 'dd-mm-yyyy'), 674, 112, 39, 358);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-01-2021', 'dd-mm-yyyy'), 146, 113, 327, 120);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-05-2024', 'dd-mm-yyyy'), 317, 114, 256, 199);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-10-2024', 'dd-mm-yyyy'), 549, 115, 277, 382);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-03-2023', 'dd-mm-yyyy'), 607, 116, 151, 226);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-09-2021', 'dd-mm-yyyy'), 363, 117, 142, 179);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-09-2022', 'dd-mm-yyyy'), 702, 118, 239, 90);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-05-2024', 'dd-mm-yyyy'), 411, 119, 312, 344);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-02-2021', 'dd-mm-yyyy'), 357, 120, 186, 226);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-11-2023', 'dd-mm-yyyy'), 293, 121, 337, 152);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-05-2022', 'dd-mm-yyyy'), 566, 122, 390, 156);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('31-08-2024', 'dd-mm-yyyy'), 268, 123, 326, 290);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-09-2023', 'dd-mm-yyyy'), 502, 124, 187, 314);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-05-2024', 'dd-mm-yyyy'), 743, 125, 163, 142);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-10-2024', 'dd-mm-yyyy'), 528, 126, 280, 202);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-02-2021', 'dd-mm-yyyy'), 659, 127, 149, 207);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-04-2024', 'dd-mm-yyyy'), 189, 128, 199, 65);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-04-2021', 'dd-mm-yyyy'), 634, 129, 271, 38);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-09-2024', 'dd-mm-yyyy'), 327, 130, 374, 91);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-11-2023', 'dd-mm-yyyy'), 459, 131, 94, 107);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-10-2021', 'dd-mm-yyyy'), 184, 132, 47, 344);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-12-2024', 'dd-mm-yyyy'), 698, 133, 81, 393);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-12-2021', 'dd-mm-yyyy'), 569, 134, 200, 212);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-11-2021', 'dd-mm-yyyy'), 583, 135, 333, 100);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-11-2023', 'dd-mm-yyyy'), 718, 136, 310, 186);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-05-2022', 'dd-mm-yyyy'), 675, 137, 362, 95);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('24-11-2024', 'dd-mm-yyyy'), 569, 138, 130, 362);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-11-2021', 'dd-mm-yyyy'), 521, 139, 276, 71);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-11-2022', 'dd-mm-yyyy'), 631, 140, 94, 68);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-07-2024', 'dd-mm-yyyy'), 410, 141, 205, 41);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-10-2022', 'dd-mm-yyyy'), 107, 142, 348, 217);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('27-12-2024', 'dd-mm-yyyy'), 745, 143, 339, 151);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-08-2023', 'dd-mm-yyyy'), 426, 144, 8, 384);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-04-2022', 'dd-mm-yyyy'), 300, 145, 399, 18);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-02-2021', 'dd-mm-yyyy'), 520, 146, 234, 208);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-12-2021', 'dd-mm-yyyy'), 551, 147, 126, 398);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-03-2023', 'dd-mm-yyyy'), 109, 148, 342, 320);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-04-2022', 'dd-mm-yyyy'), 439, 149, 4, 373);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-05-2021', 'dd-mm-yyyy'), 594, 150, 131, 395);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-01-2021', 'dd-mm-yyyy'), 456, 151, 199, 67);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-07-2022', 'dd-mm-yyyy'), 289, 152, 38, 331);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('21-04-2022', 'dd-mm-yyyy'), 418, 153, 129, 88);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-12-2024', 'dd-mm-yyyy'), 270, 154, 322, 147);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-09-2023', 'dd-mm-yyyy'), 699, 155, 255, 88);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-04-2022', 'dd-mm-yyyy'), 674, 156, 66, 214);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-06-2023', 'dd-mm-yyyy'), 418, 157, 102, 57);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-08-2024', 'dd-mm-yyyy'), 438, 158, 9, 208);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-06-2024', 'dd-mm-yyyy'), 380, 159, 100, 338);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-07-2022', 'dd-mm-yyyy'), 517, 160, 1, 384);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-08-2021', 'dd-mm-yyyy'), 362, 161, 52, 362);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-09-2024', 'dd-mm-yyyy'), 128, 162, 283, 381);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-07-2022', 'dd-mm-yyyy'), 515, 163, 227, 119);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-08-2022', 'dd-mm-yyyy'), 367, 164, 194, 348);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('24-05-2023', 'dd-mm-yyyy'), 357, 165, 279, 345);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-06-2024', 'dd-mm-yyyy'), 215, 166, 302, 396);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-10-2021', 'dd-mm-yyyy'), 579, 167, 387, 233);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-08-2024', 'dd-mm-yyyy'), 561, 168, 354, 380);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-08-2021', 'dd-mm-yyyy'), 494, 169, 228, 283);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-12-2021', 'dd-mm-yyyy'), 612, 170, 264, 392);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-03-2022', 'dd-mm-yyyy'), 250, 171, 166, 254);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-08-2021', 'dd-mm-yyyy'), 371, 172, 113, 397);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-06-2023', 'dd-mm-yyyy'), 642, 173, 270, 266);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-12-2021', 'dd-mm-yyyy'), 714, 174, 383, 183);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('10-10-2023', 'dd-mm-yyyy'), 516, 175, 359, 206);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-12-2024', 'dd-mm-yyyy'), 407, 176, 11, 36);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-09-2021', 'dd-mm-yyyy'), 248, 177, 270, 271);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('31-05-2023', 'dd-mm-yyyy'), 502, 178, 267, 143);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-04-2022', 'dd-mm-yyyy'), 207, 179, 349, 234);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-02-2024', 'dd-mm-yyyy'), 457, 180, 63, 322);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-01-2023', 'dd-mm-yyyy'), 733, 181, 169, 234);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-05-2023', 'dd-mm-yyyy'), 334, 182, 285, 73);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-01-2021', 'dd-mm-yyyy'), 357, 183, 274, 287);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-08-2022', 'dd-mm-yyyy'), 585, 184, 342, 152);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-05-2023', 'dd-mm-yyyy'), 737, 185, 150, 130);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-08-2024', 'dd-mm-yyyy'), 745, 186, 151, 80);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-07-2022', 'dd-mm-yyyy'), 738, 187, 11, 184);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-08-2021', 'dd-mm-yyyy'), 281, 188, 344, 363);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-10-2023', 'dd-mm-yyyy'), 468, 189, 23, 43);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-09-2023', 'dd-mm-yyyy'), 291, 190, 293, 250);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-05-2024', 'dd-mm-yyyy'), 316, 191, 145, 93);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-10-2023', 'dd-mm-yyyy'), 206, 192, 372, 209);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-02-2022', 'dd-mm-yyyy'), 198, 193, 194, 245);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-05-2022', 'dd-mm-yyyy'), 550, 194, 32, 327);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-11-2022', 'dd-mm-yyyy'), 295, 195, 144, 207);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-12-2024', 'dd-mm-yyyy'), 691, 196, 108, 239);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-01-2021', 'dd-mm-yyyy'), 710, 197, 240, 68);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-05-2023', 'dd-mm-yyyy'), 713, 198, 152, 182);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-08-2024', 'dd-mm-yyyy'), 662, 199, 139, 18);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-10-2021', 'dd-mm-yyyy'), 226, 200, 385, 369);
commit;
prompt 200 records committed...
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-07-2023', 'dd-mm-yyyy'), 494, 201, 285, 382);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-06-2022', 'dd-mm-yyyy'), 638, 202, 281, 293);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-12-2022', 'dd-mm-yyyy'), 634, 203, 295, 390);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-11-2023', 'dd-mm-yyyy'), 470, 204, 167, 355);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-08-2024', 'dd-mm-yyyy'), 748, 205, 378, 65);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-09-2023', 'dd-mm-yyyy'), 641, 206, 260, 216);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-09-2024', 'dd-mm-yyyy'), 408, 207, 184, 38);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-01-2021', 'dd-mm-yyyy'), 185, 208, 319, 274);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-04-2023', 'dd-mm-yyyy'), 615, 209, 263, 86);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-08-2023', 'dd-mm-yyyy'), 645, 210, 325, 265);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('10-10-2022', 'dd-mm-yyyy'), 308, 211, 166, 400);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-04-2023', 'dd-mm-yyyy'), 242, 212, 187, 193);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-02-2022', 'dd-mm-yyyy'), 244, 213, 357, 373);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-12-2022', 'dd-mm-yyyy'), 628, 214, 74, 382);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-06-2023', 'dd-mm-yyyy'), 576, 215, 360, 113);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-10-2024', 'dd-mm-yyyy'), 163, 216, 169, 249);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('31-01-2023', 'dd-mm-yyyy'), 575, 217, 324, 288);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-12-2021', 'dd-mm-yyyy'), 419, 218, 249, 214);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-05-2022', 'dd-mm-yyyy'), 524, 219, 18, 287);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-02-2023', 'dd-mm-yyyy'), 519, 220, 292, 319);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-04-2023', 'dd-mm-yyyy'), 542, 221, 50, 309);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-08-2024', 'dd-mm-yyyy'), 143, 222, 106, 389);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-01-2024', 'dd-mm-yyyy'), 280, 223, 105, 181);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-07-2023', 'dd-mm-yyyy'), 127, 224, 386, 100);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-09-2022', 'dd-mm-yyyy'), 115, 225, 218, 96);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-04-2022', 'dd-mm-yyyy'), 672, 226, 393, 190);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('27-09-2021', 'dd-mm-yyyy'), 588, 227, 267, 79);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-04-2022', 'dd-mm-yyyy'), 399, 228, 260, 379);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-12-2023', 'dd-mm-yyyy'), 104, 229, 86, 174);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-04-2021', 'dd-mm-yyyy'), 167, 230, 323, 29);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-05-2021', 'dd-mm-yyyy'), 644, 231, 213, 162);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-10-2022', 'dd-mm-yyyy'), 585, 232, 277, 313);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-01-2024', 'dd-mm-yyyy'), 652, 233, 55, 1);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-09-2022', 'dd-mm-yyyy'), 379, 234, 153, 325);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-01-2021', 'dd-mm-yyyy'), 506, 235, 285, 187);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-12-2022', 'dd-mm-yyyy'), 170, 236, 327, 301);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('31-12-2021', 'dd-mm-yyyy'), 376, 237, 252, 49);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-05-2022', 'dd-mm-yyyy'), 594, 238, 151, 375);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('21-09-2022', 'dd-mm-yyyy'), 234, 239, 35, 359);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-04-2023', 'dd-mm-yyyy'), 629, 240, 6, 57);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-11-2022', 'dd-mm-yyyy'), 727, 241, 299, 275);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-05-2022', 'dd-mm-yyyy'), 680, 242, 381, 33);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-05-2024', 'dd-mm-yyyy'), 338, 243, 400, 205);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-03-2022', 'dd-mm-yyyy'), 660, 244, 385, 292);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-05-2021', 'dd-mm-yyyy'), 573, 245, 291, 197);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-09-2022', 'dd-mm-yyyy'), 231, 246, 71, 181);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-03-2023', 'dd-mm-yyyy'), 274, 247, 277, 254);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('21-06-2024', 'dd-mm-yyyy'), 543, 248, 192, 381);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-05-2021', 'dd-mm-yyyy'), 558, 249, 171, 171);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-05-2021', 'dd-mm-yyyy'), 323, 250, 188, 9);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-12-2023', 'dd-mm-yyyy'), 192, 251, 297, 106);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-03-2024', 'dd-mm-yyyy'), 631, 252, 382, 44);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-01-2024', 'dd-mm-yyyy'), 288, 253, 302, 263);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-10-2021', 'dd-mm-yyyy'), 700, 254, 18, 283);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-03-2022', 'dd-mm-yyyy'), 735, 255, 202, 111);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-03-2021', 'dd-mm-yyyy'), 498, 256, 313, 216);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-05-2023', 'dd-mm-yyyy'), 739, 257, 47, 325);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-11-2024', 'dd-mm-yyyy'), 226, 258, 137, 228);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-03-2024', 'dd-mm-yyyy'), 228, 259, 217, 244);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-03-2024', 'dd-mm-yyyy'), 686, 260, 322, 327);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-01-2022', 'dd-mm-yyyy'), 142, 261, 339, 70);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-07-2024', 'dd-mm-yyyy'), 584, 262, 187, 396);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-12-2022', 'dd-mm-yyyy'), 337, 263, 29, 177);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-02-2023', 'dd-mm-yyyy'), 553, 264, 300, 373);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-01-2023', 'dd-mm-yyyy'), 290, 265, 260, 350);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-04-2023', 'dd-mm-yyyy'), 217, 266, 251, 347);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-06-2021', 'dd-mm-yyyy'), 656, 267, 158, 156);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-06-2024', 'dd-mm-yyyy'), 667, 268, 266, 193);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-07-2021', 'dd-mm-yyyy'), 479, 269, 14, 26);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-08-2024', 'dd-mm-yyyy'), 631, 270, 228, 319);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('27-10-2024', 'dd-mm-yyyy'), 456, 271, 134, 277);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-03-2023', 'dd-mm-yyyy'), 656, 272, 142, 345);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-07-2024', 'dd-mm-yyyy'), 556, 273, 301, 46);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-12-2023', 'dd-mm-yyyy'), 336, 274, 7, 106);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('31-12-2023', 'dd-mm-yyyy'), 436, 275, 272, 159);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-05-2022', 'dd-mm-yyyy'), 302, 276, 329, 178);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('27-09-2022', 'dd-mm-yyyy'), 719, 277, 94, 318);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-01-2021', 'dd-mm-yyyy'), 501, 278, 46, 331);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-04-2023', 'dd-mm-yyyy'), 566, 279, 247, 219);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-03-2021', 'dd-mm-yyyy'), 642, 280, 283, 308);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-02-2022', 'dd-mm-yyyy'), 659, 281, 14, 189);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-04-2023', 'dd-mm-yyyy'), 189, 282, 340, 123);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-06-2024', 'dd-mm-yyyy'), 532, 283, 70, 151);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-06-2022', 'dd-mm-yyyy'), 509, 284, 287, 295);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-11-2023', 'dd-mm-yyyy'), 659, 285, 103, 115);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-09-2021', 'dd-mm-yyyy'), 718, 286, 202, 392);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-12-2021', 'dd-mm-yyyy'), 189, 287, 258, 194);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('27-03-2024', 'dd-mm-yyyy'), 235, 288, 26, 316);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-01-2024', 'dd-mm-yyyy'), 744, 289, 1, 140);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-08-2022', 'dd-mm-yyyy'), 244, 290, 38, 300);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-04-2023', 'dd-mm-yyyy'), 655, 291, 17, 13);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-01-2024', 'dd-mm-yyyy'), 144, 292, 366, 40);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('27-03-2021', 'dd-mm-yyyy'), 471, 293, 321, 368);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('31-07-2023', 'dd-mm-yyyy'), 720, 294, 316, 143);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-04-2024', 'dd-mm-yyyy'), 204, 295, 210, 371);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-03-2022', 'dd-mm-yyyy'), 349, 296, 327, 306);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-07-2024', 'dd-mm-yyyy'), 684, 297, 22, 239);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('10-09-2024', 'dd-mm-yyyy'), 532, 298, 149, 219);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-02-2021', 'dd-mm-yyyy'), 569, 299, 335, 5);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-10-2021', 'dd-mm-yyyy'), 551, 300, 54, 393);
commit;
prompt 300 records committed...
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-03-2021', 'dd-mm-yyyy'), 704, 301, 185, 206);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-10-2024', 'dd-mm-yyyy'), 155, 302, 262, 108);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-12-2021', 'dd-mm-yyyy'), 235, 303, 303, 101);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-04-2024', 'dd-mm-yyyy'), 484, 304, 199, 97);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-03-2024', 'dd-mm-yyyy'), 729, 305, 189, 208);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-12-2024', 'dd-mm-yyyy'), 647, 306, 375, 343);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-09-2022', 'dd-mm-yyyy'), 739, 307, 204, 370);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-04-2021', 'dd-mm-yyyy'), 362, 308, 92, 210);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-04-2024', 'dd-mm-yyyy'), 331, 309, 286, 144);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-06-2024', 'dd-mm-yyyy'), 190, 310, 171, 90);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('10-09-2022', 'dd-mm-yyyy'), 611, 311, 94, 319);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-07-2022', 'dd-mm-yyyy'), 678, 312, 314, 188);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-05-2021', 'dd-mm-yyyy'), 202, 313, 174, 351);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-03-2024', 'dd-mm-yyyy'), 398, 314, 276, 18);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('27-08-2024', 'dd-mm-yyyy'), 378, 315, 158, 131);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-03-2023', 'dd-mm-yyyy'), 698, 316, 77, 232);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-11-2024', 'dd-mm-yyyy'), 652, 317, 374, 75);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-10-2022', 'dd-mm-yyyy'), 251, 318, 30, 375);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-03-2022', 'dd-mm-yyyy'), 408, 319, 95, 338);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-03-2024', 'dd-mm-yyyy'), 209, 320, 196, 159);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-09-2024', 'dd-mm-yyyy'), 103, 321, 4, 352);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-01-2024', 'dd-mm-yyyy'), 455, 322, 66, 267);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-11-2023', 'dd-mm-yyyy'), 705, 323, 87, 294);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-04-2023', 'dd-mm-yyyy'), 618, 324, 64, 280);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-07-2023', 'dd-mm-yyyy'), 742, 325, 154, 75);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-12-2024', 'dd-mm-yyyy'), 629, 326, 82, 129);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-05-2024', 'dd-mm-yyyy'), 707, 327, 177, 253);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-07-2023', 'dd-mm-yyyy'), 192, 328, 229, 273);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-08-2024', 'dd-mm-yyyy'), 509, 329, 62, 76);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-04-2023', 'dd-mm-yyyy'), 404, 330, 217, 200);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('10-02-2021', 'dd-mm-yyyy'), 383, 331, 40, 244);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-05-2024', 'dd-mm-yyyy'), 367, 332, 164, 58);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-01-2023', 'dd-mm-yyyy'), 702, 333, 87, 399);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-05-2021', 'dd-mm-yyyy'), 525, 334, 26, 201);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-02-2021', 'dd-mm-yyyy'), 685, 335, 364, 142);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-12-2021', 'dd-mm-yyyy'), 332, 336, 50, 272);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-11-2021', 'dd-mm-yyyy'), 570, 337, 286, 371);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('10-11-2021', 'dd-mm-yyyy'), 692, 338, 256, 205);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-05-2021', 'dd-mm-yyyy'), 733, 339, 219, 148);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-05-2024', 'dd-mm-yyyy'), 734, 340, 144, 347);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-11-2023', 'dd-mm-yyyy'), 359, 341, 190, 285);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-06-2023', 'dd-mm-yyyy'), 658, 342, 219, 318);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('25-04-2024', 'dd-mm-yyyy'), 223, 343, 37, 62);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-10-2023', 'dd-mm-yyyy'), 220, 344, 156, 181);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-03-2023', 'dd-mm-yyyy'), 463, 345, 174, 266);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-08-2024', 'dd-mm-yyyy'), 680, 346, 369, 350);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-08-2021', 'dd-mm-yyyy'), 520, 347, 184, 156);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-01-2024', 'dd-mm-yyyy'), 440, 348, 225, 215);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-12-2024', 'dd-mm-yyyy'), 567, 349, 38, 352);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('01-07-2023', 'dd-mm-yyyy'), 658, 350, 73, 292);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('03-01-2022', 'dd-mm-yyyy'), 553, 351, 335, 52);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-06-2024', 'dd-mm-yyyy'), 638, 352, 296, 306);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-04-2021', 'dd-mm-yyyy'), 744, 353, 377, 169);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('07-07-2021', 'dd-mm-yyyy'), 591, 354, 193, 388);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('27-11-2022', 'dd-mm-yyyy'), 514, 355, 51, 397);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-07-2023', 'dd-mm-yyyy'), 699, 356, 288, 206);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('22-12-2022', 'dd-mm-yyyy'), 603, 357, 359, 201);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('17-02-2023', 'dd-mm-yyyy'), 368, 358, 56, 14);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('11-04-2022', 'dd-mm-yyyy'), 356, 359, 152, 134);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-08-2022', 'dd-mm-yyyy'), 301, 360, 278, 33);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('02-02-2023', 'dd-mm-yyyy'), 388, 361, 302, 271);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-08-2023', 'dd-mm-yyyy'), 215, 362, 27, 150);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-04-2022', 'dd-mm-yyyy'), 236, 363, 93, 182);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-10-2021', 'dd-mm-yyyy'), 660, 364, 269, 348);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-11-2024', 'dd-mm-yyyy'), 121, 365, 242, 13);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('19-11-2024', 'dd-mm-yyyy'), 495, 366, 92, 257);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-04-2021', 'dd-mm-yyyy'), 315, 367, 138, 308);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('13-09-2023', 'dd-mm-yyyy'), 420, 368, 367, 230);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-06-2021', 'dd-mm-yyyy'), 703, 369, 115, 145);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-01-2023', 'dd-mm-yyyy'), 201, 370, 23, 350);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('18-01-2021', 'dd-mm-yyyy'), 555, 371, 338, 3);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('10-01-2021', 'dd-mm-yyyy'), 661, 372, 158, 150);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-07-2023', 'dd-mm-yyyy'), 453, 373, 327, 150);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-05-2024', 'dd-mm-yyyy'), 659, 374, 362, 274);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-02-2023', 'dd-mm-yyyy'), 514, 375, 300, 157);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-06-2024', 'dd-mm-yyyy'), 137, 376, 81, 47);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-05-2023', 'dd-mm-yyyy'), 116, 377, 335, 344);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-12-2024', 'dd-mm-yyyy'), 115, 378, 190, 181);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-04-2024', 'dd-mm-yyyy'), 443, 379, 170, 334);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('15-05-2022', 'dd-mm-yyyy'), 280, 380, 3, 203);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-01-2022', 'dd-mm-yyyy'), 704, 381, 15, 356);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-05-2022', 'dd-mm-yyyy'), 693, 382, 104, 202);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('31-03-2024', 'dd-mm-yyyy'), 435, 383, 400, 47);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('28-07-2024', 'dd-mm-yyyy'), 438, 384, 197, 115);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-11-2021', 'dd-mm-yyyy'), 688, 385, 241, 1);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('23-07-2023', 'dd-mm-yyyy'), 383, 386, 392, 122);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-06-2021', 'dd-mm-yyyy'), 221, 387, 330, 31);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-01-2022', 'dd-mm-yyyy'), 281, 388, 310, 176);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('09-06-2021', 'dd-mm-yyyy'), 354, 389, 259, 156);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('16-07-2024', 'dd-mm-yyyy'), 644, 390, 10, 256);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('04-11-2024', 'dd-mm-yyyy'), 265, 391, 358, 322);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('24-10-2022', 'dd-mm-yyyy'), 243, 392, 347, 145);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('30-12-2023', 'dd-mm-yyyy'), 297, 393, 264, 34);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('20-02-2022', 'dd-mm-yyyy'), 345, 394, 352, 327);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('26-09-2021', 'dd-mm-yyyy'), 263, 395, 117, 328);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('08-06-2023', 'dd-mm-yyyy'), 670, 396, 38, 23);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('14-10-2024', 'dd-mm-yyyy'), 563, 397, 372, 58);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('29-09-2021', 'dd-mm-yyyy'), 120, 398, 230, 335);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('06-05-2021', 'dd-mm-yyyy'), 240, 399, 249, 108);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('05-01-2021', 'dd-mm-yyyy'), 314, 400, 220, 130);
commit;
prompt 400 records loaded
prompt Loading SECRETARY...
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5495830, 2, 1);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5685620, 2, 2);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5140529, 2, 3);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5610860, 1, 4);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5075991, 2, 5);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5530887, 2, 6);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5499165, 2, 7);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5421968, 1, 8);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5944463, 1, 9);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5360071, 3, 10);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5252328, 3, 11);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5363449, 3, 12);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5327860, 3, 13);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5663889, 1, 14);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5466958, 2, 15);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5964856, 1, 16);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5903424, 2, 17);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5741824, 2, 18);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5364267, 3, 19);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5363732, 1, 20);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5874524, 1, 21);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5577185, 1, 22);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5389867, 1, 23);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5009285, 2, 24);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5117445, 1, 25);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5623301, 3, 26);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5175498, 1, 27);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5816256, 1, 28);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5602590, 1, 29);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5891473, 1, 30);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5220492, 1, 31);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5284612, 2, 32);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5543229, 1, 33);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5981310, 3, 34);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5371075, 3, 35);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5350677, 2, 36);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5974897, 2, 37);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5944067, 1, 38);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5425656, 2, 39);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5985342, 3, 40);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5718598, 1, 41);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5119625, 2, 42);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5444216, 3, 43);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5804963, 1, 44);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5930908, 3, 45);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5337721, 3, 46);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5589917, 1, 47);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5210583, 3, 48);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5694129, 2, 49);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5124064, 1, 50);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5581073, 3, 51);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5821099, 3, 52);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5349599, 1, 53);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5801960, 2, 54);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5081586, 2, 55);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5215999, 1, 56);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5527296, 3, 57);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5630065, 1, 58);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5607995, 1, 59);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5253291, 2, 60);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5074852, 2, 61);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5366906, 2, 62);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5781242, 1, 63);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5478259, 2, 64);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5339110, 3, 65);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5902768, 2, 66);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5001295, 1, 67);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5388663, 3, 68);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5503344, 2, 69);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5849608, 3, 70);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5872748, 1, 71);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5571998, 3, 72);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5933263, 2, 73);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5229587, 3, 74);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5959515, 2, 75);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5980468, 3, 76);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5734938, 1, 77);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5652870, 2, 78);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5696765, 1, 79);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5859262, 2, 80);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5977762, 3, 81);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5625297, 3, 82);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5538191, 3, 83);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5093787, 2, 84);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5285574, 3, 85);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5876578, 2, 86);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5666770, 3, 87);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5991466, 3, 88);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5749076, 3, 89);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5849603, 3, 90);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5847118, 1, 91);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5763732, 1, 92);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5362659, 3, 93);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5741528, 2, 94);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5247572, 3, 95);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5223845, 2, 96);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5438772, 2, 97);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5737224, 1, 98);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5310121, 1, 99);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5466150, 2, 100);
commit;
prompt 100 records committed...
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5702957, 2, 101);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5325755, 2, 102);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5996323, 3, 103);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5542410, 3, 104);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5022662, 3, 105);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5840470, 1, 106);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5987312, 2, 107);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5400828, 1, 108);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5972982, 1, 109);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5613363, 1, 110);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5666039, 3, 111);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5603397, 3, 112);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5692434, 2, 113);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5384317, 1, 114);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5959863, 3, 115);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5587190, 1, 116);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5731888, 3, 117);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5855848, 3, 118);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5371614, 3, 119);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5485222, 3, 120);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5849801, 1, 121);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5533990, 2, 122);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5777267, 1, 123);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5772507, 2, 124);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5956855, 1, 125);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5245930, 1, 126);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5818333, 1, 127);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5252936, 3, 128);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5663138, 2, 129);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5975037, 2, 130);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5967107, 2, 131);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5152598, 3, 132);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5130987, 3, 133);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5903882, 2, 134);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5592891, 2, 135);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5335176, 3, 136);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5186624, 1, 137);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5805910, 3, 138);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5607319, 1, 139);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5905031, 3, 140);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5893698, 3, 141);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5176354, 2, 142);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5516907, 1, 143);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5713617, 2, 144);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5041880, 1, 145);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5743042, 2, 146);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5960958, 1, 147);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5534829, 2, 148);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5253604, 3, 149);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5247705, 2, 150);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5062940, 2, 151);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5924929, 2, 152);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5662113, 1, 153);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5638425, 1, 154);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5173466, 1, 155);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5032668, 2, 156);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5363911, 3, 157);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5063830, 2, 158);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5833004, 1, 159);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5875225, 3, 160);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5098755, 3, 161);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5309686, 2, 162);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5032435, 3, 163);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5845590, 3, 164);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5860311, 2, 165);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5568485, 2, 166);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5099586, 2, 167);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5467020, 1, 168);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5390603, 3, 169);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5682671, 1, 170);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5789872, 2, 171);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5660194, 2, 172);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5761368, 1, 173);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5252122, 1, 174);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5409158, 3, 175);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5038679, 2, 176);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5495460, 3, 177);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5246517, 1, 178);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5046970, 3, 179);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5998349, 1, 180);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5931410, 2, 181);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5013210, 1, 182);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5248194, 3, 183);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5616372, 3, 184);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5784278, 1, 185);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5821234, 1, 186);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5701365, 1, 187);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5625392, 2, 188);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5105921, 2, 189);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5332067, 2, 190);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5771688, 1, 191);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5978529, 2, 192);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5097795, 2, 193);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5637779, 1, 194);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5956910, 1, 195);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5770832, 3, 196);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5479429, 1, 197);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5757187, 1, 198);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5594167, 2, 199);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5532791, 2, 200);
commit;
prompt 200 records committed...
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5365678, 3, 201);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5730641, 1, 202);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5395935, 3, 203);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5161554, 1, 204);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5855899, 1, 205);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5704069, 1, 206);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5643206, 3, 207);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5005461, 1, 208);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5788161, 2, 209);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5642911, 2, 210);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5114015, 1, 211);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5867521, 1, 212);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5361621, 3, 213);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5566545, 2, 214);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5075447, 1, 215);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5943463, 2, 216);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5580189, 3, 217);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5443867, 1, 218);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5917237, 2, 219);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5959980, 3, 220);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5720605, 2, 221);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5140607, 2, 222);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5255111, 2, 223);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5028791, 3, 224);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5278058, 2, 225);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5059047, 2, 226);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5581962, 3, 227);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5982158, 3, 228);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5092467, 2, 229);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5360734, 2, 230);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5795016, 2, 231);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5205461, 1, 232);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5608553, 1, 233);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5912831, 3, 234);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5177092, 1, 235);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5232476, 2, 236);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5472823, 1, 237);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5348725, 3, 238);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5660092, 3, 239);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5618969, 3, 240);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5920592, 1, 241);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5883517, 1, 242);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5448839, 3, 243);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5860241, 2, 244);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5656175, 3, 245);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5775022, 3, 246);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5333395, 2, 247);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5368239, 1, 248);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5179362, 1, 249);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5570899, 1, 250);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5267983, 2, 251);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5773858, 2, 252);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5761308, 2, 253);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5532541, 1, 254);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5044626, 1, 255);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5070078, 1, 256);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5522966, 2, 257);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5876346, 3, 258);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5139648, 3, 259);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5361527, 3, 260);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5319177, 3, 261);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5722999, 1, 262);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5061144, 2, 263);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5236131, 2, 264);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5381558, 2, 265);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5895380, 3, 266);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5775558, 3, 267);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5024449, 1, 268);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5923297, 1, 269);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5955742, 3, 270);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5041481, 1, 271);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5462333, 2, 272);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5158988, 2, 273);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5122755, 1, 274);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5728807, 1, 275);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5522530, 2, 276);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5442635, 1, 277);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5959074, 2, 278);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5451361, 1, 279);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5430859, 2, 280);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5476938, 3, 281);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5970031, 2, 282);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5091127, 3, 283);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5132580, 2, 284);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5797000, 1, 285);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5504085, 1, 286);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5042212, 2, 287);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5724582, 1, 288);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5981566, 2, 289);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5595658, 1, 290);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5252648, 2, 291);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5619021, 2, 292);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5294934, 1, 293);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5640978, 2, 294);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5392184, 3, 295);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5454023, 3, 296);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5712647, 1, 297);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5047551, 1, 298);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5724167, 2, 299);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5017088, 3, 300);
commit;
prompt 300 records committed...
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5534104, 2, 301);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5247898, 3, 302);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5509663, 2, 303);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5696807, 3, 304);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5035210, 1, 305);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5718168, 1, 306);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5021915, 1, 307);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5228531, 2, 308);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5864189, 1, 309);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5892261, 1, 310);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5499289, 1, 311);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5749610, 3, 312);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5133684, 3, 313);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5112087, 1, 314);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5614818, 3, 315);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5429820, 1, 316);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5412274, 2, 317);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5004579, 3, 318);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5290469, 1, 319);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5192621, 2, 320);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5068532, 3, 321);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5926089, 3, 322);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5934268, 1, 323);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5292848, 1, 324);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5670739, 2, 325);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5364794, 1, 326);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5428394, 1, 327);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5766487, 3, 328);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5395398, 1, 329);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5441731, 3, 330);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5446383, 2, 331);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5018131, 1, 332);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5647651, 2, 333);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5901097, 2, 334);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5927553, 3, 335);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5061771, 3, 336);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5346744, 2, 337);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5230425, 2, 338);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5786779, 2, 339);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5180517, 1, 340);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5579652, 1, 341);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5801267, 1, 342);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5187752, 1, 343);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5020904, 3, 344);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5575991, 1, 345);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5171019, 3, 346);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5957831, 1, 347);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5387383, 1, 348);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5207352, 2, 349);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5936491, 2, 350);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5972627, 1, 351);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5252637, 2, 352);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5464161, 2, 353);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5779871, 3, 354);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5588438, 2, 355);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5749341, 1, 356);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5613219, 1, 357);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5597693, 1, 358);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5450658, 3, 359);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5158995, 3, 360);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5989016, 2, 361);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5853433, 2, 362);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5256292, 2, 363);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5163444, 3, 364);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5621970, 1, 365);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5544368, 1, 366);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5298691, 1, 367);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5874730, 1, 368);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5156699, 1, 369);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5423321, 3, 370);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5872644, 2, 371);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5408882, 2, 372);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5763461, 2, 373);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5365903, 3, 374);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5867946, 3, 375);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5019276, 1, 376);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5995877, 3, 377);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5023900, 2, 378);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5129564, 1, 379);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5055193, 3, 380);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5798077, 1, 381);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5155409, 2, 382);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5412537, 1, 383);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5261197, 1, 384);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5114376, 1, 385);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5272361, 2, 386);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5009714, 2, 387);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5182959, 2, 388);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5804623, 1, 389);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5496049, 3, 390);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5380486, 2, 391);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5695146, 3, 392);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5818330, 1, 393);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5761294, 1, 394);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5358607, 2, 395);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('Y', 5917014, 1, 396);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5830718, 2, 397);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5759863, 3, 398);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5767242, 2, 399);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5031315, 3, 400);
commit;
prompt 400 records loaded
prompt Loading SELL...
insert into SELL (accid, sid)
values (1, 124);
insert into SELL (accid, sid)
values (1, 140);
insert into SELL (accid, sid)
values (5, 307);
insert into SELL (accid, sid)
values (7, 269);
insert into SELL (accid, sid)
values (7, 286);
insert into SELL (accid, sid)
values (8, 293);
insert into SELL (accid, sid)
values (8, 326);
insert into SELL (accid, sid)
values (10, 39);
insert into SELL (accid, sid)
values (10, 172);
insert into SELL (accid, sid)
values (11, 153);
insert into SELL (accid, sid)
values (11, 222);
insert into SELL (accid, sid)
values (13, 178);
insert into SELL (accid, sid)
values (13, 270);
insert into SELL (accid, sid)
values (14, 41);
insert into SELL (accid, sid)
values (14, 369);
insert into SELL (accid, sid)
values (15, 61);
insert into SELL (accid, sid)
values (16, 182);
insert into SELL (accid, sid)
values (17, 323);
insert into SELL (accid, sid)
values (19, 158);
insert into SELL (accid, sid)
values (20, 31);
insert into SELL (accid, sid)
values (22, 160);
insert into SELL (accid, sid)
values (22, 309);
insert into SELL (accid, sid)
values (22, 339);
insert into SELL (accid, sid)
values (25, 91);
insert into SELL (accid, sid)
values (26, 288);
insert into SELL (accid, sid)
values (26, 366);
insert into SELL (accid, sid)
values (29, 25);
insert into SELL (accid, sid)
values (30, 129);
insert into SELL (accid, sid)
values (30, 399);
insert into SELL (accid, sid)
values (32, 44);
insert into SELL (accid, sid)
values (32, 330);
insert into SELL (accid, sid)
values (32, 366);
insert into SELL (accid, sid)
values (33, 100);
insert into SELL (accid, sid)
values (34, 4);
insert into SELL (accid, sid)
values (37, 131);
insert into SELL (accid, sid)
values (39, 11);
insert into SELL (accid, sid)
values (39, 396);
insert into SELL (accid, sid)
values (41, 285);
insert into SELL (accid, sid)
values (43, 275);
insert into SELL (accid, sid)
values (44, 231);
insert into SELL (accid, sid)
values (45, 121);
insert into SELL (accid, sid)
values (46, 355);
insert into SELL (accid, sid)
values (47, 76);
insert into SELL (accid, sid)
values (47, 154);
insert into SELL (accid, sid)
values (48, 1);
insert into SELL (accid, sid)
values (49, 222);
insert into SELL (accid, sid)
values (50, 248);
insert into SELL (accid, sid)
values (51, 52);
insert into SELL (accid, sid)
values (53, 227);
insert into SELL (accid, sid)
values (53, 284);
insert into SELL (accid, sid)
values (55, 264);
insert into SELL (accid, sid)
values (55, 329);
insert into SELL (accid, sid)
values (57, 191);
insert into SELL (accid, sid)
values (57, 228);
insert into SELL (accid, sid)
values (59, 200);
insert into SELL (accid, sid)
values (60, 133);
insert into SELL (accid, sid)
values (60, 309);
insert into SELL (accid, sid)
values (62, 179);
insert into SELL (accid, sid)
values (63, 300);
insert into SELL (accid, sid)
values (65, 318);
insert into SELL (accid, sid)
values (66, 213);
insert into SELL (accid, sid)
values (66, 320);
insert into SELL (accid, sid)
values (68, 134);
insert into SELL (accid, sid)
values (69, 128);
insert into SELL (accid, sid)
values (71, 267);
insert into SELL (accid, sid)
values (74, 84);
insert into SELL (accid, sid)
values (74, 236);
insert into SELL (accid, sid)
values (74, 293);
insert into SELL (accid, sid)
values (75, 369);
insert into SELL (accid, sid)
values (78, 395);
insert into SELL (accid, sid)
values (79, 26);
insert into SELL (accid, sid)
values (79, 305);
insert into SELL (accid, sid)
values (80, 312);
insert into SELL (accid, sid)
values (83, 169);
insert into SELL (accid, sid)
values (85, 111);
insert into SELL (accid, sid)
values (85, 247);
insert into SELL (accid, sid)
values (86, 94);
insert into SELL (accid, sid)
values (86, 343);
insert into SELL (accid, sid)
values (86, 352);
insert into SELL (accid, sid)
values (90, 19);
insert into SELL (accid, sid)
values (90, 394);
insert into SELL (accid, sid)
values (91, 113);
insert into SELL (accid, sid)
values (91, 173);
insert into SELL (accid, sid)
values (91, 293);
insert into SELL (accid, sid)
values (92, 204);
insert into SELL (accid, sid)
values (94, 209);
insert into SELL (accid, sid)
values (96, 303);
insert into SELL (accid, sid)
values (97, 87);
insert into SELL (accid, sid)
values (97, 98);
insert into SELL (accid, sid)
values (97, 261);
insert into SELL (accid, sid)
values (99, 218);
insert into SELL (accid, sid)
values (100, 61);
insert into SELL (accid, sid)
values (100, 325);
insert into SELL (accid, sid)
values (102, 290);
insert into SELL (accid, sid)
values (103, 395);
insert into SELL (accid, sid)
values (104, 130);
insert into SELL (accid, sid)
values (105, 34);
insert into SELL (accid, sid)
values (105, 166);
insert into SELL (accid, sid)
values (105, 400);
insert into SELL (accid, sid)
values (106, 14);
commit;
prompt 100 records committed...
insert into SELL (accid, sid)
values (106, 239);
insert into SELL (accid, sid)
values (108, 48);
insert into SELL (accid, sid)
values (109, 30);
insert into SELL (accid, sid)
values (109, 318);
insert into SELL (accid, sid)
values (110, 90);
insert into SELL (accid, sid)
values (110, 244);
insert into SELL (accid, sid)
values (113, 87);
insert into SELL (accid, sid)
values (114, 48);
insert into SELL (accid, sid)
values (114, 360);
insert into SELL (accid, sid)
values (118, 60);
insert into SELL (accid, sid)
values (118, 110);
insert into SELL (accid, sid)
values (118, 173);
insert into SELL (accid, sid)
values (118, 251);
insert into SELL (accid, sid)
values (119, 65);
insert into SELL (accid, sid)
values (119, 105);
insert into SELL (accid, sid)
values (119, 121);
insert into SELL (accid, sid)
values (122, 17);
insert into SELL (accid, sid)
values (123, 72);
insert into SELL (accid, sid)
values (124, 242);
insert into SELL (accid, sid)
values (125, 80);
insert into SELL (accid, sid)
values (126, 81);
insert into SELL (accid, sid)
values (126, 185);
insert into SELL (accid, sid)
values (126, 318);
insert into SELL (accid, sid)
values (126, 322);
insert into SELL (accid, sid)
values (127, 142);
insert into SELL (accid, sid)
values (128, 15);
insert into SELL (accid, sid)
values (129, 94);
insert into SELL (accid, sid)
values (129, 236);
insert into SELL (accid, sid)
values (131, 294);
insert into SELL (accid, sid)
values (133, 121);
insert into SELL (accid, sid)
values (133, 185);
insert into SELL (accid, sid)
values (135, 101);
insert into SELL (accid, sid)
values (137, 23);
insert into SELL (accid, sid)
values (137, 295);
insert into SELL (accid, sid)
values (137, 383);
insert into SELL (accid, sid)
values (137, 387);
insert into SELL (accid, sid)
values (138, 90);
insert into SELL (accid, sid)
values (138, 279);
insert into SELL (accid, sid)
values (139, 257);
insert into SELL (accid, sid)
values (139, 358);
insert into SELL (accid, sid)
values (139, 386);
insert into SELL (accid, sid)
values (140, 76);
insert into SELL (accid, sid)
values (142, 59);
insert into SELL (accid, sid)
values (142, 230);
insert into SELL (accid, sid)
values (142, 339);
insert into SELL (accid, sid)
values (144, 300);
insert into SELL (accid, sid)
values (146, 400);
insert into SELL (accid, sid)
values (147, 22);
insert into SELL (accid, sid)
values (148, 57);
insert into SELL (accid, sid)
values (150, 47);
insert into SELL (accid, sid)
values (150, 363);
insert into SELL (accid, sid)
values (151, 399);
insert into SELL (accid, sid)
values (152, 321);
insert into SELL (accid, sid)
values (154, 2);
insert into SELL (accid, sid)
values (154, 384);
insert into SELL (accid, sid)
values (155, 28);
insert into SELL (accid, sid)
values (155, 366);
insert into SELL (accid, sid)
values (158, 15);
insert into SELL (accid, sid)
values (158, 17);
insert into SELL (accid, sid)
values (160, 248);
insert into SELL (accid, sid)
values (160, 254);
insert into SELL (accid, sid)
values (162, 53);
insert into SELL (accid, sid)
values (162, 183);
insert into SELL (accid, sid)
values (162, 207);
insert into SELL (accid, sid)
values (163, 213);
insert into SELL (accid, sid)
values (164, 35);
insert into SELL (accid, sid)
values (164, 264);
insert into SELL (accid, sid)
values (165, 285);
insert into SELL (accid, sid)
values (167, 285);
insert into SELL (accid, sid)
values (168, 156);
insert into SELL (accid, sid)
values (169, 234);
insert into SELL (accid, sid)
values (170, 283);
insert into SELL (accid, sid)
values (173, 9);
insert into SELL (accid, sid)
values (174, 39);
insert into SELL (accid, sid)
values (174, 371);
insert into SELL (accid, sid)
values (176, 100);
insert into SELL (accid, sid)
values (176, 159);
insert into SELL (accid, sid)
values (177, 14);
insert into SELL (accid, sid)
values (179, 30);
insert into SELL (accid, sid)
values (179, 31);
insert into SELL (accid, sid)
values (181, 20);
insert into SELL (accid, sid)
values (181, 163);
insert into SELL (accid, sid)
values (182, 26);
insert into SELL (accid, sid)
values (182, 99);
insert into SELL (accid, sid)
values (182, 138);
insert into SELL (accid, sid)
values (182, 209);
insert into SELL (accid, sid)
values (183, 52);
insert into SELL (accid, sid)
values (183, 125);
insert into SELL (accid, sid)
values (185, 65);
insert into SELL (accid, sid)
values (191, 18);
insert into SELL (accid, sid)
values (193, 96);
insert into SELL (accid, sid)
values (193, 184);
insert into SELL (accid, sid)
values (193, 316);
insert into SELL (accid, sid)
values (194, 377);
insert into SELL (accid, sid)
values (195, 399);
insert into SELL (accid, sid)
values (196, 141);
insert into SELL (accid, sid)
values (197, 334);
insert into SELL (accid, sid)
values (200, 188);
insert into SELL (accid, sid)
values (200, 308);
insert into SELL (accid, sid)
values (200, 315);
commit;
prompt 200 records committed...
insert into SELL (accid, sid)
values (201, 333);
insert into SELL (accid, sid)
values (202, 302);
insert into SELL (accid, sid)
values (203, 219);
insert into SELL (accid, sid)
values (203, 281);
insert into SELL (accid, sid)
values (205, 337);
insert into SELL (accid, sid)
values (207, 100);
insert into SELL (accid, sid)
values (208, 315);
insert into SELL (accid, sid)
values (209, 148);
insert into SELL (accid, sid)
values (209, 236);
insert into SELL (accid, sid)
values (210, 14);
insert into SELL (accid, sid)
values (210, 304);
insert into SELL (accid, sid)
values (211, 219);
insert into SELL (accid, sid)
values (211, 339);
insert into SELL (accid, sid)
values (211, 359);
insert into SELL (accid, sid)
values (214, 109);
insert into SELL (accid, sid)
values (215, 116);
insert into SELL (accid, sid)
values (215, 398);
insert into SELL (accid, sid)
values (216, 319);
insert into SELL (accid, sid)
values (218, 176);
insert into SELL (accid, sid)
values (219, 239);
insert into SELL (accid, sid)
values (219, 254);
insert into SELL (accid, sid)
values (219, 395);
insert into SELL (accid, sid)
values (220, 376);
insert into SELL (accid, sid)
values (221, 148);
insert into SELL (accid, sid)
values (223, 166);
insert into SELL (accid, sid)
values (225, 114);
insert into SELL (accid, sid)
values (226, 241);
insert into SELL (accid, sid)
values (226, 370);
insert into SELL (accid, sid)
values (227, 68);
insert into SELL (accid, sid)
values (227, 177);
insert into SELL (accid, sid)
values (227, 184);
insert into SELL (accid, sid)
values (227, 283);
insert into SELL (accid, sid)
values (227, 323);
insert into SELL (accid, sid)
values (228, 375);
insert into SELL (accid, sid)
values (229, 87);
insert into SELL (accid, sid)
values (230, 124);
insert into SELL (accid, sid)
values (230, 142);
insert into SELL (accid, sid)
values (231, 30);
insert into SELL (accid, sid)
values (233, 85);
insert into SELL (accid, sid)
values (234, 354);
insert into SELL (accid, sid)
values (235, 197);
insert into SELL (accid, sid)
values (236, 68);
insert into SELL (accid, sid)
values (236, 158);
insert into SELL (accid, sid)
values (236, 286);
insert into SELL (accid, sid)
values (236, 349);
insert into SELL (accid, sid)
values (237, 124);
insert into SELL (accid, sid)
values (241, 306);
insert into SELL (accid, sid)
values (242, 351);
insert into SELL (accid, sid)
values (244, 100);
insert into SELL (accid, sid)
values (244, 105);
insert into SELL (accid, sid)
values (244, 331);
insert into SELL (accid, sid)
values (244, 377);
insert into SELL (accid, sid)
values (244, 400);
insert into SELL (accid, sid)
values (245, 98);
insert into SELL (accid, sid)
values (247, 2);
insert into SELL (accid, sid)
values (247, 21);
insert into SELL (accid, sid)
values (247, 147);
insert into SELL (accid, sid)
values (249, 270);
insert into SELL (accid, sid)
values (252, 227);
insert into SELL (accid, sid)
values (253, 68);
insert into SELL (accid, sid)
values (254, 249);
insert into SELL (accid, sid)
values (254, 333);
insert into SELL (accid, sid)
values (255, 366);
insert into SELL (accid, sid)
values (256, 31);
insert into SELL (accid, sid)
values (256, 219);
insert into SELL (accid, sid)
values (258, 130);
insert into SELL (accid, sid)
values (258, 338);
insert into SELL (accid, sid)
values (260, 378);
insert into SELL (accid, sid)
values (261, 384);
insert into SELL (accid, sid)
values (261, 400);
insert into SELL (accid, sid)
values (263, 322);
insert into SELL (accid, sid)
values (267, 75);
insert into SELL (accid, sid)
values (267, 125);
insert into SELL (accid, sid)
values (268, 35);
insert into SELL (accid, sid)
values (268, 230);
insert into SELL (accid, sid)
values (269, 90);
insert into SELL (accid, sid)
values (270, 205);
insert into SELL (accid, sid)
values (272, 11);
insert into SELL (accid, sid)
values (272, 142);
insert into SELL (accid, sid)
values (272, 201);
insert into SELL (accid, sid)
values (273, 138);
insert into SELL (accid, sid)
values (274, 105);
insert into SELL (accid, sid)
values (274, 343);
insert into SELL (accid, sid)
values (277, 352);
insert into SELL (accid, sid)
values (278, 15);
insert into SELL (accid, sid)
values (278, 169);
insert into SELL (accid, sid)
values (278, 200);
insert into SELL (accid, sid)
values (278, 222);
insert into SELL (accid, sid)
values (278, 364);
insert into SELL (accid, sid)
values (279, 356);
insert into SELL (accid, sid)
values (281, 399);
insert into SELL (accid, sid)
values (284, 68);
insert into SELL (accid, sid)
values (284, 137);
insert into SELL (accid, sid)
values (284, 199);
insert into SELL (accid, sid)
values (285, 211);
insert into SELL (accid, sid)
values (287, 117);
insert into SELL (accid, sid)
values (288, 6);
insert into SELL (accid, sid)
values (288, 239);
insert into SELL (accid, sid)
values (288, 279);
insert into SELL (accid, sid)
values (288, 369);
commit;
prompt 300 records committed...
insert into SELL (accid, sid)
values (289, 290);
insert into SELL (accid, sid)
values (289, 314);
insert into SELL (accid, sid)
values (290, 152);
insert into SELL (accid, sid)
values (291, 21);
insert into SELL (accid, sid)
values (293, 206);
insert into SELL (accid, sid)
values (295, 361);
insert into SELL (accid, sid)
values (299, 131);
insert into SELL (accid, sid)
values (299, 174);
insert into SELL (accid, sid)
values (299, 369);
insert into SELL (accid, sid)
values (300, 133);
insert into SELL (accid, sid)
values (302, 5);
insert into SELL (accid, sid)
values (303, 42);
insert into SELL (accid, sid)
values (306, 191);
insert into SELL (accid, sid)
values (307, 299);
insert into SELL (accid, sid)
values (308, 239);
insert into SELL (accid, sid)
values (309, 88);
insert into SELL (accid, sid)
values (309, 377);
insert into SELL (accid, sid)
values (311, 129);
insert into SELL (accid, sid)
values (312, 106);
insert into SELL (accid, sid)
values (312, 136);
insert into SELL (accid, sid)
values (313, 276);
insert into SELL (accid, sid)
values (314, 195);
insert into SELL (accid, sid)
values (314, 393);
insert into SELL (accid, sid)
values (315, 212);
insert into SELL (accid, sid)
values (317, 37);
insert into SELL (accid, sid)
values (317, 386);
insert into SELL (accid, sid)
values (318, 96);
insert into SELL (accid, sid)
values (320, 67);
insert into SELL (accid, sid)
values (320, 103);
insert into SELL (accid, sid)
values (320, 198);
insert into SELL (accid, sid)
values (322, 241);
insert into SELL (accid, sid)
values (323, 112);
insert into SELL (accid, sid)
values (323, 379);
insert into SELL (accid, sid)
values (325, 33);
insert into SELL (accid, sid)
values (329, 385);
insert into SELL (accid, sid)
values (330, 7);
insert into SELL (accid, sid)
values (330, 83);
insert into SELL (accid, sid)
values (330, 359);
insert into SELL (accid, sid)
values (331, 71);
insert into SELL (accid, sid)
values (334, 58);
insert into SELL (accid, sid)
values (335, 91);
insert into SELL (accid, sid)
values (335, 232);
insert into SELL (accid, sid)
values (335, 341);
insert into SELL (accid, sid)
values (336, 137);
insert into SELL (accid, sid)
values (336, 224);
insert into SELL (accid, sid)
values (337, 288);
insert into SELL (accid, sid)
values (337, 344);
insert into SELL (accid, sid)
values (338, 152);
insert into SELL (accid, sid)
values (338, 162);
insert into SELL (accid, sid)
values (338, 279);
insert into SELL (accid, sid)
values (340, 106);
insert into SELL (accid, sid)
values (341, 106);
insert into SELL (accid, sid)
values (342, 13);
insert into SELL (accid, sid)
values (342, 181);
insert into SELL (accid, sid)
values (343, 170);
insert into SELL (accid, sid)
values (348, 219);
insert into SELL (accid, sid)
values (351, 363);
insert into SELL (accid, sid)
values (351, 394);
insert into SELL (accid, sid)
values (352, 281);
insert into SELL (accid, sid)
values (352, 293);
insert into SELL (accid, sid)
values (355, 76);
insert into SELL (accid, sid)
values (355, 93);
insert into SELL (accid, sid)
values (356, 393);
insert into SELL (accid, sid)
values (358, 194);
insert into SELL (accid, sid)
values (358, 305);
insert into SELL (accid, sid)
values (359, 193);
insert into SELL (accid, sid)
values (359, 271);
insert into SELL (accid, sid)
values (362, 10);
insert into SELL (accid, sid)
values (366, 26);
insert into SELL (accid, sid)
values (367, 168);
insert into SELL (accid, sid)
values (368, 240);
insert into SELL (accid, sid)
values (368, 292);
insert into SELL (accid, sid)
values (368, 388);
insert into SELL (accid, sid)
values (369, 272);
insert into SELL (accid, sid)
values (370, 35);
insert into SELL (accid, sid)
values (370, 82);
insert into SELL (accid, sid)
values (372, 112);
insert into SELL (accid, sid)
values (373, 112);
insert into SELL (accid, sid)
values (374, 101);
insert into SELL (accid, sid)
values (374, 211);
insert into SELL (accid, sid)
values (378, 24);
insert into SELL (accid, sid)
values (378, 168);
insert into SELL (accid, sid)
values (380, 319);
insert into SELL (accid, sid)
values (381, 253);
insert into SELL (accid, sid)
values (381, 316);
insert into SELL (accid, sid)
values (382, 372);
insert into SELL (accid, sid)
values (383, 162);
insert into SELL (accid, sid)
values (384, 159);
insert into SELL (accid, sid)
values (385, 184);
insert into SELL (accid, sid)
values (387, 114);
insert into SELL (accid, sid)
values (387, 355);
insert into SELL (accid, sid)
values (387, 364);
insert into SELL (accid, sid)
values (390, 114);
insert into SELL (accid, sid)
values (391, 124);
insert into SELL (accid, sid)
values (394, 146);
insert into SELL (accid, sid)
values (395, 136);
insert into SELL (accid, sid)
values (395, 331);
insert into SELL (accid, sid)
values (397, 14);
insert into SELL (accid, sid)
values (397, 20);
insert into SELL (accid, sid)
values (400, 62);
commit;
prompt 400 records loaded
prompt Loading TREATMENT...
insert into TREATMENT (tid, tname, tprice, tduration)
values (1, 'General check', 311, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (2, 'Surgery', 588, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (3, 'General check', 720, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (4, 'General check', 643, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (5, 'Vaccination', 321, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (6, 'General check', 578, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (7, 'General check', 181, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (8, 'General check', 274, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (9, 'Vaccination', 665, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (10, 'Surgery', 583, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (11, 'General check', 766, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (12, 'Surgery', 616, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (13, 'General check', 487, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (14, 'General check', 681, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (15, 'Surgery', 677, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (16, 'Surgery', 691, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (17, 'Surgery', 739, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (18, 'General check', 372, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (19, 'Vaccination', 577, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (20, 'Surgery', 152, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (21, 'General check', 460, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (22, 'General check', 782, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (23, 'Surgery', 777, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (24, 'Surgery', 560, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (25, 'Surgery', 473, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (26, 'Vaccination', 438, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (27, 'Vaccination', 263, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (28, 'General check', 141, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (29, 'Vaccination', 777, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (30, 'Vaccination', 620, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (31, 'Surgery', 743, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (32, 'Surgery', 586, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (33, 'Surgery', 472, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (34, 'Surgery', 705, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (35, 'Vaccination', 127, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (36, 'General check', 429, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (37, 'General check', 162, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (38, 'General check', 577, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (39, 'Surgery', 667, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (40, 'Surgery', 221, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (41, 'Vaccination', 612, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (42, 'General check', 674, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (43, 'Surgery', 432, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (44, 'Surgery', 712, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (45, 'Surgery', 734, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (46, 'Vaccination', 262, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (47, 'Surgery', 691, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (48, 'Surgery', 669, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (49, 'General check', 276, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (50, 'Vaccination', 306, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (51, 'Surgery', 325, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (52, 'Vaccination', 421, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (53, 'Surgery', 106, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (54, 'Vaccination', 639, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (55, 'General check', 397, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (56, 'Surgery', 599, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (57, 'Vaccination', 204, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (58, 'Vaccination', 252, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (59, 'Vaccination', 141, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (60, 'General check', 406, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (61, 'General check', 536, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (62, 'Vaccination', 597, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (63, 'Vaccination', 164, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (64, 'Surgery', 649, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (65, 'Vaccination', 358, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (66, 'Vaccination', 716, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (67, 'General check', 764, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (68, 'General check', 106, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (69, 'General check', 769, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (70, 'Surgery', 574, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (71, 'General check', 296, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (72, 'Vaccination', 618, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (73, 'Vaccination', 111, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (74, 'General check', 368, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (75, 'Surgery', 767, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (76, 'General check', 719, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (77, 'Vaccination', 710, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (78, 'Vaccination', 607, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (79, 'Vaccination', 715, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (80, 'Surgery', 557, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (81, 'Surgery', 758, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (82, 'Vaccination', 206, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (83, 'General check', 415, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (84, 'General check', 361, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (85, 'Vaccination', 721, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (86, 'Vaccination', 543, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (87, 'General check', 524, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (88, 'General check', 153, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (89, 'General check', 527, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (90, 'General check', 455, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (91, 'General check', 638, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (92, 'Surgery', 124, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (93, 'Vaccination', 422, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (94, 'Surgery', 285, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (95, 'Surgery', 243, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (96, 'Surgery', 607, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (97, 'Vaccination', 341, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (98, 'General check', 308, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (99, 'Vaccination', 474, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (100, 'Vaccination', 727, 4);
commit;
prompt 100 records committed...
insert into TREATMENT (tid, tname, tprice, tduration)
values (101, 'General check', 525, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (102, 'Vaccination', 781, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (103, 'Surgery', 410, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (104, 'Surgery', 603, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (105, 'Vaccination', 666, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (106, 'Vaccination', 516, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (107, 'Surgery', 679, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (108, 'General check', 249, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (109, 'Vaccination', 676, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (110, 'Surgery', 158, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (111, 'Surgery', 746, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (112, 'Surgery', 372, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (113, 'General check', 699, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (114, 'Vaccination', 421, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (115, 'Surgery', 205, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (116, 'Vaccination', 680, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (117, 'Surgery', 323, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (118, 'Vaccination', 408, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (119, 'Vaccination', 601, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (120, 'Surgery', 554, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (121, 'Vaccination', 564, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (122, 'General check', 632, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (123, 'Vaccination', 252, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (124, 'Surgery', 137, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (125, 'General check', 502, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (126, 'Surgery', 101, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (127, 'Surgery', 656, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (128, 'Vaccination', 747, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (129, 'General check', 233, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (130, 'General check', 140, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (131, 'Vaccination', 482, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (132, 'General check', 201, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (133, 'General check', 235, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (134, 'General check', 459, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (135, 'Surgery', 302, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (136, 'General check', 552, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (137, 'General check', 767, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (138, 'Surgery', 489, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (139, 'Vaccination', 706, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (140, 'General check', 323, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (141, 'General check', 157, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (142, 'General check', 259, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (143, 'General check', 487, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (144, 'General check', 317, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (145, 'Vaccination', 159, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (146, 'Vaccination', 171, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (147, 'Vaccination', 335, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (148, 'Surgery', 345, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (149, 'General check', 752, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (150, 'General check', 594, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (151, 'Surgery', 124, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (152, 'General check', 169, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (153, 'Surgery', 627, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (154, 'Vaccination', 291, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (155, 'Vaccination', 512, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (156, 'Surgery', 598, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (157, 'Vaccination', 112, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (158, 'Vaccination', 563, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (159, 'General check', 782, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (160, 'Vaccination', 136, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (161, 'Vaccination', 691, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (162, 'Vaccination', 448, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (163, 'General check', 492, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (164, 'Surgery', 305, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (165, 'General check', 323, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (166, 'General check', 720, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (167, 'Surgery', 725, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (168, 'Vaccination', 675, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (169, 'Vaccination', 797, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (170, 'General check', 282, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (171, 'Surgery', 214, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (172, 'Vaccination', 575, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (173, 'Surgery', 751, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (174, 'General check', 250, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (175, 'Surgery', 747, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (176, 'Vaccination', 783, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (177, 'Vaccination', 741, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (178, 'General check', 353, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (179, 'General check', 625, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (180, 'Surgery', 787, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (181, 'Surgery', 661, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (182, 'Surgery', 509, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (183, 'Surgery', 750, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (184, 'Vaccination', 703, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (185, 'Surgery', 121, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (186, 'Surgery', 264, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (187, 'Surgery', 373, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (188, 'General check', 267, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (189, 'Surgery', 656, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (190, 'Vaccination', 184, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (191, 'Surgery', 405, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (192, 'General check', 134, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (193, 'Vaccination', 410, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (194, 'Surgery', 337, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (195, 'Vaccination', 789, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (196, 'Surgery', 372, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (197, 'Vaccination', 125, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (198, 'Vaccination', 319, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (199, 'Surgery', 381, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (200, 'General check', 320, 4);
commit;
prompt 200 records committed...
insert into TREATMENT (tid, tname, tprice, tduration)
values (201, 'Vaccination', 233, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (202, 'Surgery', 516, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (203, 'Vaccination', 204, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (204, 'Vaccination', 648, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (205, 'General check', 515, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (206, 'General check', 271, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (207, 'General check', 635, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (208, 'General check', 240, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (209, 'Surgery', 685, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (210, 'General check', 735, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (211, 'Vaccination', 771, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (212, 'General check', 294, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (213, 'Surgery', 422, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (214, 'General check', 712, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (215, 'Surgery', 681, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (216, 'General check', 195, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (217, 'General check', 345, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (218, 'Vaccination', 610, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (219, 'General check', 425, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (220, 'Surgery', 722, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (221, 'Vaccination', 703, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (222, 'Surgery', 379, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (223, 'Surgery', 416, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (224, 'Vaccination', 183, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (225, 'Surgery', 329, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (226, 'Surgery', 588, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (227, 'Vaccination', 133, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (228, 'Vaccination', 799, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (229, 'Vaccination', 697, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (230, 'Vaccination', 567, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (231, 'General check', 130, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (232, 'Vaccination', 770, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (233, 'General check', 446, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (234, 'Surgery', 332, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (235, 'Vaccination', 501, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (236, 'General check', 195, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (237, 'Vaccination', 280, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (238, 'General check', 558, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (239, 'General check', 370, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (240, 'Surgery', 152, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (241, 'General check', 479, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (242, 'General check', 659, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (243, 'Surgery', 353, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (244, 'Surgery', 319, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (245, 'Vaccination', 726, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (246, 'Surgery', 107, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (247, 'General check', 280, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (248, 'General check', 722, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (249, 'Surgery', 289, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (250, 'Vaccination', 605, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (251, 'Vaccination', 785, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (252, 'Vaccination', 745, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (253, 'General check', 189, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (254, 'Vaccination', 559, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (255, 'Surgery', 709, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (256, 'Surgery', 611, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (257, 'Surgery', 132, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (258, 'Vaccination', 153, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (259, 'Vaccination', 671, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (260, 'General check', 240, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (261, 'Vaccination', 612, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (262, 'Surgery', 416, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (263, 'General check', 187, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (264, 'Vaccination', 342, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (265, 'Vaccination', 494, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (266, 'Vaccination', 197, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (267, 'Vaccination', 461, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (268, 'General check', 284, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (269, 'Surgery', 142, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (270, 'Vaccination', 749, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (271, 'Surgery', 574, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (272, 'Vaccination', 766, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (273, 'Vaccination', 749, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (274, 'General check', 440, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (275, 'General check', 229, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (276, 'Surgery', 573, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (277, 'Vaccination', 478, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (278, 'General check', 151, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (279, 'Surgery', 665, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (280, 'Surgery', 695, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (281, 'Vaccination', 133, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (282, 'Vaccination', 151, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (283, 'General check', 396, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (284, 'Vaccination', 533, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (285, 'Vaccination', 421, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (286, 'Vaccination', 234, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (287, 'Vaccination', 182, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (288, 'General check', 533, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (289, 'General check', 341, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (290, 'Surgery', 363, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (291, 'Surgery', 223, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (292, 'Surgery', 516, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (293, 'Surgery', 159, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (294, 'General check', 671, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (295, 'General check', 120, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (296, 'Vaccination', 693, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (297, 'Vaccination', 632, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (298, 'Vaccination', 500, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (299, 'General check', 373, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (300, 'General check', 590, 2);
commit;
prompt 300 records committed...
insert into TREATMENT (tid, tname, tprice, tduration)
values (301, 'General check', 164, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (302, 'Surgery', 577, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (303, 'General check', 171, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (304, 'Vaccination', 411, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (305, 'General check', 165, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (306, 'Surgery', 668, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (307, 'Surgery', 437, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (308, 'Vaccination', 429, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (309, 'Surgery', 301, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (310, 'Vaccination', 646, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (311, 'General check', 205, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (312, 'Surgery', 461, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (313, 'General check', 554, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (314, 'General check', 478, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (315, 'Surgery', 539, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (316, 'Surgery', 293, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (317, 'General check', 568, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (318, 'Vaccination', 414, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (319, 'General check', 239, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (320, 'Surgery', 649, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (321, 'General check', 221, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (322, 'Vaccination', 716, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (323, 'Surgery', 694, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (324, 'General check', 301, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (325, 'Vaccination', 647, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (326, 'General check', 483, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (327, 'Surgery', 254, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (328, 'Vaccination', 511, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (329, 'Surgery', 203, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (330, 'Surgery', 152, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (331, 'General check', 751, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (332, 'Surgery', 800, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (333, 'General check', 375, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (334, 'General check', 576, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (335, 'General check', 593, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (336, 'Vaccination', 409, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (337, 'General check', 341, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (338, 'General check', 104, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (339, 'Surgery', 194, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (340, 'General check', 320, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (341, 'Vaccination', 437, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (342, 'General check', 442, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (343, 'General check', 128, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (344, 'Vaccination', 204, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (345, 'General check', 615, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (346, 'Vaccination', 633, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (347, 'General check', 617, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (348, 'Vaccination', 243, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (349, 'Vaccination', 470, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (350, 'Surgery', 104, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (351, 'General check', 589, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (352, 'Surgery', 444, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (353, 'Surgery', 583, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (354, 'General check', 286, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (355, 'General check', 364, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (356, 'Surgery', 739, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (357, 'General check', 198, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (358, 'General check', 153, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (359, 'Vaccination', 264, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (360, 'General check', 425, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (361, 'General check', 447, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (362, 'General check', 793, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (363, 'Surgery', 241, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (364, 'General check', 612, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (365, 'General check', 774, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (366, 'Vaccination', 676, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (367, 'Surgery', 176, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (368, 'Vaccination', 162, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (369, 'Vaccination', 229, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (370, 'Vaccination', 587, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (371, 'Surgery', 697, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (372, 'General check', 343, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (373, 'Vaccination', 743, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (374, 'Surgery', 239, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (375, 'General check', 313, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (376, 'Surgery', 646, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (377, 'Surgery', 576, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (378, 'Vaccination', 289, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (379, 'General check', 267, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (380, 'Surgery', 612, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (381, 'Surgery', 634, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (382, 'Surgery', 513, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (383, 'Surgery', 643, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (384, 'General check', 293, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (385, 'General check', 275, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (386, 'Vaccination', 523, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (387, 'General check', 196, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (388, 'Vaccination', 526, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (389, 'Surgery', 756, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (390, 'Vaccination', 431, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (391, 'Surgery', 586, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (392, 'Surgery', 196, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (393, 'Surgery', 291, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (394, 'General check', 480, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (395, 'Vaccination', 520, 3);
insert into TREATMENT (tid, tname, tprice, tduration)
values (396, 'Surgery', 437, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (397, 'Surgery', 623, 1);
insert into TREATMENT (tid, tname, tprice, tduration)
values (398, 'Surgery', 208, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (399, 'General check', 460, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (400, 'Vaccination', 662, 3);
commit;
prompt 400 records loaded
prompt Loading TREATMENTTYPE...
insert into TREATMENTTYPE (appid, tid)
values (1, 58);
insert into TREATMENTTYPE (appid, tid)
values (1, 309);
insert into TREATMENTTYPE (appid, tid)
values (1, 322);
insert into TREATMENTTYPE (appid, tid)
values (2, 26);
insert into TREATMENTTYPE (appid, tid)
values (2, 118);
insert into TREATMENTTYPE (appid, tid)
values (2, 147);
insert into TREATMENTTYPE (appid, tid)
values (4, 179);
insert into TREATMENTTYPE (appid, tid)
values (5, 127);
insert into TREATMENTTYPE (appid, tid)
values (5, 281);
insert into TREATMENTTYPE (appid, tid)
values (5, 390);
insert into TREATMENTTYPE (appid, tid)
values (6, 191);
insert into TREATMENTTYPE (appid, tid)
values (9, 15);
insert into TREATMENTTYPE (appid, tid)
values (11, 164);
insert into TREATMENTTYPE (appid, tid)
values (13, 342);
insert into TREATMENTTYPE (appid, tid)
values (14, 145);
insert into TREATMENTTYPE (appid, tid)
values (14, 150);
insert into TREATMENTTYPE (appid, tid)
values (15, 194);
insert into TREATMENTTYPE (appid, tid)
values (15, 203);
insert into TREATMENTTYPE (appid, tid)
values (16, 75);
insert into TREATMENTTYPE (appid, tid)
values (16, 89);
insert into TREATMENTTYPE (appid, tid)
values (16, 126);
insert into TREATMENTTYPE (appid, tid)
values (18, 31);
insert into TREATMENTTYPE (appid, tid)
values (18, 179);
insert into TREATMENTTYPE (appid, tid)
values (18, 218);
insert into TREATMENTTYPE (appid, tid)
values (18, 251);
insert into TREATMENTTYPE (appid, tid)
values (19, 58);
insert into TREATMENTTYPE (appid, tid)
values (19, 113);
insert into TREATMENTTYPE (appid, tid)
values (19, 289);
insert into TREATMENTTYPE (appid, tid)
values (20, 160);
insert into TREATMENTTYPE (appid, tid)
values (20, 182);
insert into TREATMENTTYPE (appid, tid)
values (20, 281);
insert into TREATMENTTYPE (appid, tid)
values (21, 121);
insert into TREATMENTTYPE (appid, tid)
values (23, 353);
insert into TREATMENTTYPE (appid, tid)
values (24, 136);
insert into TREATMENTTYPE (appid, tid)
values (25, 14);
insert into TREATMENTTYPE (appid, tid)
values (26, 4);
insert into TREATMENTTYPE (appid, tid)
values (26, 233);
insert into TREATMENTTYPE (appid, tid)
values (26, 370);
insert into TREATMENTTYPE (appid, tid)
values (28, 28);
insert into TREATMENTTYPE (appid, tid)
values (29, 146);
insert into TREATMENTTYPE (appid, tid)
values (30, 72);
insert into TREATMENTTYPE (appid, tid)
values (30, 273);
insert into TREATMENTTYPE (appid, tid)
values (31, 201);
insert into TREATMENTTYPE (appid, tid)
values (32, 143);
insert into TREATMENTTYPE (appid, tid)
values (32, 325);
insert into TREATMENTTYPE (appid, tid)
values (33, 140);
insert into TREATMENTTYPE (appid, tid)
values (35, 63);
insert into TREATMENTTYPE (appid, tid)
values (35, 399);
insert into TREATMENTTYPE (appid, tid)
values (38, 26);
insert into TREATMENTTYPE (appid, tid)
values (39, 243);
insert into TREATMENTTYPE (appid, tid)
values (39, 256);
insert into TREATMENTTYPE (appid, tid)
values (41, 183);
insert into TREATMENTTYPE (appid, tid)
values (42, 90);
insert into TREATMENTTYPE (appid, tid)
values (43, 372);
insert into TREATMENTTYPE (appid, tid)
values (45, 85);
insert into TREATMENTTYPE (appid, tid)
values (48, 169);
insert into TREATMENTTYPE (appid, tid)
values (51, 273);
insert into TREATMENTTYPE (appid, tid)
values (52, 218);
insert into TREATMENTTYPE (appid, tid)
values (54, 92);
insert into TREATMENTTYPE (appid, tid)
values (54, 355);
insert into TREATMENTTYPE (appid, tid)
values (55, 287);
insert into TREATMENTTYPE (appid, tid)
values (57, 127);
insert into TREATMENTTYPE (appid, tid)
values (58, 241);
insert into TREATMENTTYPE (appid, tid)
values (59, 131);
insert into TREATMENTTYPE (appid, tid)
values (59, 263);
insert into TREATMENTTYPE (appid, tid)
values (59, 270);
insert into TREATMENTTYPE (appid, tid)
values (59, 321);
insert into TREATMENTTYPE (appid, tid)
values (60, 206);
insert into TREATMENTTYPE (appid, tid)
values (62, 378);
insert into TREATMENTTYPE (appid, tid)
values (64, 129);
insert into TREATMENTTYPE (appid, tid)
values (65, 389);
insert into TREATMENTTYPE (appid, tid)
values (66, 27);
insert into TREATMENTTYPE (appid, tid)
values (66, 193);
insert into TREATMENTTYPE (appid, tid)
values (68, 299);
insert into TREATMENTTYPE (appid, tid)
values (69, 212);
insert into TREATMENTTYPE (appid, tid)
values (71, 201);
insert into TREATMENTTYPE (appid, tid)
values (73, 43);
insert into TREATMENTTYPE (appid, tid)
values (73, 119);
insert into TREATMENTTYPE (appid, tid)
values (76, 25);
insert into TREATMENTTYPE (appid, tid)
values (76, 117);
insert into TREATMENTTYPE (appid, tid)
values (76, 282);
insert into TREATMENTTYPE (appid, tid)
values (78, 34);
insert into TREATMENTTYPE (appid, tid)
values (79, 173);
insert into TREATMENTTYPE (appid, tid)
values (79, 368);
insert into TREATMENTTYPE (appid, tid)
values (80, 19);
insert into TREATMENTTYPE (appid, tid)
values (80, 66);
insert into TREATMENTTYPE (appid, tid)
values (82, 276);
insert into TREATMENTTYPE (appid, tid)
values (84, 361);
insert into TREATMENTTYPE (appid, tid)
values (87, 7);
insert into TREATMENTTYPE (appid, tid)
values (87, 24);
insert into TREATMENTTYPE (appid, tid)
values (87, 220);
insert into TREATMENTTYPE (appid, tid)
values (87, 338);
insert into TREATMENTTYPE (appid, tid)
values (88, 133);
insert into TREATMENTTYPE (appid, tid)
values (90, 330);
insert into TREATMENTTYPE (appid, tid)
values (91, 16);
insert into TREATMENTTYPE (appid, tid)
values (93, 141);
insert into TREATMENTTYPE (appid, tid)
values (94, 319);
insert into TREATMENTTYPE (appid, tid)
values (95, 252);
insert into TREATMENTTYPE (appid, tid)
values (95, 349);
insert into TREATMENTTYPE (appid, tid)
values (96, 331);
commit;
prompt 100 records committed...
insert into TREATMENTTYPE (appid, tid)
values (98, 112);
insert into TREATMENTTYPE (appid, tid)
values (99, 326);
insert into TREATMENTTYPE (appid, tid)
values (102, 301);
insert into TREATMENTTYPE (appid, tid)
values (102, 327);
insert into TREATMENTTYPE (appid, tid)
values (102, 344);
insert into TREATMENTTYPE (appid, tid)
values (104, 6);
insert into TREATMENTTYPE (appid, tid)
values (105, 268);
insert into TREATMENTTYPE (appid, tid)
values (106, 202);
insert into TREATMENTTYPE (appid, tid)
values (107, 74);
insert into TREATMENTTYPE (appid, tid)
values (107, 172);
insert into TREATMENTTYPE (appid, tid)
values (109, 325);
insert into TREATMENTTYPE (appid, tid)
values (109, 367);
insert into TREATMENTTYPE (appid, tid)
values (110, 248);
insert into TREATMENTTYPE (appid, tid)
values (110, 362);
insert into TREATMENTTYPE (appid, tid)
values (111, 30);
insert into TREATMENTTYPE (appid, tid)
values (111, 82);
insert into TREATMENTTYPE (appid, tid)
values (111, 251);
insert into TREATMENTTYPE (appid, tid)
values (113, 369);
insert into TREATMENTTYPE (appid, tid)
values (114, 46);
insert into TREATMENTTYPE (appid, tid)
values (114, 238);
insert into TREATMENTTYPE (appid, tid)
values (114, 267);
insert into TREATMENTTYPE (appid, tid)
values (115, 184);
insert into TREATMENTTYPE (appid, tid)
values (119, 112);
insert into TREATMENTTYPE (appid, tid)
values (120, 152);
insert into TREATMENTTYPE (appid, tid)
values (123, 221);
insert into TREATMENTTYPE (appid, tid)
values (124, 250);
insert into TREATMENTTYPE (appid, tid)
values (124, 255);
insert into TREATMENTTYPE (appid, tid)
values (125, 49);
insert into TREATMENTTYPE (appid, tid)
values (126, 1);
insert into TREATMENTTYPE (appid, tid)
values (126, 175);
insert into TREATMENTTYPE (appid, tid)
values (126, 262);
insert into TREATMENTTYPE (appid, tid)
values (128, 89);
insert into TREATMENTTYPE (appid, tid)
values (129, 60);
insert into TREATMENTTYPE (appid, tid)
values (129, 373);
insert into TREATMENTTYPE (appid, tid)
values (132, 133);
insert into TREATMENTTYPE (appid, tid)
values (133, 289);
insert into TREATMENTTYPE (appid, tid)
values (135, 161);
insert into TREATMENTTYPE (appid, tid)
values (135, 322);
insert into TREATMENTTYPE (appid, tid)
values (136, 281);
insert into TREATMENTTYPE (appid, tid)
values (137, 77);
insert into TREATMENTTYPE (appid, tid)
values (145, 255);
insert into TREATMENTTYPE (appid, tid)
values (145, 273);
insert into TREATMENTTYPE (appid, tid)
values (147, 327);
insert into TREATMENTTYPE (appid, tid)
values (148, 194);
insert into TREATMENTTYPE (appid, tid)
values (150, 15);
insert into TREATMENTTYPE (appid, tid)
values (153, 90);
insert into TREATMENTTYPE (appid, tid)
values (154, 312);
insert into TREATMENTTYPE (appid, tid)
values (156, 314);
insert into TREATMENTTYPE (appid, tid)
values (157, 270);
insert into TREATMENTTYPE (appid, tid)
values (157, 315);
insert into TREATMENTTYPE (appid, tid)
values (158, 69);
insert into TREATMENTTYPE (appid, tid)
values (159, 142);
insert into TREATMENTTYPE (appid, tid)
values (165, 226);
insert into TREATMENTTYPE (appid, tid)
values (165, 332);
insert into TREATMENTTYPE (appid, tid)
values (166, 28);
insert into TREATMENTTYPE (appid, tid)
values (166, 294);
insert into TREATMENTTYPE (appid, tid)
values (167, 243);
insert into TREATMENTTYPE (appid, tid)
values (169, 20);
insert into TREATMENTTYPE (appid, tid)
values (170, 378);
insert into TREATMENTTYPE (appid, tid)
values (171, 254);
insert into TREATMENTTYPE (appid, tid)
values (172, 387);
insert into TREATMENTTYPE (appid, tid)
values (174, 131);
insert into TREATMENTTYPE (appid, tid)
values (175, 247);
insert into TREATMENTTYPE (appid, tid)
values (176, 380);
insert into TREATMENTTYPE (appid, tid)
values (177, 160);
insert into TREATMENTTYPE (appid, tid)
values (177, 312);
insert into TREATMENTTYPE (appid, tid)
values (178, 193);
insert into TREATMENTTYPE (appid, tid)
values (178, 354);
insert into TREATMENTTYPE (appid, tid)
values (178, 367);
insert into TREATMENTTYPE (appid, tid)
values (179, 162);
insert into TREATMENTTYPE (appid, tid)
values (179, 395);
insert into TREATMENTTYPE (appid, tid)
values (180, 308);
insert into TREATMENTTYPE (appid, tid)
values (182, 33);
insert into TREATMENTTYPE (appid, tid)
values (182, 40);
insert into TREATMENTTYPE (appid, tid)
values (182, 88);
insert into TREATMENTTYPE (appid, tid)
values (182, 286);
insert into TREATMENTTYPE (appid, tid)
values (184, 239);
insert into TREATMENTTYPE (appid, tid)
values (185, 156);
insert into TREATMENTTYPE (appid, tid)
values (185, 266);
insert into TREATMENTTYPE (appid, tid)
values (186, 291);
insert into TREATMENTTYPE (appid, tid)
values (187, 82);
insert into TREATMENTTYPE (appid, tid)
values (187, 134);
insert into TREATMENTTYPE (appid, tid)
values (187, 224);
insert into TREATMENTTYPE (appid, tid)
values (188, 377);
insert into TREATMENTTYPE (appid, tid)
values (189, 3);
insert into TREATMENTTYPE (appid, tid)
values (193, 265);
insert into TREATMENTTYPE (appid, tid)
values (193, 335);
insert into TREATMENTTYPE (appid, tid)
values (194, 302);
insert into TREATMENTTYPE (appid, tid)
values (197, 66);
insert into TREATMENTTYPE (appid, tid)
values (198, 228);
insert into TREATMENTTYPE (appid, tid)
values (199, 105);
insert into TREATMENTTYPE (appid, tid)
values (200, 374);
insert into TREATMENTTYPE (appid, tid)
values (200, 378);
insert into TREATMENTTYPE (appid, tid)
values (203, 9);
insert into TREATMENTTYPE (appid, tid)
values (203, 250);
insert into TREATMENTTYPE (appid, tid)
values (204, 223);
insert into TREATMENTTYPE (appid, tid)
values (205, 209);
insert into TREATMENTTYPE (appid, tid)
values (205, 335);
insert into TREATMENTTYPE (appid, tid)
values (206, 173);
insert into TREATMENTTYPE (appid, tid)
values (206, 207);
commit;
prompt 200 records committed...
insert into TREATMENTTYPE (appid, tid)
values (206, 214);
insert into TREATMENTTYPE (appid, tid)
values (207, 176);
insert into TREATMENTTYPE (appid, tid)
values (207, 237);
insert into TREATMENTTYPE (appid, tid)
values (207, 365);
insert into TREATMENTTYPE (appid, tid)
values (208, 154);
insert into TREATMENTTYPE (appid, tid)
values (209, 33);
insert into TREATMENTTYPE (appid, tid)
values (209, 241);
insert into TREATMENTTYPE (appid, tid)
values (210, 22);
insert into TREATMENTTYPE (appid, tid)
values (210, 106);
insert into TREATMENTTYPE (appid, tid)
values (210, 318);
insert into TREATMENTTYPE (appid, tid)
values (211, 178);
insert into TREATMENTTYPE (appid, tid)
values (211, 219);
insert into TREATMENTTYPE (appid, tid)
values (211, 220);
insert into TREATMENTTYPE (appid, tid)
values (212, 17);
insert into TREATMENTTYPE (appid, tid)
values (214, 308);
insert into TREATMENTTYPE (appid, tid)
values (215, 47);
insert into TREATMENTTYPE (appid, tid)
values (216, 159);
insert into TREATMENTTYPE (appid, tid)
values (216, 369);
insert into TREATMENTTYPE (appid, tid)
values (218, 57);
insert into TREATMENTTYPE (appid, tid)
values (218, 167);
insert into TREATMENTTYPE (appid, tid)
values (218, 315);
insert into TREATMENTTYPE (appid, tid)
values (218, 393);
insert into TREATMENTTYPE (appid, tid)
values (222, 17);
insert into TREATMENTTYPE (appid, tid)
values (223, 121);
insert into TREATMENTTYPE (appid, tid)
values (223, 226);
insert into TREATMENTTYPE (appid, tid)
values (224, 151);
insert into TREATMENTTYPE (appid, tid)
values (224, 343);
insert into TREATMENTTYPE (appid, tid)
values (225, 68);
insert into TREATMENTTYPE (appid, tid)
values (226, 99);
insert into TREATMENTTYPE (appid, tid)
values (227, 38);
insert into TREATMENTTYPE (appid, tid)
values (227, 283);
insert into TREATMENTTYPE (appid, tid)
values (227, 306);
insert into TREATMENTTYPE (appid, tid)
values (229, 11);
insert into TREATMENTTYPE (appid, tid)
values (229, 22);
insert into TREATMENTTYPE (appid, tid)
values (230, 51);
insert into TREATMENTTYPE (appid, tid)
values (230, 209);
insert into TREATMENTTYPE (appid, tid)
values (230, 381);
insert into TREATMENTTYPE (appid, tid)
values (232, 254);
insert into TREATMENTTYPE (appid, tid)
values (233, 168);
insert into TREATMENTTYPE (appid, tid)
values (234, 368);
insert into TREATMENTTYPE (appid, tid)
values (234, 370);
insert into TREATMENTTYPE (appid, tid)
values (236, 33);
insert into TREATMENTTYPE (appid, tid)
values (236, 179);
insert into TREATMENTTYPE (appid, tid)
values (236, 183);
insert into TREATMENTTYPE (appid, tid)
values (236, 236);
insert into TREATMENTTYPE (appid, tid)
values (236, 396);
insert into TREATMENTTYPE (appid, tid)
values (238, 151);
insert into TREATMENTTYPE (appid, tid)
values (240, 101);
insert into TREATMENTTYPE (appid, tid)
values (242, 7);
insert into TREATMENTTYPE (appid, tid)
values (244, 310);
insert into TREATMENTTYPE (appid, tid)
values (244, 396);
insert into TREATMENTTYPE (appid, tid)
values (245, 192);
insert into TREATMENTTYPE (appid, tid)
values (245, 356);
insert into TREATMENTTYPE (appid, tid)
values (246, 80);
insert into TREATMENTTYPE (appid, tid)
values (247, 95);
insert into TREATMENTTYPE (appid, tid)
values (249, 205);
insert into TREATMENTTYPE (appid, tid)
values (250, 18);
insert into TREATMENTTYPE (appid, tid)
values (251, 292);
insert into TREATMENTTYPE (appid, tid)
values (252, 90);
insert into TREATMENTTYPE (appid, tid)
values (252, 119);
insert into TREATMENTTYPE (appid, tid)
values (253, 110);
insert into TREATMENTTYPE (appid, tid)
values (253, 291);
insert into TREATMENTTYPE (appid, tid)
values (254, 325);
insert into TREATMENTTYPE (appid, tid)
values (254, 397);
insert into TREATMENTTYPE (appid, tid)
values (254, 398);
insert into TREATMENTTYPE (appid, tid)
values (256, 281);
insert into TREATMENTTYPE (appid, tid)
values (256, 297);
insert into TREATMENTTYPE (appid, tid)
values (257, 311);
insert into TREATMENTTYPE (appid, tid)
values (257, 316);
insert into TREATMENTTYPE (appid, tid)
values (258, 85);
insert into TREATMENTTYPE (appid, tid)
values (259, 19);
insert into TREATMENTTYPE (appid, tid)
values (260, 86);
insert into TREATMENTTYPE (appid, tid)
values (260, 268);
insert into TREATMENTTYPE (appid, tid)
values (260, 384);
insert into TREATMENTTYPE (appid, tid)
values (263, 96);
insert into TREATMENTTYPE (appid, tid)
values (266, 397);
insert into TREATMENTTYPE (appid, tid)
values (267, 81);
insert into TREATMENTTYPE (appid, tid)
values (267, 97);
insert into TREATMENTTYPE (appid, tid)
values (267, 220);
insert into TREATMENTTYPE (appid, tid)
values (269, 397);
insert into TREATMENTTYPE (appid, tid)
values (271, 222);
insert into TREATMENTTYPE (appid, tid)
values (271, 304);
insert into TREATMENTTYPE (appid, tid)
values (275, 65);
insert into TREATMENTTYPE (appid, tid)
values (275, 168);
insert into TREATMENTTYPE (appid, tid)
values (277, 24);
insert into TREATMENTTYPE (appid, tid)
values (278, 154);
insert into TREATMENTTYPE (appid, tid)
values (278, 229);
insert into TREATMENTTYPE (appid, tid)
values (279, 9);
insert into TREATMENTTYPE (appid, tid)
values (280, 160);
insert into TREATMENTTYPE (appid, tid)
values (280, 356);
insert into TREATMENTTYPE (appid, tid)
values (281, 76);
insert into TREATMENTTYPE (appid, tid)
values (281, 176);
insert into TREATMENTTYPE (appid, tid)
values (281, 372);
insert into TREATMENTTYPE (appid, tid)
values (282, 320);
insert into TREATMENTTYPE (appid, tid)
values (283, 61);
insert into TREATMENTTYPE (appid, tid)
values (283, 87);
insert into TREATMENTTYPE (appid, tid)
values (284, 117);
insert into TREATMENTTYPE (appid, tid)
values (285, 34);
insert into TREATMENTTYPE (appid, tid)
values (285, 39);
insert into TREATMENTTYPE (appid, tid)
values (285, 53);
commit;
prompt 300 records committed...
insert into TREATMENTTYPE (appid, tid)
values (285, 326);
insert into TREATMENTTYPE (appid, tid)
values (286, 42);
insert into TREATMENTTYPE (appid, tid)
values (286, 377);
insert into TREATMENTTYPE (appid, tid)
values (286, 398);
insert into TREATMENTTYPE (appid, tid)
values (291, 109);
insert into TREATMENTTYPE (appid, tid)
values (291, 303);
insert into TREATMENTTYPE (appid, tid)
values (294, 65);
insert into TREATMENTTYPE (appid, tid)
values (295, 266);
insert into TREATMENTTYPE (appid, tid)
values (296, 205);
insert into TREATMENTTYPE (appid, tid)
values (296, 362);
insert into TREATMENTTYPE (appid, tid)
values (297, 305);
insert into TREATMENTTYPE (appid, tid)
values (300, 278);
insert into TREATMENTTYPE (appid, tid)
values (301, 193);
insert into TREATMENTTYPE (appid, tid)
values (301, 219);
insert into TREATMENTTYPE (appid, tid)
values (302, 73);
insert into TREATMENTTYPE (appid, tid)
values (303, 125);
insert into TREATMENTTYPE (appid, tid)
values (305, 308);
insert into TREATMENTTYPE (appid, tid)
values (308, 331);
insert into TREATMENTTYPE (appid, tid)
values (311, 8);
insert into TREATMENTTYPE (appid, tid)
values (311, 79);
insert into TREATMENTTYPE (appid, tid)
values (311, 126);
insert into TREATMENTTYPE (appid, tid)
values (312, 12);
insert into TREATMENTTYPE (appid, tid)
values (314, 204);
insert into TREATMENTTYPE (appid, tid)
values (317, 362);
insert into TREATMENTTYPE (appid, tid)
values (319, 36);
insert into TREATMENTTYPE (appid, tid)
values (319, 40);
insert into TREATMENTTYPE (appid, tid)
values (320, 51);
insert into TREATMENTTYPE (appid, tid)
values (320, 173);
insert into TREATMENTTYPE (appid, tid)
values (324, 39);
insert into TREATMENTTYPE (appid, tid)
values (325, 173);
insert into TREATMENTTYPE (appid, tid)
values (325, 187);
insert into TREATMENTTYPE (appid, tid)
values (325, 319);
insert into TREATMENTTYPE (appid, tid)
values (326, 157);
insert into TREATMENTTYPE (appid, tid)
values (326, 345);
insert into TREATMENTTYPE (appid, tid)
values (328, 30);
insert into TREATMENTTYPE (appid, tid)
values (328, 40);
insert into TREATMENTTYPE (appid, tid)
values (329, 1);
insert into TREATMENTTYPE (appid, tid)
values (329, 96);
insert into TREATMENTTYPE (appid, tid)
values (329, 157);
insert into TREATMENTTYPE (appid, tid)
values (330, 184);
insert into TREATMENTTYPE (appid, tid)
values (332, 78);
insert into TREATMENTTYPE (appid, tid)
values (332, 203);
insert into TREATMENTTYPE (appid, tid)
values (333, 171);
insert into TREATMENTTYPE (appid, tid)
values (335, 48);
insert into TREATMENTTYPE (appid, tid)
values (335, 97);
insert into TREATMENTTYPE (appid, tid)
values (335, 200);
insert into TREATMENTTYPE (appid, tid)
values (337, 375);
insert into TREATMENTTYPE (appid, tid)
values (340, 7);
insert into TREATMENTTYPE (appid, tid)
values (340, 152);
insert into TREATMENTTYPE (appid, tid)
values (340, 326);
insert into TREATMENTTYPE (appid, tid)
values (343, 64);
insert into TREATMENTTYPE (appid, tid)
values (344, 351);
insert into TREATMENTTYPE (appid, tid)
values (345, 387);
insert into TREATMENTTYPE (appid, tid)
values (346, 166);
insert into TREATMENTTYPE (appid, tid)
values (347, 16);
insert into TREATMENTTYPE (appid, tid)
values (348, 53);
insert into TREATMENTTYPE (appid, tid)
values (349, 361);
insert into TREATMENTTYPE (appid, tid)
values (350, 44);
insert into TREATMENTTYPE (appid, tid)
values (352, 270);
insert into TREATMENTTYPE (appid, tid)
values (353, 107);
insert into TREATMENTTYPE (appid, tid)
values (353, 175);
insert into TREATMENTTYPE (appid, tid)
values (354, 253);
insert into TREATMENTTYPE (appid, tid)
values (354, 274);
insert into TREATMENTTYPE (appid, tid)
values (355, 22);
insert into TREATMENTTYPE (appid, tid)
values (355, 233);
insert into TREATMENTTYPE (appid, tid)
values (357, 81);
insert into TREATMENTTYPE (appid, tid)
values (357, 266);
insert into TREATMENTTYPE (appid, tid)
values (358, 188);
insert into TREATMENTTYPE (appid, tid)
values (360, 221);
insert into TREATMENTTYPE (appid, tid)
values (360, 260);
insert into TREATMENTTYPE (appid, tid)
values (361, 336);
insert into TREATMENTTYPE (appid, tid)
values (362, 6);
insert into TREATMENTTYPE (appid, tid)
values (362, 77);
insert into TREATMENTTYPE (appid, tid)
values (363, 135);
insert into TREATMENTTYPE (appid, tid)
values (364, 54);
insert into TREATMENTTYPE (appid, tid)
values (364, 234);
insert into TREATMENTTYPE (appid, tid)
values (364, 355);
insert into TREATMENTTYPE (appid, tid)
values (365, 294);
insert into TREATMENTTYPE (appid, tid)
values (366, 114);
insert into TREATMENTTYPE (appid, tid)
values (366, 340);
insert into TREATMENTTYPE (appid, tid)
values (367, 163);
insert into TREATMENTTYPE (appid, tid)
values (367, 231);
insert into TREATMENTTYPE (appid, tid)
values (369, 174);
insert into TREATMENTTYPE (appid, tid)
values (370, 347);
insert into TREATMENTTYPE (appid, tid)
values (371, 345);
insert into TREATMENTTYPE (appid, tid)
values (374, 164);
insert into TREATMENTTYPE (appid, tid)
values (375, 256);
insert into TREATMENTTYPE (appid, tid)
values (375, 385);
insert into TREATMENTTYPE (appid, tid)
values (378, 33);
insert into TREATMENTTYPE (appid, tid)
values (379, 211);
insert into TREATMENTTYPE (appid, tid)
values (381, 347);
insert into TREATMENTTYPE (appid, tid)
values (382, 74);
insert into TREATMENTTYPE (appid, tid)
values (383, 266);
insert into TREATMENTTYPE (appid, tid)
values (383, 283);
insert into TREATMENTTYPE (appid, tid)
values (389, 228);
insert into TREATMENTTYPE (appid, tid)
values (390, 106);
insert into TREATMENTTYPE (appid, tid)
values (391, 125);
insert into TREATMENTTYPE (appid, tid)
values (391, 131);
insert into TREATMENTTYPE (appid, tid)
values (392, 279);
commit;
prompt 399 records loaded
prompt Enabling foreign key constraints for PET...
alter table PET enable constraint SYS_C00711501;
prompt Enabling foreign key constraints for VET...
alter table VET enable constraint SYS_C00711518;
prompt Enabling foreign key constraints for APPOINTMENT...
alter table APPOINTMENT enable constraint SYS_C00711539;
alter table APPOINTMENT enable constraint SYS_C00711540;
prompt Enabling foreign key constraints for SECRETARY...
alter table SECRETARY enable constraint SYS_C00711512;
prompt Enabling foreign key constraints for SELL...
alter table SELL enable constraint SYS_C00711531;
alter table SELL enable constraint SYS_C00711532;
prompt Enabling foreign key constraints for TREATMENTTYPE...
alter table TREATMENTTYPE enable constraint SYS_C00711544;
alter table TREATMENTTYPE enable constraint SYS_C00711545;
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
prompt Enabling triggers for SECRETARY...
alter table SECRETARY enable all triggers;
prompt Enabling triggers for SELL...
alter table SELL enable all triggers;
prompt Enabling triggers for TREATMENT...
alter table TREATMENT enable all triggers;
prompt Enabling triggers for TREATMENTTYPE...
alter table TREATMENTTYPE enable all triggers;

set feedback on
set define on
prompt Done
