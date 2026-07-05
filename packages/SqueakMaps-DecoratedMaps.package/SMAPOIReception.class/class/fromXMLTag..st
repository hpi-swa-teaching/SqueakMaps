initialization
fromXMLTag: anXMLTag

	| amenity name |
	amenity := SMAOSMTagReader valueNamed: 'amenity' in: anXMLTag ifAbsent: [nil].
	name := SMAOSMTagReader valueNamed: 'name' in: anXMLTag ifAbsent: [nil].
	^ (amenity = 'reception_desk' and: [name isNil not])
		ifTrue: [self new setName: name]
		ifFalse: [nil]
