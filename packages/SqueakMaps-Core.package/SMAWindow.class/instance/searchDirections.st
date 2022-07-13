search
searchDirections

	| start destination startLocation destinationLocation transportMode route |
	
	start := self startSearchInput.
	destination := self destinationSearchInput.
	transportMode := self transportationModeInput.
	
	(start isEmpty or: [destination isEmpty]) ifTrue: [
		UIManager default inform: 'Please enter a start and destination location.'.
		^ self].
	
	startLocation := self searchManager locate: start.
	destinationLocation := self searchManager locate: destination.
	
	self mapConfigurator clear.

	[route := self searchManager getRouteFrom: startLocation To: destinationLocation By: transportMode.]
		on:	Error
		do: [:error |
			self mapConfigurator displayLocation: startLocation.
			self mapConfigurator displayLocation: destinationLocation.
			self mapConfigurator focusLocations: { startLocation . destinationLocation }.
			UIManager default inform: error messageText.
			^ self].

	self mapConfigurator displayRoute: route.
	self route: route.
	self hasSearched: true.
	self changed: #buildSidebarTopChildren