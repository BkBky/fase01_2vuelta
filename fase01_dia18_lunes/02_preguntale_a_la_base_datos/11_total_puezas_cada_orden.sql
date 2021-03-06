sqlite> SELECT Orders.OrderID, SUM(Quantity) AS TotalItems  FROM OrderDetails 
   ...> LEFT JOIN Orders
   ...> ON OrderDetails.OrderID = Orders.OrderID
   ...> GROUP BY Orders.OrderID
   ...> ORDER BY Orders.OrderID ASC;
OrderID     TotalItems
----------  ----------
1           90        
2           330       
3           240       
4           80        
5           380       
6           140       
7           210       
8           190       
9           60        
10          100       
11          180       
12          60        
13          50        
14          140       
15          110       
16          70        
17          200       
18          120       
19          130       
20          60        
sqlite> 