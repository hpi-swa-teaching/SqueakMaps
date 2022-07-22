search
searchLocation

	| location |

	self searchInput isEmpty ifTrue: [^ self inform: 'Please enter a location.'].

	[location := self searchManager locate: self searchInput.]
		on: SMALocationNameNotFoundError
		do: [:error | ^ self inform: 'No location with name "' , error requestedName , '" found.'].
	
	self setSelectedPin: location.
	self mapConfigurator 
		clear;
		displayLocation: location;
		focusLocation: location