-- FileName: InventoryII-DML.sql
-- Description: script to populate the tables created from the DDL file, as specified in Assignment 1
-- CST 8215

--emptying the tables to allow this script to be run multiple times without duplicate values
DELETE FROM Invoice_Line_T;
DELETE FROM Product_T;
DELETE FROM Invoice_T;
DELETE FROM Customer_T;
DELETE FROM City_T;
DELETE FROM Country_T;

--populate the Country Table
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'RUS', 'Russian Federation', 144192450 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'MEX', 'Mexico', 119530753 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'CAN', 'Canada', 36155487 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'DZA', 'Algeria', 40400000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'CHN', 'China', 1376049000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'CHL', 'Chile', 18006407 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'USA', 'United States of America', 328200000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'EGP', 'Egypt', 98420000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'ITA', 'Italy', 60360000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population ) 
VALUES( 'NZD', 'New Zealand', 4886000 );

--populate the City Table
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0001, 'Moscow', 'RUS', 12480481);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0002, 'Kazan', 'RUS', 1257391);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0003, 'Ecatepec', 'MEX', 1655015);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0004, 'Tijuana', 'MEX', 1300983);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0005, 'Edmonton', 'CAN', 932546);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0006, 'Ottawa', 'CAN', 934243);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0007, 'Toronto', 'CAN', 2930000);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0008, 'Kitchener', 'CAN', 242368);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0009, 'Montreal', 'CAN', 1780000);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0010, 'Algiers', 'DZA', 2481788);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0011, 'Oran', 'DZA', 609940);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0012, 'Shanghai', 'CHN', 24281400);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0013, 'Beijing', 'CHN', 21542000);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0014, 'Arica', 'CHL', 175441);
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population) 
VALUES( 0015, 'Coquimbo', 'CHL', 148438);

--populate the Customer Table
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
VALUES( 'C001', 'Michael', 'Scott', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 'CAN', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
VALUES( 'C002', 'Mostapha', 'Abdelaziz', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 'CAN', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
VALUES( 'C003', 'Pamela', 'Beesly', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa', 'ON', 'K2G1V8', 'CAN', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
VALUES( 'C004', 'Jimothy', 'Halpert', '613-727-4723', '854 Younge Street' , 'Toronto','ON', 'K2G1V8', 'CAN', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
VALUES( 'C005', 'Kevin', 'Malone', '613-727-4723', '264 Main Street'   , 'Kitchener', 'ON', 'K2G1V8', 'CAN', 0 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance ) 
VALUES( 'C006', 'Kelly', 'Kapoor', '613-727-4723', '357 Rue Catherine' , 'Montreal', 'ON', 'K2G1V8', 'CAN', 0 );
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance ) 
VALUES( 'C097', 'Aze', 'Balai', '7-731-707-7243', 'Ulitsa Aleutskaya','Valdivostok', 'VL','VL7SK4', 'RUS', 0 );

--populate the Invoice Table
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
VALUES( 'I23001', 'C001', '2011-02-15' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
VALUES( 'I23002', 'C001', '2011-04-25' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
VALUES( 'I23003', 'C004', '2011-06-12' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
VALUES( 'I23004', 'C002', '2011-07-08' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
VALUES( 'I23005', 'C005', '2011-08-24' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
VALUES( 'I23006', 'C006', '2011-09-07' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
VALUES( 'I23007', 'C006', '2010-12-28' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
VALUES( 'I23008', 'C006', '2011-12-15' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date ) 
VALUES( 'I88001', 'C097', '2018-01-15');

--populate the Product Table
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
VALUES( 'P2011', 'Compac Presario', '2011-02-14', 20, 5, 'RUS', 499.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
VALUES( 'P2012', 'HP laptop', '2010-09-25', 40, 5, 'CHL', 529.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
VALUES( 'P2013', 'Samsung LCD', '2010-02-15', 22, 8, 'RUS', 329.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
VALUES( 'P2014', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 'CHL', 159.99, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
VALUES( 'P2015', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 'CAN', 149.99, NULL );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
VALUES( 'P2016', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 'USA', 849.00, 0 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount ) 
VALUES( 'P2017', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 'CHN', 45.00, 10 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
VALUES( 'P2119', 'Organic Chard', '2018-01-14', 240, 100, 'RUS', 15.00, 5 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
VALUES( 'P2020', 'Organic Collard Green', '2018-01-14', 140, 110, 'RUS', 11.00, 5 );


--populate the Invoice Line Table
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23001', 1, 'P2011', 1, 650.75 ); 
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23001', 2, 'P2014', 3, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23002', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23003', 1, 'P2015', 3, 140.75 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23004', 1, 'P2014', 1, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23005', 1, 'P2016', 1, 798.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23006', 1, 'P2011', 1, 499.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23007', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23008', 1, 'P2016', 3, 689.00 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
VALUES( 'I23008', 2, 'P2017', 3, 35.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price ) 
VALUES( 'I88001', 1, 'P2119', 3, 15.00 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price ) 
VALUES( 'I88001', 2, 'P2020', 3, 11.00 );

--testing that the tables were populated
SELECT * FROM Country_T;
SELECT * FROM City_T;
SELECT * FROM Customer_T;
SELECT * FROM Product_T;
SELECT * FROM Invoice_T;
SELECT * FROM Invoice_Line_T;

--running the following delete statements to explore the errors
DELETE FROM Customer_T WHERE Cust_Country = 'CHL';
DELETE FROM Product_T WHERE Cntry_Origin = 'RUS';
--The first Delete works as there are no customers from Chile, and none of the columns in the Customer Table are referenced in another table as a foreign key, none of the columns has children, it has no other tables that are dependant
--The second statement does not work as the products from Russia's Prod Code are referenced in the Invoice Line Table as a Foreign Key, you can not delete the parent when the children exists, it has other tables that are dependant

--two join statements, the first for countries that do not have any customers, the second for countries which no products are bought
SELECT Cntry_Code, Cntry_Name, Cntry_Population FROM Country_T LEFT JOIN Customer_T
ON Country_T.Cntry_Code != Customer_T.Cust_Country
WHERE Country_T.Cntry_Code
NOT IN ( SELECT Cust_Country FROM Customer_T)
GROUP BY Country_T.Cntry_Code
ORDER BY Country_T.Cntry_Code DESC;

SELECT Cntry_Code, Cntry_Name, Cntry_Population FROM Country_T LEFT JOIN Product_T
ON Country_T.Cntry_Code != Product_T.Cntry_Origin
WHERE Country_T.Cntry_Code
NOT IN ( SELECT Cntry_Origin FROM Product_T)
GROUP BY Country_T.Cntry_Code
ORDER BY Country_T.Cntry_Code DESC;

--testing the views
SELECT * FROM CustomersCountry_V;
SELECT * FROM ProductsCountry_V;

-- eof: abde0238-InventoryII-DML.sql