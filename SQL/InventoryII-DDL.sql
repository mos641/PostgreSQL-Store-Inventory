-- FileName: InventoryII-DDL.sql
-- Description: script to create the Inventory II database as required in Assignment 1, create the tables from the inventory database and the country-city database
-- CST 8215

--dropping the views if they exist to allow tables to be dropped
DROP VIEW IF EXISTS CustomersCountry_V;
DROP VIEW IF EXISTS ProductsCountry_V;

--dropping the tables if they exists, allows this script to be run multiple times without errors
DROP TABLE IF EXISTS Invoice_Line_T;
DROP TABLE IF EXISTS Product_T;
DROP TABLE IF EXISTS Invoice_T;
DROP TABLE IF EXISTS Customer_T;
DROP TABLE IF EXISTS CITY_T;
DROP TABLE IF EXISTS COUNTRY_T;
--a table that is referenced in another table with a foreign key can not be dropped before the reference is

--creating the Country Table
CREATE TABLE COUNTRY_T (
  Cntry_Code     	CHAR( 3 ),
  Cntry_Name            VARCHAR( 30 ) NOT NULL,
  Cntry_Population      BIGINT DEFAULT NULL,
  CONSTRAINT PK_Ctry_code PRIMARY KEY( Cntry_Code )
);

--creating the City Table
CREATE TABLE CITY_T (
  City_Id         	INTEGER,
  City_Name       	VARCHAR( 30 ) NOT NULL,
  Cntry_Code    	CHAR( 3 ),
  City_Population       BIGINT DEFAULT NULL,
  CONSTRAINT PK_City_ID PRIMARY KEY( City_Id ),
  CONSTRAINT FK_Cntry_Code FOREIGN KEY( Cntry_Code ) REFERENCES COUNTRY_T( Cntry_Code )
);

--creating the Customer Table from the original Inventory, modifying it to add Cust_Country
CREATE TABLE Customer_T (
  Cust_Id         CHAR( 4 ),
  Cust_Fname      VARCHAR( 30 ) NULL,
  Cust_Lname      VARCHAR( 30 ) NOT NULL,
  Cust_Phone      VARCHAR( 15 ) NOT NULL,
  Cust_Address    VARCHAR( 20 ) NOT NULL,
  Cust_City       VARCHAR( 15 ) NOT NULL,
  Cust_Prov       CHAR( 2 ) NULL,
  Cust_PostCode   CHAR( 6 ) NOT NULL,
  Cust_Country	  CHAR( 3 ),
  Cust_Balance    DECIMAL( 9, 2 ), 
  CONSTRAINT PK_Customer PRIMARY KEY( Cust_Id ),
  CONSTRAINT FK_Cust_Country FOREIGN KEY( Cust_Country ) REFERENCES Country_T( Cntry_Code )
);

--creating the Invoice Table
CREATE TABLE Invoice_T (
  Invoice_Number     CHAR( 6 ),
  Cust_Id            CHAR( 4 ) NOT NULL,
  Invoice_Date       DATE DEFAULT NOW(),
  CONSTRAINT PK_Invoice PRIMARY KEY( Invoice_Number ),
  CONSTRAINT FK_Cust_ID FOREIGN KEY( Cust_Id ) REFERENCES Customer_T( Cust_ID )
);

--creating the Product Table, modifying to add Cntry_Origin
CREATE TABLE Product_T (
  Prod_Code        CHAR( 5 ),
  Prod_Description VARCHAR( 60 ) NOT NULL,
  Prod_Indate      DATE NOT NULL DEFAULT NOW(),
  Prod_QOH         INTEGER NOT NULL,
  Prod_Min         INTEGER,
  Cntry_Origin	   CHAR( 3 ),
  Prod_Price       DECIMAL( 5, 2 ) NOT NULL,
  Prod_Discount    INTEGER,
  CONSTRAINT PK_Product PRIMARY KEY( Prod_Code ),
  CONSTRAINT FK_Cntry_Origin FOREIGN KEY( Cntry_Origin ) REFERENCES Country_T( Cntry_Code )
);

--creating the Invoice Line Table
CREATE TABLE Invoice_Line_T (
  Invoice_Number       CHAR( 6 ),
  Invoice_Line         INTEGER,
  Prod_Code CHAR( 5 )  NOT NULL,
  Line_Unit            INTEGER NOT NULL,
  Line_Price           DECIMAL( 9, 2 ) NOT NULL,
  CONSTRAINT PK_Invoice_Line  PRIMARY KEY( Invoice_Number, Invoice_Line ),
  CONSTRAINT FK1_Invoice_Line FOREIGN KEY( Invoice_Number ) REFERENCES Invoice_T( Invoice_Number ),
  CONSTRAINT FK2_Invoice_Line FOREIGN KEY( Prod_Code ) REFERENCES Product_T( Prod_Code )
);

--creating two views with multiple tables
CREATE VIEW CustomersCountry_V
AS
SELECT * FROM Customer_T NATURAL JOIN Country_T
WHERE Customer_T.Cust_Country = Country_T.Cntry_Code;


CREATE VIEW ProductsCountry_V
AS
SELECT * FROM Product_T NATURAL JOIN Country_T
WHERE Product_T.Cntry_Origin = Country_T.Cntry_Code;

-- eof: abde0238-InventoryII-DDL.sql