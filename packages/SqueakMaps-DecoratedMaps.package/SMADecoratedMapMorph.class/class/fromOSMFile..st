as yet unclassified
fromOSMFile: aReadStream

	| root xmldoc points rooms |
	xmldoc := XMLDOMParser parseDocumentFrom: aReadStream.
	root := xmldoc root.
	points := self extractPoints: root.
	rooms := self extractRooms: root forPoints: points.

	^ SMADecoratedMapMorph new
		points: points;
		rooms: rooms;
		overlays: (self roomOverlaysFrom: rooms);
		yourself