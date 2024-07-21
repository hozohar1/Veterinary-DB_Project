
--GUARD modifications--
--allow null in staff sbirthdate
--alter table staff modify (sbirthdate date null);

--merge guard details into staff
merge into staff s using guard g
on (s.sID = g.id_guard)
when matched then
     update set s.sname = g.name
when not matched then
  insert (sid, sname, sbirthdate)
  values (g.id_guard, g.name, null);

--add id constraint to be from staff table
alter table guard 
      add constraint fk_id foreign key (id_guard)
      references staff (sid);
      
--remove redundant attribute
alter table guard drop column name;

--END--
-------------------------------------
--TRAVELER PETOWNER modifications--

--add traveler yearofbirth column to petowner
--alter table petowner add (year_of_birth number);

--merge traveler details into petowner
--new ones:
insert into petowner (ownername, ownerid, owneraddress, ownerphonenumber, year_of_birth)
select name, id_travels, 'Unknown Address', 0, year_of_birth
from travelers
where id_travels not in (select ownerid
                        from petowner);
                        
--existing ones:
merge into petowner p using travelers t
on (p.ownerid = t.id_travels)
when matched then
  update set p.year_of_birth = t.year_of_birth;
                        
--travelers_list update: connect trip to petowner
--rename column
alter table travelers_list
rename column id_travels to ownerid;

--drop both foreign keys bc we can't know which one it is
--alter table travelers_list
--drop constraint SYS_C00722691;

--update foreign key constraints
alter table TRAVELERS_LIST
  add foreign key (ID_TRAVELS)
  references PETOWNER (OWNERID) on delete cascade;

--drop the irrelevant traveler table
drop table travelers;
--END--



--check if worked:
select * from staff;
select * from guard;

select count(*) from petowner;
select count(*) from travelers;
select * from travelers_list;
