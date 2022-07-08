search
searchDirections

	| start destination transportMode route |
	
	start := self startSearchInput.
	destination := self destinationSearchInput.
	transportMode := self transportationModeInput.
	
	(start isEmpty or: [destination isEmpty]) ifTrue: [
		UIManager default inform: 'Please enter a start and destination location.'.
		^ self].

	[route := self searchManager getRouteFrom: start To: destination By: transportMode.]
		on:	Error
		do: [:error |
				UIManager default inform: error messageText.
				^ self].

	self mapConfigurator displayRoute: route.
	self route: route.
	self hasSearched: true.
	self changed: #buildSidebarTopChildren