# 2. El total de ordenes del cliente con el ContactName igual a 'Jim Wood'

sqlite> SELECT * FROM Customers;
CustomerID  CompanyName     ContactName     ContactTitle  Address             City        State     
----------  --------------  --------------  ------------  ------------------  ----------  ----------
1           Deerfield Tile  Dick Terrcotta  Owner         450 Village Street  Deerfield   IL        
2           Sagebrush Carp  Barbara Berber  Director of   10 Industrial Driv  El Paso     TX        
3           Floor Co.       Jim Wood        Installer     34218 Private Lane  Monclair    NJ        
4           Main Tile and   Toni Faucet     Owner         Suite 23, Henry Bu  Orlando     FL        
5           Slots Carpet    Jack Diamond I  Purchaser     3024 Jackpot Drive  Las Vegas   NV        
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
sqlite> SELECT COUNT(*)
   ...> FROM Orders
   ...> INNER JOIN Customers 
   ...> ON Orders.CustomerID=Customers.CustomerID
   ...> WHERE CompanyName = 'Slots Carpet';
COUNT(*)  
----------
2        
sqlite> 