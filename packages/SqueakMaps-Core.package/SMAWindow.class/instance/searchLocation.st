search
searchLocation

	| location |

	self searchInput isEmpty ifTrue: [
		UIManager default inform: 'Please enter a location.'.
		^ self].

	[location := self searchManager locate: self searchInput.]
		on: Error
		do: [
			UIManager default inform: 'No results found.'.
			^ self].
	self setSelectedPin: location.
	self mapConfigurator displayLocation: location