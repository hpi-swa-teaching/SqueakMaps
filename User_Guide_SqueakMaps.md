# Squeak Maps User Guide

Squeak Maps displays the world map to users. It is an interactive application that allows users to:
- zoom
- set and categorize pin
- route between multiple locations
- and much more...

## First Time Installation -- Make the Map Work :)

1. Open the Squeak Image
2. In the top navigation bar click on <u>*Apps*</u> and choose <u>*Git Bowser*</u>
3. In the top right corner <u>*Right click here to add a project*</u> click right and choose <u>*clone*</u>
4. Enter the https URL of this project

    ```html
    https://github.com/hpi-swa-teaching/SqueakMaps.git
    ```
5. As directory choose <u>*SqueakMaps*</u> and click on <u>*I copied it.*</u>
6. Enter a *name* and an *email-address* for Git usage
7. Load the current commit into the Image
8. Click on <u>*Load Changes*</u> 
9. Now open a Workspace (left click and click on Workspace) paste
    ```smalltalk
    Metacello new
    baseline: 'SqueakMaps';
    repository: 'github://hpi-swa-teaching/SqueakMaps/packages';
    load.
    ```
    run the command by selecting everything and clicking *Ctrl-D*
10. And you are ready to go.


## Open the Application 

To use the Application, proceed as follows:
1. Open the Squeak Image
2. In the top navigation bar click on <u>*Apps*</u> and choose <u>*SqueakMaps*</u>
3. The following SqueakMaps Application interface opens in an extra window:
    ![SqueakMaps Sart GUI][img-start]
    (you can resize the window if needed)


# Map Funktions -- Use the Map as a Pro :)

## Basic Functions

**Scroll:**\
Place the cursor in the map area and hold left-click to pan the map.

**Zoom:**\
Place the cursor in the map area and scroll to zoom.\
Alternatively, you can place the cursor in the map area and use the <u>+</u> and <u>-</u> keys to zoom in on the area the cursor is pointing to. To zoom in on the center of the current map view, place the cursor outside the map area and press the <u>+</u> and <u>-</u> keys.

**Search:**\
To search for a location, enter its name in the search bar in the upper-left corner and click the <u>*Search*</u> button right next to it, or press the <u>Enter</u> key. Below the search bar a detailed name or address appears. \
You can search for any location, city, lake, or address you like.

## Pins & Categories

**Set Pins:**\
Double-click on a location in the map area (or search for a loaction). A red pin will appear.

**Manage Categories:**\
On the left side of the Application the upper white box shows a list of your pin-categories. \
By right-clicking on a category or in the box area a drop-down menue appears with the options to <u>*Add new Category*</u>, <u>*Rename Category*</u> and <u>*Remove Category*</u>. Make sure that only one category is selected (highlighted in blue); if multiple rows are selected (highlighted in blue), the drop-down menu will not appear.
* <u>*Add new Category*</u>: Choose a name for your new category. It is not possible to have two categories with the same name.
* <u>*Rename Category*</u>: You can not rename or remove the *Uncategorized* category.
* <u>*Remove Category*</u>: When removing a category, you will be asked whether the pins in that category should be deleted or uncategorized.


**Save & Categorize Pins:**\
To save a pin, set a pin and click on <u>*Save Pin*</u>. Save the pin to one of your categories or the default *Uncategorized* category. A pin/location can only be part of one category.\
By left-clicking on a category in the upper white box you select the respective category and all of its pins will appear on the map. You can select multiple categories to be shown simultaneously. You can also select individual pins only to show.


**Remove Pins & Rename Pins:**\
If a pin has been saved to a category, it appears below its category in the upper white box.\
By right-clicking on a pin a drop-down menue appears with the options to <u>*Change Pin Category*</u>, <u>*Rename Pin*</u>, <u>*Remove Pin*</u>.
* <u>*Change Pin Category*</u>: Choose the category to which you want to move the pin.
* <u>*Rename Pin*</u>: You cannot rename a pin to an already existing city name or alias. Note that personalized names are not searchable via the search bar — you will need to remember the original name.
* <u>*Remove pin*</u>: By clicking this button, the pin will be removed from its category. Be careful.

