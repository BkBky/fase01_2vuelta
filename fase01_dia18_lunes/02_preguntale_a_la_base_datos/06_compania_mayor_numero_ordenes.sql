# 6 La compañía con el mayor número de ordenes


sqlite> SELECT Customers.CompanyName,COUNT(Orders.OrderID) AS TotalOrders FROM Orders
   ...> LEFT JOIN Customers 
   ...> ON Orders.CustomerID=Customers.CustomerID
   ...> GROUP BY CompanyName
   ...> ORDER BY TotalOrders DESC
   ...> LIMIT 1;
   
CompanyName  TotalOrders
-----------  -----------
Floor Co.    6          
sqlite> 