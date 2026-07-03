as yet unclassified
fromXMLTag: anXMLTag

	| room personName |
	room := SMAOSMTagReader valueNamed: 'room' in: anXMLTag ifAbsent: [nil].
	personName := SMAOSMTagReader valueNamed: 'name' in: anXMLTag ifAbsent: [nil].
	^ (room = 'office' and: [personName isNil not])
		ifTrue: [self new setName: personName]
		ifFalse: [nil]