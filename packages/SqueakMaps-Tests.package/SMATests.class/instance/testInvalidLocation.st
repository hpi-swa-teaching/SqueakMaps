searching
testInvalidLocation

	| invalidLocationName |

	self squeakMapsWindow searchInput: 'berghain'.
	self squeakMapsWindow searchLocation.
	
	invalidLocationName := 'textMorph'.
	self squeakMapsWindow searchInput: invalidLocationName.
	[self squeakMapsWindow searchLocation] valueSupplyingAnswer: {'No location with name "' , invalidLocationName , '" found.'. #closeDialog}.

	self assert: self squeakMapsWindow tiledMapMorph center equals: (SMAMapConfigurator latLongToWorldPos: (13.4430356@52.5111669))
	