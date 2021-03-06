# 7. La suma total de piezas que fueron ordenadas por cada compañía.

sqlite> SELECT Customers.CompanyName, SUM(OrderDetails.Quantity) AS QUANTITY FROM OrderDetails 
   ...> LEFT JOIN Orders
   ...> ON OrderDetails.OrderID = Orders.OrderID
   ...> LEFT JOIN Customers
   ...> ON Orders.CustomerID=Customers.CustomerID
   ...> GROUP BY CompanyName
   ...> ORDER BY QUANTITY DESC;
CompanyName         QUANTITY  
------------------  ----------
Main Tile and Bath  940       
Sagebrush Carpet    740       
Floor Co.           670       
Deerfield Tile      340       
Slots Carpet        250       
sqlite> 