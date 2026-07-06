accessing
= otherPoint

	(otherPoint isKindOf: SMAPoint) ifFalse: [^ false].
	^ self id = otherPoint id and: [self lat = otherPoint lat and: [self lon = otherPoint lon]]