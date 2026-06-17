as yet unclassified
fromOSMFile: aReadStream

	| root xmldoc points rooms buildings pois |
	xmldoc := XMLDOMParser parseDocumentFrom: aReadStream.
	root := xmldoc root.
	
	points := self extractPoints: root.
	rooms := self extractRooms: root forPoints: points.
	buildings := self extractBuildings: root forPoints: points.
	pois := self extractPOIs: root.
	
	^ SMADecoratedMapMorph new
		points: points;
		rooms: rooms;
		buildings: buildings;
		pointsOfInterest: pois;
		roomOverlays: (self roomOverlaysFrom: rooms);
		buildingOverlays: (self buildingOverlaysFrom: buildings);
		yourself