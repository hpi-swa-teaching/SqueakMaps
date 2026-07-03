as yet unclassified
roomOverlaysFrom: aCollectionOfRooms

	^ aCollectionOfRooms collect: [:room | SMAGeoPolygonMorph forRoom: room]