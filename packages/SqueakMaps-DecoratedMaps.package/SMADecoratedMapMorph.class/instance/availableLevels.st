accessing
availableLevels

	^ ((self roomOverlays collect: [:overlay | overlay model level]) asSet asSortedCollection)