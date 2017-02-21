#4. El total de ordenes de cada compañía ordenado de manera descendente

sqlite> SELECT Customers.CompanyName, COUNT(Orders.OrderID) AS TotalOrders FROM Orders
   ...> LEFT JOIN Customers 
   ...> ON Orders.CustomerID=Customers.CustomerID
   ...> GROUP BY CompanyName
   ...> ORDER BY TotalOrders DESC;
CompanyName  TotalOrders
-----------  -----------
Floor Co.    6          
Sagebrush C  5          
Main Tile a  4          
Deerfield T  3          
Slots Carpe  2          
sqlite> 