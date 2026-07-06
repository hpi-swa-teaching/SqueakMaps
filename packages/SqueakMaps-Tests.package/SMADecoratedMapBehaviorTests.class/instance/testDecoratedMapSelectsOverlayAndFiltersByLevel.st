testing - overlays
testDecoratedMapSelectsOverlayAndFiltersByLevel

	| map points building room buildingOverlay roomOverlay center clicked event |
	map := self configuredMap.
	points := {
		self pointId: 1 lat: 0 lon: 0.
		self pointId: 2 lat: 0 lon: 0.001.
		self pointId: 3 lat: 0.001 lon: 0.001 }.
	building := SMABuilding new name: 'B'; points: points; yourself.
	room := SMARoom new ref: 'R'; level: 0; points: points; yourself.
	buildingOverlay := SMAGeoPolygonMorph forBuilding: building.
	roomOverlay := SMAGeoPolygonMorph forRoom: room.
	map
		buildings: {building};
		rooms: {room};
		buildingOverlays: {buildingOverlay};
		roomOverlays: {roomOverlay};
		overlays: {roomOverlay};
		indoorOverlayMinZoom: 19;
		visibleLevel: 0.
	self assert: map roomOverlaysForVisibleLevel size equals: 1.
	self assert: map shouldDrawRoomOverlays.
	roomOverlay updateVerticesForMap: map.
	center := roomOverlay centerOfVertices.
	self assert: (map overlayAtPixel: center) == roomOverlay.
	clicked := nil.
	map onOverlayClickAction: [:target | clicked := target].
	event := SMATestMouseEvent new cursorPoint: center; position: center; yourself.
	map click: event.
	self assert: clicked == roomOverlay.
	map categoryFilter: {room}.
	self assert: (map isModelVisible: room).
	self deny: (map isModelVisible: building).
	map zoom: 18.
	self deny: map shouldDrawRoomOverlays
