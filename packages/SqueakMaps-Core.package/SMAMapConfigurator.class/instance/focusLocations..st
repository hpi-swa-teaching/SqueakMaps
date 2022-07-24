displaying
focusLocations: aCollectionOfSMALocations

	| zoom centerGeoCoord centerWorldPos min max sum boundingBox |

	boundingBox := Rectangle new.
	min := Float infinity @ Float infinity.
	max := Float negativeInfinity @ Float negativeInfinity.
	sum := 0 @ 0.

	aCollectionOfSMALocations do: [:location |
		min := min min: location boundingBox origin.
		max := max max: location boundingBox corner.
		sum := sum + location coordinates convertToPoint].

	centerGeoCoord := SMAGeoCoordinate newFrom: sum / aCollectionOfSMALocations size.
	centerWorldPos := self class geoCoordinatesToWorldPos: centerGeoCoord.
	self tiledMapMorph center: centerWorldPos.

	boundingBox := min corner: max.
	zoom := self calculateZoomForBoundingBox: boundingBox.
	self tiledMapMorph zoom: zoom.

	self tiledMapMorph 
		layoutChanged;
		changed