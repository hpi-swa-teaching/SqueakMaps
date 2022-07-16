search
searchDirections

	| start destination transportMode route |
	
	start := self startSearchInput.
	destination := self destinationSearchInput.
	transportMode := self transportationModeInput.
	
	(start isEmpty or: [destination isEmpty]) ifTrue: [
		^ self inform: 'Please enter a start and destination location.'].
	
	[[route := self searchManager getRouteFrom: start To: destination By: transportMode]
		on:	SMARouteTooLongError
		do: [^ self inform: 'The chosen locations are too far apart from each other.']
		on: SMAUnreachableDestinationError 
		do: [^ self inform: 'There exists no route between the chosen locations.']
		on: SMALocationNameNotFoundError
		do: [: error | ^ self inform: 'No location with name "' , error requestedName , '" found.']]
		on: SMAInvalidApiKeyError 
		do: [^ self inform: 'Please set a valid API key. This can be done by clicking the Manage API Keys button.'].

	self mapConfigurator displayRoute: route.
	self route: route.
	self hasSearched: true.
	self changed: #buildSidebarTopChildren