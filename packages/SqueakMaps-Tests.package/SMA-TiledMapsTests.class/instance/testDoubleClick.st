as yet unclassified
testDoubleClick

	| latLongMunich munichPins mouseEvent worldpos latlong |
	
	latLongMunich := 13.384846@52.5509201.
	tiledMapMorph zoom: 15.
	tiledMapMorph center: (MapTileLoader latLongToWorldPos: latLongMunich).

	mouseEvent := MouseButtonEvent new.
	mouseEvent position: tiledMapMorph bounds center.
	
	tiledMapMorph doubleClick: mouseEvent.
	worldpos := MapTileLoader latLongToWorldPos: latLongMunich.
	latlong := MapTileLoader worldPosToLatLong: worldpos.
	munichPins :=  tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
 	self assert: munichPins notEmpty
	
	