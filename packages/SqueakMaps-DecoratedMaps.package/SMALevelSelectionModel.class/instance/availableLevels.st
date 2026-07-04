accessing
availableLevels

	^ availableLevels ifNil: [availableLevels := SortedCollection new]
