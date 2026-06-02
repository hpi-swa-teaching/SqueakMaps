as yet unclassified
fromOSMFile: aReadStream

	| root xmldoc points rooms |
	xmldoc := XMLDOMParser parseDocumentFrom: aReadStream.
	root := xmldoc root.
	points := Dictionary new.
	rooms := OrderedCollection new.
	root tagsNamed: #node do: [:p | | point | 
		point := SMAPoint new id: (p attributeAt: #id) asInteger.
		point lat: (p attributeAt: #lat) asNumber.
		point lon: (p attributeAt: #lon) asNumber.
		points at: (point id) put: point.
		 ].
	root tagsNamed: #way do: [:w | | room | 
		room := SMARoom new ref: ((w firstTagNamed: #tag with: [:el | (el attributeAt: #k) = 'ref']) attributeAt: #v);
		level: ((w firstTagNamed: #tag with: [:el | (el attributeAt: #k) = 'level']) attributeAt: #v) asNumber;
		points: OrderedCollection new.
		w tagsNamed: #nd do: [:nd | |point|
			point := points at: (nd attributeAt: #ref) asInteger.
			room points add: point.
			].
		rooms add: room
		].
	
	^ SMADecoratedMapMorph new
		points: points;
		rooms: rooms;
		tiledMapMorph: SMATiledMapMorph new.