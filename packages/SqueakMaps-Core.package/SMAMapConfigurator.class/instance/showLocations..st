displaying
showLocations: anOrderedCollectionOfLocations

	anOrderedCollectionOfLocations do: [:location | self displayLocation: location].
	self focusLocations: anOrderedCollectionOfLocations.