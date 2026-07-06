testing - overlays
testPolygonFactoryComputesVerticesAndHitArea

	| map points building overlay center |
	map := self configuredMap.
	points := {
		self pointId: 1 lat: 0 lon: 0.
		self pointId: 2 lat: 0 lon: 0.001.
		self pointId: 3 lat: 0.001 lon: 0.001 }.
	building := SMABuilding new name: 'B'; points: points; yourself.
	overlay := SMAGeoPolygonMorph forBuilding: building.
	self assert: overlay model == building.
	self assert: overlay label equals: 'B'.
	overlay updateVerticesForMap: map.
	self assert: overlay vertices size equals: 3.
	center := overlay centerOfVertices.
	self assert: (overlay containsOverlayPixel: center).
	self deny: (overlay containsOverlayPixel: center + (1000 @ 1000))
