
use kalbe;

# create an inventory table and set the item_code as the primary key
create table inventory (
	item_code varchar(10) not null primary key,
	item_name varchar(100) unique,
	item_price int not null,
	item_total int not null default 0);

# insert the specified data into the table
insert into inventory(item_code,item_name,item_price,item_total)
values ("2341","Promag Tablet",3000,100),
	   ("2342","Hydro Coco 250ML",7000,20),
	   ("2343","Nutrive Benecol 100ML",20000,30),
	   ("2344","Blackmores Vit C 500Mg",95000,45),
	   ("2345","Entrasol Gold 370G",90000,120);

#show item_name that has the highest number in item_total	  
select item_name from item where item_total= (select max(item_total) from item);

#Update the item_price
update inventory
set item_price =item_price*1.10
where item_name ='Entrasol Gold 370G';

#show table inventory after updating
select * from inventory;

#insert another item_name with item_code of 2343 into the table
insert into inventory(item_code,item_name,item_price,item_total)
values ("2343","Milna",3000,100);

#delete the item_name that has the lowest number of item_total
delete
from inventory
where item_total = (select min(item_total) from item);

#show table inventory after deleting
select * from inventory;
