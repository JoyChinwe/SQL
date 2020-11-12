--SQL GROUP BY techniques
SELECT
  C.CustomerID, C.CustomerName, 
  C.CustomerType, C.Address1, C.City,
  C.State, SUM(S.Sales) as TotalSales
FROM
  Customers C
INNER JOIN Sales S
  ON C.CustomerID = S.CustomerID
GROUP BY
  C.CustomerID, C.CustomerName,
  C.CustomerType, C.Address1, C.City, C.State