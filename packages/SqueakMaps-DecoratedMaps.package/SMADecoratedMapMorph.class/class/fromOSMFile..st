as yet unclassified
fromOSMFile: aReadStream

	| root xmldoc points rooms buildings |
	xmldoc := XMLDOMParser parseDocumentFrom: aReadStream.
	root := xmldoc root.

	points := self extractPoints: root.
	rooms := self extractRooms: root forPoints: points.
	buildings := self extractBuildings: root forPoints: points.

	^ SMADecoratedMapMorph new
		points: points;
		rooms: rooms;
		buildings: buildings;
		roomOverlays: (self roomOverlaysFrom: rooms);
		buildingOverlays: (self buildingOverlaysFrom: buildings);
		yourself