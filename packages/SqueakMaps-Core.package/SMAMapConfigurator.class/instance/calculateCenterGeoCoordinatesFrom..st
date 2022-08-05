calculation
calculateCenterGeoCoordinatesFrom: aCollectionOfSMALocations

	| sum |
	
	sum := 0 @ 0.
	aCollectionOfSMALocations do: [:location | sum := sum + location coordinates convertToPoint].
	
	^ SMAGeoCoordinate newFrom: sum / aCollectionOfSMALocations size.