as yet unclassified
extractRooms: anXMLRoot forPoints: aDictionaryOfPoints

	| extractedRooms |
	extractedRooms := OrderedCollection new.
	anXMLRoot tagsNamed: #way do: [:element |
		((self tagValueNamed: 'indoor' in: element ifAbsent: [nil]) = 'room') ifTrue: [
			| room |
			room := SMARoom new
				ref: (self tagValueNamed: 'ref' in: element ifAbsent: ['']);
				level: (self extractFirstLevelFrom: element);
				poiIds: (self extractPOIIdsFrom: element);
				points: OrderedCollection new.
			element tagsNamed: #nd do: [:nodeReference |
				| pointId |
				pointId := (nodeReference attributeAt: #ref) asInteger.
				(aDictionaryOfPoints includesKey: pointId) ifTrue: [
					room points add: (aDictionaryOfPoints at: pointId)]].
			room points isEmpty ifFalse: [extractedRooms add: room]]].
	^ extractedRooms