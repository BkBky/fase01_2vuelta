# 8. El monto total en pesos de la orden con ID 4

sqlite> SELECT OrderDetails.OrderID, (Quantity *  UnitPrice) AS Amount
   ...> FROM OrderDetails
   ...> WHERE OrderID= 4;
OrderID     Amount    
----------  ----------
4           400.0    