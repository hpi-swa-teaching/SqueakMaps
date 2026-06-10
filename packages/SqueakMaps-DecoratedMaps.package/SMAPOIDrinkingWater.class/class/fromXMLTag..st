as yet unclassified
fromXMLTag: anXMLTag

	| amenity |
	amenity := SMADecoratedMapMorph tagValueNamed: 'amenity' in: anXMLTag ifAbsent: [nil].
	^ amenity = 'drinking_water' ifTrue: [self new] ifFalse: [nil]