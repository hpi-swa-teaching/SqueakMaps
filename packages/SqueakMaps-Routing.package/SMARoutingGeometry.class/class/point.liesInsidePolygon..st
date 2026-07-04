geometry
point: aPoint liesInsidePolygon: aCollectionOfPoints

	| inside wrapped |
	aCollectionOfPoints isEmpty ifTrue: [^ false].
	inside := false.
	wrapped := OrderedCollection with: aCollectionOfPoints last.
	wrapped addAllLast: aCollectionOfPoints.
	wrapped overlappingPairsDo: [:prev :curr |
		| xi yi xj yj intersect |
		xi := curr lon. yi := curr lat.
		xj := prev lon. yj := prev lat.
		intersect := ((yi > aPoint lat) ~= (yj > aPoint lat))
			and: [aPoint lon < ((xj - xi) * (aPoint lat - yi) / (yj - yi + self epsilon) + xi)].
		intersect ifTrue: [inside := inside not]].
	^ inside
