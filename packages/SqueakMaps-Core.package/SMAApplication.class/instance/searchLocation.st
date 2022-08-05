search
searchLocation

	| location |

	self searchInput isEmpty ifTrue: [^ self inform: 'Please enter a location.'].

	[location := self navigator locate: self searchInput.]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self informLocationNameNotFound: error requestedName].
	
	self setSelectedPin: location.
	self mapConfigurator 
		clear;
		displayLocation: location;
		focusLocation: location