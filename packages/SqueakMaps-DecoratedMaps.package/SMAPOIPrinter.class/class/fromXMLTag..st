initialization
fromXMLTag: anXMLTag

	| amenity |
	amenity := SMAOSMTagReader valueNamed: 'amenity' in: anXMLTag ifAbsent: [nil].
	^ amenity = 'printer' ifTrue: [self new] ifFalse: [nil]
