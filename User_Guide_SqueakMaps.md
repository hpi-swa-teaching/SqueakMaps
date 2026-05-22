# Squeak Maps User Guide

Squeak Maps displays the world map to users. It is an interactive application that allows users to:
- zoom
- set and categorize pin
- route between locations
- and much more...

## First Time Installation -- Make the Map Work :)

1. Open the Squeak Image
2. In the top navigation bar click on <u>*Apps*</u> and choose <u>*Git Bowser*</u>
3. In the top right corner <u>*Right click here to add a project*</u> klick right and choose <u>*clone*</u>
4. Enter the https URL of this project

    ```html
    https://github.com/hpi-swa-teaching/SqueakMaps.git
    ```
5. As directory choose <u>*SqueakMaps*</u> and klick on <u>*I copied it.*</u>
6. Enter a *name* and an *email-address* for Git usage
7. Load the current commit into the Image
8. Klick on <u>*Load Changes*</u> and you are ready to go


## Open the Application 

To use the Application, proceed as follows:
1. Open the Squeak Image
2. In the top navigation bar click on <u>*Apps*</u> and choose <u>*SqueakMaps*</u>
3. The App informs you about pins saved, confirm by clicking <u>*OK*</u>

The following SqueakMaps interface opens:

![SqueakMaps Sart GUI][img-start]


## Map Funktions -- Use the Map like a Pro :)

**Scroll:**\
Place the cursor in the map area and hold left-click to pan the map.

**Zoom:**\
Place the cursor in the map area and scroll to zoom.

**Search:**\
Search for a location by typing its name in the field in the top left corner.

**Manage Categories:**\
On the left side of the Application the white box shows your pin-categories. Below you have the option to add and remove categories and thereby personalize the map.

**Set Pins:**\
Double-Click on your chosen location in the map area (or search for the loaction). A pin will appear. 

**Safe/ Categorize Pins:**\
Set a pin an then click on <u>*Save Pin*</u>. Save the pin to one of your categories.
By clicking on your categories, all the respective pins will appear on the map.

![SqueakMaps Pin GUI][img-pins]

**Routing:**\
To be able to route you need to connect to an API.
* In the lower left corner klick on <u>*select API*</u> and choose one of those available (recommended *OpenStreetMaps*).
* Next to the <u>*select API*</u> button is an <u>*API key*</u> button, where you need to add an API key for the API you selected.
* You have to generate an API key via the website of the respective API (note that some APIs are not free to use).

To route:
* First, seach for a location in the search area
* Then Click on <u>*Directions*</u>
* A new interface opens, that allos you to enter a *Start* and *Destination*, and select a preferred *mode of transportation* (walk, bike, car) --> klick <u>*Go*</u> to route
* To close the routing interface, klick on the <u>*x*</u> (close-) button in the upper right corner of the left sidebar

![SqueakMaps Routing GUI][img-route]


 [img-start]: img/SqueakMaps_StartGUI.png
 [img-pins]: img/SqueakMaps_SavePins.png
 [img-route]: img/SqueakMaps_Routing.png
