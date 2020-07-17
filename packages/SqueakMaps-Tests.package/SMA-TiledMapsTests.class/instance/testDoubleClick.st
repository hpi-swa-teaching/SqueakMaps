as yet unclassified
testDoubleClick

	| latLongMunich munichPins mouseEvent worldpos latlong |
	
	latLongMunich := 11.576124@48.137154.
	tiledMapMorph center: (MapTileLoader latLongToWorldPos: latLongMunich).

	mouseEvent := MouseButtonEvent new.
	mouseEvent position: tiledMapMorph bounds center.
	
	tiledMapMorph doubleClick: mouseEvent.
	worldpos := MapTileLoader latLongToWorldPos: latLongMunich.
	latlong := MapTileLoader worldPosToLatLong: worldpos.
	self halt.
	latlong roundTo: 0.00001@0.00001.
	munichPins :=  tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
 	self assert: munichPins notEmpty
	
	