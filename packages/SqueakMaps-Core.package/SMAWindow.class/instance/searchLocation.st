search
searchLocation

	| pin |

	self searchInput isEmpty ifTrue: [
		UIManager default inform: 'Please enter a location.'.
		^ self].

	[pin := self searchManager locate: self searchInput.]
		on: Error
		do: [
				UIManager default inform: 'No results found.'.
				^ self].
	self setSelectedPin: pin.
	self mapConfigurator displayLocation: pin