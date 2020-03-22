Have a look at the following article:





Usage

1- Extract connection log to data.json using provided code in  json extractor for browser console .txt and Chrome console 

2- Create a MySql data base and user

3- Config DB connection in main.py in mysql.connector.connect

4- Import DB structure using SampleDB.sql

5- Change main.py startindex()

6- Run main.py

7- Run sql query from phpmyadmin (to make it readable and usable by excel)

> SELECT  count(*),Date(login) DateOnly FROM `connectionlog` group by DateOnly ORDER BY  DateOnly ASC 

8- Graph data using excel or other alternatives (make sure to divide count(*) by 4 as it writes 3 to 4 logs for a single connection)

9- Have fun and tag me if you like ;)





You can make it so that this works by just running a single script though the time it takes to make it a single peace of code does not worth doing it (At least for me)



I used lots of online codes and no longer have the reference please submit an issue so I add your reference if I have used your code.