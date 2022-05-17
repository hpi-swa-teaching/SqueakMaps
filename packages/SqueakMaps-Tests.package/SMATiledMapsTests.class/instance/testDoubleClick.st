testing
testDoubleClick

	| longLatMunich munichPins mouseEvent precision |
	
	precision := 0.000001.
	longLatMunich := 11.576124@48.137154.
	tiledMapMorph center: (SMAMapTileLoader longLatToWorldPos: longLatMunich).

	mouseEvent := MouseButtonEvent new.
	mouseEvent position: tiledMapMorph bounds center.
	
	tiledMapMorph doubleClick: mouseEvent.
	"Since floats are only stored with a limited accuracy in squeak, 
	the rounding here is very weird and we have to round the x component of the pin longLat"
	munichPins :=  tiledMapMorph pins select: [:pin | 
		((pin longLat x asScaledDecimal roundTo: precision) @ (pin longLat y)) = longLatMunich].
	
 	self assert: munichPins notEmpty