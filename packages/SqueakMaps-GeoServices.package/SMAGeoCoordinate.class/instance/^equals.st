comparing
= aSMAGeoCoordinate

	self species = aSMAGeoCoordinate species
		ifTrue: [^ self lat = aSMAGeoCoordinate lat and: [self long = aSMAGeoCoordinate long]]
		ifFalse: [^false]