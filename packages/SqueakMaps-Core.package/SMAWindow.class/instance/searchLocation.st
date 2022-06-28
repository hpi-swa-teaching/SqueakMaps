search
searchLocation

	| pin |

	self searchInput isEmpty ifTrue: [
		UIManager default inform: 'Please enter a location.'.
		^ self].

	pin := self searchManager locate: self searchInput.
	self setSelectedPin: pin.
	self mapConfigurator displayLocation: pin