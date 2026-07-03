pages
mapFunctionsRouting
	^HelpTopic
		title: '6] Routing' "has to be updated manually"
		icon: (HelpIcons iconNamed: #mapPinIcon)
		contents: 'MAP FUNCTIONS: Routing
----------------------------------------------

Routing Set Up:
To be able to route you need to connect to an API.
In the lower left corner click on Manage APIs. A drop-down menue opens with the buttons Select API and API Key.

-- Select API: Choose one of the APIs available (recommended OpenStreetMaps).
-- API Key: Add an API key for the API you selected. You have to generate an API key via the website of the respective API (note that some APIs are not free to use).


Route (Routing Interface - Editing Window):
Option 1:
First, search for a hop/location in the search bar or double-click in the map to select a pin.
Then click on Directions.
A new interface opens that allows you to specify your route.
You can select a preferred mode of transportation (Car, Bike, Walk).
Further, you can add hops and pins, and remove the hops of your route. You see a list of all the added hops and pins in the white box. The order of the hops in this white window represents the order of your route. If you only choose two hops, the first one will be the Start and the second one the Destination of your Route.

-- Add Hop: Type the name of your hop/location in the Add Hop field and click on this button, or press the Enter key to add the hop to the list.
-- Add Pin: Select the pin/location on the map and click on this button to add the pin to the list.
-- Remove Hop: Click on the hop in the list and then click on this button to remove the selected Hop.

To reorder the route Hops use DragNDrop.
You can only configure routes that are reasonably reachable by car, bike or by walking. If two hops are too far apart, the application will inform you via a pop-up window (after you clicked on Go).

-- Go: Click here to route the exact routing that the list shows.
-- Find optimal Route: click here to get the optimal (shortest) route that covers all your hops (note: the original order of your hosp 	in the white window does not change)

Above the white box you see the length and time of your route.
The route will appear on the map. Each section of the route has a different color allowing you to better distinguish them.

Option 2:
From the Start Interface select from your saved pins those that shall be part of a route. Make sure all these pins are highlighted in blue. Right-click and find the option to Route Selected Pins.


Export and Save Routes:
Configure the route, then click on Go or Find optimal Route and subsequently click the Save button in the lower-right corner of the white box. A drop-down menue appears where you can select Export or Save.

-- Export: Click here to export the route and save it in .gpx format on your device.
-- Save: Click here to save the route. Name your route as desired. When you save a route with an existing name, the respective route will be updated. You cannot have two routes with the same name. Saved routes appear in the lower white box in the first UI window of the application.


Exit the Routing Interface to see Saved Routes:
To close the routing interface (editing window), click on the x (close) button in the upper right corner of the left sidebar.


Manage Save Routes:
On the left side of the Application the lower white box shows a list of your saved Routes (Filter Routes).
By right-clicking on a route or in the box area a drop-down menue appears with the options to Load Route, Rename Route and Remove Route.

-- Load: Clicking here will take you back to the editing window.
-- Rename Route: You cannot have two routes with the same name.
-- Remove Route: Be careful there will be no warning before deletion.

By left-clicking on a route in the lower white box you select the respective route to appear on the map. You can select multiple routes to be shown simultaneously.'