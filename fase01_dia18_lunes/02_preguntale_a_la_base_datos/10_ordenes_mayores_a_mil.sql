# 10. La consulta del inciso anterior pero únicamente mostrando aquellas ordenes que sean mayores a $1,000.00 pesos

sqlite> SELECT Orders.OrderID, SUM(Quantity *  UnitPrice) AS Amount  FROM OrderDetails 
   ...> LEFT JOIN Orders
   ...> ON OrderDetails.OrderID = Orders.OrderID
   ...> GROUP BY Orders.OrderID
   ...> HAVING SUM(Quantity *  UnitPrice) > 1000;
OrderID     Amount    
----------  ----------
2           1948.7    
3           2395.9    
5           3638.6    
7           1321.5    
8           1941.7    
15          1344.1    
17          1942.6    
19          1626.5    
sqlite> SELECT Orders.OrderID, SUM(Quantity *  UnitPrice) AS Amount  FROM OrderDetails 
   ...> LEFT JOIN Orders
   ...> ON OrderDetails.OrderID = Orders.OrderID
   ...> GROUP BY Orders.OrderID
   ...> HAVING Amount > 1000;
OrderID     Amount    
----------  ----------
2           1948.7    
3           2395.9    
5           3638.6    
7           1321.5    
8           1941.7    
15          1344.1    
17          1942.6    
19          1626.5    
sqlite> 
