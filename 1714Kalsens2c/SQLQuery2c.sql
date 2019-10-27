-- Kailee Alsens
-- Exercise 2C
-- Property Manager db

-- 2C.1)
SELECT        State, City, COUNT(BuildingId) AS Expr1
FROM            Building1
GROUP BY State, City
-- 2C.2)
SELECT        City, COUNT(BuildingId) AS Expr1, State
FROM            Building1
GROUP BY City, State
HAVING        (State = N'MN')

-- 2C.3)
SELECT        Building1.BuildingId, Building1.BuildingName, AVG(Apartment.Rent) AS Expr1
FROM            Building1 INNER JOIN
                         Apartment ON Building1.BuildingId = Apartment.BuildingId
GROUP BY Building1.BuildingId, Building1.BuildingName

-- 2C.4)
SELECT        Building1.City, Building1.BuildingName, SUM(Apartment.Rent) AS Expr1, Building1.State
FROM            Building1 INNER JOIN
                         Apartment ON Building1.BuildingId = Apartment.BuildingId
GROUP BY Building1.City, Building1.BuildingName, Building1.State
HAVING        (Building1.State = N'MN')

-- 2C.5)
SELECT        Building1.City, MIN(Apartment.Rent) AS Expr1
FROM            Building1 INNER JOIN
                         Apartment ON Building1.BuildingId = Apartment.BuildingId
GROUP BY Building1.City

-- 2C.6)
SELECT        Building1.BuildingName, MIN(Apartment.SquareFeet) AS Expr1, AVG(Apartment.SquareFeet) AS Expr2, MAX(Apartment.SquareFeet) AS Expr3, Building1.City AS Expr4
FROM            Apartment INNER JOIN
                         Building1 ON Apartment.BuildingId = Building1.BuildingId
GROUP BY Building1.BuildingName, Building1.City
HAVING        (Building1.City = N'winona')

-- 2C.7)
SELECT        Invoice1.InvoiceId, MIN(LineItem1.Amount) AS Expr1, LineItem1.Description
FROM            Invoice1 INNER JOIN
                         LineItem1 ON Invoice1.InvoiceId = LineItem1.InvoiceId
GROUP BY Invoice1.InvoiceId, LineItem1.Description
HAVING        (LineItem1.Description = N'Garage')

-- 2C.8)
SELECT        Invoice1.InvoiceId, SUM(LineItem1.Amount) AS Expr1, Invoice1.InvoiceDate
FROM            Invoice1 INNER JOIN
                         LineItem1 ON Invoice1.InvoiceId = LineItem1.InvoiceId
GROUP BY Invoice1.InvoiceId, Invoice1.InvoiceDate
HAVING        (Invoice1.InvoiceDate = CONVERT(DATETIME, '2018-09-01 00:00:00', 102))
