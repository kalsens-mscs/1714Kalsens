-- Kailee Alsens
-- Exercise 2A: 2-table queries
-- PropertyManager db

-- 2A.1) Building1, Apartment tables. Sort by BuildingId, ApartmentNum
SELECT        Apartment.ApartmentNum, Apartment.Rent, Building1.BuildingId, Building1.BuildingName
FROM            Apartment INNER JOIN
                         Building1 ON Apartment.BuildingId = Building1.BuildingId
ORDER BY Building1.BuildingId, Apartment.ApartmentNum

-- 2A.2) Building1, Apartment tables. Sort by BuildingId, Rent
SELECT        Building1.BuildingId, Building1.City, Building1.BuildingName, Apartment.ApartmentNum, Apartment.Rent
FROM            Building1 INNER JOIN
                         Apartment ON Building1.BuildingId = Apartment.BuildingId
WHERE        (Building1.City = N'Winona')
ORDER BY Building1.BuildingId, Apartment.Rent DESC

-- 2A.3) Apartment, Invoice1 tables. Sort by ApartmentNum, InvoiceDate
SELECT        Apartment.ApartmentId, Apartment.ApartmentNum, Apartment.BuildingId, Invoice1.InvoiceId, Invoice1.InvoiceDate, Invoice1.DueDate
FROM            Apartment INNER JOIN
                         Invoice1 ON Apartment.ApartmentId = Invoice1.ApartmentId
ORDER BY Apartment.ApartmentNum, Invoice1.InvoiceDate DESC

-- 2A.4) Apartment, Invoice1 tables. Sort by BuildingId, ApartmentNum, InvoiceDate
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Invoice1.InvoiceId, Invoice1.InvoiceDate, Invoice1.DueDate
FROM            Apartment INNER JOIN
                         Invoice1 ON Apartment.ApartmentId = Invoice1.ApartmentId
ORDER BY Apartment.BuildingId, Apartment.ApartmentNum, Invoice1.InvoiceDate

-- 2A.5) Apartment, Person1 tables. Sort by BuildingId, ApartmentNum
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Apartment.Rent, Person1.LastName AS Admin
FROM            Apartment CROSS JOIN
                         Person1

-- 2A.6) Apartment, Person1 tables. Sort by BuildingId, TenantLastName, TenantFirstName
SELECT        Apartment.BuildingId, Apartment.ApartmentNum, Person1.LastName AS TenantLastName, Person1.FirstName AS TenantFirstName
FROM            Apartment CROSS JOIN
                         Person1
ORDER BY Apartment.BuildingId, TenantLastName, TenantFirstName

-- 2A.7) Invoice1, LineItem1 tables. Sort by ApartmentId, InvoiceDate
SELECT        Invoice1.ApartmentId, Invoice1.InvoiceId, Invoice1.InvoiceDate, LineItem1.Description, LineItem1.Amount
FROM            Invoice1 INNER JOIN
                         LineItem1 ON Invoice1.InvoiceId = LineItem1.InvoiceId
ORDER BY Invoice1.ApartmentId, Invoice1.InvoiceDate

-- 2A.8) Invoice1, LineItem1 tables. Sort by ApartmentId, InvoiceDate
SELECT        Invoice1.ApartmentId, Invoice1.InvoiceId, Invoice1.InvoiceDate, LineItem1.Description, LineItem1.Amount
FROM            Invoice1 INNER JOIN
                         LineItem1 ON Invoice1.InvoiceId = LineItem1.InvoiceId
WHERE        (LineItem1.Description = N'Garage')
ORDER BY Invoice1.ApartmentId, Invoice1.InvoiceDate DESC

-- 2A.9) Invoice1, Receipt1 tables. Sort by ApartmentId, InvoiceId
SELECT        Invoice1.ApartmentId, Invoice1.InvoiceId, Invoice1.DueDate, Receipt1.ReceiptDate, Receipt1.Amount
FROM            Invoice1 INNER JOIN
                         Receipt1 ON Invoice1.InvoiceId = Receipt1.InvoiceId
ORDER BY Invoice1.ApartmentId, Invoice1.InvoiceId