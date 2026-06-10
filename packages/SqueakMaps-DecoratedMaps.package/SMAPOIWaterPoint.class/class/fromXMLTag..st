as yet unclassified
fromXMLTag: anXMLTag

	| amenity |
	amenity := SMADecoratedMapMorph tagValueNamed: 'amenity' in: anXMLTag ifAbsent: [nil].
	^ amenity = 'water_point' ifTrue: [self new] ifFalse: [nil]