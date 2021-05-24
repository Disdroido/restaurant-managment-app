# Ruby JSON Restaurant App
 A cafe application that is conneceted to a JSON file which the user can add and delete items.

## **Develop** a statement of **purpose** and **scope** for your application.

This application is to help restaurants manage their menu and food items that are available for customers. The problem that will be solved is to be able to easily add, manage and delete food items off of their menus and to allow for quicker changes of menus. I am developing this to help customers to not be confused as to what is on the menu and what is not, and to also allow restaurants to easily manage their menus and the things that correspond with menus. The target audience are restaurant owners and customers of the restaurants. A restaurant owner will use the application by starting it, choosing one of the 4 things to do, then doing what is asked of them via the application.

## **Develop** a list of features that will be included in the application

1. Menu

   The menu feature will allow the restaurant owner to see what is on the menu. This will allow for the owner to understand what is on their menu and what they might want to delete off of the menu and or add to the menu. There is also a variable called rows which holds an empty array to allow for easier data holding. The menu uses a loop to loop through the ruby hash to gather all of the information needed to display to the restaurant owner, it also sorts the data into specific columns to allow for easier viewing and understandability of the table and its contents. 

2. Adding items to menu

   This feature allow for the restaurant owner to create an item with a name, description, contains allergenic foods and a price. This allows for a brief description of the food and allows for a better understanding of what the food is to the customer. I have a variable called "newfood" which is an empty hash, which the user inputs data into it via gets. The "newfood" hash then gets pushed into the "@datahash"  hash which then gets put into a table to be shown to the user what the menu will look like and ask the user if they would like to add more food or not.

3. Deleting items off of the menu

   This feature allows the restaurant owner to delete a food item off of the menu by inputting the name of the item. This allows for exact and precise deleting of a specific item on the menu. First the menu is printed out to show the user all of the items they can delete off of the menu. It then asks for confirmation of the user and if the user inputs either yes or no it will either go forward with deleting the item or it will start over again and show the menu of the items that can be removed. The user can also type "exit" which will exit to the main menu.

   

