accessing
extractRooms: anXMLRoot forPoints: aDictOfPoints

	| rooms |
	rooms := OrderedCollection new.

	anXMLRoot tagsNamed: #way do: [:w |
		((self tagValueNamed: 'indoor' in: w ifAbsent: [nil]) = 'room')
			ifTrue: [
				| room |
				room := SMARoom new
					ref: (self tagValueNamed: 'ref' in: w ifAbsent: ['']);
					level: ((self tagValueNamed: 'level' in: w ifAbsent: ['0']) asNumber);
					poiIds: (self extractPOIIdsFrom: w);
					points: OrderedCollection new.

				w tagsNamed: #nd do: [:nd |
					| pointId |
					pointId := (nd attributeAt: #ref) asInteger.
					(aDictOfPoints includesKey: pointId)
						ifTrue: [room points add: (aDictOfPoints at: pointId)]].

				room points isEmpty
					ifFalse: [rooms add: room]]].

	^ rooms