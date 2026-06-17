as yet unclassified
fromXMLTag: anXMLTag

	| room personName|
	room := SMADecoratedMapMorph tagValueNamed: 'room' in: anXMLTag ifAbsent: [nil].

	personName := SMADecoratedMapMorph tagValueNamed: 'name' in: anXMLTag ifAbsent: [nil].
	
	^ (room = 'office' and: [name isNil not]) ifTrue: [self new setName: personName] ifFalse: [nil]