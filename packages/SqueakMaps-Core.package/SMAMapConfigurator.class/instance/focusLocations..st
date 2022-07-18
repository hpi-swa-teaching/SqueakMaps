displaying
focusLocations: aCollectionOfSMALocations

	| zoom centerWorldPos min max sum boundingBox |
	
	boundingBox := Rectangle new.
	min := Float infinity @ Float infinity.
	max := Float negativeInfinity @ Float negativeInfinity.
	sum := 0 @ 0.

	aCollectionOfSMALocations do: [:location |
		min := min min: location boundingBox origin.
		max := max max: location boundingBox corner.
		sum := sum + location latLong.
		].

	centerWorldPos := self class latLongToWorldPos: sum / aCollectionOfSMALocations size.
	self tiledMapMorph center: centerWorldPos.
	
	boundingBox := min corner: max.
	zoom := self calculateZoomForBoundingBox: boundingBox.
	self tiledMapMorph zoom: (self tiledMapMorph tileSource clampZoom: zoom).
	
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed