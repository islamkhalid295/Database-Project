/*1-Shows all workers who are earning more than 5000 and are working in the statistics department*/
select e.name ,salary,d.name
from employee e,department d
where e.dno=d.no and salary>5000 and d.name='StatisticsDepartment';

/*2-Show the employee name that produces "suit"*/
select e.name 
from employee e,tailor t,Product p
where e.ssn=t.e_ssn and t.e_ssn=p.Tailor_essn and p.name='suit';

/*3-Show the needs of the shop whose owner is called Hatem*/
select need , s.owner as shop_mng
from needsOfShop n ,shops s
where s.no=n.Shop_No and s.owner='hatem';

/*4-View the number of customers who use the company's sites group by site name*/
select w.name, count(c.id) as 'no.client'
from website w, clients c
where w.ip=c.Website_ip
group by w.name;

/*5-Show all male workers who work in Section One and their address contains"ain"*/
select name 
from employee 
where addresse like'%ain%' and gender='m' and dno='1';

/*6-Show the names وid  of the clients who dealt with the seller who called Ahmed*/
select d.clients_id,c.name as 'client name' ,e.name as 'seller_name'
from  deal d, clients c ,seller s ,employee e
where  c.id=d.clients_id and s.e_ssn=d.seller_ssn and e.ssn=s.e_ssn and e.name='ahmed';

/*7-Show the net profit of the company from each product*/
select no_Of_Product_Sold,p.price ,no_Of_Product_Sold*p.price as 'Net profit'
from exports e,Product p
where p.id=e.Product_id;

/*8-Show the Financial losses of the company from each product*/
select no_of_Damaged_product,p.price as 'price/$' ,no_of_Damaged_product*p.price as 'Financial losses/$'
from exports e,Product p
where p.id=e.Product_id;

/*9-View the number of damaged parts of each product*/
select p.name,no_of_Damaged_product
from exports e,product p
where p.id=e.Product_id;

/*10-Show addresses and the number of employees who Live in it*/
select address, count(name) as 'no of employees who Live in it'
from employee
group by address;

/*11-Show the factory number that the customer"Islam" deals with, through the site*/
select f.no ,c.name
from factory f,website w, clients c
where f.no=w.factorys_no and w.ip=c.Website_ip and c.name='islam';
