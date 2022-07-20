search
searchDirections

	| start destination startLocation destinationLocation transportMode route |
	
	start := self startSearchInput.
	destination := self destinationSearchInput.
	transportMode := self transportationModeInput.
	
	(start isEmpty or: [destination isEmpty]) ifTrue: [
		^ self inform: 'Please enter a start and destination location.'].
	
	[startLocation := self searchManager locate: start.
	destinationLocation := self searchManager locate: destination]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self inform: 'No location with name "' , error requestedName , '" found.'].
	
	self mapConfigurator clear.

	[route := self searchManager getRouteFrom: startLocation To: destinationLocation By: transportMode.]
		on: Error
		do: [:error |
			self mapConfigurator displayLocation: startLocation.
			self mapConfigurator displayLocation: destinationLocation.
			self mapConfigurator focusLocations: { startLocation . destinationLocation }.
			
			error class = SMARouteTooLongError ifTrue: [
				^ self inform: 'The chosen locations are too far apart from each other.'].
			error class = SMAUnreachableDestinationError ifTrue: [
				^ self inform: 'There exists no route between the chosen locations.'].
			error class = SMALocationNameNotFoundError ifTrue: [
				^ self inform: 'No location with name "' , error requestedName , '" found.'].
			error class = SMAInvalidApiKeyError ifTrue: [
				^ self inform: 'Please set a valid API key. This can be done by clicking the Manage API Keys button.'].
			error signal].
	
	self mapConfigurator displayRoute: route.
	self route: route.
	self hasSearched: true.
	self changed: #buildSidebarTopChildren