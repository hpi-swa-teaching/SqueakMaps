private
roomOverlaysFrom: aCollectionOfRooms

	^ aCollectionOfRooms collect: [:room | SMAGeoPolygonMorph forRoom: room]
