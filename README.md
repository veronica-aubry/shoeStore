# _Shoe Brand/Store Database_

#### _Database in C#, Nancy, and Razor 3/4/2016_

#### By _**Veronica Alley**_

## Description

_Web app that uses databases and many-to-many relationshipsn to track shoes and brands._

## Setup/Installation Requirements

* Download zip
* In SQLCMD:

  CREATE DATABASE shoe_store;
  
  GO
  
  USE shoe_store
  
  GO
  
 CREATE TABLE stores (id INT IDENTITY(1,1), name VARCHAR(255));
 
 GO
 
 CREATE TABLE brands (id INT IDENTITY(1,1), name VARCHAR(255));

 GO
 
 CREATE TABLE stores_brands (id INT IDENTITY(1,1), store_id INT, brand_id INT);
 
 GO
 
* navigate to directory in command line
* Run dnu restore and dnx kestrel in unzipped directory
* navigate to localhost:5004 in browser
* enter text into the inputs

## Technologies Used

_C#, Nancy, Razor_

### License

Copyright (c) 2015 **_Veronica Alley_**
