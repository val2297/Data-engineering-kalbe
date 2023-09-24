
use kalbe;

#create first dimensions table
create table employees (
	id int primary key,
	name varchar(100),
	Department varchar(100),
	address varchar(100),
	salary int);

#Create second dimensions table
create table date (
	id int primary key,
	date date not null,
	month int not null,
	quarter int not null,
	year int not null);

#create Third dimensions table
create table branch (
	id int primary key,
	branch_name varchar(100) not null,
	branch_type varchar(100)
);

#Add primary key to the customer_orders table
ALTER TABLE kalbe.customer_orders ADD CONSTRAINT customer_orders_pk PRIMARY KEY (order_no);

#fifth dimensions table already exist in the Kalbe database


#Create fact table
create table sales(
	id int primary key,
	cust_order_id varchar(50),
	constraint kalbe_order
		foreign key (cust_order_id) references customer_orders(order_no),
	id_item varchar(10),
	id_employee int,
	id_date int,
	id_branch int,
	sales_amount int,
	product_count int,
	constraint kalbe_item
		foreign key (id_item) references item(item_code),
		foreign key (id_employee) references employees(id),
		foreign key (id_date) references date(id),
		foreign key (id_branch) references branch(id)
)



	
	
	
	

)
	