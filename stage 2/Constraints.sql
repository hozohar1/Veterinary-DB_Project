-- default for isSeller is NOT --
alter table Secretary
      alter column isSeller SET DEFAULT 'N';


-- check price isn't negative --
alter table Accessories
      add constraint check_price CHECK (AccPrice >= 0);
-- invalid insert check:      
insert into Accessories (accid, accname, accprice) values (1, 'free money!', -20);
 
 
-- make sure pet owner name exists --
alter table PetOwner
      modify ownerName VARCHAR(30) NOT NULL;
-- invalid insert check:      
insert into petowner (ownername, ownerid, owneraddress, ownerphonenumber)
       values (NULL, 1234567, 'over there', 0531234567);
