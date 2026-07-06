testing
testRoutingGeometry

	| polygon center inside outside point worldPoint |
	polygon := {
		self pointId: 1 lat: 0 lon: 0.
		self pointId: 2 lat: 0 lon: 2.
		self pointId: 3 lat: 2 lon: 2.
		self pointId: 4 lat: 2 lon: 0 }.
	center := SMARoutingGeometry centerPointOf: polygon.
	inside := self pointId: nil lat: 1 lon: 1.
	outside := self pointId: nil lat: 3 lon: 3.

	self assert: center lat equals: 1.
	self assert: center lon equals: 1.
	self assert: (SMARoutingGeometry centerPointOf: #()) isNil.
	self assert: (SMARoutingGeometry distanceFrom: polygon first to: polygon second) equals: 2.
	self assert: (SMARoutingGeometry point: inside liesInsidePolygon: polygon).
	self deny: (SMARoutingGeometry point: outside liesInsidePolygon: polygon).
	self deny: (SMARoutingGeometry point: inside liesInsidePolygon: #()).
	self assert: SMARoutingGeometry epsilon > 0.
	point := self pointId: nil lat: 52 lon: 13.
	worldPoint := SMARoutingGeometry worldPointFor: point.
	self assert: worldPoint equals: (SMAMapTileLoader latLongToWorldPos: 13 @ 52)
