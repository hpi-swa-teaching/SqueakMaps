# Squeak Maps User Guide

Squeak Maps displays the world map to users. It is an interactive application that allows users to:
- zoom
- set and categorize pin
- route between locations
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
3. The App informs you about pins saved, confirm by clicking <u>*OK*</u>

The following SqueakMaps interface opens:

![SqueakMaps Sart GUI][img-start]


# Map Funktions -- Use the Map as a Pro :)

## Basic Functions

**Scroll:**\
Place the cursor in the map area and hold left-click to pan the map.

**Zoom:**\
Place the cursor in the map area and scroll to zoom.\
Alternatively place the cursor in the map area and use the keyboard keys <u>+</u> and <u>-</u> to zoom.

**Search:**\
Search for a location by typing its name in the field in the top left corner.

## Pins & Categories

**Manage Categories:**\
On the left side of the Application the white box shows your pin-categories. If you did not assign a category to a pin, the pin appears in *Uncategorized*. Below the list of your categories you have the option to <u>*Add Category*</u>, <u>*Rename Category*</u> and <u>*Remove Category*</u> by clicking the <u>*Manage Category*</u> button. (Currently, two categories can have the same name — choose wisely)
When removing a category, you will be asked whether the pins in that category should be deleted or uncategorized.
You can not rename or remove the *Uncategorized* category

**Set Pins:**\
Double-click on your chosen location in the map area (or search for the loaction). A pin will appear. 

**Save/ Categorize Pins:**\
Set a pin an then click on <u>*Save Pin*</u>. Save the pin to one of your categories.\
By selecting a category in the left sidebar, all of its pins show on the map. You can select multiple categories to be shown.\
!! Currently, a pin/location can only be part of one category.
By clicking on your categories, all the respective pins will appear on the map.


**Remove Pins & Rename Pins:**\
If a pin has been saved to a category, the left sidebar shows the option to <u>*Remove pin*</u>, <u>*Rename pin*</u> and <u>*Directions*</u>:\
<u>*Remove pin*</u>: By clicking this button, the pin will be removed from its category. Be careful.\
<u>*Rename Pin*</u>: By clicking this button, you can give your pin a new name.\
!! Note that you cannot search for that personalized name in the search bar (remember the original name).\
<u>*Directions*</u>: Clicking here will navigate you to the routing option, where you can search for a route with the selected pin as your destination.

![SqueakMaps Pin GUI][img-pins]

## Routing

**Routing:**\
To be able to route you need to connect to an API.
* In the lower left corner click on <u>*select API*</u> and choose one of those available (recommended *OpenStreetMaps*).
* Next to the <u>*select API*</u> button is an <u>*API key*</u> button, where you need to add an API key for the API you selected.
* You have to generate an API key via the website of the respective API (note that some APIs are not free to use).

TO ROUTE:
* First, search for a pin/location in the search bar
* Then click on <u>*Directions*</u>
* A new interface opens that allows you to specify your route. 
* You can select a preferred *mode of transportation* (walk, bike, car). 
* Further, you can add and remove the Hops of your Route.  You see a list of all the added Hops in the white window. The order of the Hops in this white window represents the order of your route. If you only chose two Hops, the first one will be the Start and the second one the Destination of your Route.
 
<u>*Add Hop*</u>: Type the name of your hop/location in the *Add Hop* field and click on this button to add the Hop to the list.\
<u>*Remove Hop*</u>: First click on the Hop in the list and then click on this button to remove the selected Hop.\

* To reorder the route use drag'n'drop
* You can only configure routes that are reasonably reachable by car, bike or by walking. If two hops are too far apart, the application will inform you via a pop-up window (after you clicked on <u>*Go*</u>).
* above the white window you see the length and time of your route

--> click <u>*Go*</u> to route the exact routing that the list shows\
--> click <u>*Find optimal Route*</u> to get the optimal (shortest) route that covers all your hops (note: the original order of your hosp in the white window does not change)\

* The route will appear on the map. Each section of the route has a different color allowing you to better distinguish them.

TO SAVE ROUTES:
* To save a route you first have to configure the route, then click on <u>*Go*</u> / <u>*Find optimal Route*</u> and subsequently click the <u>*Save*</u> button.
* To manage your saved routes click on <u>*Saved Routes*</u>. Here you have the option to *show*, *rename* or *remove* a route.

TO EXPORT ROUTES:
* By clicking on the <u>*Export*</u> button you can export the route and save it in *.gpx* format on your device.

TO EXIT THE ROUTE INTERFACE:
* To close the routing interface, click on the <u>*x*</u> (close) button in the upper right corner of the left sidebar.

![SqueakMaps Routing GUI][img-route]


 [img-start]: img/SqueakMaps_StartGUI.png
 [img-pins]: img/SqueakMaps_SafePins.png
 [img-route]: img/SqueakMaps_Routing2.png
