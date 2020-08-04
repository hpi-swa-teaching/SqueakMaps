as yet unclassified
testDoubleClick

	| latLongMunich munichPins mouseEvent precision |
	precision := 0.000001.
	latLongMunich := 11.576124@48.137154.
	tiledMapMorph center: (MapTileLoader latLongToWorldPos: latLongMunich).

	mouseEvent := MouseButtonEvent new.
	mouseEvent position: tiledMapMorph bounds center.
	
	tiledMapMorph doubleClick: mouseEvent.
	"Since floats are only stored with a limited accuracy in squeak, the rounding here is very weird and we have to round the x component of the pin LatLong"
	munichPins :=  tiledMapMorph pins select: [:pin | ((pin latLong x asScaledDecimal roundTo: precision) @ (pin latLong y)) = latLongMunich].
 	self assert: munichPins notEmpty