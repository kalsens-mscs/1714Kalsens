-- Kailee Alsens
-- Exercise 2B: Summary queries
-- Property Manager db

-- 1) Count all buildings
SELECT        COUNT(*) AS [Count All Buildings]
FROM            Building1

-- 2) Count. Filter Buildings in Winona
SELECT        COUNT(*) AS [Buildings in Winona], City
FROM            Building1
GROUP BY City
HAVING        (City = N'Winona')

-- 3) Average rent of all apartments
SELECT        AVG(Rent) AS [Avg Rent]
FROM            Apartment

-- 4) Total rent
SELECT        SUM(Rent) AS [Total Rent]
FROM            Apartment

-- 5) Cheapest Rent
SELECT        MIN(Rent) AS [Min Value], BuildingId
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 1)

-- 6) Smallest size, avg size, largest size
SELECT        MIN(SquareFeet) AS [Smallest Size], AVG(SquareFeet) AS [Average Size], MAX(SquareFeet) AS [Largest Size], BuildingId
FROM            Apartment
GROUP BY BuildingId
HAVING        (BuildingId = 1)
-- 7) Cheapest price
SELECT        MIN(Amount) AS Expr1, Description
FROM            LineItem1
GROUP BY Description
HAVING        (Description = N'garage')
-- 8) Total amount billed
SELECT        SUM(Amount) AS Expr1, Description
FROM            LineItem1
GROUP BY Description
HAVING        (Description = N'gas')

-- 9) Total rent
SELECT        SUM(Amount) AS Expr1
FROM            LineItem1