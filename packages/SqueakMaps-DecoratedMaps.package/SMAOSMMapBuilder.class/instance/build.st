as yet unclassified
build

	^ SMADecoratedMapMorph new
		points: points;
		rooms: rooms;
		buildings: buildings;
		pointsOfInterest: pointsOfInterest;
		roomOverlays: (self roomOverlaysFrom: rooms);
		buildingOverlays: (self buildingOverlaysFrom: buildings);
		yourself