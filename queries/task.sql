use info;
create table bank(id int,bank_name varchar(20),branch varchar(20),address varchar(20),acc_no 
varchar(20),bal bigint,ifsc_code bigint,savings int,manager_name varchar(20),
feedback boolean);

ALTER TABLE bank ADD COLUMN state varchar(30);
ALTER TABLE bank ADD COLUMN country_name varchar(30);
ALTER TABLE bank ADD COLUMN loan_no bigint;
ALTER TABLE bank ADD COLUMN emi_amount int;
ALTER TABLE bank ADD COLUMN dedected_amount bigint;

select*from bank;
insert into bank values(1,"sbi","gkk","gkk","12345",50,1550,200,"pavan",true,"kar","india",5021,5000,200);
insert into bank values(2,"hdfc","bgm","bgm","1345",500,15510,2000,"kiran",true,"kar","india",50121,50040,2700);
insert into bank values(3,"karnataka","bengalore","bangalore","123845",250,10550,3200,"divya",true,"kar","india",521,500,00);
insert into bank values(4,"union","ath","ath","1345",510,1550,200,"pavan",true,"kar","india",5021,5000,200);
insert into bank values(5,"barod","gkk","gkk","12345",50,1550,200,"pavan",true,"kar","india",5021,50050,200);
insert into bank values(6,"state","mysore","mysore","12345",50,1550,200,"pavan",true,"kar","india",5021,50800,2005);
insert into bank values(7,"kvj","gkk","gkk","12345",50,1550,200,"pavan",true,"kar","india",5021,5000,200);
insert into bank values(8,"icici","gkk","gkk","12345",50,1550,200,"pavan",true,"kar","india",5021,5000,20450);
insert into bank values(9,"sbi","hubali","hubali","12345",50,1550,200,"pavan",true,"kar","india",5021,5000,2080);
insert into bank values(10,"sbi","dharwad","dharwad","12345",50,1550,200,"pavan",true,"kar","india",5021,5000,20);
















