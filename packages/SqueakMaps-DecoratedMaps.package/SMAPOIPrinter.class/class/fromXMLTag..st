as yet unclassified
fromXMLTag: anXMLTag

	| amenity |
	amenity := SMADecoratedMapMorph tagValueNamed: 'amenity' in: anXMLTag ifAbsent: [nil].
	^ amenity = 'printer' ifTrue: [self new] ifFalse: [nil]