**Directions:**\
Once you searched for a location the <u>*Directions*</u> button appears below the search bar.
<u>*Directions*</u>: Clicking here will navigate you to the routing option, where you can search for a route.

![SqueakMaps Pin GUI][img-pins]

## Routing

**Routing Set Up:**\
To be able to route you need to connect to an API.\
In the lower left corner click on <u>*Manage APIs*</u>. A drop-down menue opens with the buttons <u>*Select API*</u> and <u>*API Key*</u>.
* <u>*Select API*</u>: Choose one of the APIs available (recommended *OpenStreetMaps*).
* <u>*API Key*</u>: Add an API key for the API you selected. You have to generate an API key via the website of the respective API (note that some APIs are not free to use).

**Route (Routing Interface - Editing Window):**\
Option 1:
* First, search for a hop/location in the search bar or double-click in the map to select a pin.
* Then click on <u>*Directions*</u>.
* A new interface opens that allows you to specify your route. 
* You can select a preferred *mode of transportation* (Car, Bike, Walk). 
* Further, you can add hops and pins, and remove the hops of your route. You see a list of all the added hops and pins in the white box. The order of the hops in this white window represents the order of your route. If you only choose two hops, the first one will be the Start and the second one the Destination of your Route.
    * <u>*Add Hop*</u>: Type the name of your hop/location in the *Add Hop* field and click on this   button, or press the <u>Enter</u> key to add the hop to the list.
    * <u>*Add Pin*</u>: Select the pin/location on the map and click on this button to add the pin to the list.
    * <u>*Remove Hop*</u>: Click on the hop in the list and then click on this button to remove the selected Hop.

* To reorder the route Hops use drag'n'drop.
* You can only configure routes that are reasonably reachable by car, bike or by walking. If two hops are too far apart, the application will inform you via a pop-up window (after you clicked on <u>*Go*</u>).
* <u>*Go*</u>: Click here to route the exact routing that the list shows.
* <u>*Find optimal Route*</u>: click here to get the optimal (shortest) route that covers all your hops (note: the original order of your hosp in the white window does not change)
* Above the white box you see the length and time of your route.

* The route will appear on the map. Each section of the route has a different color allowing you to better distinguish them.

Option 2:\
From the Start Interface select from your saved pins those that shall be part of a route. Make sure all these pins are highlighted in blue. Right-click and find the option to <u>*Route Selected Pins*</u>.

**Export and Save Routes:**\
Configure the route, then click on <u>*Go*</u> or <u>*Find optimal Route*</u> and subsequently click the <u>*Save*</u> button in the lower-right corner of the white box. A drop-down menue appears where you can select <u>*Export*</u> or <u>*Save*</u>.
* <u>*Export*</u>: Click here to export the route and save it in *.gpx* format on your device.
* <u>*Save*</u>: Click here to save the route. Name your route as desired. When you save a route with an existing name, the respective route will be updated. You cannot have two routes with the same name.
Saved routes appear in the lower white box in the first UI window of the application.

**Exit the Routing Interface to see Saved Routes:**\
To close the routing interface (editing window), click on the <u>*x*</u> (close) button in the upper right corner of the left sidebar.

**Manage Save Routes:**\
On the left side of the Application the lower white box shows a list of your saved Routes (Filter Routes).\
By right-clicking on a route or in the box area a drop-down menue appears with the options to <u>*Load Route*</u>, <u>*Rename Route*</u> and <u>*Remove Route*</u>.
* <u>*Load*</u>: Clicking here will take you back to the editing window.
* <u>*Rename Route*</u>: You cannot have two routes with the same name.
* <u>*Remove Route*</u>: Be careful there will be no warning before deletion.

By left-clicking on a route in the lower white box you select the respective route to appear on the map. You can select multiple routes to be shown simultaneously.



![SqueakMaps Routing GUI][img-route]


 [img-start]: img/SqueakMaps_Start-UI.png
 [img-pins]: img/SqueakMaps_PinsandCategories.png
 [img-route]: img/SqueakMaps_Routing.png
