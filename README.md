# Readme
Instructions for running the Project Hotel properly on NetBeans8 or earlier.
Please follow the given instructions to ensure smooth running of this project:

1. Download this project and copy the Hotel-DBMS folder directly to You _NetBeansProjects_ folder in the _Documents_ directory or wherever your workspace is.
_dont select create application from existing source inside NetBeans_

2. First open the NetBeans and navigate to:  Tools>Libraries>

3. Click on New Library... on bottom left corner name it as JCalendar.

4. After JCalendar Library is created click on ADD Jar/Folder... button on the right side.

5. Navigate to:- <DRIVE NAME>:\Users\<YOUR USER NAME>\Path To\NetBeansProjects\Hotel 
     and then selet the jcalendar 1.4 jar file then finally click ok.

6. After the project loads, a small yellow warning icon appears.

7. To resolve it right click on the project icon and select the 2nd last option, i.e., Resolve Reference Problems...

8. Now open the mysql command line client and load the hotel.sql file in the database.(Syntax: SOURCE <path of the hotel.sql> )!do not end the statement with a semi-colon[;] directly nothing else

9. Register MySQL in NetBeans and connect through the MySQL(Connector/J Drive).

10. Now select this project as main and click the green run button below the tools menu.
