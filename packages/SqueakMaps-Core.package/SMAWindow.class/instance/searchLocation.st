search
searchLocation

	| location |

	self searchInput isEmpty ifTrue: [^ self inform: 'Please enter a location.'].

	[location := self searchManager locate: self searchInput.]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self inform: error userMessage].
	
	self setSelectedPin: location.
	self mapConfigurator 
		clear;
		displayLocation: location;
		focusLocation: location