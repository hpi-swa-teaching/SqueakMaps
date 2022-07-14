search
searchLocation

	| location |

	self searchInput isEmpty ifTrue: [
		UIManager default inform: 'Please enter a location.'.
		^ self].

	[location := self searchManager locate: self searchInput.]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self inform: 'No location with name "' , error requestedName , '" found.'].
	
	self setSelectedPin: location.
	self mapConfigurator displayLocation: location.
	self mapConfigurator focusLocation: location