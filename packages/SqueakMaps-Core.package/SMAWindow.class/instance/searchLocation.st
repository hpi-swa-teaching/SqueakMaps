search
searchLocation

	self searchInput isEmpty ifTrue: [
		UIManager default inform: 'Please enter a location.'.
		^ self].
	self clearRoute.
	self searchManager locate: self searchInput