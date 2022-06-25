search
searchLocation

	| result |

	self searchInput isEmpty ifTrue: [
		UIManager default inform: 'Please enter a location.'.
		^ self].
	self clearRoute.
	
	result := self searchManager locate: self searchInput.
	self setSelectedPinTo: result latLong labeled: result label.
	self mapConfigurator displayLocation: result