# 5. El total de ordenes de cada compañía ordenado de manera ascendente
sqlite> SELECT Customers.CompanyName, COUNT(Orders.OrderID) AS TotalOrders FROM Orders
   ...> LEFT JOIN Customers 
   ...> ON Orders.CustomerID=Customers.CustomerID
   ...> GROUP BY CompanyName
   ...> ORDER BY TotalOrders ASC;
CompanyName   TotalOrders
------------  -----------
Slots Carpet  2          
Deerfield Ti  3          
Main Tile an  4          
Sagebrush Ca  5          
Floor Co.     6          
sqlite> 