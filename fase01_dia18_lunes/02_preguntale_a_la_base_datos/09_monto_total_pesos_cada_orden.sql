# 9 . El monto total en pesos de cada orden

sqlite> SELECT Orders.OrderID, SUM(Quantity *  UnitPrice) AS Amount  FROM OrderDetails 
   ...> LEFT JOIN Orders
   ...> ON OrderDetails.OrderID = Orders.OrderID
   ...> GROUP BY Orders.OrderID
   ...> ORDER BY Orders.OrderID ASC;
OrderID     Amount    
----------  ----------
1           48.0      
2           1948.7    
3           2395.9    
4           400.0     
5           3638.6    
6           384.5     
7           1321.5    
8           1941.7    
9           300.0     
10          133.2     
11          421.2     
12          32.0      
13          250.0     
14          881.0     
15          1344.1    
16          207.5     
17          1942.6    
18          285.5     
19          1626.5    
20          166.0     
