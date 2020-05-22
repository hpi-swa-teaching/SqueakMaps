build buttons and input fields
buildApiMenu
	self apiMenu:  (MenuMorph new 
	color: Color black;
	position: apiKeyButton position;
	addTitle: 'Select API';
	addLine;
	add: 'Bing API' action: [self setBingAsApi];
	add: 'Google API' action: [Transcript show: 'selected Google Api'];
	add: 'OpenStreetMaps API' action: [Transcript show: 'selected OpenStreetMaps Api']) openInWorld
	"addMorph: apiMenu frame: (0.5@0.5 extent: 0.3@0.1)"