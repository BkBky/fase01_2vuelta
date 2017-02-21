#1.El total de ordenes del cliente con el ID 3


CodeaCamp09s-Mac-mini:02_preguntale_a_la_base_datos codea_mac_09$ sqlite3 EssentialSQL.db
-- Loading resources from /Users/codea_mac_09/.sqliterc

SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite> .schema
CREATE TABLE Customers (
 CustomerID INTEGER PRIMARY KEY
,CompanyName VARCHAR(60)
,ContactName VARCHAR(40)
,ContactTitle VARCHAR(60)
,Address VARCHAR(60)
,City VARCHAR(60)
,State VARCHAR(2)
);
CREATE TABLE OrderDetails (
 OrderDetailID INTEGER PRIMARY KEY
,OrderID INTEGER
,ProductID INTEGER
,UnitPrice REAL
,Quantity INTEGER
);
CREATE TABLE Orders(
OrderID INTEGER PRIMARY KEY
,CustomerID INTEGER
,OrderDate VARCHAR(25)
,RequiredDate VARCHAR(25)
,ShippedDate VARCHAR(25)
);
sqlite> SELECT * FROM Orders;
OrderID     CustomerID  OrderDate   RequiredDate  ShippedDate
----------  ----------  ----------  ------------  -----------
1           1           2012-01-04  2012-01-09    2012-01-05 
2           2           2012-01-27  2012-02-01    2012-01-28 
3           4           2012-02-19  2012-02-24    2012-02-23 
4           2           2012-03-13  2012-03-18    2012-03-14 
5           4           2012-04-05  2012-04-10    2012-04-06 
6           3           2012-04-28  2012-05-03    2012-04-29 
7           4           2012-05-21  2012-05-26    2012-05-22 
8           1           2012-06-13  2012-06-18    2012-06-14 
9           2           2012-07-06  2012-07-11    2012-07-07 
10          3           2012-07-29  2012-08-03    2012-08-04 
11          3           2012-08-21  2012-08-26    2012-08-22 
12          1           2012-09-13  2012-09-18    2012-09-14 
13          5           2012-10-06  2012-10-11    2012-10-07 
14          2           2012-10-29  2012-11-03    2012-10-30 
15          4           2012-11-21  2012-11-26    2012-11-22 
16          3           2012-12-14  2012-12-19    2012-12-15 
17          5           2013-01-06  2013-01-11    2013-01-07 
18          3           2013-01-29  2013-02-03    2013-01-30 
19          2           2013-02-21  2013-02-26    2013-03-01 
20          3           2013-03-16  2013-03-21    2013-03-17 
sqlite> SELECT OrderID
   ...> FROM Orders
   ...> WHERE CustomerID  = 3;
OrderID   
----------
6         
10        
11        
16        
18        
20        
sqlite> SELECT COUNT(*)
   ...> FROM Orders
   ...> WHERE CustomerID  = 3;
COUNT(*)  
----------
6         
sqlite> 
