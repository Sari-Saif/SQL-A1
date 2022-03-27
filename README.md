# SQL-A1 -Relational Databases Management Systems


# 1
Explanation in words. What is the purpose of the following query?

![image](https://user-images.githubusercontent.com/98646866/160291542-87737024-9348-4161-9348-777d255bf5d7.png)


# ANSWER :

In this question you are asked to find the name of a company and its telephone number, if the date of receipt
The shipment has passed - color by calculation in this formula
![image](https://user-images.githubusercontent.com/98646866/160291499-7b17253f-9191-493d-9461-710b377128e8.png)

Otherwise we will check how many days are left for the government to arrive

 ![image](https://user-images.githubusercontent.com/98646866/160291508-8ecbbcef-85f0-4f48-9a93-72ce5706c11d.png)

Conditional so that the date of delivery until it arrives (the date of delivery) is deducted from it 7 days so that it is equal to or less than the current date and according to the ID number of the sender.






 # 2
 What is the query that was written and gave the following output?
(Note - this is only a partial list of records. Refer to the order of the records, the selected fields,
For the field names and the structure of the content displayed.) : 

![image](https://user-images.githubusercontent.com/98646866/160291454-6a704fea-d37a-4f71-b7cc-b6673f889296.png)




# 3
Write a return query for any product that is almost out of stock) There are less than 10 units in stock and to order Together (the product number, product name, vendor name, vendor phone number and how many more units are needed  Order to reach 100 units in total in stock. Products whose supplier information is missing should also be displayed.
 
The query output will look like this (Note the format, order and field names (:

![image](https://user-images.githubusercontent.com/98646866/160291709-b76e2e7f-ad4b-4324-9121-295ed084a933.png)

# 4

The date is 1998.05.08. Today it was discovered that employee number 8 is verified to Corona.
Write a query that will retrieve from our database the numbers of all employees who worked (who received orders)
On the same day together with employee number 8 in the last week. In addition, each employee must also have a first name, a name
Family, telephone number, and the date on which his isolation ends) one week after the highest date on which he worked
Overlapping to employee number 8.)
( DATE_ADD (date, INTERVAL value addunit) In the function you can use - for your convenience)
The query output will look like this (Note the format, order and field names (:

![image](https://user-images.githubusercontent.com/98646866/160291815-cee1d6bd-ce0f-489b-b304-9f45f95347fe.png)

# 5

Write a query that shows for each product, its name, company name (customer) who ordered it, the year it was ordered,
And what was the profit (without pennies) from the same product in each quarter of that year.
The results should be sorted first by product name in ascending order and then by company name also in order
Costs .
You can use the date (quarter) function that converts a date to the appropriate quarter.
The query output will look like this) Note the format, order and field names. Not all records appear here (:

![image](https://user-images.githubusercontent.com/98646866/160291850-5f8fa974-68cd-4ed8-ad58-274e4fc3a50a.png)


