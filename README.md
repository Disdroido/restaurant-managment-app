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


## **Develop** an **outline** of the user interaction and experience for the application

The user will find out how  to use the application by reading the names of the menu list once you open the application. The application displays a little welcome message and a brief description of what to do. Each feature is very simple to use and has the name of what is going to happen as the list item name.

The user interacts/uses the application by selecting the activity that they would like to complete. Next they will do the simple instructions to complete the activity. Then they can save what they have done to the JSON file.

Errors are handled by watching and waiting for the user to input a word and if the word is incorrect or is not one to the priority words it will display a simple error message to the user in a bright colour to get their attention.

## **Develop** a diagram which describes the control flow of your application

![Flow chart](C:\Users\Ethan\Documents\ruby\EthanWorth_T1A3\restaurant-management-app\progress_img\Blank diagram.png)

## **Develop** an implementation plan

View "progress_img" folder and either "1" or "2" to view progress images.

https://trello.com/invite/b/m1zNHR17/0fa21f2223e28a2faf70e2bfadd36b02/terminal-app

## Installation

### Installation of the application:

Go to the "Code" dropdown button in Github and click "Download Zip", to download all the code.

OR

Go to the "Code" dropdown button in Github and click "Clone Repository", to clone the repository of the application.

### Installation for JSON:

"gem install json"

### Installation for Terminal Table:

"gem install terminal-table"

### Installation for Rainbow:

"gem install rainbow"

