prompt PL/SQL Developer Export Tables for user EWEKSLER@LABDBWIN
prompt Created by eweksler on יום ראשון 21 יולי 2024
set feedback off
set define off

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
prompt Disabling triggers for TRANSPORTATION...
alter table TRANSPORTATION disable all triggers;
prompt Disabling triggers for TRIP...
alter table TRIP disable all triggers;
prompt Disabling triggers for DESTINATIONS...
alter table DESTINATIONS disable all triggers;
prompt Disabling triggers for GUARD...
alter table GUARD disable all triggers;
prompt Disabling triggers for GUIDED_BY...
alter table GUIDED_BY disable all triggers;
prompt Disabling triggers for SECRETARY...
alter table SECRETARY disable all triggers;
prompt Disabling triggers for SELL...
alter table SELL disable all triggers;
prompt Disabling triggers for TRAVELERS_LIST...
alter table TRAVELERS_LIST disable all triggers;
prompt Disabling triggers for TREATMENT...
alter table TREATMENT disable all triggers;
prompt Disabling triggers for TREATMENTTYPE...
alter table TREATMENTTYPE disable all triggers;
prompt Disabling foreign key constraints for PET...
alter table PET disable constraint SYS_C00715079;
prompt Disabling foreign key constraints for VET...
alter table VET disable constraint SYS_C00715090;
prompt Disabling foreign key constraints for APPOINTMENT...
alter table APPOINTMENT disable constraint SYS_C00715097;
alter table APPOINTMENT disable constraint SYS_C00715098;
prompt Disabling foreign key constraints for TRIP...
alter table TRIP disable constraint SYS_C00723392;
prompt Disabling foreign key constraints for DESTINATIONS...
alter table DESTINATIONS disable constraint SYS_C00723398;
prompt Disabling foreign key constraints for GUARD...
alter table GUARD disable constraint FK_ID;
prompt Disabling foreign key constraints for GUIDED_BY...
alter table GUIDED_BY disable constraint SYS_C00723407;
alter table GUIDED_BY disable constraint SYS_C00723408;
prompt Disabling foreign key constraints for SECRETARY...
alter table SECRETARY disable constraint SYS_C00715104;
prompt Disabling foreign key constraints for SELL...
alter table SELL disable constraint SYS_C00715109;
alter table SELL disable constraint SYS_C00715110;
prompt Disabling foreign key constraints for TRAVELERS_LIST...
alter table TRAVELERS_LIST disable constraint SYS_C00723419;
alter table TRAVELERS_LIST disable constraint SYS_C00723421;
prompt Disabling foreign key constraints for TREATMENTTYPE...
alter table TREATMENTTYPE disable constraint SYS_C00715119;
alter table TREATMENTTYPE disable constraint SYS_C00715120;
prompt Deleting TREATMENTTYPE...
delete from TREATMENTTYPE;
commit;
prompt Deleting TREATMENT...
delete from TREATMENT;
commit;
prompt Deleting TRAVELERS_LIST...
delete from TRAVELERS_LIST;
commit;
prompt Deleting SELL...
delete from SELL;
commit;
prompt Deleting SECRETARY...
delete from SECRETARY;
commit;
prompt Deleting GUIDED_BY...
delete from GUIDED_BY;
commit;
prompt Deleting GUARD...
delete from GUARD;
commit;
prompt Deleting DESTINATIONS...
delete from DESTINATIONS;
commit;
prompt Deleting TRIP...
delete from TRIP;
commit;
prompt Deleting TRANSPORTATION...
delete from TRANSPORTATION;
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
values (112, 31, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 32, 'cat collar');
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
values (118, 44, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (69, 45, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (59, 46, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 47, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (90, 49, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 50, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (34, 51, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (66, 52, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (62, 53, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (99, 55, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (98, 56, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 57, 'bone toy');
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
values (56, 69, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 70, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (99, 72, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 73, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 74, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 76, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 77, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (105, 78, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 79, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (65, 80, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 81, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 130, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (54, 133, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 134, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 136, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 137, 'dry food');
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
values (79, 145, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 147, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (75, 149, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (93, 150, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 152, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (59, 154, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 155, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (53, 156, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 157, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (56, 162, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 163, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (38, 164, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (77, 165, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (95, 167, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (94, 168, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (59, 169, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (60, 171, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 172, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 173, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (115, 175, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 176, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (71, 177, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 178, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 180, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (91, 181, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (113, 182, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (99, 186, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 187, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (103, 188, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 190, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (53, 191, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (52, 192, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (45, 193, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (57, 194, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (74, 196, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 198, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (107, 200, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (85, 201, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (81, 202, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (91, 204, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (70, 205, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (106, 206, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 207, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (88, 209, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (66, 210, 'bone toy');
commit;
prompt 100 records committed...
insert into ACCESSORIES (accprice, accid, accname)
values (103, 212, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 213, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 214, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (64, 216, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (61, 218, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (51, 219, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 222, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (69, 224, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (108, 225, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (56, 226, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 229, 'dog collar');
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
values (43, 90, 'dry food');
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
values (50, 97, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (94, 98, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 100, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (92, 101, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 104, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (66, 106, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 107, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (90, 108, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (110, 111, 'cat collar');
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
values (116, 124, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 125, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 128, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (74, 129, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (62, 230, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 231, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (105, 232, 'dry food');
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
values (56, 244, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (80, 245, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (53, 246, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 247, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (117, 249, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 251, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (77, 252, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (47, 253, 'dry food');
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
values (49, 261, 'dry food');
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
values (80, 273, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (63, 275, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (104, 276, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 277, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (83, 278, 'bone toy');
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
values (50, 287, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 288, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (96, 292, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (69, 293, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (112, 295, 'bone toy');
commit;
prompt 200 records committed...
insert into ACCESSORIES (accprice, accid, accname)
values (89, 297, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 298, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (83, 299, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (101, 300, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (72, 301, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 302, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 303, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (58, 304, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (98, 306, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (87, 307, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (68, 308, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (97, 309, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (114, 310, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 311, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (82, 313, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (86, 314, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (79, 315, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (120, 317, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (119, 318, 'bone toy');
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
values (90, 328, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 330, 'bone toy');
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
values (40, 337, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (102, 338, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (67, 340, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (55, 341, 'cat collar');
insert into ACCESSORIES (accprice, accid, accname)
values (43, 342, 'dry food');
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
values (94, 349, 'dog collar');
insert into ACCESSORIES (accprice, accid, accname)
values (76, 351, 'bone toy');
insert into ACCESSORIES (accprice, accid, accname)
values (52, 352, 'dry food');
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
values (111, 365, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (52, 366, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (107, 367, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (84, 369, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (34, 372, 'dry food');
insert into ACCESSORIES (accprice, accid, accname)
values (62, 373, 'dry food');
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
values (117, 382, 'dog collar');
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
insert into ACCESSORIES (accprice, accid, accname)
values (73, 102, 'dog collar');
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
commit;
prompt 300 records committed...
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
values (62, 30, 'dog collar');
commit;
prompt 307 records loaded
prompt Loading PETOWNER...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Orly''', 1395, ' ''Beit Shean''', 34290345, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Adina''', 1396, ' ''Yehud''', 32050215, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Adina''', 1397, ' ''Ness Ziona''', 534772134, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Vered''', 1398, ' ''Hadera''', 533468963, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shmuel''', 1399, ' ''Tirat Carmel''', 541638247, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chaim''', 1400, 'Mazkeret Batya', 36438782, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noy''', 1394, ' ''Arad''', 537846930, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Maceo', 1, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chaka', 2, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rip', 3, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Wayman', 4, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lili', 5, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Katrin', 6, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jackie', 7, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Thin', 8, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Louise', 9, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jean-Claude', 10, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Uma', 11, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lila', 12, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Alfred', 13, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kiefer', 14, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chazz', 15, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kurt', 16, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Alfie', 17, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Marina', 18, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Robbie', 19, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cornell', 20, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rawlins', 21, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Isaiah', 22, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chris', 23, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Curtis', 24, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lara', 25, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hazel', 26, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Brent', 27, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Frederic', 28, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Judge', 29, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Albert', 30, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Charlie', 31, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Liam', 32, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gordie', 33, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hex', 34, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('First', 35, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Murray', 36, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Veruca', 37, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Adrien', 38, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Merle', 39, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Suzy', 40, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Javon', 41, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Will', 42, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Robby', 43, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Aidan', 44, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gino', 45, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Linda', 46, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Curtis', 47, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Reese', 48, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Meredith', 49, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Suzi', 50, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Bruce', 51, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mindy', 52, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gary', 53, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Carlene', 54, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Leelee', 55, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rod', 56, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Albert', 57, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sheryl', 58, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Yolanda', 59, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Holly', 60, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ernest', 61, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ty', 62, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Saffron', 63, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Elias', 64, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Selma', 65, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jack', 66, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Pelvic', 67, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Treat', 68, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kristin', 69, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Todd', 70, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ralph', 71, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rosanna', 72, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Aaron', 73, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Joaquim', 74, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ewan', 75, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Roberta', 76, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jeroen', 77, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Debby', 78, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Robbie', 79, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Curt', 80, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tori', 81, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Anita', 82, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jena', 83, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Stephen', 84, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Naomi', 85, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tia', 86, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Harrison', 87, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Stephen', 88, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Annie', 89, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Alannah', 90, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Alicia', 91, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chuck', 92, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hope', 93, 'Unknown Address', 0, 2013);
commit;
prompt 100 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rik', 94, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Andy', 95, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Roddy', 96, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Radney', 97, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nicolas', 98, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Candice', 99, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jessica', 100, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Glenn', 101, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tim', 102, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Minnie', 103, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Angelina', 104, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Raul', 105, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Matt', 106, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Davey', 107, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Vincent', 108, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Colin', 109, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('James', 110, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Miranda', 111, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jeff', 112, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Colin', 113, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chris', 114, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jack', 115, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cheryl', 116, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Latin', 117, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Bob', 118, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chaka', 119, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hilary', 120, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Patty', 121, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Debra', 122, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Machine', 123, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Eliza', 124, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Forest', 125, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chad', 126, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Azucar', 127, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jonatha', 128, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Will', 129, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('William', 130, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mika', 131, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Carlos', 132, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Parker', 133, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sophie', 134, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Juliette', 135, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Casey', 136, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jonathan', 137, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Laurence', 138, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Marlon', 139, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Pablo', 140, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nicholas', 141, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gran', 142, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Queen', 143, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hope', 144, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Terry', 145, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Maggie', 146, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Stewart', 147, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Andy', 148, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sam', 149, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Burt', 150, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mary Beth', 151, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kyle', 152, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jeffery', 153, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Clay', 154, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Isabella', 155, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lin', 156, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rascal', 157, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ricky', 158, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kazem', 159, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ramsey', 160, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mykelti', 161, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Don', 162, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sara', 163, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chi', 164, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Dionne', 165, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Terry', 166, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Melanie', 167, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Trey', 168, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Balthazar', 169, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Katrin', 170, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Robin', 171, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Luis', 172, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hank', 173, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Karen', 174, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Elias', 175, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Delroy', 176, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tim', 177, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Wesley', 178, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Wendy', 179, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gene', 180, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rascal', 181, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rade', 182, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sam', 183, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rhea', 184, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Parker', 185, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rebecca', 186, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hal', 187, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cole', 188, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rik', 189, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sally', 190, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Curtis', 191, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Judi', 192, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Earl', 193, 'Unknown Address', 0, 2014);
commit;
prompt 200 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nikka', 194, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jeff', 195, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Wayne', 196, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nick', 197, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jeffery', 198, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Percy', 199, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('LeVar', 200, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rebecca', 201, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Anne', 202, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gena', 203, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Faye', 204, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ronny', 205, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kitty', 206, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Miko', 207, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gene', 208, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Diamond', 209, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Charlton', 210, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Art', 211, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Brooke', 212, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Randy', 213, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Arnold', 214, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Azucar', 215, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Seann', 216, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Joy', 217, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Curtis', 218, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Michelle', 219, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Joy', 220, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mel', 221, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Luke', 222, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Davy', 223, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Merillee', 224, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Heather', 225, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Scott', 226, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hugh', 227, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Emerson', 228, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Christine', 229, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Balthazar', 230, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nikka', 231, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Geena', 232, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Betty', 233, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Vendetta', 234, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Will', 235, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sally', 236, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tia', 237, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Hugo', 238, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mel', 239, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gwyneth', 240, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chalee', 241, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Danni', 242, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Oded', 243, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Miko', 244, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kitty', 245, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Diane', 246, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Robbie', 247, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nils', 248, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ramsey', 249, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Selma', 250, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Natascha', 251, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Bill', 252, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rick', 253, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Maureen', 254, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Suzy', 255, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('King', 256, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Udo', 257, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ivan', 258, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Wang', 259, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Wayne', 260, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Vanessa', 261, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Natalie', 262, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Miranda', 263, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rowan', 264, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Natasha', 265, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Emilio', 266, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Roscoe', 267, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jon', 268, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rory', 269, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Frank', 270, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Chris', 271, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Delbert', 272, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Claude', 273, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Katrin', 274, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ruth', 275, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lenny', 276, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Willem', 277, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Saffron', 278, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rutger', 279, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lili', 280, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tyrone', 281, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jann', 282, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cheryl', 283, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sean', 284, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ali', 285, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Raymond', 286, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Roddy', 287, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Michael', 288, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cate', 289, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gordon', 290, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Miko', 291, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Elisabeth', 292, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Maury', 293, 'Unknown Address', 0, 2006);
commit;
prompt 300 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jet', 294, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Amanda', 295, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tamala', 296, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lou', 297, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Freda', 298, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Charlie', 299, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mitchell', 300, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Sophie', 301, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nicole', 302, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jean', 303, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Azucar', 304, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Buddy', 305, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mika', 306, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kid', 307, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lynn', 308, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Giancarlo', 309, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Madeline', 310, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Clea', 311, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Stellan', 312, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Marina', 313, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Robin', 314, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Vonda', 315, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Timothy', 316, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gabrielle', 317, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Bret', 318, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rik', 319, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Rita', 320, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Geoff', 321, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tia', 322, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Coley', 323, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lonnie', 324, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Alex', 325, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Omar', 326, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jake', 327, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mel', 328, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Willem', 329, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Luke', 330, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kasey', 331, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Daniel', 332, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ossie', 333, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Eric', 334, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tara', 335, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Emily', 336, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Willem', 337, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kelli', 338, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Carrie-Anne', 339, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Samuel', 340, 'Unknown Address', 0, 2019);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Alicia', 341, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lee', 342, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Boyd', 343, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Harrison', 344, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Marisa', 345, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cole', 346, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Freda', 347, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Millie', 348, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tramaine', 349, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tilda', 350, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Toshiro', 351, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Adam', 352, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Dave', 353, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Luke', 354, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kyle', 355, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lydia', 356, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Clarence', 357, 'Unknown Address', 0, 2020);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cheryl', 358, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Patricia', 359, 'Unknown Address', 0, 2014);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Harry', 360, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Guy', 361, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Terence', 362, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Natacha', 363, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Armin', 364, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Domingo', 365, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Adrien', 366, 'Unknown Address', 0, 2004);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Ethan', 367, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Kristin', 368, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Brenda', 369, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cledus', 370, 'Unknown Address', 0, 2022);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Emerson', 371, 'Unknown Address', 0, 2006);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mandy', 372, 'Unknown Address', 0, 2003);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Owen', 373, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Toshiro', 374, 'Unknown Address', 0, 2015);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Bridget', 375, 'Unknown Address', 0, 2007);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Aida', 376, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Antonio', 377, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Victor', 378, 'Unknown Address', 0, 2010);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Maggie', 379, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nastassja', 380, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Holly', 381, 'Unknown Address', 0, 2021);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Roy', 382, 'Unknown Address', 0, 2008);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Leonardo', 383, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('King', 384, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mos', 385, 'Unknown Address', 0, 2016);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Brad', 386, 'Unknown Address', 0, 2013);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Tzi', 387, 'Unknown Address', 0, 2002);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Dionne', 388, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jackie', 389, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Mary-Louise', 390, 'Unknown Address', 0, 2005);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Cary', 391, 'Unknown Address', 0, 2009);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nickel', 392, 'Unknown Address', 0, 2017);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Jennifer', 393, 'Unknown Address', 0, 2018);
commit;
prompt 400 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Gabrielle', 394, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Powers', 395, 'Unknown Address', 0, 2001);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Johnnie', 396, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Lila', 397, 'Unknown Address', 0, 2012);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Antonio', 398, 'Unknown Address', 0, 2000);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Larry', 399, 'Unknown Address', 0, 2018);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('Nils', 400, 'Unknown Address', 0, 2011);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Barak''', 1094, ' ''Tzur Hadassah''', 774239781, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zalman''', 1095, ' ''Arad''', 522283594, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''David''', 1096, ' ''Kiryat Ono''', 39879667, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Menucha''', 1097, ' ''Mevasseret Zion''', 542198662, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gideon''', 1098, ' ''Beit Shemesh''', 533330654, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hillel''', 1099, ' ''Mevasseret Zion''', 536022634, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zohara''', 1100, ' ''Ramat Gan''', 549868629, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Irit''', 1101, ' ''Giv''at Shmuel''', 36206369, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Geula''', 1102, ' ''Afula''', 543965435, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avraham''', 1103, ' ''Raanana''', 548632409, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Kochav''', 1104, ' ''Givat Ze''ev''', 38638342, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yaffa''', 1105, ' ''Gan Yavne''', 38385677, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Menucha''', 1106, ' ''Yavne''', 541940043, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gali''', 1107, ' ''Ramat HaSharon''', 779489699, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzipora''', 1000, ' ''Raanana''', 536299117, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Itai''', 1001, ' ''Mazkeret Batya''', 544282960, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dalia''', 1002, ' ''Ra''anana''', 777767649, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Lior''', 1003, ' ''Bat Yam''', 542738402, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avital''', 1004, ' ''Dimona''', 771050207, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ziv''', 1005, ' ''Nahariya''', 532417005, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shani''', 1006, ' ''Gan Yavne''', 771293461, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Haim''', 1007, ' ''Migdal HaEmek''', 543891104, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Keren''', 1008, ' ''Giv''at Shmuel''', 779650386, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yehuda''', 1009, ' ''Bnei Ayish''', 536528421, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yosef''', 1010, ' ''Netanya''', 774461842, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gali''', 1011, ' ''Raanana''', 537343730, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Elisha''', 1012, ' ''Sakhnin''', 33887388, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rina''', 1013, ' ''Rishon LeZion''', 521797012, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yosef''', 1014, ' ''Jerusalem''', 531618080, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Kfir''', 1015, ' ''Holon''', 779156239, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Efrat''', 1016, ' ''Kfar Saba''', 38002708, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avital''', 1017, ' ''Tirat Carmel''', 39518641, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yishai''', 1018, ' ''Yehud-Monosson''', 538676990, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eliav''', 1019, ' ''Ramat Gan''', 535580835, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Barak''', 1020, ' ''Mazkeret Batya''', 774090297, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avraham''', 1021, ' ''Gedera''', 776657509, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mika''', 1022, ' ''Beer Sheva''', 544877221, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eitan''', 1023, ' ''Kfar Saba''', 536680917, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Orly''', 1024, ' ''Bnei Brak''', 545581982, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Leah''', 1025, ' ''Hatzor HaGlilit''', 522825267, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Raz''', 1026, ' ''Giv''atayim''', 521518150, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hadar''', 1027, ' ''Kiryat Ono''', 38059160, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gideon''', 1028, ' ''Givat Ze''ev''', 776782661, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Pnina''', 1029, ' ''Giv''atayim''', 545336548, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zvika''', 1030, ' ''Tamra''', 537574655, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Levi''', 1031, ' ''Beit Dagan''', 535790279, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zvika''', 1032, ' ''Modiin''', 779806668, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nechama''', 1033, ' ''Netivot''', 37680652, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Batya''', 1034, ' ''Azor''', 547035115, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rachel''', 1035, ' ''Dimona''', 775659991, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzila''', 1036, ' ''Tiberias''', 528875668, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mika''', 1037, ' ''Yehud''', 775734809, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yehudit''', 1038, ' ''Holon''', 522148306, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uri''', 1039, ' ''Ramla''', 533151253, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nir''', 1040, ' ''Kiryat Yam''', 527083520, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Udi''', 1041, ' ''Petah Tikva''', 779784963, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shoshana''', 1042, ' ''Modiin''', 779305329, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rachel''', 1043, ' ''Kiryat Ono''', 528225998, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mordechai''', 1044, ' ''Azor''', 535453671, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shoshana''', 1045, ' ''Kfar Saba''', 531804212, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shira''', 1046, ' ''Kfar Saba''', 778716779, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mor''', 1047, ' ''Hod HaSharon''', 548579136, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Israel''', 1048, ' ''Beit Shemesh''', 526082960, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dalia''', 1049, ' ''Netivot''', 534475200, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eliana''', 1050, ' ''Lod''', 522733120, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gila''', 1051, ' ''Yehud-Monosson''', 773014662, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yardena''', 1052, ' ''Netivot''', 771230101, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avner''', 1053, ' ''Elyakhin''', 521070335, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ayala''', 1054, ' ''Migdal HaEmek''', 38503063, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Keren''', 1055, ' ''Akko''', 775700896, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Moshe''', 1056, ' ''Kfar Saba''', 773733499, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chana''', 1057, ' ''Petach Tikvah''', 529800536, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ziva''', 1058, ' ''Elyakhin''', 527432673, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zeev''', 1059, ' ''Bnei Brak''', 779555694, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eli''', 1060, ' ''Migdal HaEmek''', 777884589, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Keren''', 1061, ' ''Yavne''', 529796869, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nir''', 1062, ' ''Raanana''', 779169208, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noy''', 1063, ' ''Kfar Saba''', 32388753, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shoshana''', 1064, ' ''Kfar Saba''', 538651777, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zohar''', 1065, ' ''Shoham''', 538058784, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uziel''', 1066, ' ''Rehovot''', 522289986, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nechama''', 1067, ' ''Kfar Saba''', 39550761, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hila''', 1068, ' ''Karmiel''', 529017202, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avigail''', 1069, ' ''Gedera''', 531030304, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ari''', 1070, ' ''Bnei Brak''', 771439114, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mordechai''', 1071, ' ''Tzur Hadassah''', 522989630, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rafi''', 1072, ' ''Tiberias''', 39301565, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rafi''', 1073, ' ''Rehovot''', 529829575, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Batsheva''', 1074, ' ''Migdal HaEmek''', 539304828, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Idan''', 1075, ' ''Netanya''', 542151413, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Adina''', 1076, ' ''Umm al-Fahm''', 536423793, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Barak''', 1077, ' ''Ashkelon''', 526729508, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chaim''', 1078, ' ''Tamra''', 776719048, null);
commit;
prompt 500 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Koren''', 1079, ' ''Kfar Yona''', 544638764, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Koren''', 1080, ' ''Haifa''', 533537440, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uriah''', 1081, ' ''Tamra''', 545798300, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Kfir''', 1082, ' ''Rishon LeZion''', 34925991, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yael''', 1083, ' ''Kiryat Yam''', 538902985, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Binyamin''', 1084, ' ''Kiryat Ono''', 777165573, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zvika''', 1085, ' ''Yokneam''', 521597786, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Pnina''', 1086, ' ''Nof HaGalil''', 528877985, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Sara''', 1087, ' ''Tamra''', 779190838, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Lily''', 1088, ' ''Yokneam''', 524986664, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Matan''', 1089, ' ''Elyakhin''', 778260283, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hod''', 1090, ' ''Kiryat Bialik''', 37835162, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nechama''', 1091, ' ''Givat Ze''ev''', 777344673, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Liel''', 1092, ' ''Nof HaGalil''', 771190815, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zohar''', 1093, ' ''Raanana''', 535147987, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Carmel''', 1108, ' ''Kiryat Ono''', 527664850, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mordechai''', 1109, ' ''Harish''', 538560754, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noa''', 1110, ' ''Ramla''', 776184478, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Doron''', 1111, ' ''Beer Sheva''', 521759303, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yael''', 1112, ' ''Beit Shean''', 776877947, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzvi''', 1113, ' ''Hatzor HaGlilit''', 537544207, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avigail''', 1114, ' ''Rehovot''', 528248823, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yaron''', 1115, ' ''Or Yehuda''', 528431839, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zohara''', 1116, ' ''Rosh HaAyin''', 544326680, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Asher''', 1117, ' ''Tirat Carmel''', 531254447, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hodaya''', 1118, ' ''Kfar Saba''', 541890200, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Geula''', 1119, ' ''Kiryat Ata''', 529310737, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzvia''', 1120, ' ''Migdal HaEmek''', 37290182, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Adina''', 1121, ' ''Hadera''', 524799032, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nir''', 1122, ' ''Tzur Hadassah''', 549794639, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nadav''', 1123, ' ''Lod''', 537325144, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uri''', 1124, ' ''Or Akiva''', 538480022, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1125, ' ''Kiryat Gat''', 771436968, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yehudit''', 1126, ' ''Ness Ziona''', 548412338, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Maayan''', 1127, ' ''Mazkeret Batya''', 34997121, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Leah''', 1128, ' ''Rishon LeZion''', 776780666, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noam''', 1129, ' ''Bnei Brak''', 534110966, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mirit''', 1130, ' ''Ramat HaSharon''', 529204935, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tamar''', 1131, ' ''Ashkelon''', 542939353, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uzi''', 1132, ' ''Nof HaGalil''', 775535721, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Efrat''', 1133, ' ''Ra''anana''', 548939718, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Vered''', 1134, ' ''Netivot''', 39392706, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mor''', 1135, ' ''Ra''anana''', 544206340, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzipora''', 1136, ' ''Ashdod''', 777764182, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yael''', 1137, ' ''Tamra''', 542168427, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dalia''', 1138, ' ''Ness Ziona''', 522246888, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzofia''', 1139, ' ''Azor''', 548927377, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Haim''', 1140, ' ''Ramla''', 522969958, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzipora''', 1141, ' ''Tiberias''', 543970657, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ari''', 1142, ' ''Tel Aviv''', 529211317, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Micha''', 1143, ' ''Eilat''', 535082962, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dalia''', 1144, ' ''Harish''', 539746558, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nir''', 1145, ' ''Mevasseret Zion''', 36081588, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Orna''', 1146, ' ''Ness Ziona''', 779474133, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Matan''', 1147, ' ''Mevasseret Zion''', 778406971, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noy''', 1148, ' ''Mazkeret Batya''', 525713026, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ilan''', 1149, ' ''Ness Ziona''', 529838305, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Elisha''', 1150, ' ''Giv''atayim''', 37945250, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avraham''', 1151, ' ''Kiryat Ata''', 545219650, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Kedem''', 1152, ' ''Shoham''', 544903539, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shmuel''', 1153, ' ''Zichron Yaakov''', 548849210, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Oz''', 1154, ' ''Mazkeret Batya''', 537676768, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noa''', 1155, ' ''Beit Dagan''', 774108315, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1156, ' ''Eilat''', 529771303, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Omer''', 1157, ' ''Yehud''', 545716184, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rivka''', 1158, ' ''Hadera''', 526935345, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Liel''', 1159, ' ''Ness Ziona''', 521133066, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Menucha''', 1160, ' ''Mazkeret Batya''', 523435424, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noa''', 1161, ' ''Karmiel''', 776672177, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Bracha''', 1162, ' ''Dimona''', 531421241, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Idan''', 1163, ' ''Kiryat Ono''', 539518689, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shani''', 1164, ' ''Ramat Gan''', 539099788, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rivka''', 1165, ' ''Petah Tikva''', 525639661, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Geula''', 1166, ' ''Netanya''', 543574417, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shira''', 1167, ' ''Mazkeret Batya''', 34477460, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Herzl''', 1168, ' ''Beit Shemesh''', 35098869, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ilay''', 1169, ' ''Nof HaGalil''', 549284603, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eli''', 1170, ' ''Holon''', 534008111, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yardena''', 1171, ' ''Beit Dagan''', 527542240, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Sara''', 1172, ' ''Kiryat Yam''', 521677569, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Keren''', 1173, ' ''Rehovot''', 32718818, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Matan''', 1174, ' ''Shoham''', 31434227, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uzi''', 1175, ' ''Beersheba''', 32552911, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noam''', 1176, ' ''Ashkelon''', 32354956, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Kochav''', 1177, ' ''Herzliya''', 547754868, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Micha''', 1178, ' ''Nahariya''', 528887315, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Bracha''', 1179, ' ''Gedera''', 522344218, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tamar''', 1180, ' ''Giv''at Shmuel''', 38517568, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ziv''', 1181, ' ''Beer Sheva''', 529733884, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Benny''', 1182, ' ''Beit Shemesh''', 771084643, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Binyamin''', 1183, ' ''Yehud''', 776725008, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eliyahu''', 1184, ' ''Azor''', 776898287, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Elad''', 1185, ' ''Arad''', 542985005, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Reut''', 1186, ' ''Netanya''', 779611757, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tamar''', 1187, ' ''Yavne''', 771574307, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Maayan''', 1188, ' ''Akko''', 531837953, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shmuel''', 1189, ' ''Yavne''', 546128029, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Karin''', 1190, ' ''Holon''', 543356606, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yoni''', 1191, ' ''Jerusalem''', 524174246, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Menahem''', 1192, ' ''Tirat Carmel''', 771985642, null);
commit;
prompt 600 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Orit''', 1193, ' ''Yokneam''', 33647526, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Sara''', 1194, ' ''Bnei Ayish''', 535756851, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Benny''', 1195, ' ''Ramla''', 538660220, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Frieda''', 1196, ' ''Or Yehuda''', 538577495, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chava''', 1201, ' ''Jerusalem''', 31933329, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ophir''', 1202, ' ''Rosh HaAyin''', 548921591, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uriah''', 1203, ' ''Elyakhin''', 537119197, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Menahem''', 1204, ' ''Petach Tikvah''', 523047398, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noam''', 1205, ' ''Hatzor HaGlilit''', 774580216, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Batsheva''', 1206, ' ''Haifa''', 541968583, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Maya''', 1197, ' ''Bat Yam''', 537654004, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uzi''', 1198, ' ''Beer Sheva''', 531262122, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avital''', 1199, ' ''Beersheba''', 543311429, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Idan''', 1200, ' ''Herzliya''', 38033367, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noy''', 1207, ' ''Petach Tikvah''', 33037844, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Adina''', 1208, ' ''Shoham''', 521427472, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rafi''', 1209, ' ''Karmiel''', 536107046, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Frieda''', 1210, ' ''Givat Ze''ev''', 522172218, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eliana''', 1211, ' ''Kfar Saba''', 537528624, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Doron''', 1212, ' ''Umm al-Fahm''', 33245819, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Pnina''', 1213, ' ''Ramat HaSharon''', 527942131, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yaron''', 1214, ' ''Kiryat Malakhi''', 525748001, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eliyahu''', 1215, ' ''Ness Ziona''', 39749265, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Erez''', 1216, ' ''Or Akiva''', 531139703, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dalia''', 1217, ' ''Kiryat Gat''', 535434033, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Irit''', 1218, ' ''Ramla''', 536460274, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Sara''', 1219, ' ''Umm al-Fahm''', 537487474, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Koren''', 1220, ' ''Beer Sheva''', 547503803, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rafi''', 1221, ' ''Bnei Ayish''', 537170613, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Adina''', 1222, ' ''Givat Ze''ev''', 525737493, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mirit''', 1223, ' ''Ness Ziona''', 34762948, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nadav''', 1224, ' ''Ashkelon''', 545322667, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ofra''', 1225, ' ''Givat Ze''ev''', 548416051, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Adina''', 1226, ' ''Beit Shean''', 779337583, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mika''', 1227, ' ''Jerusalem''', 532588155, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Orna''', 1228, ' ''Yehud''', 35275485, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Bracha''', 1229, ' ''Kfar Saba''', 524455748, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shani''', 1230, ' ''Harish''', 33368845, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zeev''', 1231, ' ''Qiryat Shemona''', 525118123, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzila''', 1232, ' ''Yehud-Monosson''', 536995297, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uriah''', 1233, ' ''Bat Yam''', 528235791, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rivka''', 1234, ' ''Ra''anana''', 538194868, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dor''', 1235, ' ''Raanana''', 37831965, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mordechai''', 1236, ' ''Petah Tikva''', 35332221, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noam''', 1237, ' ''Lod''', 771412023, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Lavi''', 1238, ' ''Tiberias''', 526136428, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Reut''', 1239, ' ''Bnei Ayish''', 31636268, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noam''', 1240, ' ''Bnei Brak''', 543375619, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gavriella''', 1241, ' ''Afula''', 522202309, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ilan''', 1242, ' ''Kiryat Shmona''', 529935757, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Binyamin''', 1243, ' ''Beersheba''', 541043858, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''David''', 1244, ' ''Tel Aviv''', 774369537, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yosefa''', 1245, ' ''Karmiel''', 522709288, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hadar''', 1246, ' ''Kiryat Ata''', 33566676, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Maya''', 1247, ' ''Dimona''', 525968655, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Itamar''', 1248, ' ''Tiberias''', 778877027, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Oz''', 1249, ' ''Rehovot''', 775586813, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Boaz''', 1250, ' ''Ra''anana''', 545432504, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Lihi''', 1251, ' ''Jerusalem''', 532112414, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Boaz''', 1252, ' ''Beit Shean''', 531935720, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dalia''', 1253, ' ''Bnei Ayish''', 543678877, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Reut''', 1254, ' ''Tiberias''', 537850205, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Batsheva''', 1255, ' ''Rehovot''', 773778023, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Micha''', 1256, ' ''Givatayim''', 545715879, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dina''', 1257, ' ''Elyakhin''', 535169164, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Asher''', 1258, ' ''Ashkelon''', 525429755, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Erez''', 1259, ' ''Giv''atayim''', 771802174, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zalman''', 1260, ' ''Ness Ziona''', 37066970, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rachel''', 1261, ' ''Gedera''', 537889063, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzofia''', 1262, ' ''Eilat''', 535674722, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Boaz''', 1263, ' ''Mevasseret Zion''', 32080487, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gideon''', 1264, ' ''Elyakhin''', 774336519, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yehudit''', 1265, ' ''Hatzor HaGlilit''', 38777603, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gavriella''', 1266, ' ''Bnei Brak''', 536922473, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1267, ' ''Ma''ale Adumim''', 529904050, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uzi''', 1268, ' ''Bnei Brak''', 535913284, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Koren''', 1269, ' ''Migdal HaEmek''', 34545661, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yaron''', 1270, ' ''Herzliya''', 523797154, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Michal''', 1271, ' ''Mevasseret Zion''', 522526855, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hodaya''', 1272, ' ''Kfar Yona''', 523176496, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dalia''', 1273, ' ''Yehud-Monosson''', 776401769, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Levi''', 1274, ' ''Nahariya''', 533528649, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hodaya''', 1275, ' ''Kfar Saba''', 539638761, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avigail''', 1276, ' ''Kiryat Ono''', 534371108, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Geula''', 1277, ' ''Beer Sheva''', 527598286, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Kfir''', 1278, ' ''Yehud''', 38257480, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''David''', 1279, ' ''Rosh HaAyin''', 32346336, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eliana''', 1280, ' ''Jerusalem''', 522960404, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Boaz''', 1281, ' ''Yehud-Monosson''', 33184645, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uzi''', 1282, ' ''Beit Shean''', 521161581, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rivka''', 1283, ' ''Petach Tikvah''', 531085131, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uri''', 1284, ' ''Sderot''', 777185770, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yotam''', 1285, ' ''Lod''', 774776314, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yaara''', 1286, ' ''Kfar Saba''', 772614356, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hadar''', 1287, ' ''Ramat HaSharon''', 538741116, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''David''', 1288, ' ''Yokneam''', 772618447, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dor''', 1289, ' ''Yehud-Monosson''', 771882124, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yigal''', 1290, ' ''Rehovot''', 543320003, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Bracha''', 1291, ' ''Raanana''', 527907978, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1292, ' ''Dimona''', 773452708, null);
commit;
prompt 700 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ayala''', 1293, ' ''Kfar Saba''', 539514632, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Geula''', 1294, ' ''Petach Tikvah''', 546407175, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ophir''', 1295, ' ''Beer Sheva''', 777661094, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ronen''', 1296, ' ''Sderot''', 529770986, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tamar''', 1297, ' ''Modiin''', 537225407, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Boaz''', 1298, ' ''Dimona''', 546872759, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dalia''', 1299, ' ''Arad''', 772354536, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Irit''', 1300, ' ''Givat Ze''ev''', 546901987, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yigal''', 1301, ' ''Kfar Saba''', 527668496, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dov''', 1302, ' ''Harish''', 541613844, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Odelia''', 1303, ' ''Rehovot''', 548705684, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Geula''', 1304, ' ''Arad''', 529106122, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hagar''', 1305, ' ''Ashdod''', 38978751, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chaim''', 1306, ' ''Netivot''', 531468747, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chana''', 1307, ' ''Umm al-Fahm''', 531324673, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Oz''', 1308, ' ''Kiryat Gat''', 776099349, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yoni''', 1309, ' ''Eilat''', 37025644, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zalman''', 1310, ' ''Nahariya''', 542712213, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Orna''', 1311, ' ''Giv''at Shmuel''', 522008494, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uzi''', 1312, ' ''Ramat HaSharon''', 34752992, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Haim''', 1313, ' ''Nof HaGalil''', 537466515, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Lihi''', 1314, ' ''Zichron Yaakov''', 31591266, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mordechai''', 1315, ' ''Kiryat Malakhi''', 38592180, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Menahem''', 1316, ' ''Giv''atayim''', 542277864, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dina''', 1317, ' ''Harish''', 522335987, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1318, ' ''Rishon LeZion''', 524669935, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzvi''', 1319, ' ''Bnei Ayish''', 521279104, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1320, ' ''Ma''ale Adumim''', 535438387, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hodaya''', 1321, ' ''Akko''', 522692822, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hillel''', 1322, ' ''Sakhnin''', 533817050, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1323, ' ''Hatzor HaGlilit''', 37382537, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Hadar''', 1324, ' ''Bnei Ayish''', 543610142, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ilay''', 1325, ' ''Netanya''', 543235157, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Kedem''', 1326, ' ''Ramat Gan''', 35230124, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Benny''', 1327, ' ''Shoham''', 775191027, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chana''', 1328, ' ''Petah Tikva''', 546683518, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yael''', 1329, ' ''Kfar Yona''', 545273746, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Itai''', 1330, ' ''Afula''', 779734314, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Koren''', 1331, ' ''Yokneam''', 532121542, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eitan''', 1332, ' ''Azor''', 548074941, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rinat''', 1333, ' ''Raanana''', 536467124, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chaya''', 1334, ' ''Tirat Carmel''', 523785455, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Oren''', 1335, ' ''Yehud''', 526201373, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yaara''', 1336, ' ''Givatayim''', 779461028, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tzvi''', 1337, ' ''Yehud-Monosson''', 34356301, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Rachel''', 1338, ' ''Kiryat Malakhi''', 777528424, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chana''', 1339, ' ''Migdal HaEmek''', 772137513, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gavriel''', 1340, ' ''Sakhnin''', 31754865, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ronen''', 1341, ' ''Or Akiva''', 547312859, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Levi''', 1342, ' ''Giv''at Shmuel''', 523943303, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Avner''', 1343, ' ''Tirat Carmel''', 39449007, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yael''', 1344, ' ''Tiberias''', 522843840, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nechama''', 1345, ' ''Rishon LeZion''', 537255874, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Maayan''', 1346, ' ''Mevasseret Zion''', 529042168, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chana''', 1347, ' ''Jerusalem''', 34369154, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yishai''', 1348, ' ''Gan Yavne''', 521863781, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Amir''', 1349, ' ''Ramat Gan''', 543438550, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''David''', 1350, ' ''Beer Sheva''', 536732273, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zelda''', 1351, ' ''Afula''', 546092232, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Reut''', 1352, ' ''Ashkelon''', 521842220, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Orna''', 1353, ' ''Dimona''', 532970058, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ofra''', 1354, ' ''Sakhnin''', 541842952, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shira''', 1355, ' ''Karmiel''', 779182392, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ilana''', 1356, ' ''Kfar Saba''', 536031659, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Chana''', 1357, ' ''Netanya''', 33415489, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Haim''', 1358, ' ''Beersheba''', 549043546, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nadav''', 1359, ' ''Or Akiva''', 31788002, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Boaz''', 1360, ' ''Ness Ziona''', 38605044, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yaffa''', 1361, ' ''Beit Shean''', 771526924, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yehudit''', 1362, ' ''Beit Shean''', 539214061, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Tal''', 1363, ' ''Kfar Yona''', 521502959, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1364, ' ''Azor''', 542008630, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yossi''', 1365, ' ''Kiryat Shmona''', 35659107, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zehava''', 1366, ' ''Kiryat Yam''', 31977196, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ophir''', 1367, ' ''Netivot''', 771958855, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yaffa''', 1368, ' ''Bnei Brak''', 531738809, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Ofra''', 1369, ' ''Karmiel''', 528013756, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nava''', 1370, ' ''Or Akiva''', 526081715, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Maayan''', 1371, ' ''Netivot''', 773165623, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Karin''', 1372, ' ''Arad''', 544607795, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Mika''', 1373, ' ''Umm al-Fahm''', 38349880, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Eitan''', 1374, ' ''Kiryat Gat''', 526325241, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Orna''', 1375, ' ''Rehovot''', 779413712, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gavriella''', 1376, ' ''Mevasseret Zion''', 37047648, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Raz''', 1377, ' ''Zichron Yaakov''', 779215733, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Noa''', 1378, ' ''Bat Yam''', 522293591, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Koby''', 1379, ' ''Karmiel''', 35080404, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Israel''', 1380, ' ''Sderot''', 544997524, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Dor''', 1381, ' ''Gedera''', 536925349, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Shira''', 1382, ' ''Nof HaGalil''', 539336151, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Carmel''', 1383, ' ''Jerusalem''', 523274277, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Vered''', 1384, ' ''Shoham''', 32812594, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Zelda''', 1385, ' ''Ra''anana''', 38507398, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Uzi''', 1386, ' ''Kiryat Malakhi''', 531634027, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Nir''', 1387, ' ''Gan Yavne''', 539363839, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Menahem''', 1388, ' ''Kfar Saba''', 534382759, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Elad''', 1389, ' ''Rosh HaAyin''', 527557527, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Koby''', 1390, ' ''Kiryat Shmona''', 528219250, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Keren''', 1391, ' ''Eilat''', 536856680, null);
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Yamit''', 1392, ' ''Nof HaGalil''', 35531779, null);
commit;
prompt 800 records committed...
insert into PETOWNER (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
values ('''Gavriella''', 1393, ' ''Netivot''', 549204075, null);
commit;
prompt 801 records loaded
prompt Loading PET...
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
values ('Louie', 'Snake', 2011, 'F', 173, 1147);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Harley', 'Cockatiel', 2022, 'M', 174, 1119);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Leo', 'Mouse', 2006, 'F', 175, 1024);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Sammy', 'Salamander', 2021, 'F', 176, 1072);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Pepper', 'Gecko', 2011, 'F', 1, 1001);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Harley', 'Salamander', 2020, 'M', 102, 1067);
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
commit;
prompt 100 records committed...
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
values ('Gizmo', 'Lovebird', 2023, 'M', 55, 1020);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Rosie', 'Quail', 2007, 'F', 56, 1056);
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
commit;
prompt 200 records committed...
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
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Buddy', 'Ferret', 2006, 'F', 101, 1009);
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
values ('Sadie', 'Axolotl', 2023, 'F', 53, 1049);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Finn', 'Hermit Crab', 2001, 'M', 54, 1041);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Emma', 'Finch', 2012, 'M', 230, 1071);
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
values ('Chance', 'Sugar Glider', 2014, 'M', 350, 1055);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Molly', 'Cichlid', 2018, 'F', 351, 1344);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Oscar', 'Quail', 2007, 'F', 352, 1168);
insert into PET (petname, petspecies, petbirthyear, petgender, petid, ownerid)
values ('Kona', 'Hermit Crab', 2016, 'M', 353, 1306);
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
commit;
prompt 300 records committed...
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
commit;
prompt 390 records loaded
prompt Loading STAFF...
insert into STAFF (sname, sid, sbirthdate)
values ('Merillee', 124, to_date('04-12-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lynette', 125, to_date('09-09-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ving', 126, to_date('17-06-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ashley', 127, to_date('20-08-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Stellan', 128, to_date('15-08-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Darren', 129, to_date('24-12-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Neil', 130, to_date('06-02-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ray', 131, to_date('02-09-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Manu', 132, to_date('16-08-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Freda', 133, to_date('26-05-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cherry', 134, to_date('25-10-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Thelma', 135, to_date('24-11-1970', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Forest', 136, to_date('26-02-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bernard', 137, to_date('07-06-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Spike', 138, to_date('24-06-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('James', 139, to_date('10-03-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kyra', 140, to_date('28-02-1967', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Wang', 141, to_date('24-12-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Charlton', 142, to_date('16-06-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Neneh', 143, to_date('24-09-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jessica', 144, to_date('15-05-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Graham', 145, to_date('15-07-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mae', 146, to_date('13-01-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kathy', 147, to_date('01-12-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cole', 148, to_date('21-10-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronnie', 149, to_date('22-11-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dean', 150, to_date('12-01-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Illeana', 151, to_date('26-11-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sheryl', 152, to_date('04-05-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Daryle', 153, to_date('13-07-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Edward', 154, to_date('28-08-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Goldie', 155, to_date('30-01-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Stephen', 156, to_date('02-02-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Edwin', 157, to_date('04-10-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Desmond', 158, to_date('09-03-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Timothy', 159, to_date('03-06-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kelly', 160, to_date('08-10-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Wes', 161, to_date('08-03-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Seth', 162, to_date('04-03-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Carla', 163, to_date('17-09-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dick', 164, to_date('03-06-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Graham', 165, to_date('16-06-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maxine', 166, to_date('15-07-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ozzy', 167, to_date('14-06-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eric', 168, to_date('14-12-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cheryl', 169, to_date('28-05-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lucy', 170, to_date('12-08-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rip', 171, to_date('15-05-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bret', 172, to_date('10-09-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Molly', 173, to_date('10-12-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Charlize', 174, to_date('16-04-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maura', 175, to_date('05-05-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Uma', 176, to_date('21-07-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rosanne', 177, to_date('24-03-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Emily', 178, to_date('14-04-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Emm', 179, to_date('24-11-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Samuel', 180, to_date('26-06-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Alex', 79, to_date('27-02-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Vincent', 80, to_date('10-02-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Brad', 81, to_date('26-03-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jerry', 82, to_date('27-04-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Joseph', 83, to_date('31-05-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Janeane', 84, to_date('22-01-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Curt', 85, to_date('23-10-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Halle', 86, to_date('10-06-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Alfred', 87, to_date('29-05-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Joseph', 88, to_date('04-04-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Udo', 89, to_date('13-06-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lena', 90, to_date('04-01-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Christmas', 91, to_date('04-09-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ralph', 92, to_date('11-09-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Larry', 93, to_date('02-11-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ricardo', 94, to_date('26-10-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nancy', 95, to_date('18-06-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Viggo', 96, to_date('07-01-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Brian', 97, to_date('26-08-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Glenn', 98, to_date('04-07-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Willie', 99, to_date('24-05-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tobey', 1, to_date('17-08-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nicole', 102, to_date('21-05-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Fionnula', 2, to_date('24-01-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Maceo', 3, to_date('26-06-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Moe', 4, to_date('02-10-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Roger', 5, to_date('18-02-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Daniel', 6, to_date('01-11-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Christmas', 7, to_date('20-02-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tia', 8, to_date('22-09-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cliff', 9, to_date('28-12-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Laura', 10, to_date('10-05-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ernest', 11, to_date('18-12-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kathleen', 12, to_date('24-03-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jann', 13, to_date('01-08-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bobbi', 14, to_date('03-01-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cornell', 15, to_date('31-12-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hope', 16, to_date('18-09-1956', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Juice', 17, to_date('26-03-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gailard', 18, to_date('02-07-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Edie', 19, to_date('10-03-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronny', 20, to_date('28-01-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nick', 21, to_date('16-01-1960', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into STAFF (sname, sid, sbirthdate)
values ('Rhea', 22, to_date('28-03-1972', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Elle', 23, to_date('26-11-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rickie', 24, to_date('27-12-1970', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rebecca', 25, to_date('21-04-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Spike', 26, to_date('17-01-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Christian', 27, to_date('29-02-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kevin', 28, to_date('16-12-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shirley', 29, to_date('28-04-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Carla', 30, to_date('11-10-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Aaron', 31, to_date('07-01-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lonnie', 32, to_date('21-06-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Vanessa', 33, to_date('23-08-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Woody', 34, to_date('01-01-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Wayman', 35, to_date('22-04-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Isabella', 36, to_date('06-02-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Andie', 37, to_date('03-07-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Shannyn', 38, to_date('25-04-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lesley', 39, to_date('01-09-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gates', 40, to_date('19-01-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Russell', 41, to_date('15-07-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lance', 42, to_date('16-05-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bobbi', 43, to_date('12-04-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Danny', 44, to_date('20-02-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Busta', 45, to_date('16-02-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kathy', 46, to_date('01-10-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Latin', 47, to_date('01-07-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Marie', 48, to_date('14-11-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mary-Louise', 49, to_date('06-06-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Teri', 50, to_date('03-07-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Elvis', 51, to_date('07-04-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rueben', 52, to_date('13-03-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ice', 53, to_date('24-11-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rosanne', 54, to_date('02-10-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Raul', 55, to_date('03-03-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dylan', 56, to_date('17-10-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Wang', 57, to_date('14-10-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ellen', 58, to_date('10-12-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Talvin', 59, to_date('10-07-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Allan', 60, to_date('20-06-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lucy', 61, to_date('22-08-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Drew', 62, to_date('18-11-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Curt', 63, to_date('07-06-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ronny', 64, to_date('01-09-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liv', 65, to_date('29-01-1972', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lenny', 66, to_date('31-01-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Annette', 67, to_date('06-02-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ellen', 68, to_date('25-12-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jena', 69, to_date('21-01-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bridgette', 70, to_date('04-02-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Stellan', 71, to_date('22-06-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jean-Luc', 72, to_date('05-01-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gene', 73, to_date('08-08-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Garland', 74, to_date('27-12-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Regina', 75, to_date('28-08-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bebe', 76, to_date('14-12-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Victor', 77, to_date('18-10-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('King', 78, to_date('05-02-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mary Beth', 101, to_date('13-02-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Irene', 103, to_date('10-11-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Judy', 104, to_date('01-03-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Doug', 105, to_date('21-07-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Natalie', 106, to_date('23-11-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nelly', 107, to_date('20-12-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lindsey', 108, to_date('13-05-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ramsey', 109, to_date('03-12-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Anjelica', 110, to_date('28-04-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jim', 111, to_date('11-04-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kirsten', 112, to_date('03-09-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mary', 113, to_date('05-04-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Julianne', 114, to_date('12-05-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Collin', 115, to_date('24-03-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bradley', 116, to_date('02-04-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('William', 117, to_date('26-04-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Robby', 118, to_date('31-01-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Faye', 119, to_date('01-05-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Orlando', 120, to_date('23-03-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jonny', 121, to_date('27-08-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Josh', 122, to_date('03-02-1956', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chloe', 123, to_date('30-08-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Carlene', 100, to_date('30-01-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sheena', 181, to_date('23-03-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Horace', 182, to_date('15-04-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mickey', 183, to_date('08-07-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gil', 184, to_date('02-01-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ozzy', 185, to_date('28-12-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Luis', 186, to_date('23-06-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Judge', 187, to_date('07-05-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Anne', 188, to_date('03-12-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nik', 189, to_date('27-11-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Don', 190, to_date('07-07-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tim', 191, to_date('15-01-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sophie', 192, to_date('14-09-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Susan', 193, to_date('08-11-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Barbara', 194, to_date('09-08-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kid', 195, to_date('01-07-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gina', 196, to_date('22-11-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Randy', 197, to_date('27-01-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Angela', 198, to_date('27-12-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Micky', 199, to_date('25-02-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Isaiah', 200, to_date('27-09-1981', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into STAFF (sname, sid, sbirthdate)
values ('Phoebe', 201, to_date('20-10-1956', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Vonda', 202, to_date('23-01-1956', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Victor', 203, to_date('05-10-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Pamela', 204, to_date('19-07-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lucy', 205, to_date('27-03-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lari', 206, to_date('29-06-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ceili', 207, to_date('24-07-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Goldie', 208, to_date('17-01-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Thora', 209, to_date('15-02-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ving', 210, to_date('14-05-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Charlie', 211, to_date('02-03-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Beverley', 212, to_date('11-09-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Joaquim', 213, to_date('12-09-1967', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Roscoe', 214, to_date('13-10-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sigourney', 215, to_date('26-06-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chi', 216, to_date('04-06-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Joseph', 217, to_date('06-11-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lonnie', 218, to_date('24-07-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lena', 219, to_date('05-09-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Al', 220, to_date('26-04-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Norm', 221, to_date('01-02-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Scott', 222, to_date('13-10-1958', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Neve', 223, to_date('03-06-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ben', 224, to_date('25-09-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rickie', 225, to_date('26-02-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Julianne', 226, to_date('16-10-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Delroy', 227, to_date('14-12-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Belinda', 228, to_date('07-04-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Natacha', 229, to_date('05-01-1967', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tzi', 230, to_date('22-07-1972', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Andre', 231, to_date('16-09-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Delbert', 232, to_date('13-11-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Albert', 233, to_date('21-08-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Martin', 234, to_date('05-05-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eric', 235, to_date('14-02-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Derek', 236, to_date('01-05-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bob', 237, to_date('21-02-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Andrea', 238, to_date('07-03-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Carl', 239, to_date('18-02-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Angie', 240, to_date('30-04-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Wade', 241, to_date('26-11-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ben', 242, to_date('07-11-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Judy', 243, to_date('29-10-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nelly', 244, to_date('02-10-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Armin', 245, to_date('02-09-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nickel', 246, to_date('08-07-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Hugo', 247, to_date('08-09-1970', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Teena', 248, to_date('13-03-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rhys', 249, to_date('12-07-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rolando', 250, to_date('12-03-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rowan', 251, to_date('02-07-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Whoopi', 252, to_date('06-01-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Pablo', 253, to_date('03-10-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Busta', 254, to_date('14-06-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Talvin', 255, to_date('22-10-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eileen', 256, to_date('21-06-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Trini', 257, to_date('19-11-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Edgar', 258, to_date('09-08-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Edgar', 259, to_date('27-03-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Howie', 260, to_date('12-10-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Howie', 261, to_date('02-10-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mira', 262, to_date('26-10-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nik', 263, to_date('15-05-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sheryl', 264, to_date('05-10-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Vivica', 265, to_date('22-07-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mac', 266, to_date('08-04-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jason', 267, to_date('12-07-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Pablo', 268, to_date('17-01-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Christopher', 269, to_date('22-05-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kristin', 270, to_date('02-06-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Julie', 271, to_date('26-01-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jon', 272, to_date('08-01-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Millie', 273, to_date('09-03-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tramaine', 274, to_date('05-12-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jimmie', 275, to_date('28-06-1993', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gin', 276, to_date('27-10-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Earl', 277, to_date('16-05-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Thora', 278, to_date('17-02-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Brian', 279, to_date('24-04-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Raymond', 280, to_date('21-06-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tanya', 281, to_date('11-11-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gaby', 282, to_date('01-09-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sam', 283, to_date('10-01-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kiefer', 284, to_date('18-11-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rosco', 285, to_date('26-02-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Eric', 286, to_date('22-04-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Daryle', 287, to_date('24-11-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Olympia', 288, to_date('06-05-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Wendy', 289, to_date('21-03-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Johnny', 290, to_date('08-09-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jamie', 291, to_date('19-07-1955', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cesar', 292, to_date('13-05-1962', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gailard', 293, to_date('04-02-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Curtis', 294, to_date('22-01-1981', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Arturo', 295, to_date('09-10-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Annette', 296, to_date('11-02-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Leelee', 297, to_date('17-11-1985', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ivan', 298, to_date('07-11-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Fats', 299, to_date('09-02-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Moe', 300, to_date('20-10-1954', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into STAFF (sname, sid, sbirthdate)
values ('Judge', 301, to_date('17-01-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Charlize', 302, to_date('27-08-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Courtney', 303, to_date('25-11-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Colleen', 304, to_date('22-03-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Bobby', 305, to_date('26-02-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Stockard', 306, to_date('05-03-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Vienna', 307, to_date('27-06-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Junior', 308, to_date('31-10-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rosco', 309, to_date('25-10-1969', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Boyd', 310, to_date('19-01-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Giovanni', 311, to_date('17-03-1967', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Karen', 312, to_date('10-07-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Trace', 313, to_date('27-12-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Loreena', 314, to_date('18-07-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Howard', 315, to_date('21-06-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Joshua', 316, to_date('29-05-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noah', 317, to_date('07-03-1975', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Russell', 318, to_date('13-01-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gailard', 319, to_date('01-05-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ramsey', 320, to_date('07-04-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tracy', 321, to_date('10-01-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('CeCe', 322, to_date('28-08-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dianne', 323, to_date('30-10-1991', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tommy', 324, to_date('02-08-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Amanda', 325, to_date('22-07-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Derek', 326, to_date('25-03-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Vertical', 327, to_date('14-07-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Antonio', 328, to_date('22-08-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Liquid', 329, to_date('27-06-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Alex', 330, to_date('26-11-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Betty', 331, to_date('20-05-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Saul', 332, to_date('05-05-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Garland', 333, to_date('14-09-1990', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Curtis', 334, to_date('04-03-1966', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Chuck', 335, to_date('17-07-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rolando', 336, to_date('25-04-1992', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noah', 337, to_date('12-10-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cole', 338, to_date('23-12-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nikka', 339, to_date('18-07-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Joaquim', 340, to_date('14-04-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Matthew', 341, to_date('15-03-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kathleen', 342, to_date('13-02-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Andre', 343, to_date('17-03-1954', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Irene', 344, to_date('15-03-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Taylor', 345, to_date('26-12-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Larry', 346, to_date('08-01-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lea', 347, to_date('23-03-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ashley', 348, to_date('25-08-1982', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rade', 349, to_date('10-08-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jared', 350, to_date('08-02-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tony', 351, to_date('24-04-1965', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rod', 352, to_date('08-06-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Devon', 353, to_date('29-03-1957', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dylan', 354, to_date('21-07-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Art', 355, to_date('09-10-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dom', 356, to_date('14-03-1963', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dean', 357, to_date('01-05-1996', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Coley', 358, to_date('06-10-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Roberta', 359, to_date('23-09-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Pelvic', 360, to_date('05-03-1960', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Peter', 361, to_date('26-08-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Russell', 362, to_date('28-11-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Debbie', 363, to_date('11-12-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Harriet', 364, to_date('09-02-1959', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Marc', 365, to_date('28-07-1974', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Dan', 366, to_date('30-05-1972', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Herbie', 367, to_date('17-02-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Armand', 368, to_date('25-09-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jane', 369, to_date('29-01-1973', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Andrae', 370, to_date('16-03-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cevin', 371, to_date('29-10-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Glenn', 372, to_date('15-06-1987', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Nickel', 373, to_date('21-02-1995', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Claire', 374, to_date('07-03-1988', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Leon', 375, to_date('24-09-1964', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Irene', 376, to_date('13-01-1986', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Noah', 377, to_date('30-09-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lucinda', 378, to_date('14-10-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Meg', 379, to_date('21-07-1977', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Remy', 380, to_date('14-11-1980', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ving', 381, to_date('13-04-1968', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Tilda', 382, to_date('13-10-1952', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Red', 383, to_date('14-07-1989', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Gil', 384, to_date('25-12-1950', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ned', 385, to_date('20-09-1976', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rebeka', 386, to_date('09-10-1983', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Toshiro', 387, to_date('22-04-1984', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Harold', 388, to_date('09-09-1971', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Pelvic', 389, to_date('30-07-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Cheech', 390, to_date('11-12-1953', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Kimberly', 391, to_date('24-07-1997', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Lisa', 392, to_date('16-09-1994', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Mint', 393, to_date('11-09-1998', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Ossie', 394, to_date('04-01-1961', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Jean-Claude', 395, to_date('23-05-1979', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Miranda', 396, to_date('13-07-1999', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Thin', 397, to_date('12-10-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Sophie', 398, to_date('29-01-1978', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Rosanne', 399, to_date('07-05-1951', 'dd-mm-yyyy'));
insert into STAFF (sname, sid, sbirthdate)
values ('Miranda', 400, to_date('20-05-1963', 'dd-mm-yyyy'));
commit;
prompt 400 records loaded
prompt Loading VET...
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
values ('surgeon', 1993, 2, 1);
insert into VET (vspeciality, vstartyear, vrank, sid)
values ('General', 2006, 3, 102);
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
commit;
prompt 100 records committed...
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
values ('surgeon', 2006, 2, 101);
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
values ('surgeon', 2002, 2, 100);
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
values (to_date('15-10-2023', 'dd-mm-yyyy'), 131, 101, 324, 5);
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
values (to_date('07-05-2022', 'dd-mm-yyyy'), 566, 122, 390, 156);
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
commit;
prompt 100 records committed...
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
values (to_date('17-07-2021', 'dd-mm-yyyy'), 525, 1, 367, 142);
insert into APPOINTMENT (appdate, appcost, appid, petid, sid)
values (to_date('12-05-2021', 'dd-mm-yyyy'), 417, 102, 76, 370);
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
commit;
prompt 200 records committed...
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
commit;
prompt 300 records committed...
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
commit;
prompt 395 records loaded
prompt Loading TRANSPORTATION...
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Cary', 1, to_date('08-04-2011', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Clay', 2, to_date('25-09-2855', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Harris', 3, to_date('18-05-2856', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Clarence', 4, to_date('29-09-2317', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Bernie', 5, to_date('03-10-2729', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Rosanna', 6, to_date('10-11-2423', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Ming-Na', 7, to_date('28-09-2793', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Christina', 8, to_date('22-03-2173', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Clarence', 9, to_date('27-02-2465', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Anne', 10, to_date('28-08-2527', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Tara', 11, to_date('03-08-2710', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Lynette', 12, to_date('18-12-2864', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Franco', 13, to_date('25-03-2115', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Juliet', 14, to_date('10-08-1989', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Jean-Claude', 15, to_date('10-09-2717', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Judy', 16, to_date('10-06-2130', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Vonda', 17, to_date('07-04-2044', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Jesus', 18, to_date('22-03-2124', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Mickey', 19, to_date('09-06-2843', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Sonny', 20, to_date('07-11-2010', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Rhett', 21, to_date('29-05-2303', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Matt', 22, to_date('04-06-2448', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Jim', 23, to_date('28-10-2094', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Ali', 24, to_date('20-03-2527', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Mykelti', 25, to_date('13-06-1988', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Morris', 26, to_date('06-12-2653', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Patti', 27, to_date('16-10-2985', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Rachael', 28, to_date('17-10-2619', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Juliet', 29, to_date('21-11-2236', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Yolanda', 30, to_date('03-08-2040', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Antonio', 31, to_date('15-02-2075', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Kate', 32, to_date('06-09-2048', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Xander', 33, to_date('19-08-2372', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Tal', 34, to_date('24-09-2014', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Elias', 35, to_date('02-04-2618', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Forest', 36, to_date('25-01-2951', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Mary-Louise', 37, to_date('18-06-2519', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Freddie', 38, to_date('19-06-2263', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Tim', 39, to_date('22-02-2241', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Vienna', 40, to_date('16-01-2989', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Jimmie', 41, to_date('27-09-2779', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Jeffery', 42, to_date('17-07-2676', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Mykelti', 43, to_date('11-11-2911', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Caroline', 44, to_date('21-10-2889', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Beth', 45, to_date('09-01-2304', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Bette', 46, to_date('19-09-2214', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Steven', 47, to_date('16-06-2585', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Rene', 48, to_date('24-05-2085', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Lizzy', 49, to_date('15-02-3047', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Merillee', 50, to_date('08-06-2680', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Helen', 51, to_date('17-10-2274', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Pablo', 52, to_date('13-01-2314', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Nicolas', 53, to_date('17-08-2133', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Vertical', 54, to_date('06-05-2122', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Susan', 55, to_date('12-11-2621', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Rhea', 56, to_date('05-07-2885', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Rosario', 57, to_date('04-08-2910', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Glen', 58, to_date('27-02-2880', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Ned', 59, to_date('24-10-1967', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Suzy', 60, to_date('05-01-2181', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Jesus', 61, to_date('09-05-2152', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Rawlins', 62, to_date('07-08-1950', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Jake', 63, to_date('24-11-2333', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Irene', 64, to_date('14-12-2612', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Fiona', 65, to_date('18-10-2897', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Ryan', 66, to_date('13-01-2204', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Cathy', 67, to_date('06-11-2973', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Campbell', 68, to_date('27-04-2453', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Dave', 69, to_date('28-06-2741', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Alan', 70, to_date('12-03-2137', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Catherine', 71, to_date('04-12-2608', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Terri', 72, to_date('26-12-2917', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Grant', 73, to_date('12-05-2943', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Isabella', 74, to_date('01-09-2103', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Woody', 75, to_date('16-02-2353', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Busta', 76, to_date('19-03-2744', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Marianne', 77, to_date('14-05-2877', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Taye', 78, to_date('09-03-2934', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Steven', 79, to_date('05-12-2805', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Pablo', 80, to_date('13-04-2181', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Wayne', 81, to_date('28-04-2253', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Karen', 82, to_date('21-10-2550', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Davy', 83, to_date('21-11-2018', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Jackson', 84, to_date('24-07-2154', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Julianna', 85, to_date('28-06-2090', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Busta', 86, to_date('22-05-2352', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Adina', 87, to_date('22-06-2512', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Parker', 88, to_date('18-02-2296', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Tilda', 89, to_date('30-11-2770', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Greg', 90, to_date('01-05-2517', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Mary-Louise', 91, to_date('03-09-2887', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Wade', 92, to_date('08-01-3005', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Eddie', 93, to_date('04-02-2498', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Suzy', 94, to_date('04-10-2116', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Stevie', 95, to_date('03-04-2787', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Olympia', 96, to_date('30-12-2882', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Raul', 97, to_date('09-07-2132', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Gabrielle', 98, to_date('18-08-2586', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Jared', 99, to_date('20-11-2042', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Stellan', 100, to_date('25-07-2000', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Bob', 101, to_date('31-10-2678', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Teena', 102, to_date('14-01-2818', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Ving', 103, to_date('17-06-2184', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Sheryl', 104, to_date('06-02-2927', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Nina', 105, to_date('03-02-1984', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Laurie', 106, to_date('19-10-2640', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Andrae', 107, to_date('22-12-2318', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Caroline', 108, to_date('04-01-2929', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Ronny', 109, to_date('06-03-2204', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Leonardo', 110, to_date('29-08-2371', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Temuera', 111, to_date('22-12-2846', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Edgar', 112, to_date('04-06-2783', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Crystal', 113, to_date('08-01-2260', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Joseph', 114, to_date('15-02-2855', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Debbie', 115, to_date('15-06-2556', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Hugh', 116, to_date('07-12-2680', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Rodney', 117, to_date('06-08-2715', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Shannyn', 118, to_date('31-07-2487', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Corey', 119, to_date('28-01-1974', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'King', 120, to_date('26-06-3021', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Gilberto', 121, to_date('11-01-2591', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Natacha', 122, to_date('01-04-2120', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Loren', 123, to_date('17-06-2629', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Aaron', 124, to_date('24-04-2331', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Katie', 125, to_date('05-09-2019', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Treat', 126, to_date('22-07-1984', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Thora', 127, to_date('10-04-2765', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Jody', 128, to_date('18-08-2461', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Debbie', 129, to_date('22-08-2609', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Jeroen', 130, to_date('29-05-2123', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Fats', 131, to_date('26-02-2079', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Randall', 132, to_date('11-10-2125', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Roscoe', 133, to_date('24-10-2367', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Anna', 134, to_date('05-01-2819', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Benicio', 135, to_date('07-04-2507', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Richard', 136, to_date('07-06-2458', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Suzy', 137, to_date('14-02-2329', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Nikka', 138, to_date('22-10-2977', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Colm', 139, to_date('05-06-2936', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Bryan', 140, to_date('27-12-2713', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Jaime', 141, to_date('20-06-2346', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Carla', 142, to_date('06-05-2958', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Taye', 143, to_date('01-11-2488', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Vickie', 144, to_date('28-02-2144', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Frederic', 145, to_date('14-12-2595', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Robbie', 146, to_date('30-03-2159', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Charles', 147, to_date('21-09-2622', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Anne', 148, to_date('26-09-2046', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Mindy', 149, to_date('06-01-2952', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Wayman', 150, to_date('25-10-1968', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Rosario', 151, to_date('27-05-2114', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Vertical', 152, to_date('15-03-2271', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Zooey', 153, to_date('03-01-2088', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Leon', 154, to_date('22-07-2629', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Roger', 155, to_date('15-04-2799', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Halle', 156, to_date('01-12-2047', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Liam', 157, to_date('11-11-1979', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Alannah', 158, to_date('24-03-2855', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Jennifer', 159, to_date('21-05-1910', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Edgar', 160, to_date('10-06-2366', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Kirk', 161, to_date('04-09-2617', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Ben', 162, to_date('20-12-1924', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Maria', 163, to_date('12-01-2415', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Rueben', 164, to_date('11-11-2718', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Gilbert', 165, to_date('21-01-2598', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Jerry', 166, to_date('07-12-1920', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Andrae', 167, to_date('28-05-2489', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Rodney', 168, to_date('03-10-2956', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Simon', 169, to_date('14-04-2749', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Alan', 170, to_date('31-05-2190', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Belinda', 171, to_date('28-01-1999', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Illeana', 172, to_date('23-09-2489', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Veruca', 173, to_date('10-11-2003', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Courtney', 174, to_date('14-09-1925', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Drew', 175, to_date('05-01-3000', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Angie', 176, to_date('11-06-2282', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Kevin', 177, to_date('17-04-2073', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Judge', 178, to_date('23-08-2354', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Joe', 179, to_date('02-03-2735', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Madeline', 180, to_date('21-02-2466', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Harry', 181, to_date('27-02-2496', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Edwin', 182, to_date('09-09-2680', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Davey', 183, to_date('30-08-2589', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Wade', 184, to_date('30-05-2785', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Hugh', 185, to_date('24-03-2026', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Josh', 186, to_date('01-12-3019', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Radney', 187, to_date('24-10-2669', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Shirley', 188, to_date('07-11-2811', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Miguel', 189, to_date('08-11-2630', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Nina', 190, to_date('27-02-2006', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Ritchie', 191, to_date('16-03-2529', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Jared', 192, to_date('13-12-2677', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Michelle', 193, to_date('26-05-2080', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Russell', 194, to_date('20-10-2899', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Tori', 195, to_date('20-03-2989', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Alex', 196, to_date('21-08-3026', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Sissy', 197, to_date('14-09-2560', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Christian', 198, to_date('20-04-2348', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Hilton', 199, to_date('14-04-1943', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Connie', 200, to_date('01-01-1990', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Collective', 201, to_date('13-09-3062', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Roy', 202, to_date('04-01-2092', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Joseph', 203, to_date('12-07-2022', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Pete', 204, to_date('13-09-2591', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Roy', 205, to_date('10-03-2393', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Talvin', 206, to_date('06-08-3064', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Robbie', 207, to_date('11-08-2433', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Gordie', 208, to_date('05-05-1928', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Anthony', 209, to_date('23-05-2315', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Elle', 210, to_date('13-11-2778', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Geena', 211, to_date('04-09-2841', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Dean', 212, to_date('01-07-1982', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Lucinda', 213, to_date('30-08-2973', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Kristin', 214, to_date('03-12-3071', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Maury', 215, to_date('19-06-2780', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Miguel', 216, to_date('18-06-2251', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Mary Beth', 217, to_date('11-06-3041', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Danny', 218, to_date('01-11-2651', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Brenda', 219, to_date('31-12-2707', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Morris', 220, to_date('25-02-2873', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Rowan', 221, to_date('23-05-2038', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Clint', 222, to_date('26-03-2098', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Rueben', 223, to_date('15-01-2537', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Simon', 224, to_date('20-08-2539', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Mel', 225, to_date('09-11-2556', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Carrie-Anne', 226, to_date('19-07-2226', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Kyra', 227, to_date('03-12-1994', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Christina', 228, to_date('06-10-2828', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Wesley', 229, to_date('14-03-2200', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Elisabeth', 230, to_date('29-09-2889', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Merillee', 231, to_date('03-07-2757', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Gary', 232, to_date('28-07-2656', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Victor', 233, to_date('21-11-2958', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Rosanne', 234, to_date('05-01-2530', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Jack', 235, to_date('11-01-2013', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Dylan', 236, to_date('28-04-2124', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Devon', 237, to_date('22-10-2544', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (39, 'Sonny', 238, to_date('23-04-2614', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Sara', 239, to_date('02-11-2682', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'James', 240, to_date('09-08-2402', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Devon', 241, to_date('02-02-3053', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Nigel', 242, to_date('07-05-2567', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Martha', 243, to_date('28-07-2320', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Thomas', 244, to_date('25-09-2699', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Etta', 245, to_date('30-10-2059', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Mac', 246, to_date('01-01-2859', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'France', 247, to_date('22-09-2967', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Debra', 248, to_date('12-04-2711', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Gilbert', 249, to_date('18-01-2113', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Regina', 250, to_date('03-08-2447', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Miko', 251, to_date('28-03-2223', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Greg', 252, to_date('05-08-2778', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Vanessa', 253, to_date('30-04-1961', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Anthony', 254, to_date('02-06-2944', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Rip', 255, to_date('18-05-2513', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Clay', 256, to_date('26-09-2509', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Mae', 257, to_date('04-09-2537', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Busta', 258, to_date('21-04-2761', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Henry', 259, to_date('07-05-2935', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Aaron', 260, to_date('27-09-2437', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Linda', 261, to_date('24-04-2214', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Scott', 262, to_date('08-10-2425', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Dick', 263, to_date('01-05-3017', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Rachid', 264, to_date('11-02-3002', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Swoosie', 265, to_date('29-09-1998', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Sydney', 266, to_date('05-10-2561', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Bonnie', 267, to_date('10-02-2171', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Jimmy', 268, to_date('27-09-2488', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Delbert', 269, to_date('11-05-2830', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Eliza', 270, to_date('09-08-2197', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Chalee', 271, to_date('04-07-2425', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Gordon', 272, to_date('04-01-2913', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Junior', 273, to_date('04-10-2124', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Benicio', 274, to_date('27-03-3005', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Tea', 275, to_date('27-05-2332', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Mekhi', 276, to_date('14-12-2550', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Renee', 277, to_date('09-12-2886', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Frederic', 278, to_date('24-03-3026', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Ice', 279, to_date('01-11-1980', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Anne', 280, to_date('05-12-2329', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Rhea', 281, to_date('29-05-1971', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Karon', 282, to_date('20-05-2539', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Kieran', 283, to_date('23-02-2895', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Stephen', 284, to_date('23-10-3019', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Patricia', 285, to_date('17-01-1972', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Juan', 286, to_date('01-09-2685', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Jeffery', 287, to_date('21-02-2174', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Larnelle', 288, to_date('11-06-2209', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Penelope', 289, to_date('28-09-2148', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Norm', 290, to_date('26-05-2454', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Chazz', 291, to_date('11-07-2864', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Chad', 292, to_date('25-11-2698', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Sarah', 293, to_date('18-03-2878', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Albert', 294, to_date('25-07-2280', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Luis', 295, to_date('31-03-2884', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Collective', 296, to_date('29-12-3074', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Eliza', 297, to_date('21-05-1966', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Diamond', 298, to_date('14-05-2806', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Terrence', 299, to_date('07-09-2715', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Denny', 300, to_date('19-02-2679', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Micky', 301, to_date('02-12-2610', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Pierce', 302, to_date('03-03-2941', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Steven', 303, to_date('14-08-3003', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Victor', 304, to_date('13-03-2906', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Frank', 305, to_date('10-10-2531', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Jay', 306, to_date('30-09-2823', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Jonatha', 307, to_date('24-03-2292', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Clive', 308, to_date('06-12-2353', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Night', 309, to_date('07-02-2285', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Lara', 310, to_date('26-11-2297', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Ashton', 311, to_date('04-05-1901', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Mark', 312, to_date('17-02-2451', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Rebecca', 313, to_date('04-06-2866', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Thin', 314, to_date('08-05-2269', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Tramaine', 315, to_date('22-12-2893', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Lucinda', 316, to_date('25-05-2857', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Nicolas', 317, to_date('13-03-2984', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Chazz', 318, to_date('04-08-2494', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Thelma', 319, to_date('13-07-2723', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Rowan', 320, to_date('17-09-2674', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'George', 321, to_date('16-04-1975', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Maura', 322, to_date('22-10-2581', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Davis', 323, to_date('01-08-2970', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Bridget', 324, to_date('31-07-2638', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Hazel', 325, to_date('25-07-2868', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Shannon', 326, to_date('13-04-2694', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Anna', 327, to_date('22-02-2244', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (29, 'Jaime', 328, to_date('29-06-2574', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Trick', 329, to_date('22-06-2165', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Fairuza', 330, to_date('13-12-1916', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Kenneth', 331, to_date('06-02-2708', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Susan', 332, to_date('25-06-2810', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Debby', 333, to_date('07-11-2588', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Katie', 334, to_date('04-11-1947', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Patrick', 335, to_date('06-10-2543', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Merrill', 336, to_date('27-08-2067', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Dermot', 337, to_date('05-03-3031', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (49, 'Mae', 338, to_date('23-10-2903', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Emerson', 339, to_date('07-06-2221', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Donald', 340, to_date('11-05-2283', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Allison', 341, to_date('30-05-2541', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Cesar', 342, to_date('25-12-3017', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Gloria', 343, to_date('01-05-2183', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (37, 'Lucinda', 344, to_date('05-08-2893', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Night', 345, to_date('27-07-2567', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Spencer', 346, to_date('24-05-2541', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (44, 'Hilary', 347, to_date('28-02-2760', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Dean', 348, to_date('05-10-2672', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Davy', 349, to_date('24-01-2549', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Don', 350, to_date('21-09-3047', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Stephanie', 351, to_date('03-05-2150', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Kimberly', 352, to_date('13-07-2828', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Ozzy', 353, to_date('20-11-3061', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Franz', 354, to_date('18-06-3041', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Miki', 355, to_date('17-02-2696', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Embeth', 356, to_date('13-11-2991', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Amanda', 357, to_date('12-04-2791', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Kristin', 358, to_date('10-01-2823', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (21, 'Taylor', 359, to_date('14-02-3059', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Jamie', 360, to_date('13-09-2026', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Giovanni', 361, to_date('23-12-2946', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (35, 'Raul', 362, to_date('23-03-2460', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (43, 'Neneh', 363, to_date('06-01-2404', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Campbell', 364, to_date('23-08-2942', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (34, 'Jet', 365, to_date('21-12-2455', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Debi', 366, to_date('14-11-2879', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Robby', 367, to_date('27-08-3012', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (45, 'Joy', 368, to_date('27-07-2673', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (24, 'Thelma', 369, to_date('10-05-2839', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Colm', 370, to_date('30-04-2748', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Alice', 371, to_date('28-09-2747', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'Jim', 372, to_date('07-10-3046', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (38, 'Amy', 373, to_date('13-08-1992', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Al', 374, to_date('06-08-2918', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Gaby', 375, to_date('23-04-2005', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Penelope', 376, to_date('02-01-1951', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (25, 'Lennie', 377, to_date('07-06-2243', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Johnette', 378, to_date('05-06-2293', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (28, 'Kristin', 379, to_date('08-07-3052', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (23, 'Tanya', 380, to_date('06-03-2792', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (41, 'John', 381, to_date('14-01-1911', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Judd', 382, to_date('27-08-2173', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (47, 'Jackson', 383, to_date('19-06-2283', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (20, 'Rachael', 384, to_date('30-08-3008', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (40, 'Gord', 385, to_date('15-10-2208', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Wayne', 386, to_date('12-04-2353', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (30, 'Edie', 387, to_date('12-02-2090', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Vienna', 388, to_date('12-11-2674', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (46, 'Aidan', 389, to_date('26-08-2829', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Chubby', 390, to_date('07-10-1914', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (50, 'Jessica', 391, to_date('10-01-2312', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (27, 'Fionnula', 392, to_date('09-07-2784', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (26, 'Juliet', 393, to_date('31-05-2181', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (22, 'Mia', 394, to_date('06-02-2685', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (33, 'Julia', 395, to_date('16-06-2077', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (48, 'Wendy', 396, to_date('09-06-1904', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (36, 'Nancy', 397, to_date('13-06-2069', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (31, 'Carl', 398, to_date('04-11-3023', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (42, 'Michael', 399, to_date('05-09-1985', 'dd-mm-yyyy'));
insert into TRANSPORTATION (number_of_passengers, driver, id_transportation, duration_time)
values (32, 'Chloe', 400, to_date('27-04-2535', 'dd-mm-yyyy'));
commit;
prompt 400 records loaded
prompt Loading TRIP...
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jeremy', 1, 2192, 1, to_date('12-11-2117', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Grant', 2, 300, 2, to_date('19-08-2011', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sigourney', 3, 3912, 3, to_date('24-06-2415', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Holly', 4, 1607, 4, to_date('25-09-2525', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dwight', 5, 3745, 5, to_date('26-02-2723', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ivan', 6, 2267, 6, to_date('26-01-2531', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Roy', 7, 1459, 7, to_date('26-11-2398', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jean', 8, 3058, 8, to_date('13-09-1964', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Regina', 9, 3995, 9, to_date('27-12-1941', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Miki', 10, 2146, 10, to_date('06-08-2210', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ronny', 11, 2109, 11, to_date('10-08-2471', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Merle', 12, 2059, 12, to_date('01-01-2688', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sally', 13, 1476, 13, to_date('15-02-2850', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Orlando', 14, 2655, 14, to_date('06-10-2404', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Praga', 15, 1904, 15, to_date('04-12-2620', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Charlize', 16, 3541, 16, to_date('26-08-2194', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gerald', 17, 3404, 17, to_date('21-07-2896', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Belinda', 18, 1106, 18, to_date('10-09-2807', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nicky', 19, 1728, 19, to_date('11-09-2657', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Delroy', 20, 1950, 20, to_date('11-01-2301', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dionne', 21, 2026, 21, to_date('27-03-2040', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Chris', 22, 2857, 22, to_date('24-02-2775', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ray', 23, 2000, 23, to_date('19-01-2191', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Faye', 24, 2516, 24, to_date('16-08-2096', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Judy', 25, 2732, 25, to_date('17-03-2909', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nicolas', 26, 3337, 26, to_date('19-04-2620', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Wally', 27, 1696, 27, to_date('23-05-2005', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rueben', 28, 2951, 28, to_date('12-04-2715', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Alfie', 29, 1724, 29, to_date('29-06-2706', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Robby', 30, 1676, 30, to_date('10-01-2182', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jay', 31, 3408, 31, to_date('09-03-2007', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mint', 32, 2372, 32, to_date('15-03-1965', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rory', 33, 3905, 33, to_date('06-04-2751', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Billy', 34, 2122, 34, to_date('06-06-2490', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Queen', 35, 2947, 35, to_date('30-06-2962', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Julie', 36, 2993, 36, to_date('21-02-3016', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Melanie', 37, 1311, 37, to_date('16-01-3042', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Carlos', 38, 2150, 38, to_date('05-11-2536', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Miriam', 39, 2708, 39, to_date('08-05-1901', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Geggy', 40, 3892, 40, to_date('30-09-2839', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mika', 41, 1224, 41, to_date('11-10-2438', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ronnie', 42, 2953, 42, to_date('15-07-2264', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Aaron', 43, 1793, 43, to_date('15-10-1932', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Grant', 44, 1890, 44, to_date('31-03-2828', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jesus', 45, 1796, 45, to_date('25-04-3012', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jake', 46, 3726, 46, to_date('27-07-2023', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mint', 47, 3617, 47, to_date('24-06-2240', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jena', 48, 3350, 48, to_date('15-12-1995', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sophie', 49, 2822, 49, to_date('16-10-2116', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Hilary', 50, 1917, 50, to_date('19-07-1962', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jimmie', 51, 1485, 51, to_date('07-10-2525', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Angie', 52, 3418, 52, to_date('25-05-2841', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Shawn', 53, 1998, 53, to_date('24-02-3071', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Hilton', 54, 1374, 54, to_date('21-12-2771', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jane', 55, 2388, 55, to_date('19-12-2366', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Madeline', 56, 1048, 56, to_date('28-11-2621', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Azucar', 57, 2794, 57, to_date('26-01-2723', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Vern', 58, 1042, 58, to_date('04-06-2432', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jesus', 59, 2964, 59, to_date('12-10-2127', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jonathan', 60, 1809, 60, to_date('01-03-3058', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Victoria', 61, 3780, 61, to_date('09-06-2656', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Oro', 62, 3651, 62, to_date('05-08-2729', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Darius', 63, 3410, 63, to_date('28-05-2934', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rosie', 64, 3297, 64, to_date('11-02-2401', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Uma', 65, 3032, 65, to_date('09-08-2903', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Donna', 66, 3559, 66, to_date('11-07-1962', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Karon', 67, 1788, 67, to_date('09-12-2358', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jason', 68, 3704, 68, to_date('03-12-2290', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Franco', 69, 3970, 69, to_date('26-01-1993', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Red', 70, 3672, 70, to_date('16-02-2306', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sander', 71, 1980, 71, to_date('01-04-2731', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('William', 72, 2818, 72, to_date('19-08-2159', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Daniel', 73, 3734, 73, to_date('04-03-2763', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kid', 74, 1113, 74, to_date('18-09-2962', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nikka', 75, 3268, 75, to_date('17-10-2258', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Keith', 76, 1527, 76, to_date('14-01-2436', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Charlie', 77, 2966, 77, to_date('06-06-2499', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Emm', 78, 2057, 78, to_date('29-11-2271', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Petula', 79, 3275, 79, to_date('02-06-2927', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Teena', 80, 3601, 80, to_date('06-07-2827', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Juliana', 81, 1604, 81, to_date('10-09-2691', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kirk', 82, 3917, 82, to_date('23-02-2844', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Whoopi', 83, 1764, 83, to_date('12-09-2422', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Queen', 84, 3311, 84, to_date('10-04-2238', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Steven', 85, 3036, 85, to_date('06-10-2269', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cheech', 86, 3785, 86, to_date('28-11-2317', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rik', 87, 2501, 87, to_date('28-01-2281', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Vondie', 88, 3186, 88, to_date('01-10-2473', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sinead', 89, 1745, 89, to_date('20-02-1970', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Melanie', 90, 2822, 90, to_date('16-04-2023', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Betty', 91, 2195, 91, to_date('28-02-2450', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rebeka', 92, 1944, 92, to_date('24-11-2887', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Swoosie', 93, 2292, 93, to_date('01-05-1919', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gene', 94, 3997, 94, to_date('10-12-2628', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Angelina', 95, 1238, 95, to_date('14-03-2120', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ernest', 96, 1394, 96, to_date('24-01-2822', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kiefer', 97, 1233, 97, to_date('10-07-3035', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Veruca', 98, 1353, 98, to_date('06-03-2004', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Janeane', 99, 2721, 99, to_date('09-06-2288', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Joseph', 100, 3872, 100, to_date('01-02-1932', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Maria', 101, 2368, 101, to_date('08-08-1977', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Norm', 102, 1741, 102, to_date('26-08-2590', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cledus', 103, 2973, 103, to_date('07-04-2284', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jody', 104, 2483, 104, to_date('22-01-2905', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Oded', 105, 1380, 105, to_date('26-04-2590', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Keith', 106, 3660, 106, to_date('13-03-2946', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ricky', 107, 1609, 107, to_date('25-08-2767', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gabriel', 108, 3222, 108, to_date('02-10-2546', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Vondie', 109, 2774, 109, to_date('20-11-2412', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cary', 110, 2650, 110, to_date('25-09-2509', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Taryn', 111, 2808, 111, to_date('14-02-2137', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sona', 112, 1749, 112, to_date('05-04-2199', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dar', 113, 3684, 113, to_date('02-01-2482', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kelli', 114, 3412, 114, to_date('22-03-3069', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ritchie', 115, 1307, 115, to_date('19-08-2975', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Clint', 116, 3377, 116, to_date('16-04-2891', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Chalee', 117, 2938, 117, to_date('21-05-1936', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gord', 118, 1549, 118, to_date('15-11-2467', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Alfred', 119, 1370, 119, to_date('25-04-1947', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Louise', 120, 1567, 120, to_date('08-09-2657', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rodney', 121, 1470, 121, to_date('07-05-2723', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nathan', 122, 3639, 122, to_date('26-12-2247', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cate', 123, 3680, 123, to_date('23-12-2703', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Patricia', 124, 1977, 124, to_date('23-08-1999', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Liquid', 125, 2946, 125, to_date('30-05-2965', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Donna', 126, 2018, 126, to_date('25-01-3013', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gordie', 127, 3907, 127, to_date('10-01-2284', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Paul', 128, 2860, 128, to_date('16-07-2584', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jackson', 129, 3218, 129, to_date('08-08-2523', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mitchell', 130, 1497, 130, to_date('19-02-2740', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Morris', 131, 2449, 131, to_date('12-08-2909', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jena', 132, 2364, 132, to_date('06-02-2217', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Grace', 133, 2955, 133, to_date('01-02-2255', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Teri', 134, 3877, 134, to_date('14-08-2984', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lenny', 135, 1553, 135, to_date('17-08-2604', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lennie', 136, 2016, 136, to_date('06-07-2342', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Danni', 137, 3571, 137, to_date('19-03-2275', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jarvis', 138, 3983, 138, to_date('24-04-2344', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jeff', 139, 2819, 139, to_date('22-03-3016', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Alice', 140, 3463, 140, to_date('17-04-2303', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Tamala', 141, 1301, 141, to_date('27-01-2476', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Taylor', 142, 3611, 142, to_date('21-04-2703', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Marina', 143, 3813, 143, to_date('29-06-2561', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Tal', 144, 2234, 144, to_date('15-03-1902', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Elijah', 145, 1041, 145, to_date('12-02-2968', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ramsey', 146, 2571, 146, to_date('23-09-2330', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Davy', 147, 2283, 147, to_date('14-10-2110', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Maggie', 148, 1101, 148, to_date('20-10-2367', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Temuera', 149, 3301, 149, to_date('30-04-2405', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Laura', 150, 1742, 150, to_date('27-04-1943', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Elisabeth', 151, 2202, 151, to_date('22-05-2500', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ike', 152, 3314, 152, to_date('09-10-1992', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Juliana', 153, 2397, 153, to_date('11-10-3031', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Trick', 154, 2811, 154, to_date('15-02-1922', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Curtis', 155, 1624, 155, to_date('02-07-2859', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gina', 156, 3763, 156, to_date('25-09-2999', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Night', 157, 1725, 157, to_date('03-04-2183', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Doug', 158, 2128, 158, to_date('19-07-2093', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Connie', 159, 3097, 159, to_date('02-07-1974', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Celia', 160, 2877, 160, to_date('09-04-2974', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ossie', 161, 1737, 161, to_date('20-03-2012', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Edie', 162, 3837, 162, to_date('08-08-2843', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dustin', 163, 1100, 163, to_date('23-01-2856', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Maureen', 164, 2781, 164, to_date('27-11-2118', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Robby', 165, 3974, 165, to_date('27-10-2470', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('William', 166, 3204, 166, to_date('10-09-1924', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Vince', 167, 3761, 167, to_date('04-09-2153', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Shannon', 168, 3033, 168, to_date('01-07-2607', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gwyneth', 169, 3259, 169, to_date('29-08-2852', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rhys', 170, 2832, 170, to_date('01-09-2774', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Carrie', 171, 2815, 171, to_date('03-04-2800', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Stanley', 172, 1972, 172, to_date('21-10-2483', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sigourney', 173, 3932, 173, to_date('11-04-2210', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nigel', 174, 2157, 174, to_date('17-04-2249', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Tracy', 175, 1560, 175, to_date('03-08-2721', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rosanna', 176, 1479, 176, to_date('29-10-2128', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Carole', 177, 3705, 177, to_date('05-07-2194', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Brian', 178, 3424, 178, to_date('06-11-2397', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Heath', 179, 1279, 179, to_date('06-12-2108', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Shelby', 180, 1701, 180, to_date('16-03-2810', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Tommy', 181, 3517, 181, to_date('02-12-2044', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Tcheky', 182, 3045, 182, to_date('23-10-3011', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rosanne', 183, 3371, 183, to_date('28-01-2668', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cate', 184, 3032, 184, to_date('08-03-2991', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dar', 185, 3502, 185, to_date('05-04-2800', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Candice', 186, 1021, 186, to_date('05-07-2525', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Courtney', 187, 1163, 187, to_date('19-12-1949', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Marisa', 188, 3391, 188, to_date('08-04-3074', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Uma', 189, 2907, 189, to_date('23-10-2814', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Donal', 190, 1849, 190, to_date('19-01-2216', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cathy', 191, 2168, 191, to_date('30-11-2624', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nick', 192, 3608, 192, to_date('22-07-2502', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Phoebe', 193, 1593, 193, to_date('11-08-2237', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Wes', 194, 2080, 194, to_date('14-01-3064', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Vin', 195, 2226, 195, to_date('14-02-2764', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Stephen', 196, 1458, 196, to_date('28-08-2833', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mili', 197, 1464, 197, to_date('19-12-2655', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Crispin', 198, 2461, 198, to_date('24-07-2569', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Joey', 199, 1808, 199, to_date('21-05-2865', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Omar', 200, 3633, 200, to_date('20-02-2473', 'dd-mm-yyyy'));
commit;
prompt 200 records committed...
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Maria', 201, 3944, 201, to_date('23-07-2509', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Alex', 202, 2318, 202, to_date('21-06-2639', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nicolas', 203, 2441, 203, to_date('06-05-2154', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Christopher', 204, 1705, 204, to_date('18-12-1973', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rachel', 205, 3342, 205, to_date('27-07-2110', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Pierce', 206, 3615, 206, to_date('24-08-2326', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kevin', 207, 2993, 207, to_date('20-03-2847', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Patty', 208, 2891, 208, to_date('16-01-2649', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jaime', 209, 3747, 209, to_date('22-03-3001', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nile', 210, 1856, 210, to_date('02-05-2412', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Eddie', 211, 1308, 211, to_date('01-12-2549', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Fairuza', 212, 3130, 212, to_date('16-07-2704', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Hilary', 213, 3775, 213, to_date('05-03-1961', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Elle', 214, 1749, 214, to_date('17-09-2079', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Alec', 215, 1424, 215, to_date('03-12-2298', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dorry', 216, 3815, 216, to_date('13-11-2450', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Walter', 217, 2309, 217, to_date('17-06-2613', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rosanna', 218, 3307, 218, to_date('18-07-2322', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Grant', 219, 3350, 219, to_date('18-03-2775', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lonnie', 220, 3184, 220, to_date('09-07-2220', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Thelma', 221, 1069, 221, to_date('04-05-2020', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ernest', 222, 3811, 222, to_date('22-10-2804', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Hal', 223, 1147, 223, to_date('26-08-2673', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Temuera', 224, 2204, 224, to_date('06-11-2785', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Willie', 225, 1632, 225, to_date('19-12-2851', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Juan', 226, 1794, 226, to_date('10-05-2699', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jesse', 227, 3797, 227, to_date('06-01-2921', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Laura', 228, 2466, 228, to_date('25-02-1901', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Breckin', 229, 1266, 229, to_date('03-08-2051', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jean-Claude', 230, 1993, 230, to_date('20-09-2216', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cliff', 231, 1078, 231, to_date('13-12-1914', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dylan', 232, 1397, 232, to_date('07-11-2053', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Armin', 233, 1672, 233, to_date('12-06-2464', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jaime', 234, 2910, 234, to_date('08-02-3005', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gates', 235, 1461, 235, to_date('09-11-2527', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Christopher', 236, 2855, 236, to_date('07-08-2470', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jamie', 237, 3505, 237, to_date('06-12-2469', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jann', 238, 3421, 238, to_date('13-10-2368', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('LeVar', 239, 2724, 239, to_date('11-02-2525', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Amanda', 240, 1862, 240, to_date('22-02-2810', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Woody', 241, 2288, 241, to_date('22-07-2440', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Crispin', 242, 2614, 242, to_date('31-03-2416', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Miriam', 243, 2801, 243, to_date('27-06-2664', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Penelope', 244, 2074, 244, to_date('22-01-2760', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Thelma', 245, 2061, 245, to_date('11-01-2470', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Buffy', 246, 3756, 246, to_date('08-04-2627', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Elle', 247, 3082, 247, to_date('19-04-2362', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Alessandro', 248, 2235, 248, to_date('23-10-2038', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kelli', 249, 3889, 249, to_date('07-12-2559', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lenny', 250, 1068, 250, to_date('25-10-2241', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Embeth', 251, 2158, 251, to_date('04-05-2494', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ernest', 252, 2701, 252, to_date('08-01-2071', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Coley', 253, 2083, 253, to_date('28-07-2637', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lesley', 254, 3754, 254, to_date('29-06-2714', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mena', 255, 2734, 255, to_date('04-11-2267', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kirk', 256, 2800, 256, to_date('07-03-2666', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cevin', 257, 3751, 257, to_date('08-06-2423', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rhona', 258, 2404, 258, to_date('20-10-1947', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Christian', 259, 1205, 259, to_date('19-12-2088', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jose', 260, 2607, 260, to_date('20-02-2612', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Oded', 261, 1014, 261, to_date('17-06-2636', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Derrick', 262, 2757, 262, to_date('08-09-2885', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Garth', 263, 2128, 263, to_date('04-01-2302', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gino', 264, 2396, 264, to_date('25-04-2805', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Katie', 265, 3038, 265, to_date('17-11-2263', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cloris', 266, 3436, 266, to_date('27-06-2898', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Judd', 267, 1563, 267, to_date('07-04-2081', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Collective', 268, 2844, 268, to_date('26-02-2602', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Maxine', 269, 1694, 269, to_date('25-04-2203', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Delbert', 270, 2120, 270, to_date('22-06-2415', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sigourney', 271, 1040, 271, to_date('12-10-3050', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Freda', 272, 3769, 272, to_date('05-10-2712', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Tea', 273, 3499, 273, to_date('15-05-2360', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kris', 274, 1304, 274, to_date('14-01-2176', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Diane', 275, 3612, 275, to_date('17-03-2510', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lucinda', 276, 2954, 276, to_date('24-06-2381', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Martin', 277, 3159, 277, to_date('12-06-1921', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('King', 278, 3574, 278, to_date('29-06-2273', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Brian', 279, 1235, 279, to_date('05-07-2596', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jean-Claude', 280, 3356, 280, to_date('11-06-2411', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Demi', 281, 2857, 281, to_date('29-02-2232', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nora', 282, 2063, 282, to_date('09-05-2348', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sam', 283, 2486, 283, to_date('28-01-2033', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Richard', 284, 1733, 284, to_date('24-10-2365', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dustin', 285, 2120, 285, to_date('16-06-2598', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Howie', 286, 2528, 286, to_date('29-12-2581', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Fairuza', 287, 3301, 287, to_date('16-06-2087', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lenny', 288, 1514, 288, to_date('23-10-2914', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Bruce', 289, 3888, 289, to_date('10-11-1963', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gerald', 290, 3197, 290, to_date('29-11-1907', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jaime', 291, 2269, 291, to_date('04-11-2208', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Anthony', 292, 3422, 292, to_date('07-03-2249', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mae', 293, 2138, 293, to_date('07-07-2071', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ricardo', 294, 3317, 294, to_date('16-09-1910', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Courtney', 295, 3684, 295, to_date('06-06-2267', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Matthew', 296, 3181, 296, to_date('28-10-2820', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Judi', 297, 1181, 297, to_date('20-03-2134', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Humberto', 298, 1084, 298, to_date('21-10-2834', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Wendy', 299, 3355, 299, to_date('31-08-2741', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lari', 300, 2333, 300, to_date('24-04-2632', 'dd-mm-yyyy'));
commit;
prompt 300 records committed...
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cherry', 301, 3477, 301, to_date('20-05-2375', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Roddy', 302, 2367, 302, to_date('20-11-1936', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Roger', 303, 3901, 303, to_date('12-10-2724', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Karon', 304, 2971, 304, to_date('02-12-2034', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Janice', 305, 2591, 305, to_date('17-07-2348', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Boyd', 306, 2391, 306, to_date('20-06-2358', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jay', 307, 2017, 307, to_date('14-06-2971', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nile', 308, 2927, 308, to_date('29-10-2020', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Anna', 309, 3648, 309, to_date('21-12-2578', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Edwin', 310, 2323, 310, to_date('20-07-2183', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Benjamin', 311, 1948, 311, to_date('06-10-2684', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Embeth', 312, 2719, 312, to_date('19-09-2038', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dionne', 313, 1378, 313, to_date('14-06-1902', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Loren', 314, 3408, 314, to_date('14-07-3019', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Eric', 315, 2154, 315, to_date('30-12-2555', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Clea', 316, 3309, 316, to_date('10-05-2128', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Marina', 317, 2646, 317, to_date('06-09-1984', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Eliza', 318, 3095, 318, to_date('24-08-2474', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Derek', 319, 1892, 319, to_date('21-05-2169', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Emm', 320, 1448, 320, to_date('30-06-2704', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Zooey', 321, 1033, 321, to_date('12-12-2576', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Trey', 322, 3316, 322, to_date('17-09-2226', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gavin', 323, 3223, 323, to_date('27-07-2520', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Christina', 324, 2181, 324, to_date('20-11-2669', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Embeth', 325, 3868, 325, to_date('21-04-1931', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Temuera', 326, 2846, 326, to_date('19-12-2523', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cheech', 327, 2644, 327, to_date('14-10-2348', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kid', 328, 2787, 328, to_date('18-11-2710', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dave', 329, 2790, 329, to_date('27-08-2981', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Arnold', 330, 3402, 330, to_date('31-08-2465', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Wally', 331, 3365, 331, to_date('28-04-1971', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lila', 332, 2216, 332, to_date('10-03-2108', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Morgan', 333, 1717, 333, to_date('11-10-2672', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Wade', 334, 2926, 334, to_date('15-06-2185', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gil', 335, 1933, 335, to_date('14-05-2732', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Peter', 336, 3816, 336, to_date('21-11-2383', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('William', 337, 3829, 337, to_date('28-10-2084', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mel', 338, 1200, 338, to_date('11-10-2178', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kim', 339, 2716, 339, to_date('31-08-2231', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kenneth', 340, 3882, 340, to_date('05-07-2001', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Cole', 341, 3905, 341, to_date('05-05-2388', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ozzy', 342, 1734, 342, to_date('15-01-2365', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sandra', 343, 3457, 343, to_date('19-02-2255', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Brian', 344, 1354, 344, to_date('19-10-1907', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Hex', 345, 3164, 345, to_date('04-12-2522', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Geoff', 346, 3581, 346, to_date('01-04-2593', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Christmas', 347, 3902, 347, to_date('14-10-1938', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kirk', 348, 1688, 348, to_date('21-05-2017', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Naomi', 349, 1424, 349, to_date('22-08-3027', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Rip', 350, 1520, 350, to_date('08-02-3066', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Udo', 351, 3223, 351, to_date('13-06-1907', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Dustin', 352, 3691, 352, to_date('22-04-1961', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Carole', 353, 3221, 353, to_date('18-07-1930', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ronnie', 354, 1766, 354, to_date('16-08-2275', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sara', 355, 3727, 355, to_date('25-12-1914', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Delbert', 356, 3894, 356, to_date('02-07-2075', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Nina', 357, 3228, 357, to_date('13-04-3000', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Barbara', 358, 1128, 358, to_date('11-06-2096', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Merrill', 359, 3082, 359, to_date('14-07-3028', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Courtney', 360, 2736, 360, to_date('01-06-2075', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Marie', 361, 1097, 361, to_date('21-06-2864', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Al', 362, 1295, 362, to_date('19-12-2930', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Todd', 363, 3047, 363, to_date('16-01-2175', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Marie', 364, 3622, 364, to_date('02-03-2212', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Seann', 365, 3580, 365, to_date('13-01-2580', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Merrilee', 366, 1669, 366, to_date('07-02-2668', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Wayne', 367, 3440, 367, to_date('15-10-2439', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Julie', 368, 2630, 368, to_date('04-07-2592', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Eliza', 369, 2519, 369, to_date('04-10-2516', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Geggy', 370, 1915, 370, to_date('11-06-2928', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mel', 371, 1827, 371, to_date('08-11-2828', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Teena', 372, 3443, 372, to_date('24-04-2518', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Julianne', 373, 2104, 373, to_date('22-12-2032', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Tramaine', 374, 1143, 374, to_date('13-12-2843', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Christina', 375, 2166, 375, to_date('27-06-2056', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Danny', 376, 2775, 376, to_date('12-04-1995', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Clay', 377, 1471, 377, to_date('19-10-2197', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Amy', 378, 2418, 378, to_date('05-08-2071', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Hal', 379, 3392, 379, to_date('24-08-2999', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Vendetta', 380, 3367, 380, to_date('18-01-1975', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Samantha', 381, 1515, 381, to_date('13-12-3052', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Pablo', 382, 1984, 382, to_date('07-08-2108', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Kelli', 383, 2681, 383, to_date('11-03-2404', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Ernie', 384, 1312, 384, to_date('23-07-2540', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Adam', 385, 3533, 385, to_date('01-01-2488', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Lenny', 386, 3412, 386, to_date('18-05-2326', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Radney', 387, 3863, 387, to_date('22-07-2461', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Chrissie', 388, 3300, 388, to_date('27-05-2066', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gin', 389, 1039, 389, to_date('11-01-2921', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Gladys', 390, 1557, 390, to_date('05-03-2721', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Danni', 391, 1238, 391, to_date('02-03-2382', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Luis', 392, 1033, 392, to_date('30-07-3031', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Freddy', 393, 2886, 393, to_date('07-08-2872', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Allan', 394, 2031, 394, to_date('09-03-2155', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Mia', 395, 2774, 395, to_date('25-09-2468', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Antonio', 396, 1912, 396, to_date('16-02-2234', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Faye', 397, 3521, 397, to_date('28-06-2555', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Tanya', 398, 1582, 398, to_date('02-03-2322', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Sam', 399, 1394, 399, to_date('19-01-2922', 'dd-mm-yyyy'));
insert into TRIP (name, id_trip, price, id_transportation, trip_date)
values ('Jason', 400, 2730, 400, to_date('10-12-2246', 'dd-mm-yyyy'));
commit;
prompt 400 records loaded
prompt Loading DESTINATIONS...
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kate', 269, 'The jurney begins: quidem dolores voluptatum et blanditiis dignissimos.  ea consequatur dignissimos ', 269);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kiefer', 270, 'The jurney begins: repellendus in. ', 270);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Paula', 271, 'The jurney begins: ', 271);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marisa', 272, 'The jurney begins: aliquip nobis. ', 272);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nile', 273, 'The jurney begins: hic. ', 273);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lloyd', 274, 'The jurney begins: et et omnis sint et. ', 274);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Derrick', 275, 'The jurney begins: excepturi hic. ', 275);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Terry', 276, 'The jurney begins: mollit quidem. ', 276);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Louise', 277, 'The jurney begins: omnis id sunt autem culpa sunt.  eveniet. ', 277);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mandy', 278, 'The jurney begins: dolorum reiciendis sed quos omnis dolore.  sint cillum. ', 278);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rob', 279, 'The jurney begins: vero sed eligendi id et et.  dolore ducimus culpa. ', 279);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Juliana', 280, 'The jurney begins: accusamus elit cillum id libero distinctio.  ducimus in temporibus laboris elit m', 280);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Temuera', 281, 'The jurney begins: eos repellendus deserunt voluptatum nihil sunt.  dolorum. ', 281);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bobbi', 282, 'The jurney begins: magna nisi et laborum a soluta.  voluptatum dolorum culpa dolor. ', 282);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Seth', 283, 'The jurney begins: nam id maxime in et in.  exercitation. ', 283);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Patti', 284, 'The jurney begins: voluptatibus et debitis debitis. ', 284);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rachid', 285, 'The jurney begins: nobis facilis occaecati. ', 285);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lois', 286, 'The jurney begins: nostrud et corrupti atque at. ', 286);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bobby', 287, 'The jurney begins: aut expedita rerum perferendis magna reiciendis.  dolor eligendi commodo ut. ', 287);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joy', 288, 'The jurney begins: deleniti in molestiae dolor fugiat eos.  quos non laboris excepturi. ', 288);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mandy', 289, 'The jurney begins: quod. ', 289);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Freddy', 290, 'The jurney begins: dolor omnis sapiente occaecati quos commodo.  quibusdam. ', 290);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Edward', 291, 'The jurney begins: eos id incididunt minus molestiae aut.  et dolor occaecati sint deserunt esse. ', 291);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maureen', 292, 'The jurney begins: possimus rerum id dolore delectus laborum.  dolorum esse elit ut minim aliquip. ', 292);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ani', 293, 'The jurney begins: aut animi est est occaecat expedita.  rerum excepturi dolore est exercitation. ', 293);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joshua', 294, 'The jurney begins: ', 294);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Susan', 295, 'The jurney begins: dolor necessitatibus quod et elit optio.  enim ut animi. ', 295);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chad', 296, 'The jurney begins: expedita dolore officiis accusamus qui in.  adipisicing tempore et. ', 296);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vonda', 297, 'The jurney begins: et distinctio qui dolorum ut eveniet.  ducimus sint impedit deleniti. ', 297);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Regina', 298, 'The jurney begins: soluta molestias non fuga tenetur perferendis.  praesentium saepe. ', 298);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Praga', 299, 'The jurney begins: voluptas occaecat non facere id. ', 299);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Salma', 300, 'The jurney begins: optio ducimus corrupti cillum autem dolores.  duis deserunt voluptatibus elit. ', 300);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jena', 301, 'The jurney begins: itaque amet exercitation quibusdam officiis. ', 301);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mykelti', 302, 'The jurney begins: voluptas sint nulla excepteur ullamco maiores.  corrupti ut aliqua est mollit do.', 302);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Goldie', 303, 'The jurney begins: rerum et omnis ut est nihil.  occaecati eligendi ullamco ex ut vero.  in. ', 303);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Loreena', 304, 'The jurney begins: ex dignissimos. ', 304);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Carolyn', 305, 'The jurney begins: et labore adipisicing. ', 305);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rueben', 306, 'The jurney begins: a. ', 306);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Freda', 307, 'The jurney begins: repellendus in. ', 307);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Burt', 308, 'The jurney begins: in tenetur et laboris et excepturi.  maiores. ', 308);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Franco', 309, 'The jurney begins: repellat accusamus. ', 309);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Pamela', 310, 'The jurney begins: provident voluptates facere repellat sed nisi.  blanditiis et. ', 310);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vertical', 311, 'The jurney begins: ', 311);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Woody', 312, 'The jurney begins: ut rerum animi aliquip eligendi. ', 312);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Roscoe', 313, 'The jurney begins: consectetur incididunt sint molestiae. ', 313);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kurt', 314, 'The jurney begins: proident est exercitation animi dolore tenetur. ', 314);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harriet', 315, 'The jurney begins: sapiente non dolor soluta vero voluptates.  deleniti magna sapiente alias eu. ', 315);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ice', 316, 'The jurney begins: sit qui irure assumenda qui ut.  fugiat blanditiis et qui repudiandae at.  repell', 316);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Avenged', 317, 'The jurney begins: cillum eu fuga harum voluptatibus voluptatibus.  blanditiis tempore repudiandae. ', 317);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Johnny', 318, 'The jurney begins: qui eu. ', 318);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kris', 319, 'The jurney begins: dolores est deleniti quos. ', 319);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Liquid', 320, 'The jurney begins: libero nihil libero corrupti nostrud eu.  in delectus irure. ', 320);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shelby', 321, 'The jurney begins: tenetur non eos id necessitatibus. ', 321);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Isaiah', 322, 'The jurney begins: iusto optio cumque. ', 322);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Roddy', 323, 'The jurney begins: et. ', 323);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Frankie', 324, 'The jurney begins: harum et in officiis incididunt perferendis.  eveniet. ', 324);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Candice', 325, 'The jurney begins: quis placeat qui non in hic.  deserunt et facere est odio. ', 325);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Campbell', 326, 'The jurney begins: at. ', 326);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Millie', 327, 'The jurney begins: ', 327);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Isaiah', 328, 'The jurney begins: non ut laboris ex eiusmod et.  dolore et perferendis magna elit reprehenderit. ', 328);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Buddy', 329, 'The jurney begins: atque repudiandae est eveniet et deserunt.  quibusdam reiciendis ut. ', 329);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Debi', 330, 'The jurney begins: officia minus accusamus est est ducimus. ', 330);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cornell', 331, 'The jurney begins: omnis sunt et blanditiis ad ut.  facere sit irure lorem. ', 331);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mira', 332, 'The jurney begins: quos possimus dolore quo distinctio ullamco.  deserunt voluptatibus reiciendis et', 332);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Scott', 333, 'The jurney begins: dolor aute dolor sint repudiandae anim. ', 333);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Annie', 334, 'The jurney begins: odio excepturi adipisicing eos sapiente laborum.  minus atque ut harum est dolore', 334);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Natalie', 335, 'The jurney begins: est tenetur optio velit dolores in.  expedita provident laboris irure maxime dolo', 335);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jennifer', 336, 'The jurney begins: quod est irure cumque iusto sint.  culpa soluta nostrud. ', 336);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kay', 337, 'The jurney begins: voluptates nam ad dignissimos incididunt lorem.  nam. ', 337);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ellen', 338, 'The jurney begins: dolor culpa eu minus iusto eveniet. ', 338);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rade', 339, 'The jurney begins: deserunt dolorum blanditiis omnis saepe animi.  sint alias et. ', 339);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rory', 340, 'The jurney begins: distinctio dolor aliquip. ', 340);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Victor', 341, 'The jurney begins: corrupti laborum amet necessitatibus magna labore.  fuga. ', 341);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Emm', 342, 'The jurney begins: maiores. ', 342);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Woody', 343, 'The jurney begins: minim mollit. ', 343);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chubby', 344, 'The jurney begins: provident at necessitatibus doloribus. ', 344);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nik', 345, 'The jurney begins: voluptate lorem. ', 345);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rhys', 346, 'The jurney begins: dignissimos sunt. ', 346);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chubby', 347, 'The jurney begins: rerum ut amet debitis deserunt magna.  et cillum ex et deserunt aute. ', 347);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Julia', 348, 'The jurney begins: non ullamco eos alias occaecat quod.  minim eu. ', 348);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kelly', 349, 'The jurney begins: quod laborum culpa reprehenderit qui velit.  consequat aliquip excepteur. ', 349);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Janice', 350, 'The jurney begins: id eos tempore est sint molestiae.  lorem. ', 350);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jonathan', 351, 'The jurney begins: id. ', 351);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rita', 352, 'The jurney begins: nihil et corrupti in animi recusandae.  omnis sint. ', 352);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Earl', 353, 'The jurney begins: distinctio et. ', 353);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Wade', 354, 'The jurney begins: ex placeat fuga sed est nostrud. ', 354);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maureen', 355, 'The jurney begins: ', 355);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cliff', 356, 'The jurney begins: ', 356);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Micky', 357, 'The jurney begins: excepteur deserunt aliquip occaecati amet at.  distinctio officia deserunt repudi', 357);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Garth', 358, 'The jurney begins: assumenda ut maiores est occaecat officiis.  voluptas. ', 358);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Breckin', 359, 'The jurney begins: incididunt in in et perferendis est.  sint labore duis. ', 359);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ellen', 360, 'The jurney begins: amet autem facilis officiis et eos.  et omnis. ', 360);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Daniel', 361, 'The jurney begins: cupidatat excepteur proident mollitia lorem irure.  deleniti hic facere. ', 361);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stewart', 362, 'The jurney begins: culpa est corrupti magna deserunt officia.  est voluptatibus voluptas et ut. ', 362);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Freda', 363, 'The jurney begins: distinctio assumenda itaque. ', 363);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kenny', 364, 'The jurney begins: ', 364);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Christian', 365, 'The jurney begins: necessitatibus asperiores eu officia possimus commodo.  nostrud quos. ', 365);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mac', 366, 'The jurney begins: molestiae et non excepturi ducimus placeat. ', 366);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sara', 367, 'The jurney begins: proident duis eos minim. ', 367);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Danni', 368, 'The jurney begins: do necessitatibus est ut qui ut. ', 368);
commit;
prompt 100 records committed...
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cloris', 369, 'The jurney begins: et aut. ', 369);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Debbie', 370, 'The jurney begins: quidem nostrud sint hic elit. ', 370);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Fisher', 371, 'The jurney begins: eos duis reiciendis velit et quibusdam.  ullamco omnis dolore cum deserunt. ', 371);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joan', 372, 'The jurney begins: aut sint incididunt dolor enim eu.  soluta omnis repellat. ', 372);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lou', 373, 'The jurney begins: odio minim sint nulla tenetur dolorum.  nulla ut molestias harum ut. ', 373);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kylie', 374, 'The jurney begins: sint dignissimos ipsum. ', 374);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Fionnula', 375, 'The jurney begins: libero id excepturi non possimus qui.  eveniet non minim repudiandae. ', 375);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Trini', 376, 'The jurney begins: ', 376);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Halle', 377, 'The jurney begins: laboris. ', 377);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Robbie', 378, 'The jurney begins: dolore reprehenderit et et distinctio quo.  eu in nihil aute facere atque.  animi', 378);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dan', 379, 'The jurney begins: mollitia tempore saepe atque animi maiores.  omnis aut enim officia laborum sapie', 379);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nick', 380, 'The jurney begins: praesentium. ', 380);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Crispin', 381, 'The jurney begins: sunt velit. ', 381);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Brad', 382, 'The jurney begins: quod saepe. ', 382);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Davy', 383, 'The jurney begins: qui. ', 383);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Madeleine', 384, 'The jurney begins: similique laborum mollit excepteur sunt. ', 384);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cathy', 385, 'The jurney begins: adipisicing ea commodo earum elit dolor. ', 385);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marina', 386, 'The jurney begins: eu sapiente est consequat qui nisi. ', 386);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gary', 387, 'The jurney begins: officia doloribus blanditiis magna ea aut.  repellat laborum optio in id. ', 387);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rachel', 388, 'The jurney begins: exercitation et voluptates eveniet cupidatat possimus. ', 388);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Clea', 389, 'The jurney begins: in eos commodo occaecati. ', 389);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rhys', 390, 'The jurney begins: animi facilis et dolore et sunt.  ipsum consectetur. ', 390);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Spencer', 391, 'The jurney begins: qui blanditiis eos pariatur sint dolor.  hic a nostrud officia dolorum. ', 391);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lara', 392, 'The jurney begins: non ut rerum et in et.  tempore in nulla placeat tenetur ut.  aut commodo. ', 392);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Radney', 393, 'The jurney begins: necessitatibus et occaecati. ', 393);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harvey', 394, 'The jurney begins: sunt labore est mollitia ducimus impedit. ', 394);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Millie', 395, 'The jurney begins: ', 395);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Tobey', 396, 'The jurney begins: ', 396);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stephanie', 397, 'The jurney begins: necessitatibus molestiae rerum sint elit nihil. ', 397);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Leelee', 398, 'The jurney begins: itaque earum. ', 398);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stanley', 399, 'The jurney begins: repellat eiusmod. ', 399);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lloyd', 400, 'The jurney begins: nisi reiciendis aute in. ', 400);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kirsten', 1, 'The jurney begins: odio expedita nostrud est quidem commodo.  qui aut et sunt. ', 1);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dean', 2, 'The jurney begins: maxime debitis accusamus mollitia tempor et. ', 2);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bebe', 3, 'The jurney begins: dolores non in et qui incididunt.  id. ', 3);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Danni', 4, 'The jurney begins: elit distinctio in nulla in eos.  in placeat est consequat est a.  facilis eiusmo', 4);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Allan', 5, 'The jurney begins: delectus sed. ', 5);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Terrence', 6, 'The jurney begins: ex ad aut debitis perferendis optio.  assumenda aut nam deserunt est alias. ', 6);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bruce', 7, 'The jurney begins: cumque occaecati veniam dolore deleniti mollitia.  est rerum ut reiciendis eiusmo', 7);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Freda', 8, 'The jurney begins: quo fuga excepturi eveniet et adipisicing.  rerum amet laborum aute. ', 8);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hector', 9, 'The jurney begins: cumque omnis itaque harum assumenda qui.  quo quibusdam tempor impedit voluptates', 9);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bonnie', 10, 'The jurney begins: sint. ', 10);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Halle', 11, 'The jurney begins: qui excepturi nobis velit aliqua. ', 11);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ronnie', 12, 'The jurney begins: ', 12);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bette', 13, 'The jurney begins: iusto nam rerum omnis voluptatibus adipisicing.  et in quidem omnis. ', 13);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Billy', 14, 'The jurney begins: in dolorum assumenda dolor excepteur anim. ', 14);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hookah', 15, 'The jurney begins: delectus aute et et est harum.  quod non voluptatibus quos doloribus. ', 15);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chazz', 16, 'The jurney begins: in irure. ', 16);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Tom', 17, 'The jurney begins: omnis. ', 17);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Renee', 18, 'The jurney begins: amet in tenetur sint voluptates soluta.  mollit. ', 18);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Candice', 19, 'The jurney begins: amet velit earum delectus et aut.  ad in. ', 19);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Patricia', 20, 'The jurney begins: dolore veniam rerum est. ', 20);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Katrin', 21, 'The jurney begins: ducimus voluptates reprehenderit distinctio esse excepturi.  perferendis. ', 21);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Christopher', 22, 'The jurney begins: nisi dolore. ', 22);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Danny', 23, 'The jurney begins: aut cupiditate eos dolor nostrud est.  consequat optio est at praesentium. ', 23);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mandy', 24, 'The jurney begins: libero et consectetur cillum eligendi. ', 24);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Amy', 25, 'The jurney begins: est impedit cumque officia non omnis.  aute sint. ', 25);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Charlton', 26, 'The jurney begins: est aliquip hic et dolore et.  in quos officia dolor rerum. ', 26);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Terry', 27, 'The jurney begins: vero et qui odio. ', 27);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cornell', 28, 'The jurney begins: eos ullamco velit sunt ut et.  et sint molestiae proident molestias. ', 28);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ashton', 29, 'The jurney begins: officiis voluptatibus soluta rerum et aliquip. ', 29);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lucy', 30, 'The jurney begins: amet ut eveniet. ', 30);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rolando', 31, 'The jurney begins: ipsum dignissimos quis et minus rerum.  et ducimus facilis ut earum. ', 31);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joe', 32, 'The jurney begins: ad est lorem et a magna.  qui qui eveniet dolor. ', 32);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ned', 33, 'The jurney begins: maxime ut velit sit voluptate at.  ut accusamus et quis quas molestias. ', 33);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Michael', 34, 'The jurney begins: laboris id et ducimus. ', 34);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Selma', 35, 'The jurney begins: asperiores ex. ', 35);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Blair', 36, 'The jurney begins: at est irure. ', 36);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gord', 37, 'The jurney begins: elit dolor culpa deleniti laborum laborum.  impedit. ', 37);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joan', 38, 'The jurney begins: animi magna aliqua cillum deserunt nihil.  et odio facilis non in est.  at. ', 38);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jena', 39, 'The jurney begins: possimus praesentium fuga exercitation culpa id.  hic earum quo. ', 39);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kathleen', 40, 'The jurney begins: impedit placeat ut dolor voluptatum laborum. ', 40);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Amy', 41, 'The jurney begins: ad enim in. ', 41);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ellen', 42, 'The jurney begins: ', 42);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lupe', 43, 'The jurney begins: earum. ', 43);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chuck', 44, 'The jurney begins: ea culpa nulla tempor temporibus. ', 44);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shirley', 45, 'The jurney begins: ', 45);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lee', 46, 'The jurney begins: sint cumque sunt est sit eligendi. ', 46);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Clay', 47, 'The jurney begins: id expedita aute eos quidem. ', 47);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jann', 48, 'The jurney begins: aliqua aut incididunt laboris aut. ', 48);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jackson', 49, 'The jurney begins: et lorem dolor maxime. ', 49);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hector', 50, 'The jurney begins: dolore est est adipisicing quidem cillum. ', 50);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ani', 51, 'The jurney begins: occaecat dolorum qui tempor ex doloribus.  et in aut. ', 51);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Andy', 52, 'The jurney begins: a dolorum temporibus quod delectus id.  rerum et facilis distinctio eveniet debit', 52);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Tommy', 53, 'The jurney begins: in ut dolore nulla dolore praesentium. ', 53);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Anjelica', 54, 'The jurney begins: facilis autem id sint rerum irure.  itaque qui velit velit. ', 54);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Melanie', 55, 'The jurney begins: sapiente in amet do necessitatibus recusandae.  dolore facilis enim aliquip asper', 55);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Remy', 56, 'The jurney begins: cupiditate maiores excepturi. ', 56);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Darius', 57, 'The jurney begins: non rerum id fugiat nisi. ', 57);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Olga', 58, 'The jurney begins: dolorum. ', 58);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vince', 59, 'The jurney begins: expedita aut consequatur molestiae at deserunt.  in. ', 59);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hector', 60, 'The jurney begins: reprehenderit esse dolor quo quos cum. ', 60);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Liam', 61, 'The jurney begins: aliquip in libero fugiat in debitis.  est est facere iusto et qui.  aute deserunt', 61);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Beverley', 62, 'The jurney begins: laboris et possimus recusandae aut atque. ', 62);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Judd', 63, 'The jurney begins: proident ut minim cupidatat consequatur omnis.  a distinctio. ', 63);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Udo', 64, 'The jurney begins: sit sunt id rerum sed molestias.  enim ut nobis dolorum reprehenderit in. ', 64);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harriet', 65, 'The jurney begins: ducimus atque sapiente iusto sint saepe.  ut rerum in atque. ', 65);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cesar', 66, 'The jurney begins: ut aliqua ut voluptas tempore ut. ', 66);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Irene', 67, 'The jurney begins: ', 67);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Janice', 68, 'The jurney begins: ', 68);
commit;
prompt 200 records committed...
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maury', 69, 'The jurney begins: dignissimos ut animi sint eos voluptates. ', 69);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Quentin', 70, 'The jurney begins: eu hic consequat maiores possimus ut.  amet minus nobis doloribus occaecati vero.', 70);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Holly', 71, 'The jurney begins: incididunt ut aliquip magna voluptate in. ', 71);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jimmy', 72, 'The jurney begins: earum dolore. ', 72);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sal', 73, 'The jurney begins: assumenda dolor reprehenderit nulla. ', 73);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Breckin', 74, 'The jurney begins: quidem commodo libero voluptate. ', 74);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rob', 75, 'The jurney begins: et asperiores praesentium possimus nostrud. ', 75);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lou', 76, 'The jurney begins: ducimus ut ut animi facilis officiis.  rerum et non dolores optio officia. ', 76);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Belinda', 77, 'The jurney begins: laborum minus nisi fuga voluptates. ', 77);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Laurence', 78, 'The jurney begins: et. ', 78);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vince', 79, 'The jurney begins: deserunt in dignissimos irure iusto do.  possimus aut. ', 79);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lari', 80, 'The jurney begins: eiusmod odio. ', 80);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marley', 81, 'The jurney begins: ', 81);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Herbie', 82, 'The jurney begins: temporibus accusamus nulla in dolorum incididunt.  pariatur deserunt libero. ', 82);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gailard', 83, 'The jurney begins: non elit minus dolores culpa tempor.  distinctio laborum ut. ', 83);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lily', 84, 'The jurney begins: ', 84);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Teri', 85, 'The jurney begins: nobis nisi in aut soluta dolor.  veniam. ', 85);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gene', 86, 'The jurney begins: fugiat laborum. ', 86);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lea', 87, 'The jurney begins: id maxime minus. ', 87);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ronny', 88, 'The jurney begins: dolor quis. ', 88);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Tilda', 89, 'The jurney begins: ut in eiusmod voluptate et qui.  rerum eos minus. ', 89);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maury', 90, 'The jurney begins: irure et quod aut ipsum quod.  est. ', 90);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jonathan', 91, 'The jurney begins: repellat aut nisi sunt tempor quis. ', 91);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jared', 92, 'The jurney begins: earum ut sapiente amet. ', 92);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gordon', 93, 'The jurney begins: expedita ut nobis aute assumenda sint.  sint adipisicing. ', 93);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sylvester', 94, 'The jurney begins: saepe quidem dolor sint culpa in.  et. ', 94);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Breckin', 95, 'The jurney begins: nulla nam id. ', 95);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chloe', 96, 'The jurney begins: asperiores voluptatum. ', 96);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lily', 97, 'The jurney begins: ullamco quidem alias. ', 97);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Alessandro', 98, 'The jurney begins: dolor adipisicing dolor expedita id sapiente.  et sed quos eveniet. ', 98);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Elvis', 99, 'The jurney begins: irure minus aut possimus eligendi ex.  tenetur laborum. ', 99);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chi', 100, 'The jurney begins: ', 100);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ozzy', 101, 'The jurney begins: accusamus atque quos officia nulla ad.  excepteur qui reprehenderit. ', 101);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stellan', 102, 'The jurney begins: vero delectus minim dolorum. ', 102);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ricky', 103, 'The jurney begins: earum non officia et rerum pariatur.  consequat molestiae in voluptas. ', 103);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Eileen', 104, 'The jurney begins: aut adipisicing maxime. ', 104);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Wayman', 105, 'The jurney begins: quibusdam sunt pariatur dolor. ', 105);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Stephen', 106, 'The jurney begins: temporibus rerum in adipisicing. ', 106);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mary', 107, 'The jurney begins: odio atque officia autem rerum ut.  repellendus in asperiores assumenda. ', 107);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Melanie', 108, 'The jurney begins: placeat nisi et non et est. ', 108);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sylvester', 109, 'The jurney begins: praesentium saepe voluptas in quidem id. ', 109);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Carlos', 110, 'The jurney begins: officia elit eligendi. ', 110);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Claude', 111, 'The jurney begins: placeat commodo est fugiat proident corrupti.  aliquip at et. ', 111);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Christopher', 112, 'The jurney begins: impedit non. ', 112);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Patrick', 113, 'The jurney begins: nulla voluptates ducimus dolor cillum consectetur.  occaecati delectus delectus t', 113);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Etta', 114, 'The jurney begins: ad laborum cillum ut animi accusamus. ', 114);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mira', 115, 'The jurney begins: vero sint repellat. ', 115);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Trey', 116, 'The jurney begins: et odio ut veniam quos minim.  id proident. ', 116);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kris', 117, 'The jurney begins: labore id anim ullamco. ', 117);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rene', 118, 'The jurney begins: animi nulla praesentium saepe. ', 118);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gabriel', 119, 'The jurney begins: ', 119);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rueben', 120, 'The jurney begins: ullamco molestiae est dolor dolore est.  nisi in anim voluptate. ', 120);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Adam', 121, 'The jurney begins: qui sunt dolore cupiditate culpa autem.  lorem reiciendis et. ', 121);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Amy', 122, 'The jurney begins: irure quibusdam soluta minim expedita in. ', 122);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Thelma', 123, 'The jurney begins: aute atque fuga exercitation et. ', 123);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cole', 124, 'The jurney begins: praesentium et eveniet. ', 124);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jena', 125, 'The jurney begins: omnis et molestiae mollit alias officia.  enim. ', 125);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jack', 126, 'The jurney begins: amet nihil assumenda necessitatibus tempor excepturi.  nobis. ', 126);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Machine', 127, 'The jurney begins: at autem earum ut. ', 127);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Penelope', 128, 'The jurney begins: occaecat dolores optio et consequat maiores.  omnis tenetur mollitia. ', 128);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Betty', 129, 'The jurney begins: harum laborum debitis amet est impedit.  fugiat. ', 129);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Etta', 130, 'The jurney begins: officia. ', 130);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lionel', 131, 'The jurney begins: optio officia nobis magna tempore cillum.  itaque. ', 131);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Darius', 132, 'The jurney begins: maxime esse ut ut rerum sint.  duis sapiente omnis ex sunt delectus.  duis esse. ', 132);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Charlie', 133, 'The jurney begins: dignissimos proident expedita hic. ', 133);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Julianne', 134, 'The jurney begins: aut magna ducimus labore quo debitis.  aut itaque sit. ', 134);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ronny', 135, 'The jurney begins: commodo debitis aut delectus iusto in.  in ut ut anim. ', 135);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Judy', 136, 'The jurney begins: sed aut officiis odio consequat fuga. ', 136);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Selma', 137, 'The jurney begins: hic laboris mollitia maiores vero sed.  aut omnis at ut et distinctio.  in. ', 137);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mae', 138, 'The jurney begins: assumenda et rerum harum cupidatat voluptatum.  cillum ut dolores dolore tempor o', 138);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Brooke', 139, 'The jurney begins: dolor excepturi culpa dolorum ducimus commodo.  reprehenderit harum deserunt veni', 139);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Grace', 140, 'The jurney begins: consequatur et aliqua aliqua dolores qui.  voluptas velit dolor. ', 140);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jason', 141, 'The jurney begins: expedita nam quod officia cum. ', 141);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Linda', 142, 'The jurney begins: tenetur qui cupidatat doloribus pariatur fugiat. ', 142);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mark', 143, 'The jurney begins: proident at a non et nisi.  ducimus magna aut et nostrud. ', 143);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kenneth', 144, 'The jurney begins: labore et atque incididunt amet non.  est et culpa quos voluptas sint.  minim. ', 144);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Allison', 145, 'The jurney begins: est et mollit aut. ', 145);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hex', 146, 'The jurney begins: nam harum. ', 146);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nina', 147, 'The jurney begins: et aliquip voluptates nam. ', 147);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Oro', 148, 'The jurney begins: et voluptate. ', 148);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ty', 149, 'The jurney begins: ', 149);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ricky', 150, 'The jurney begins: ', 150);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Suzanne', 151, 'The jurney begins: et et occaecat anim dolore non.  veniam sit vero doloribus in quas. ', 151);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Remy', 152, 'The jurney begins: impedit voluptate expedita. ', 152);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Charlton', 153, 'The jurney begins: et maiores eligendi id in qui.  magna. ', 153);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Domingo', 154, 'The jurney begins: ex. ', 154);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harriet', 155, 'The jurney begins: et libero. ', 155);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marianne', 156, 'The jurney begins: sunt irure maxime dolor qui tempor.  id facilis sint. ', 156);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gilbert', 157, 'The jurney begins: iusto. ', 157);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gloria', 158, 'The jurney begins: enim quibusdam omnis delectus mollitia labore.  a laborum. ', 158);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Wayne', 159, 'The jurney begins: quis sapiente et nulla et non.  recusandae. ', 159);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Betty', 160, 'The jurney begins: eos aute maiores est et impedit.  et et est nihil anim labore. ', 160);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jonatha', 161, 'The jurney begins: officiis delectus mollitia mollit. ', 161);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shirley', 162, 'The jurney begins: a cillum est eligendi. ', 162);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gates', 163, 'The jurney begins: libero impedit. ', 163);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ernest', 164, 'The jurney begins: lorem et mollitia harum non occaecat.  culpa odio id est deserunt corrupti. ', 164);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Darren', 165, 'The jurney begins: est in impedit et eos ut. ', 165);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jeremy', 166, 'The jurney begins: anim in ut dignissimos laborum id.  tempore fuga aute. ', 166);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Glen', 167, 'The jurney begins: itaque. ', 167);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chazz', 168, 'The jurney begins: ut et. ', 168);
commit;
prompt 300 records committed...
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kurtwood', 169, 'The jurney begins: sapiente repudiandae nulla sunt et maxime.  id ut qui. ', 169);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Toshiro', 170, 'The jurney begins: dolores. ', 170);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Radney', 171, 'The jurney begins: nam nobis laborum reprehenderit minus eligendi.  deserunt nam cillum qui anim par', 171);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Faye', 172, 'The jurney begins: placeat dignissimos saepe laborum. ', 172);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nicky', 173, 'The jurney begins: ', 173);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Joaquim', 174, 'The jurney begins: voluptatum cumque sapiente corrupti. ', 174);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Marie', 175, 'The jurney begins: ', 175);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shannyn', 176, 'The jurney begins: delectus at amet necessitatibus incididunt iusto.  assumenda quis pariatur ad. ', 176);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nikki', 177, 'The jurney begins: at est do dignissimos. ', 177);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dave', 178, 'The jurney begins: ut quod eveniet adipisicing molestias ad.  et voluptas reprehenderit. ', 178);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bob', 179, 'The jurney begins: ducimus. ', 179);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Val', 180, 'The jurney begins: incididunt. ', 180);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Val', 181, 'The jurney begins: non aut non itaque iusto temporibus. ', 181);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Terri', 182, 'The jurney begins: ', 182);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Collective', 183, 'The jurney begins: debitis. ', 183);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vin', 184, 'The jurney begins: duis molestiae sapiente. ', 184);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Trini', 185, 'The jurney begins: sunt harum ut. ', 185);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Buddy', 186, 'The jurney begins: ', 186);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Forest', 187, 'The jurney begins: eu et. ', 187);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jeff', 188, 'The jurney begins: amet earum consectetur amet. ', 188);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Natascha', 189, 'The jurney begins: enim est aut ducimus voluptates ex.  minus ut similique delectus molestias. ', 189);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Denis', 190, 'The jurney begins: quidem in mollitia minim eiusmod sint.  asperiores minus cupiditate sed est offic', 190);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Scarlett', 191, 'The jurney begins: in eu velit ut veniam. ', 191);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hector', 192, 'The jurney begins: ut velit consequat et. ', 192);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hikaru', 193, 'The jurney begins: in deserunt ut consectetur placeat nulla.  aut dolor. ', 193);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mindy', 194, 'The jurney begins: tempor repellat qui laboris deserunt harum.  exercitation corrupti occaecat. ', 194);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('CeCe', 195, 'The jurney begins: est delectus aut voluptate in voluptatibus.  nam aut saepe animi do mollitia. ', 195);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Amanda', 196, 'The jurney begins: aut repudiandae non rerum pariatur in.  nisi et tempor sint ut voluptate. ', 196);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Judy', 197, 'The jurney begins: amet non occaecat quos necessitatibus ducimus.  et assumenda enim quas. ', 197);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Balthazar', 198, 'The jurney begins: est laborum nobis in nobis esse.  omnis voluptate. ', 198);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nancy', 199, 'The jurney begins: officia in esse et tempore lorem. ', 199);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ivan', 200, 'The jurney begins: est animi omnis voluptas voluptas sint.  id cum ut. ', 200);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ani', 201, 'The jurney begins: sunt hic nulla optio quidem alias.  deleniti ut doloribus eos. ', 201);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Candice', 202, 'The jurney begins: quo proident non a ad eveniet.  blanditiis eiusmod sunt. ', 202);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dennis', 203, 'The jurney begins: quas voluptas omnis elit omnis aut.  qui maxime ut accusamus animi. ', 203);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Alex', 204, 'The jurney begins: placeat. ', 204);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Garth', 205, 'The jurney begins: voluptatum magna alias deserunt non autem.  tenetur aut. ', 205);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Phil', 206, 'The jurney begins: et culpa et laborum praesentium aliqua. ', 206);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kate', 207, 'The jurney begins: occaecat incididunt occaecati mollitia ad eu. ', 207);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Courtney', 208, 'The jurney begins: praesentium exercitation cillum harum labore. ', 208);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sona', 209, 'The jurney begins: labore facilis corrupti ipsum nulla eveniet.  elit et voluptates est sunt nihil. ', 209);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Rick', 210, 'The jurney begins: dolores harum laborum velit aliqua non.  optio rerum deserunt. ', 210);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gena', 211, 'The jurney begins: aut sunt eveniet sed voluptas anim.  eos ut facere saepe dolor. ', 211);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Bill', 212, 'The jurney begins: vero omnis quibusdam in nobis mollitia.  assumenda nobis consequat voluptates. ', 212);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Benjamin', 213, 'The jurney begins: et deleniti aliqua cupidatat amet irure.  saepe eiusmod lorem sunt voluptate volu', 213);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nastassja', 214, 'The jurney begins: sint accusamus blanditiis occaecati temporibus. ', 214);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Taylor', 215, 'The jurney begins: officiis mollit labore impedit eveniet officiis.  quis aut rerum aut non et. ', 215);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jared', 216, 'The jurney begins: elit esse rerum. ', 216);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jerry', 217, 'The jurney begins: dolor nulla eu tenetur nostrud maxime.  enim molestias ex aut. ', 217);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Latin', 218, 'The jurney begins: mollit irure voluptatum ducimus sint et.  lorem aut. ', 218);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ozzy', 219, 'The jurney begins: impedit labore facilis non quis est.  repellendus. ', 219);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Steve', 220, 'The jurney begins: id enim saepe harum maxime rerum.  nostrud dolorum aut. ', 220);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Beverley', 221, 'The jurney begins: omnis esse voluptatibus recusandae occaecat. ', 221);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Edward', 222, 'The jurney begins: est aliqua tempor culpa quidem est.  voluptate voluptate ad lorem ipsum. ', 222);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Jose', 223, 'The jurney begins: elit consequat sapiente magna quo provident.  a sunt cum cupiditate ipsum sapient', 223);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Talvin', 224, 'The jurney begins: est id id officia earum ut.  quidem laborum rerum. ', 224);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maceo', 225, 'The jurney begins: in adipisicing pariatur hic ut. ', 225);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Charlton', 226, 'The jurney begins: blanditiis culpa ea ut aute et.  qui quo est dolor voluptates minim.  veniam. ', 226);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Gordon', 227, 'The jurney begins: officiis nostrud itaque et. ', 227);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Geena', 228, 'The jurney begins: et eligendi accusamus quo velit dolore.  optio cum excepteur et nihil voluptatum.', 228);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Hope', 229, 'The jurney begins: maiores nobis facilis et voluptates ea.  amet elit est nostrud id qui. ', 229);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Elijah', 230, 'The jurney begins: molestias iusto ut non voluptatum pariatur.  molestias. ', 230);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Pete', 231, 'The jurney begins: quas vero voluptas accusamus nihil. ', 231);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Edie', 232, 'The jurney begins: temporibus hic quidem omnis. ', 232);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nathan', 233, 'The jurney begins: aliquip dignissimos autem iusto eligendi. ', 233);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Toshiro', 234, 'The jurney begins: deserunt provident est non alias provident.  aliqua animi est mollit. ', 234);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Neneh', 235, 'The jurney begins: at quas provident eligendi adipisicing. ', 235);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Julianna', 236, 'The jurney begins: est cum officia sint. ', 236);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Alana', 237, 'The jurney begins: praesentium autem. ', 237);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Shannyn', 238, 'The jurney begins: et officia sint mollitia sit iusto.  consequat recusandae id impedit asperiores e', 238);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Giancarlo', 239, 'The jurney begins: aut corrupti et do quidem temporibus.  et. ', 239);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Taye', 240, 'The jurney begins: distinctio repudiandae cumque non incididunt dolores.  soluta officia a est. ', 240);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Kitty', 241, 'The jurney begins: iusto quidem. ', 241);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Sarah', 242, 'The jurney begins: deserunt repudiandae molestias laborum non. ', 242);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Luke', 243, 'The jurney begins: magna officia dolore. ', 243);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Alec', 244, 'The jurney begins: aut repellendus assumenda et occaecat laborum.  cum. ', 244);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Vertical', 245, 'The jurney begins: occaecat accusamus non est quos. ', 245);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Neneh', 246, 'The jurney begins: maxime eveniet doloribus voluptatum sapiente qui.  ullamco. ', 246);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maceo', 247, 'The jurney begins: rerum debitis quos labore dolor repellendus.  consequat. ', 247);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ernie', 248, 'The jurney begins: proident omnis non aut autem dolor. ', 248);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Colm', 249, 'The jurney begins: fuga et fugiat exercitation distinctio fuga.  fugiat adipisicing. ', 249);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Allison', 250, 'The jurney begins: ', 250);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Dylan', 251, 'The jurney begins: duis repellat ipsum blanditiis nisi et.  id vero qui delectus. ', 251);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Ricky', 252, 'The jurney begins: recusandae nihil ad. ', 252);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Chalee', 253, 'The jurney begins: rerum in non distinctio soluta fuga. ', 253);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Mia', 254, 'The jurney begins: dignissimos esse nisi molestiae itaque. ', 254);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Nils', 255, 'The jurney begins: libero optio dolor molestias aut rerum.  odio. ', 255);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lynn', 256, 'The jurney begins: aut qui ex tempor. ', 256);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Norm', 257, 'The jurney begins: repellendus et. ', 257);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Graham', 258, 'The jurney begins: atque sapiente facere do iusto at.  rerum incididunt aliqua et corrupti duis. ', 258);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Crispin', 259, 'The jurney begins: et. ', 259);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Lindsay', 260, 'The jurney begins: sed occaecat repellat provident pariatur corrupti.  minim quos dolor provident ut', 260);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Robert', 261, 'The jurney begins: occaecati dolor eu aut minus quod. ', 261);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Maury', 262, 'The jurney begins: reprehenderit. ', 262);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Cesar', 263, 'The jurney begins: eligendi eos elit sint cillum laborum.  ad maiores necessitatibus. ', 263);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Carole', 264, 'The jurney begins: ', 264);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Eugene', 265, 'The jurney begins: et eiusmod sunt asperiores occaecati aute.  rerum adipisicing id officia. ', 265);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Harrison', 266, 'The jurney begins: do necessitatibus minus lorem lorem nobis.  elit adipisicing at soluta omnis ea. ', 266);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Humberto', 267, 'The jurney begins: laborum soluta quibusdam in quidem non.  sunt. ', 267);
insert into DESTINATIONS (name, id_destinations, description, id_trip)
values ('Minnie', 268, 'The jurney begins: expedita est impedit voluptate praesentium voluptatibus. ', 268);
commit;
prompt 400 records loaded
prompt Loading GUARD...
insert into GUARD (id_guard, number_phone)
values (1, '0578081');
insert into GUARD (id_guard, number_phone)
values (2, '0597897');
insert into GUARD (id_guard, number_phone)
values (3, '0598009');
insert into GUARD (id_guard, number_phone)
values (4, '0538061');
insert into GUARD (id_guard, number_phone)
values (5, '0541920');
insert into GUARD (id_guard, number_phone)
values (6, '0527082');
insert into GUARD (id_guard, number_phone)
values (7, '0538773');
insert into GUARD (id_guard, number_phone)
values (8, '0513562');
insert into GUARD (id_guard, number_phone)
values (9, '0524761');
insert into GUARD (id_guard, number_phone)
values (10, '0539840');
insert into GUARD (id_guard, number_phone)
values (11, '0558462');
insert into GUARD (id_guard, number_phone)
values (12, '0582316');
insert into GUARD (id_guard, number_phone)
values (13, '0587873');
insert into GUARD (id_guard, number_phone)
values (14, '0549511');
insert into GUARD (id_guard, number_phone)
values (15, '0572329');
insert into GUARD (id_guard, number_phone)
values (16, '0589137');
insert into GUARD (id_guard, number_phone)
values (17, '0531056');
insert into GUARD (id_guard, number_phone)
values (18, '0593485');
insert into GUARD (id_guard, number_phone)
values (19, '0528747');
insert into GUARD (id_guard, number_phone)
values (20, '0546417');
insert into GUARD (id_guard, number_phone)
values (21, '0567704');
insert into GUARD (id_guard, number_phone)
values (22, '0524932');
insert into GUARD (id_guard, number_phone)
values (23, '0559243');
insert into GUARD (id_guard, number_phone)
values (24, '0558704');
insert into GUARD (id_guard, number_phone)
values (25, '0576221');
insert into GUARD (id_guard, number_phone)
values (26, '0557733');
insert into GUARD (id_guard, number_phone)
values (27, '0526911');
insert into GUARD (id_guard, number_phone)
values (28, '0528245');
insert into GUARD (id_guard, number_phone)
values (29, '0554221');
insert into GUARD (id_guard, number_phone)
values (30, '0599422');
insert into GUARD (id_guard, number_phone)
values (31, '0563344');
insert into GUARD (id_guard, number_phone)
values (32, '0532499');
insert into GUARD (id_guard, number_phone)
values (33, '0560969');
insert into GUARD (id_guard, number_phone)
values (34, '0528247');
insert into GUARD (id_guard, number_phone)
values (35, '0552744');
insert into GUARD (id_guard, number_phone)
values (36, '0590033');
insert into GUARD (id_guard, number_phone)
values (37, '0574830');
insert into GUARD (id_guard, number_phone)
values (38, '0578792');
insert into GUARD (id_guard, number_phone)
values (39, '0545952');
insert into GUARD (id_guard, number_phone)
values (40, '0588211');
insert into GUARD (id_guard, number_phone)
values (41, '0516513');
insert into GUARD (id_guard, number_phone)
values (42, '0561227');
insert into GUARD (id_guard, number_phone)
values (43, '0539578');
insert into GUARD (id_guard, number_phone)
values (44, '0579934');
insert into GUARD (id_guard, number_phone)
values (45, '0577445');
insert into GUARD (id_guard, number_phone)
values (46, '0587264');
insert into GUARD (id_guard, number_phone)
values (47, '0529361');
insert into GUARD (id_guard, number_phone)
values (48, '0536147');
insert into GUARD (id_guard, number_phone)
values (49, '0599573');
insert into GUARD (id_guard, number_phone)
values (50, '0511009');
insert into GUARD (id_guard, number_phone)
values (51, '0526068');
insert into GUARD (id_guard, number_phone)
values (52, '0545389');
insert into GUARD (id_guard, number_phone)
values (53, '0566709');
insert into GUARD (id_guard, number_phone)
values (54, '0581122');
insert into GUARD (id_guard, number_phone)
values (55, '0536166');
insert into GUARD (id_guard, number_phone)
values (56, '0554302');
insert into GUARD (id_guard, number_phone)
values (57, '0555630');
insert into GUARD (id_guard, number_phone)
values (58, '0524920');
insert into GUARD (id_guard, number_phone)
values (59, '0556307');
insert into GUARD (id_guard, number_phone)
values (60, '0586141');
insert into GUARD (id_guard, number_phone)
values (61, '0526505');
insert into GUARD (id_guard, number_phone)
values (62, '0592117');
insert into GUARD (id_guard, number_phone)
values (63, '0536061');
insert into GUARD (id_guard, number_phone)
values (64, '0575731');
insert into GUARD (id_guard, number_phone)
values (65, '0558087');
insert into GUARD (id_guard, number_phone)
values (66, '0511207');
insert into GUARD (id_guard, number_phone)
values (67, '0572350');
insert into GUARD (id_guard, number_phone)
values (68, '0562704');
insert into GUARD (id_guard, number_phone)
values (69, '0528304');
insert into GUARD (id_guard, number_phone)
values (70, '0518281');
insert into GUARD (id_guard, number_phone)
values (71, '0577348');
insert into GUARD (id_guard, number_phone)
values (72, '0537569');
insert into GUARD (id_guard, number_phone)
values (73, '0554712');
insert into GUARD (id_guard, number_phone)
values (74, '0558325');
insert into GUARD (id_guard, number_phone)
values (75, '0526351');
insert into GUARD (id_guard, number_phone)
values (76, '0545150');
insert into GUARD (id_guard, number_phone)
values (77, '0512197');
insert into GUARD (id_guard, number_phone)
values (78, '0578605');
insert into GUARD (id_guard, number_phone)
values (79, '0584852');
insert into GUARD (id_guard, number_phone)
values (80, '0575795');
insert into GUARD (id_guard, number_phone)
values (81, '0558743');
insert into GUARD (id_guard, number_phone)
values (82, '0542979');
insert into GUARD (id_guard, number_phone)
values (83, '0563634');
insert into GUARD (id_guard, number_phone)
values (84, '0520930');
insert into GUARD (id_guard, number_phone)
values (85, '0580545');
insert into GUARD (id_guard, number_phone)
values (86, '0589510');
insert into GUARD (id_guard, number_phone)
values (87, '0576802');
insert into GUARD (id_guard, number_phone)
values (88, '0516600');
insert into GUARD (id_guard, number_phone)
values (89, '0543168');
insert into GUARD (id_guard, number_phone)
values (90, '0599052');
insert into GUARD (id_guard, number_phone)
values (91, '0576175');
insert into GUARD (id_guard, number_phone)
values (92, '0591335');
insert into GUARD (id_guard, number_phone)
values (93, '0570910');
insert into GUARD (id_guard, number_phone)
values (94, '0572014');
insert into GUARD (id_guard, number_phone)
values (95, '0563942');
insert into GUARD (id_guard, number_phone)
values (96, '0564600');
insert into GUARD (id_guard, number_phone)
values (97, '0562434');
insert into GUARD (id_guard, number_phone)
values (98, '0511929');
insert into GUARD (id_guard, number_phone)
values (99, '0542638');
insert into GUARD (id_guard, number_phone)
values (100, '0595749');
commit;
prompt 100 records committed...
insert into GUARD (id_guard, number_phone)
values (101, '0595546');
insert into GUARD (id_guard, number_phone)
values (102, '0596710');
insert into GUARD (id_guard, number_phone)
values (103, '0563716');
insert into GUARD (id_guard, number_phone)
values (104, '0554286');
insert into GUARD (id_guard, number_phone)
values (105, '0559335');
insert into GUARD (id_guard, number_phone)
values (106, '0542419');
insert into GUARD (id_guard, number_phone)
values (107, '0580540');
insert into GUARD (id_guard, number_phone)
values (108, '0568906');
insert into GUARD (id_guard, number_phone)
values (109, '0559728');
insert into GUARD (id_guard, number_phone)
values (110, '0521018');
insert into GUARD (id_guard, number_phone)
values (111, '0530098');
insert into GUARD (id_guard, number_phone)
values (112, '0514374');
insert into GUARD (id_guard, number_phone)
values (113, '0557900');
insert into GUARD (id_guard, number_phone)
values (114, '0519941');
insert into GUARD (id_guard, number_phone)
values (115, '0597072');
insert into GUARD (id_guard, number_phone)
values (116, '0597051');
insert into GUARD (id_guard, number_phone)
values (117, '0581628');
insert into GUARD (id_guard, number_phone)
values (118, '0512864');
insert into GUARD (id_guard, number_phone)
values (119, '0582331');
insert into GUARD (id_guard, number_phone)
values (120, '0591255');
insert into GUARD (id_guard, number_phone)
values (121, '0510259');
insert into GUARD (id_guard, number_phone)
values (122, '0548526');
insert into GUARD (id_guard, number_phone)
values (123, '0554039');
insert into GUARD (id_guard, number_phone)
values (124, '0589215');
insert into GUARD (id_guard, number_phone)
values (125, '0580295');
insert into GUARD (id_guard, number_phone)
values (126, '0541291');
insert into GUARD (id_guard, number_phone)
values (127, '0592169');
insert into GUARD (id_guard, number_phone)
values (128, '0517147');
insert into GUARD (id_guard, number_phone)
values (129, '0560255');
insert into GUARD (id_guard, number_phone)
values (130, '0558989');
insert into GUARD (id_guard, number_phone)
values (131, '0540900');
insert into GUARD (id_guard, number_phone)
values (132, '0597743');
insert into GUARD (id_guard, number_phone)
values (133, '0575316');
insert into GUARD (id_guard, number_phone)
values (134, '0548569');
insert into GUARD (id_guard, number_phone)
values (135, '0530081');
insert into GUARD (id_guard, number_phone)
values (136, '0518079');
insert into GUARD (id_guard, number_phone)
values (137, '0575399');
insert into GUARD (id_guard, number_phone)
values (138, '0544174');
insert into GUARD (id_guard, number_phone)
values (139, '0579837');
insert into GUARD (id_guard, number_phone)
values (140, '0540274');
insert into GUARD (id_guard, number_phone)
values (141, '0510529');
insert into GUARD (id_guard, number_phone)
values (142, '0596900');
insert into GUARD (id_guard, number_phone)
values (143, '0520974');
insert into GUARD (id_guard, number_phone)
values (144, '0591068');
insert into GUARD (id_guard, number_phone)
values (145, '0518993');
insert into GUARD (id_guard, number_phone)
values (146, '0573248');
insert into GUARD (id_guard, number_phone)
values (147, '0588386');
insert into GUARD (id_guard, number_phone)
values (148, '0552539');
insert into GUARD (id_guard, number_phone)
values (149, '0574878');
insert into GUARD (id_guard, number_phone)
values (150, '0546273');
insert into GUARD (id_guard, number_phone)
values (151, '0555856');
insert into GUARD (id_guard, number_phone)
values (152, '0562694');
insert into GUARD (id_guard, number_phone)
values (153, '0550456');
insert into GUARD (id_guard, number_phone)
values (154, '0586678');
insert into GUARD (id_guard, number_phone)
values (155, '0584965');
insert into GUARD (id_guard, number_phone)
values (156, '0575842');
insert into GUARD (id_guard, number_phone)
values (157, '0538001');
insert into GUARD (id_guard, number_phone)
values (158, '0555886');
insert into GUARD (id_guard, number_phone)
values (159, '0561433');
insert into GUARD (id_guard, number_phone)
values (160, '0519590');
insert into GUARD (id_guard, number_phone)
values (161, '0591409');
insert into GUARD (id_guard, number_phone)
values (162, '0521440');
insert into GUARD (id_guard, number_phone)
values (163, '0566650');
insert into GUARD (id_guard, number_phone)
values (164, '0535044');
insert into GUARD (id_guard, number_phone)
values (165, '0559587');
insert into GUARD (id_guard, number_phone)
values (166, '0550180');
insert into GUARD (id_guard, number_phone)
values (167, '0522453');
insert into GUARD (id_guard, number_phone)
values (168, '0533299');
insert into GUARD (id_guard, number_phone)
values (169, '0554116');
insert into GUARD (id_guard, number_phone)
values (170, '0576910');
insert into GUARD (id_guard, number_phone)
values (171, '0537325');
insert into GUARD (id_guard, number_phone)
values (172, '0582158');
insert into GUARD (id_guard, number_phone)
values (173, '0599764');
insert into GUARD (id_guard, number_phone)
values (174, '0593305');
insert into GUARD (id_guard, number_phone)
values (175, '0582324');
insert into GUARD (id_guard, number_phone)
values (176, '0519253');
insert into GUARD (id_guard, number_phone)
values (177, '0521775');
insert into GUARD (id_guard, number_phone)
values (178, '0542426');
insert into GUARD (id_guard, number_phone)
values (179, '0541754');
insert into GUARD (id_guard, number_phone)
values (180, '0555174');
insert into GUARD (id_guard, number_phone)
values (181, '0577564');
insert into GUARD (id_guard, number_phone)
values (182, '0548026');
insert into GUARD (id_guard, number_phone)
values (183, '0569842');
insert into GUARD (id_guard, number_phone)
values (184, '0510711');
insert into GUARD (id_guard, number_phone)
values (185, '0545668');
insert into GUARD (id_guard, number_phone)
values (186, '0525865');
insert into GUARD (id_guard, number_phone)
values (187, '0573585');
insert into GUARD (id_guard, number_phone)
values (188, '0513317');
insert into GUARD (id_guard, number_phone)
values (189, '0594455');
insert into GUARD (id_guard, number_phone)
values (190, '0581515');
insert into GUARD (id_guard, number_phone)
values (191, '0527670');
insert into GUARD (id_guard, number_phone)
values (192, '0566808');
insert into GUARD (id_guard, number_phone)
values (193, '0555615');
insert into GUARD (id_guard, number_phone)
values (194, '0546488');
insert into GUARD (id_guard, number_phone)
values (195, '0565319');
insert into GUARD (id_guard, number_phone)
values (196, '0560117');
insert into GUARD (id_guard, number_phone)
values (197, '0547081');
insert into GUARD (id_guard, number_phone)
values (198, '0533427');
insert into GUARD (id_guard, number_phone)
values (199, '0524368');
insert into GUARD (id_guard, number_phone)
values (200, '0563110');
commit;
prompt 200 records committed...
insert into GUARD (id_guard, number_phone)
values (201, '0550158');
insert into GUARD (id_guard, number_phone)
values (202, '0525712');
insert into GUARD (id_guard, number_phone)
values (203, '0534698');
insert into GUARD (id_guard, number_phone)
values (204, '0574643');
insert into GUARD (id_guard, number_phone)
values (205, '0539579');
insert into GUARD (id_guard, number_phone)
values (206, '0538181');
insert into GUARD (id_guard, number_phone)
values (207, '0571948');
insert into GUARD (id_guard, number_phone)
values (208, '0562231');
insert into GUARD (id_guard, number_phone)
values (209, '0529105');
insert into GUARD (id_guard, number_phone)
values (210, '0526719');
insert into GUARD (id_guard, number_phone)
values (211, '0531016');
insert into GUARD (id_guard, number_phone)
values (212, '0515566');
insert into GUARD (id_guard, number_phone)
values (213, '0593913');
insert into GUARD (id_guard, number_phone)
values (214, '0531276');
insert into GUARD (id_guard, number_phone)
values (215, '0520302');
insert into GUARD (id_guard, number_phone)
values (216, '0537077');
insert into GUARD (id_guard, number_phone)
values (217, '0537306');
insert into GUARD (id_guard, number_phone)
values (218, '0540236');
insert into GUARD (id_guard, number_phone)
values (219, '0538362');
insert into GUARD (id_guard, number_phone)
values (220, '0554043');
insert into GUARD (id_guard, number_phone)
values (221, '0531696');
insert into GUARD (id_guard, number_phone)
values (222, '0540123');
insert into GUARD (id_guard, number_phone)
values (223, '0590108');
insert into GUARD (id_guard, number_phone)
values (224, '0599732');
insert into GUARD (id_guard, number_phone)
values (225, '0523398');
insert into GUARD (id_guard, number_phone)
values (226, '0592645');
insert into GUARD (id_guard, number_phone)
values (227, '0542276');
insert into GUARD (id_guard, number_phone)
values (228, '0546846');
insert into GUARD (id_guard, number_phone)
values (229, '0526733');
insert into GUARD (id_guard, number_phone)
values (230, '0596693');
insert into GUARD (id_guard, number_phone)
values (231, '0572364');
insert into GUARD (id_guard, number_phone)
values (232, '0561933');
insert into GUARD (id_guard, number_phone)
values (233, '0558139');
insert into GUARD (id_guard, number_phone)
values (234, '0566452');
insert into GUARD (id_guard, number_phone)
values (235, '0529817');
insert into GUARD (id_guard, number_phone)
values (236, '0517144');
insert into GUARD (id_guard, number_phone)
values (237, '0576208');
insert into GUARD (id_guard, number_phone)
values (238, '0541791');
insert into GUARD (id_guard, number_phone)
values (239, '0562942');
insert into GUARD (id_guard, number_phone)
values (240, '0564773');
insert into GUARD (id_guard, number_phone)
values (241, '0542585');
insert into GUARD (id_guard, number_phone)
values (242, '0594602');
insert into GUARD (id_guard, number_phone)
values (243, '0518883');
insert into GUARD (id_guard, number_phone)
values (244, '0588369');
insert into GUARD (id_guard, number_phone)
values (245, '0512792');
insert into GUARD (id_guard, number_phone)
values (246, '0537972');
insert into GUARD (id_guard, number_phone)
values (247, '0593886');
insert into GUARD (id_guard, number_phone)
values (248, '0582921');
insert into GUARD (id_guard, number_phone)
values (249, '0576725');
insert into GUARD (id_guard, number_phone)
values (250, '0593681');
insert into GUARD (id_guard, number_phone)
values (251, '0514161');
insert into GUARD (id_guard, number_phone)
values (252, '0568777');
insert into GUARD (id_guard, number_phone)
values (253, '0563551');
insert into GUARD (id_guard, number_phone)
values (254, '0514477');
insert into GUARD (id_guard, number_phone)
values (255, '0562842');
insert into GUARD (id_guard, number_phone)
values (256, '0563557');
insert into GUARD (id_guard, number_phone)
values (257, '0518357');
insert into GUARD (id_guard, number_phone)
values (258, '0566975');
insert into GUARD (id_guard, number_phone)
values (259, '0521489');
insert into GUARD (id_guard, number_phone)
values (260, '0556313');
insert into GUARD (id_guard, number_phone)
values (261, '0534875');
insert into GUARD (id_guard, number_phone)
values (262, '0544313');
insert into GUARD (id_guard, number_phone)
values (263, '0524164');
insert into GUARD (id_guard, number_phone)
values (264, '0577244');
insert into GUARD (id_guard, number_phone)
values (265, '0583172');
insert into GUARD (id_guard, number_phone)
values (266, '0550833');
insert into GUARD (id_guard, number_phone)
values (267, '0522711');
insert into GUARD (id_guard, number_phone)
values (268, '0570121');
insert into GUARD (id_guard, number_phone)
values (269, '0563067');
insert into GUARD (id_guard, number_phone)
values (270, '0573244');
insert into GUARD (id_guard, number_phone)
values (271, '0591851');
insert into GUARD (id_guard, number_phone)
values (272, '0569891');
insert into GUARD (id_guard, number_phone)
values (273, '0534839');
insert into GUARD (id_guard, number_phone)
values (274, '0547246');
insert into GUARD (id_guard, number_phone)
values (275, '0542413');
insert into GUARD (id_guard, number_phone)
values (276, '0534488');
insert into GUARD (id_guard, number_phone)
values (277, '0568096');
insert into GUARD (id_guard, number_phone)
values (278, '0583995');
insert into GUARD (id_guard, number_phone)
values (279, '0582654');
insert into GUARD (id_guard, number_phone)
values (280, '0590124');
insert into GUARD (id_guard, number_phone)
values (281, '0586326');
insert into GUARD (id_guard, number_phone)
values (282, '0546438');
insert into GUARD (id_guard, number_phone)
values (283, '0515623');
insert into GUARD (id_guard, number_phone)
values (284, '0580285');
insert into GUARD (id_guard, number_phone)
values (285, '0511171');
insert into GUARD (id_guard, number_phone)
values (286, '0535207');
insert into GUARD (id_guard, number_phone)
values (287, '0525491');
insert into GUARD (id_guard, number_phone)
values (288, '0566497');
insert into GUARD (id_guard, number_phone)
values (289, '0533428');
insert into GUARD (id_guard, number_phone)
values (290, '0541306');
insert into GUARD (id_guard, number_phone)
values (291, '0563458');
insert into GUARD (id_guard, number_phone)
values (292, '0511083');
insert into GUARD (id_guard, number_phone)
values (293, '0576104');
insert into GUARD (id_guard, number_phone)
values (294, '0577107');
insert into GUARD (id_guard, number_phone)
values (295, '0542018');
insert into GUARD (id_guard, number_phone)
values (296, '0525758');
insert into GUARD (id_guard, number_phone)
values (297, '0545436');
insert into GUARD (id_guard, number_phone)
values (298, '0531594');
insert into GUARD (id_guard, number_phone)
values (299, '0558491');
insert into GUARD (id_guard, number_phone)
values (300, '0565859');
commit;
prompt 300 records committed...
insert into GUARD (id_guard, number_phone)
values (301, '0511217');
insert into GUARD (id_guard, number_phone)
values (302, '0585737');
insert into GUARD (id_guard, number_phone)
values (303, '0552813');
insert into GUARD (id_guard, number_phone)
values (304, '0511564');
insert into GUARD (id_guard, number_phone)
values (305, '0540927');
insert into GUARD (id_guard, number_phone)
values (306, '0546575');
insert into GUARD (id_guard, number_phone)
values (307, '0593265');
insert into GUARD (id_guard, number_phone)
values (308, '0531647');
insert into GUARD (id_guard, number_phone)
values (309, '0588473');
insert into GUARD (id_guard, number_phone)
values (310, '0545497');
insert into GUARD (id_guard, number_phone)
values (311, '0553681');
insert into GUARD (id_guard, number_phone)
values (312, '0594684');
insert into GUARD (id_guard, number_phone)
values (313, '0513413');
insert into GUARD (id_guard, number_phone)
values (314, '0527112');
insert into GUARD (id_guard, number_phone)
values (315, '0536599');
insert into GUARD (id_guard, number_phone)
values (316, '0536047');
insert into GUARD (id_guard, number_phone)
values (317, '0569521');
insert into GUARD (id_guard, number_phone)
values (318, '0539656');
insert into GUARD (id_guard, number_phone)
values (319, '0543742');
insert into GUARD (id_guard, number_phone)
values (320, '0516601');
insert into GUARD (id_guard, number_phone)
values (321, '0582140');
insert into GUARD (id_guard, number_phone)
values (322, '0576169');
insert into GUARD (id_guard, number_phone)
values (323, '0571205');
insert into GUARD (id_guard, number_phone)
values (324, '0539171');
insert into GUARD (id_guard, number_phone)
values (325, '0550352');
insert into GUARD (id_guard, number_phone)
values (326, '0533869');
insert into GUARD (id_guard, number_phone)
values (327, '0585650');
insert into GUARD (id_guard, number_phone)
values (328, '0570275');
insert into GUARD (id_guard, number_phone)
values (329, '0568841');
insert into GUARD (id_guard, number_phone)
values (330, '0590904');
insert into GUARD (id_guard, number_phone)
values (331, '0590347');
insert into GUARD (id_guard, number_phone)
values (332, '0569313');
insert into GUARD (id_guard, number_phone)
values (333, '0569733');
insert into GUARD (id_guard, number_phone)
values (334, '0535468');
insert into GUARD (id_guard, number_phone)
values (335, '0591688');
insert into GUARD (id_guard, number_phone)
values (336, '0527254');
insert into GUARD (id_guard, number_phone)
values (337, '0583013');
insert into GUARD (id_guard, number_phone)
values (338, '0598889');
insert into GUARD (id_guard, number_phone)
values (339, '0511933');
insert into GUARD (id_guard, number_phone)
values (340, '0589645');
insert into GUARD (id_guard, number_phone)
values (341, '0570704');
insert into GUARD (id_guard, number_phone)
values (342, '0569173');
insert into GUARD (id_guard, number_phone)
values (343, '0561182');
insert into GUARD (id_guard, number_phone)
values (344, '0536842');
insert into GUARD (id_guard, number_phone)
values (345, '0558419');
insert into GUARD (id_guard, number_phone)
values (346, '0590057');
insert into GUARD (id_guard, number_phone)
values (347, '0537130');
insert into GUARD (id_guard, number_phone)
values (348, '0545625');
insert into GUARD (id_guard, number_phone)
values (349, '0516763');
insert into GUARD (id_guard, number_phone)
values (350, '0575760');
insert into GUARD (id_guard, number_phone)
values (351, '0532359');
insert into GUARD (id_guard, number_phone)
values (352, '0527577');
insert into GUARD (id_guard, number_phone)
values (353, '0597764');
insert into GUARD (id_guard, number_phone)
values (354, '0529697');
insert into GUARD (id_guard, number_phone)
values (355, '0595031');
insert into GUARD (id_guard, number_phone)
values (356, '0551569');
insert into GUARD (id_guard, number_phone)
values (357, '0519607');
insert into GUARD (id_guard, number_phone)
values (358, '0538464');
insert into GUARD (id_guard, number_phone)
values (359, '0571840');
insert into GUARD (id_guard, number_phone)
values (360, '0599768');
insert into GUARD (id_guard, number_phone)
values (361, '0537479');
insert into GUARD (id_guard, number_phone)
values (362, '0583613');
insert into GUARD (id_guard, number_phone)
values (363, '0590961');
insert into GUARD (id_guard, number_phone)
values (364, '0558206');
insert into GUARD (id_guard, number_phone)
values (365, '0570965');
insert into GUARD (id_guard, number_phone)
values (366, '0545370');
insert into GUARD (id_guard, number_phone)
values (367, '0521939');
insert into GUARD (id_guard, number_phone)
values (368, '0586427');
insert into GUARD (id_guard, number_phone)
values (369, '0526002');
insert into GUARD (id_guard, number_phone)
values (370, '0538533');
insert into GUARD (id_guard, number_phone)
values (371, '0525692');
insert into GUARD (id_guard, number_phone)
values (372, '0540226');
insert into GUARD (id_guard, number_phone)
values (373, '0598829');
insert into GUARD (id_guard, number_phone)
values (374, '0594924');
insert into GUARD (id_guard, number_phone)
values (375, '0543443');
insert into GUARD (id_guard, number_phone)
values (376, '0540560');
insert into GUARD (id_guard, number_phone)
values (377, '0566227');
insert into GUARD (id_guard, number_phone)
values (378, '0598336');
insert into GUARD (id_guard, number_phone)
values (379, '0574797');
insert into GUARD (id_guard, number_phone)
values (380, '0557116');
insert into GUARD (id_guard, number_phone)
values (381, '0599629');
insert into GUARD (id_guard, number_phone)
values (382, '0518009');
insert into GUARD (id_guard, number_phone)
values (383, '0587853');
insert into GUARD (id_guard, number_phone)
values (384, '0566605');
insert into GUARD (id_guard, number_phone)
values (385, '0520601');
insert into GUARD (id_guard, number_phone)
values (386, '0585379');
insert into GUARD (id_guard, number_phone)
values (387, '0520883');
insert into GUARD (id_guard, number_phone)
values (388, '0579340');
insert into GUARD (id_guard, number_phone)
values (389, '0563932');
insert into GUARD (id_guard, number_phone)
values (390, '0563529');
insert into GUARD (id_guard, number_phone)
values (391, '0527023');
insert into GUARD (id_guard, number_phone)
values (392, '0520493');
insert into GUARD (id_guard, number_phone)
values (393, '0582503');
insert into GUARD (id_guard, number_phone)
values (394, '0592894');
insert into GUARD (id_guard, number_phone)
values (395, '0547852');
insert into GUARD (id_guard, number_phone)
values (396, '0541670');
insert into GUARD (id_guard, number_phone)
values (397, '0514544');
insert into GUARD (id_guard, number_phone)
values (398, '0573121');
insert into GUARD (id_guard, number_phone)
values (399, '0523269');
insert into GUARD (id_guard, number_phone)
values (400, '0574421');
commit;
prompt 400 records loaded
prompt Loading GUIDED_BY...
insert into GUIDED_BY (price, id_trip, id_guard)
values (5542, 1, 1);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5710, 2, 2);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7528, 3, 3);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6038, 4, 4);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5338, 5, 5);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6792, 6, 6);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7866, 7, 7);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8470, 8, 8);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7664, 9, 9);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5517, 10, 10);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6211, 11, 11);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5939, 12, 12);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6486, 13, 13);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6809, 14, 14);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5617, 15, 15);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8931, 16, 16);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5330, 17, 17);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6838, 18, 18);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6655, 19, 19);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5852, 20, 20);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8989, 21, 21);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6307, 22, 22);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7561, 23, 23);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8515, 24, 24);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6649, 25, 25);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8858, 26, 26);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6027, 27, 27);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5826, 28, 28);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8143, 29, 29);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5039, 30, 30);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8819, 31, 31);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8659, 32, 32);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7985, 33, 33);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7296, 34, 34);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8422, 35, 35);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5795, 36, 36);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8917, 37, 37);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6380, 38, 38);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6886, 39, 39);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7931, 40, 40);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5607, 41, 41);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8653, 42, 42);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8072, 43, 43);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5630, 44, 44);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6231, 45, 45);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6698, 46, 46);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8472, 47, 47);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8209, 48, 48);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6591, 49, 49);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8695, 50, 50);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5808, 51, 51);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7450, 52, 52);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8477, 53, 53);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8971, 54, 54);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5582, 55, 55);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7114, 56, 56);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6961, 57, 57);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7201, 58, 58);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6772, 59, 59);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8170, 60, 60);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8290, 61, 61);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8654, 62, 62);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8859, 63, 63);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8685, 64, 64);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5094, 65, 65);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6956, 66, 66);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7375, 67, 67);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6310, 68, 68);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8575, 69, 69);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7794, 70, 70);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6161, 71, 71);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8310, 72, 72);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6369, 73, 73);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8991, 74, 74);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7511, 75, 75);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7050, 76, 76);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7780, 77, 77);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5403, 78, 78);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6407, 79, 79);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7910, 80, 80);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7058, 81, 81);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8073, 82, 82);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8017, 83, 83);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5530, 84, 84);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8417, 85, 85);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8069, 86, 86);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8654, 87, 87);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5360, 88, 88);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5481, 89, 89);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8453, 90, 90);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5380, 91, 91);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8412, 92, 92);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8839, 93, 93);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8825, 94, 94);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8439, 95, 95);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6181, 96, 96);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8404, 97, 97);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7853, 98, 98);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7707, 99, 99);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5674, 100, 100);
commit;
prompt 100 records committed...
insert into GUIDED_BY (price, id_trip, id_guard)
values (6260, 101, 101);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6267, 102, 102);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5360, 103, 103);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5456, 104, 104);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8684, 105, 105);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5710, 106, 106);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7927, 107, 107);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8679, 108, 108);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7031, 109, 109);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7923, 110, 110);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7920, 111, 111);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8020, 112, 112);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6170, 113, 113);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7670, 114, 114);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6254, 115, 115);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6465, 116, 116);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8162, 117, 117);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5865, 118, 118);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7602, 119, 119);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6883, 120, 120);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7853, 121, 121);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6325, 122, 122);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5904, 123, 123);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8313, 124, 124);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6095, 125, 125);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8583, 126, 126);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6212, 127, 127);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7917, 128, 128);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7258, 129, 129);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6213, 130, 130);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6047, 131, 131);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8539, 132, 132);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8731, 133, 133);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5094, 134, 134);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8467, 135, 135);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8778, 136, 136);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7101, 137, 137);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5053, 138, 138);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8025, 139, 139);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5558, 140, 140);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6697, 141, 141);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5319, 142, 142);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7822, 143, 143);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8090, 144, 144);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5180, 145, 145);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7241, 146, 146);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6808, 147, 147);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7187, 148, 148);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7877, 149, 149);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8690, 150, 150);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5564, 151, 151);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8873, 152, 152);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7530, 153, 153);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5590, 154, 154);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7708, 155, 155);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6196, 156, 156);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7178, 157, 157);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5023, 158, 158);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7147, 159, 159);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8225, 160, 160);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8816, 161, 161);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7326, 162, 162);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8340, 163, 163);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6116, 164, 164);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7559, 165, 165);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7638, 166, 166);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7773, 167, 167);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5247, 168, 168);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7981, 169, 169);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8324, 170, 170);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5829, 171, 171);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5293, 172, 172);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8304, 173, 173);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6717, 174, 174);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7233, 175, 175);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7232, 176, 176);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7152, 177, 177);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7607, 178, 178);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5277, 179, 179);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7192, 180, 180);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8540, 181, 181);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6931, 182, 182);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5991, 183, 183);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6082, 184, 184);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5781, 185, 185);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6083, 186, 186);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5469, 187, 187);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8950, 188, 188);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6017, 189, 189);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5300, 190, 190);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6520, 191, 191);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8997, 192, 192);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6045, 193, 193);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5541, 194, 194);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5838, 195, 195);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8187, 196, 196);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7130, 197, 197);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5315, 198, 198);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7887, 199, 199);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7400, 200, 200);
commit;
prompt 200 records committed...
insert into GUIDED_BY (price, id_trip, id_guard)
values (5497, 201, 201);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7889, 202, 202);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6671, 203, 203);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8053, 204, 204);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8188, 205, 205);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7303, 206, 206);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5591, 207, 207);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8123, 208, 208);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8962, 209, 209);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6650, 210, 210);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6573, 211, 211);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8537, 212, 212);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7942, 213, 213);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7042, 214, 214);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8648, 215, 215);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6827, 216, 216);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7684, 217, 217);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6703, 218, 218);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5178, 219, 219);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8022, 220, 220);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7358, 221, 221);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6633, 222, 222);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5924, 223, 223);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7690, 224, 224);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5730, 225, 225);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8274, 226, 226);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7112, 227, 227);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7087, 228, 228);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8639, 229, 229);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5613, 230, 230);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5728, 231, 231);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5332, 232, 232);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5635, 233, 233);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7178, 234, 234);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7197, 235, 235);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6565, 236, 236);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5498, 237, 237);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8327, 238, 238);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8642, 239, 239);
insert into GUIDED_BY (price, id_trip, id_guard)
values (9000, 240, 240);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5297, 241, 241);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7316, 242, 242);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8920, 243, 243);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7843, 244, 244);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8686, 245, 245);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7538, 246, 246);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5607, 247, 247);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8987, 248, 248);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6132, 249, 249);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5409, 250, 250);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8137, 251, 251);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7423, 252, 252);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6756, 253, 253);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8302, 254, 254);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5262, 255, 255);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5324, 256, 256);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8468, 257, 257);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7999, 258, 258);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6040, 259, 259);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5720, 260, 260);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6096, 261, 261);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8078, 262, 262);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6529, 263, 263);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6705, 264, 264);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6194, 265, 265);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8682, 266, 266);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7366, 267, 267);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6123, 268, 268);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6200, 269, 269);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5101, 270, 270);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8447, 271, 271);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7662, 272, 272);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8662, 273, 273);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5609, 274, 274);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7854, 275, 275);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8294, 276, 276);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6187, 277, 277);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6997, 278, 278);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5258, 279, 279);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8002, 280, 280);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5829, 281, 281);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7225, 282, 282);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6959, 283, 283);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7727, 284, 284);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6579, 285, 285);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7650, 286, 286);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6751, 287, 287);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6481, 288, 288);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8663, 289, 289);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6254, 290, 290);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5817, 291, 291);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5550, 292, 292);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6323, 293, 293);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8317, 294, 294);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7832, 295, 295);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8739, 296, 296);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8784, 297, 297);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5955, 298, 298);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6449, 299, 299);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8582, 300, 300);
commit;
prompt 300 records committed...
insert into GUIDED_BY (price, id_trip, id_guard)
values (7066, 301, 301);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6999, 302, 302);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7376, 303, 303);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5473, 304, 304);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5367, 305, 305);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6603, 306, 306);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8224, 307, 307);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7635, 308, 308);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8674, 309, 309);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8059, 310, 310);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8304, 311, 311);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8876, 312, 312);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7292, 313, 313);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8235, 314, 314);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5573, 315, 315);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6070, 316, 316);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8009, 317, 317);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8083, 318, 318);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6919, 319, 319);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7304, 320, 320);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6536, 321, 321);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5643, 322, 322);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6947, 323, 323);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6604, 324, 324);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8955, 325, 325);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6001, 326, 326);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7496, 327, 327);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6219, 328, 328);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6828, 329, 329);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7615, 330, 330);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7029, 331, 331);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8360, 332, 332);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7684, 333, 333);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5459, 334, 334);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6117, 335, 335);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7359, 336, 336);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7543, 337, 337);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8428, 338, 338);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8193, 339, 339);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6174, 340, 340);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5186, 341, 341);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5426, 342, 342);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7754, 343, 343);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6173, 344, 344);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6852, 345, 345);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7589, 346, 346);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7219, 347, 347);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8152, 348, 348);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7040, 349, 349);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7069, 350, 350);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8608, 351, 351);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7500, 352, 352);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8122, 353, 353);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5827, 354, 354);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7249, 355, 355);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7471, 356, 356);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6437, 357, 357);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8867, 358, 358);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7690, 359, 359);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7493, 360, 360);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5562, 361, 361);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5340, 362, 362);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7002, 363, 363);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8436, 364, 364);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6454, 365, 365);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5980, 366, 366);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7667, 367, 367);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5807, 368, 368);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5124, 369, 369);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6279, 370, 370);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7234, 371, 371);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6782, 372, 372);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5577, 373, 373);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5863, 374, 374);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8937, 375, 375);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8025, 376, 376);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8650, 377, 377);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7496, 378, 378);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6447, 379, 379);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8233, 380, 380);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6477, 381, 381);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8140, 382, 382);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8971, 383, 383);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6337, 384, 384);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5264, 385, 385);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7534, 386, 386);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5851, 387, 387);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5303, 388, 388);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8029, 389, 389);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8709, 390, 390);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6896, 391, 391);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6469, 392, 392);
insert into GUIDED_BY (price, id_trip, id_guard)
values (6036, 393, 393);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5872, 394, 394);
insert into GUIDED_BY (price, id_trip, id_guard)
values (7577, 395, 395);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8353, 396, 396);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8589, 397, 397);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8124, 398, 398);
insert into GUIDED_BY (price, id_trip, id_guard)
values (5335, 399, 399);
insert into GUIDED_BY (price, id_trip, id_guard)
values (8867, 400, 400);
commit;
prompt 400 records loaded
prompt Loading SECRETARY...
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
values ('Y', 5702957, 2, 101);
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
values ('Y', 5495830, 2, 1);
insert into SECRETARY (isseller, secphonenum, secrank, sid)
values ('N', 5325755, 2, 102);
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
commit;
prompt 100 records committed...
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
values ('N', 5466150, 2, 100);
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
values (74, 84);
insert into SELL (accid, sid)
values (74, 236);
insert into SELL (accid, sid)
values (74, 293);
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
values (100, 61);
insert into SELL (accid, sid)
values (100, 325);
insert into SELL (accid, sid)
values (102, 290);
insert into SELL (accid, sid)
values (104, 130);
insert into SELL (accid, sid)
values (106, 14);
insert into SELL (accid, sid)
values (106, 239);
insert into SELL (accid, sid)
values (108, 48);
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
values (124, 242);
insert into SELL (accid, sid)
values (125, 80);
insert into SELL (accid, sid)
values (128, 15);
insert into SELL (accid, sid)
values (129, 94);
insert into SELL (accid, sid)
values (129, 236);
insert into SELL (accid, sid)
values (133, 121);
commit;
prompt 100 records committed...
insert into SELL (accid, sid)
values (133, 185);
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
values (147, 22);
insert into SELL (accid, sid)
values (150, 47);
insert into SELL (accid, sid)
values (150, 363);
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
values (173, 9);
insert into SELL (accid, sid)
values (176, 100);
insert into SELL (accid, sid)
values (176, 159);
insert into SELL (accid, sid)
values (177, 14);
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
values (196, 141);
insert into SELL (accid, sid)
values (200, 188);
insert into SELL (accid, sid)
values (200, 308);
insert into SELL (accid, sid)
values (200, 315);
insert into SELL (accid, sid)
values (201, 333);
insert into SELL (accid, sid)
values (202, 302);
insert into SELL (accid, sid)
values (205, 337);
insert into SELL (accid, sid)
values (207, 100);
insert into SELL (accid, sid)
values (209, 148);
insert into SELL (accid, sid)
values (209, 236);
insert into SELL (accid, sid)
values (210, 14);
insert into SELL (accid, sid)
values (210, 304);
insert into SELL (accid, sid)
values (214, 109);
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
values (225, 114);
insert into SELL (accid, sid)
values (226, 241);
insert into SELL (accid, sid)
values (226, 370);
insert into SELL (accid, sid)
values (229, 87);
insert into SELL (accid, sid)
values (230, 124);
insert into SELL (accid, sid)
values (230, 142);
insert into SELL (accid, sid)
values (231, 30);
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
commit;
prompt 200 records committed...
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
values (273, 138);
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
values (322, 241);
insert into SELL (accid, sid)
values (323, 112);
insert into SELL (accid, sid)
values (323, 379);
insert into SELL (accid, sid)
values (325, 33);
insert into SELL (accid, sid)
values (330, 7);
insert into SELL (accid, sid)
values (330, 83);
insert into SELL (accid, sid)
values (330, 359);
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
values (369, 272);
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
values (382, 372);
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
values (391, 124);
insert into SELL (accid, sid)
values (394, 146);
insert into SELL (accid, sid)
values (395, 136);
commit;
prompt 300 records committed...
insert into SELL (accid, sid)
values (395, 331);
insert into SELL (accid, sid)
values (397, 14);
insert into SELL (accid, sid)
values (397, 20);
insert into SELL (accid, sid)
values (400, 62);
commit;
prompt 304 records loaded
prompt Loading TRAVELERS_LIST...
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (1, 2800, 1, 1);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (2, 1340, 2, 2);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (3, 3404, 3, 3);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (4, 3741, 4, 4);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (5, 2259, 5, 5);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (6, 3527, 6, 6);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (7, 2502, 7, 7);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (8, 1520, 8, 8);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (9, 3906, 9, 9);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (10, 1056, 10, 10);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (11, 2365, 11, 11);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (12, 3613, 12, 12);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (13, 3749, 13, 13);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (14, 1584, 14, 14);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (15, 1596, 15, 15);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (16, 1902, 16, 16);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (17, 2774, 17, 17);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (18, 1100, 18, 18);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (19, 3709, 19, 19);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (20, 2045, 20, 20);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (21, 1972, 21, 21);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (22, 2385, 22, 22);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (23, 1987, 23, 23);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (24, 1605, 24, 24);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (25, 3092, 25, 25);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (26, 2083, 26, 26);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (27, 2398, 27, 27);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (28, 2401, 28, 28);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (29, 3441, 29, 29);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (30, 2017, 30, 30);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (31, 2740, 31, 31);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (32, 2083, 32, 32);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (33, 3814, 33, 33);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (34, 2148, 34, 34);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (35, 2993, 35, 35);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (36, 3695, 36, 36);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (37, 1378, 37, 37);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (38, 2311, 38, 38);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (39, 2572, 39, 39);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (40, 1746, 40, 40);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (41, 3095, 41, 41);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (42, 1626, 42, 42);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (43, 3934, 43, 43);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (44, 3054, 44, 44);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (45, 2996, 45, 45);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (46, 3217, 46, 46);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (47, 3738, 47, 47);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (48, 3378, 48, 48);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (49, 2409, 49, 49);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (50, 2634, 50, 50);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (51, 1524, 51, 51);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (52, 3606, 52, 52);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (53, 2951, 53, 53);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (54, 2120, 54, 54);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (55, 2602, 55, 55);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (56, 3003, 56, 56);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (57, 1858, 57, 57);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (58, 3609, 58, 58);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (59, 1601, 59, 59);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (60, 3811, 60, 60);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (61, 2004, 61, 61);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (62, 3093, 62, 62);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (63, 2902, 63, 63);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (64, 2180, 64, 64);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (65, 1662, 65, 65);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (66, 3772, 66, 66);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (67, 2880, 67, 67);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (68, 1231, 68, 68);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (69, 1851, 69, 69);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (70, 3083, 70, 70);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (71, 3687, 71, 71);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (72, 1741, 72, 72);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (73, 3844, 73, 73);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (74, 2546, 74, 74);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (75, 3000, 75, 75);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (76, 1732, 76, 76);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (77, 3154, 77, 77);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (78, 3039, 78, 78);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (79, 3962, 79, 79);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (80, 3967, 80, 80);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (81, 2098, 81, 81);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (82, 2895, 82, 82);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (83, 3254, 83, 83);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (84, 1127, 84, 84);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (85, 3748, 85, 85);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (86, 1979, 86, 86);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (87, 3005, 87, 87);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (88, 2191, 88, 88);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (89, 1847, 89, 89);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (90, 3611, 90, 90);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (91, 3001, 91, 91);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (92, 2259, 92, 92);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (93, 3043, 93, 93);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (94, 3992, 94, 94);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (95, 2378, 95, 95);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (96, 2861, 96, 96);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (97, 1482, 97, 97);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (98, 1528, 98, 98);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (99, 1773, 99, 99);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (100, 1512, 100, 100);
commit;
prompt 100 records committed...
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (101, 3619, 101, 101);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (102, 2171, 102, 102);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (103, 3624, 103, 103);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (104, 2012, 104, 104);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (105, 3804, 105, 105);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (106, 3691, 106, 106);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (107, 3066, 107, 107);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (108, 1776, 108, 108);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (109, 3991, 109, 109);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (110, 2500, 110, 110);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (111, 1650, 111, 111);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (112, 3200, 112, 112);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (113, 3629, 113, 113);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (114, 1441, 114, 114);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (115, 1812, 115, 115);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (116, 3830, 116, 116);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (117, 3576, 117, 117);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (118, 3659, 118, 118);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (119, 3807, 119, 119);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (120, 1854, 120, 120);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (121, 2607, 121, 121);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (122, 2456, 122, 122);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (123, 3557, 123, 123);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (124, 3177, 124, 124);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (125, 1848, 125, 125);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (126, 1781, 126, 126);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (127, 2636, 127, 127);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (128, 2088, 128, 128);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (129, 3212, 129, 129);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (130, 3718, 130, 130);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (131, 3302, 131, 131);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (132, 1311, 132, 132);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (133, 3669, 133, 133);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (134, 2143, 134, 134);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (135, 1329, 135, 135);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (136, 2923, 136, 136);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (137, 2920, 137, 137);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (138, 1420, 138, 138);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (139, 2052, 139, 139);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (140, 1422, 140, 140);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (141, 3816, 141, 141);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (142, 1787, 142, 142);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (143, 1856, 143, 143);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (144, 1969, 144, 144);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (145, 3583, 145, 145);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (146, 1815, 146, 146);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (147, 1043, 147, 147);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (148, 3539, 148, 148);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (149, 1698, 149, 149);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (150, 3091, 150, 150);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (151, 3791, 151, 151);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (152, 1536, 152, 152);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (153, 2984, 153, 153);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (154, 2999, 154, 154);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (155, 3655, 155, 155);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (156, 2107, 156, 156);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (157, 1253, 157, 157);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (158, 1264, 158, 158);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (159, 1815, 159, 159);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (160, 2182, 160, 160);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (161, 1580, 161, 161);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (162, 1627, 162, 162);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (163, 1018, 163, 163);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (164, 1009, 164, 164);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (165, 2034, 165, 165);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (166, 2795, 166, 166);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (167, 2924, 167, 167);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (168, 1696, 168, 168);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (169, 3437, 169, 169);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (170, 3578, 170, 170);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (171, 1305, 171, 171);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (172, 1018, 172, 172);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (173, 2490, 173, 173);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (174, 2820, 174, 174);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (175, 3306, 175, 175);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (176, 2526, 176, 176);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (177, 2342, 177, 177);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (178, 2545, 178, 178);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (179, 3707, 179, 179);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (180, 1692, 180, 180);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (181, 3423, 181, 181);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (182, 2441, 182, 182);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (183, 2913, 183, 183);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (184, 3641, 184, 184);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (185, 1120, 185, 185);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (186, 1572, 186, 186);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (187, 1098, 187, 187);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (188, 2702, 188, 188);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (189, 2641, 189, 189);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (190, 2979, 190, 190);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (191, 3727, 191, 191);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (192, 3824, 192, 192);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (193, 1118, 193, 193);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (194, 2524, 194, 194);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (195, 2395, 195, 195);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (196, 1598, 196, 196);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (197, 1799, 197, 197);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (198, 1162, 198, 198);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (199, 3701, 199, 199);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (200, 1415, 200, 200);
commit;
prompt 200 records committed...
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (201, 3896, 201, 201);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (202, 2492, 202, 202);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (203, 2591, 203, 203);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (204, 3021, 204, 204);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (205, 1418, 205, 205);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (206, 3253, 206, 206);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (207, 1394, 207, 207);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (208, 2482, 208, 208);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (209, 1084, 209, 209);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (210, 3143, 210, 210);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (211, 2489, 211, 211);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (212, 3336, 212, 212);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (213, 2104, 213, 213);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (214, 1110, 214, 214);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (215, 2302, 215, 215);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (216, 1430, 216, 216);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (217, 3454, 217, 217);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (218, 2999, 218, 218);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (219, 3116, 219, 219);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (220, 1721, 220, 220);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (221, 2942, 221, 221);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (222, 3196, 222, 222);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (223, 2855, 223, 223);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (224, 3055, 224, 224);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (225, 1151, 225, 225);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (226, 2664, 226, 226);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (227, 1827, 227, 227);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (228, 1679, 228, 228);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (229, 3091, 229, 229);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (230, 3512, 230, 230);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (231, 3121, 231, 231);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (232, 2024, 232, 232);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (233, 2132, 233, 233);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (234, 1975, 234, 234);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (235, 2096, 235, 235);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (236, 2994, 236, 236);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (237, 3555, 237, 237);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (238, 2474, 238, 238);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (239, 3193, 239, 239);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (240, 3806, 240, 240);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (241, 1782, 241, 241);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (242, 1103, 242, 242);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (243, 3995, 243, 243);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (244, 2125, 244, 244);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (245, 3144, 245, 245);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (246, 1733, 246, 246);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (247, 1256, 247, 247);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (248, 3027, 248, 248);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (249, 3722, 249, 249);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (250, 2583, 250, 250);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (251, 2356, 251, 251);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (252, 1035, 252, 252);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (253, 3632, 253, 253);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (254, 2922, 254, 254);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (255, 2352, 255, 255);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (256, 3273, 256, 256);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (257, 1801, 257, 257);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (258, 2285, 258, 258);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (259, 1632, 259, 259);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (260, 3461, 260, 260);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (261, 3086, 261, 261);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (262, 1344, 262, 262);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (263, 1821, 263, 263);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (264, 3323, 264, 264);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (265, 1283, 265, 265);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (266, 2325, 266, 266);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (267, 2432, 267, 267);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (268, 1613, 268, 268);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (269, 1397, 269, 269);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (270, 1607, 270, 270);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (271, 3441, 271, 271);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (272, 3827, 272, 272);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (273, 1208, 273, 273);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (274, 3909, 274, 274);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (275, 1751, 275, 275);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (276, 1324, 276, 276);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (277, 2992, 277, 277);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (278, 1179, 278, 278);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (279, 3248, 279, 279);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (280, 1412, 280, 280);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (281, 3957, 281, 281);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (282, 1112, 282, 282);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (283, 3889, 283, 283);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (284, 1625, 284, 284);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (285, 1732, 285, 285);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (286, 1896, 286, 286);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (287, 2047, 287, 287);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (288, 3237, 288, 288);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (289, 3989, 289, 289);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (290, 2610, 290, 290);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (291, 3048, 291, 291);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (292, 3765, 292, 292);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (293, 2005, 293, 293);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (294, 1399, 294, 294);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (295, 1608, 295, 295);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (296, 1974, 296, 296);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (297, 3778, 297, 297);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (298, 3323, 298, 298);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (299, 3630, 299, 299);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (300, 1663, 300, 300);
commit;
prompt 300 records committed...
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (301, 3993, 301, 301);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (302, 3511, 302, 302);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (303, 2551, 303, 303);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (304, 1233, 304, 304);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (305, 2930, 305, 305);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (306, 2023, 306, 306);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (307, 3211, 307, 307);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (308, 1807, 308, 308);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (309, 1143, 309, 309);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (310, 2553, 310, 310);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (311, 3920, 311, 311);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (312, 1427, 312, 312);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (313, 2488, 313, 313);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (314, 1863, 314, 314);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (315, 1208, 315, 315);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (316, 3578, 316, 316);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (317, 1815, 317, 317);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (318, 1595, 318, 318);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (319, 1438, 319, 319);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (320, 3067, 320, 320);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (321, 3430, 321, 321);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (322, 2845, 322, 322);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (323, 3237, 323, 323);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (324, 3018, 324, 324);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (325, 3118, 325, 325);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (326, 1644, 326, 326);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (327, 2461, 327, 327);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (328, 3498, 328, 328);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (329, 2346, 329, 329);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (330, 1233, 330, 330);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (331, 3143, 331, 331);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (332, 2038, 332, 332);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (333, 3936, 333, 333);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (334, 3776, 334, 334);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (335, 3609, 335, 335);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (336, 2074, 336, 336);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (337, 2312, 337, 337);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (338, 1896, 338, 338);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (339, 2743, 339, 339);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (340, 2059, 340, 340);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (341, 3141, 341, 341);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (342, 3191, 342, 342);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (343, 3086, 343, 343);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (344, 1773, 344, 344);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (345, 2942, 345, 345);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (346, 1590, 346, 346);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (347, 3229, 347, 347);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (348, 3093, 348, 348);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (349, 3997, 349, 349);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (350, 2226, 350, 350);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (351, 2695, 351, 351);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (352, 1239, 352, 352);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (353, 2637, 353, 353);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (354, 3183, 354, 354);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (355, 1279, 355, 355);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (356, 2259, 356, 356);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (357, 3742, 357, 357);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (358, 3287, 358, 358);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (359, 2532, 359, 359);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (360, 1273, 360, 360);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (361, 1011, 361, 361);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (362, 3808, 362, 362);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (363, 1848, 363, 363);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (364, 3740, 364, 364);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (365, 1365, 365, 365);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (366, 2728, 366, 366);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (367, 3370, 367, 367);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (368, 1756, 368, 368);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (369, 1516, 369, 369);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (370, 1962, 370, 370);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (371, 2642, 371, 371);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (372, 1171, 372, 372);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (373, 2574, 373, 373);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (374, 3667, 374, 374);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (375, 1734, 375, 375);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (376, 1008, 376, 376);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (377, 2243, 377, 377);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (378, 2539, 378, 378);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (379, 1286, 379, 379);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (380, 1478, 380, 380);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (381, 3941, 381, 381);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (382, 2734, 382, 382);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (383, 1661, 383, 383);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (384, 3591, 384, 384);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (385, 1921, 385, 385);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (386, 1799, 386, 386);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (387, 1182, 387, 387);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (388, 3136, 388, 388);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (389, 1237, 389, 389);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (390, 1765, 390, 390);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (391, 1142, 391, 391);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (392, 3542, 392, 392);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (393, 3097, 393, 393);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (394, 3280, 394, 394);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (395, 1042, 395, 395);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (396, 3881, 396, 396);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (397, 3969, 397, 397);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (398, 2429, 398, 398);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (399, 1263, 399, 399);
insert into TRAVELERS_LIST (id_travelers_list, price, id_trip, id_travels)
values (400, 3046, 400, 400);
commit;
prompt 400 records loaded
prompt Loading TREATMENT...
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
values (1, 'General check', 311, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (102, 'Vaccination', 781, 4);
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
commit;
prompt 100 records committed...
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
values (101, 'General check', 525, 2);
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
commit;
prompt 200 records committed...
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
insert into TREATMENT (tid, tname, tprice, tduration)
values (201, 'Vaccination', 233, 2);
insert into TREATMENT (tid, tname, tprice, tduration)
values (202, 'Surgery', 516, 4);
insert into TREATMENT (tid, tname, tprice, tduration)
values (100, 'Vaccination', 727, 4);
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
commit;
prompt 300 records committed...
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
insert into TREATMENT (tid, tname, tprice, tduration)
values (301, 'General check', 164, 2);
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
insert into TREATMENTTYPE (appid, tid)
values (206, 214);
insert into TREATMENTTYPE (appid, tid)
values (207, 176);
insert into TREATMENTTYPE (appid, tid)
values (207, 237);
commit;
prompt 200 records committed...
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
insert into TREATMENTTYPE (appid, tid)
values (285, 326);
insert into TREATMENTTYPE (appid, tid)
values (286, 42);
insert into TREATMENTTYPE (appid, tid)
values (286, 377);
commit;
prompt 300 records committed...
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
prompt 393 records loaded
prompt Enabling foreign key constraints for PET...
alter table PET enable constraint SYS_C00715079;
prompt Enabling foreign key constraints for VET...
alter table VET enable constraint SYS_C00715090;
prompt Enabling foreign key constraints for APPOINTMENT...
alter table APPOINTMENT enable constraint SYS_C00715097;
alter table APPOINTMENT enable constraint SYS_C00715098;
prompt Enabling foreign key constraints for TRIP...
alter table TRIP enable constraint SYS_C00723392;
prompt Enabling foreign key constraints for DESTINATIONS...
alter table DESTINATIONS enable constraint SYS_C00723398;
prompt Enabling foreign key constraints for GUARD...
alter table GUARD enable constraint FK_ID;
prompt Enabling foreign key constraints for GUIDED_BY...
alter table GUIDED_BY enable constraint SYS_C00723407;
alter table GUIDED_BY enable constraint SYS_C00723408;
prompt Enabling foreign key constraints for SECRETARY...
alter table SECRETARY enable constraint SYS_C00715104;
prompt Enabling foreign key constraints for SELL...
alter table SELL enable constraint SYS_C00715109;
alter table SELL enable constraint SYS_C00715110;
prompt Enabling foreign key constraints for TRAVELERS_LIST...
alter table TRAVELERS_LIST enable constraint SYS_C00723419;
alter table TRAVELERS_LIST enable constraint SYS_C00723421;
prompt Enabling foreign key constraints for TREATMENTTYPE...
alter table TREATMENTTYPE enable constraint SYS_C00715119;
alter table TREATMENTTYPE enable constraint SYS_C00715120;
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
prompt Enabling triggers for TRANSPORTATION...
alter table TRANSPORTATION enable all triggers;
prompt Enabling triggers for TRIP...
alter table TRIP enable all triggers;
prompt Enabling triggers for DESTINATIONS...
alter table DESTINATIONS enable all triggers;
prompt Enabling triggers for GUARD...
alter table GUARD enable all triggers;
prompt Enabling triggers for GUIDED_BY...
alter table GUIDED_BY enable all triggers;
prompt Enabling triggers for SECRETARY...
alter table SECRETARY enable all triggers;
prompt Enabling triggers for SELL...
alter table SELL enable all triggers;
prompt Enabling triggers for TRAVELERS_LIST...
alter table TRAVELERS_LIST enable all triggers;
prompt Enabling triggers for TREATMENT...
alter table TREATMENT enable all triggers;
prompt Enabling triggers for TREATMENTTYPE...
alter table TREATMENTTYPE enable all triggers;

set feedback on
set define on
prompt Done
