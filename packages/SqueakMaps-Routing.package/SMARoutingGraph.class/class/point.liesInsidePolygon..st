as yet unclassified
point: aPoint liesInsidePolygon: aCollectionOfPoints

	| inside j xi yi xj yj intersect |
	inside := false.
	j := aCollectionOfPoints size.
	1 to: aCollectionOfPoints size do: [:i |
		xi := (aCollectionOfPoints at: i) lon.
		yi := (aCollectionOfPoints at: i) lat.
		xj := (aCollectionOfPoints at: j) lon.
		yj := (aCollectionOfPoints at: j) lat.
		intersect := ((yi > aPoint lat) ~= (yj > aPoint lat))
			and: [aPoint lon < ((xj - xi) * (aPoint lat - yi) / (yj - yi + 0.000000001) + xi)].
		intersect ifTrue: [inside := inside not].
		j := i].
	^ inside