as yet unclassified
extractRooms: anXMLRoot forPoints: aDictOfPoints

	| rooms |
	rooms := OrderedCollection new.
	
	anXMLRoot tagsNamed: #way do: [:w | | room |
		room := SMARoom new
			ref: ((w firstTagNamed: #tag with: [:el | (el attributeAt: #k) = 'ref']) attributeAt: #v);
			level: ((w firstTagNamed: #tag with: [:el | (el attributeAt: #k) = 'level']) attributeAt: #v) asNumber;
			points: OrderedCollection new.
		w tagsNamed: #nd do: [:nd | | point |
			point := aDictOfPoints at: (nd attributeAt: #ref) asInteger.
			room points add: point].
		rooms add: room].
	
	^ rooms